<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Sys_user_role_model extends CI_Model
{
    public function __construct() {
        parent::__construct();
    }
    public function get_roles_count()
    {
        $CI = & get_instance();
        $this->db->from($CI->config->item('table_system_user_group').' ug');
        $this->db->select('ug.id,ug.name');
        $this->db->where('ug.status',$CI->config->item('system_status_active'));
        $user_groups=$this->db->get()->result_array();
        /*$user_groups=array();
        foreach($results as &$result)
        {
            $user_groups[$result['id']]=$result;
            $user_groups[$result['id']]['total_task']=0;
        }*/

        $this->db->from($CI->config->item('table_system_user_group_role').' ugr');
        $this->db->select('Count(ugr.id) total_task',false);
        $this->db->select('user_group_id');
        $this->db->where('ugr.revision',1);
        $this->db->where('ugr.view',1);
        $this->db->group_by('user_group_id');
        $results=$this->db->get()->result_array();
        $total_roles=array();
        foreach($results as $result)
        {
            $total_roles[$result['user_group_id']]['total_task']=$result['total_task'];
        }
        foreach($user_groups as &$groups)
        {
            if(isset($total_roles[$groups['id']]['total_task']))
            {
                $groups['total_task']=$total_roles[$groups['id']]['total_task'];
            }
            else
            {
                $groups['total_task']=0;
            }
        }
        return $user_groups;
    }
    public function get_tasks()
    {
        $CI = & get_instance();
        $user = User_helper::get_user();
        //SUPER_ADMIN_GROUP_ID
        if($user->user_group==1)
        {
            $this->db->select('task.*,module.name module_name');
            $this->db->from($CI->config->item('table_system_task').' task');
            $this->db->where('task.type','TASK');
            if($user->user_group==$user_group_id)
            {
                $this->db->where('task.controller NOT LIKE "sys_user_role%"');
            }
            $this->db->join($CI->config->item('table_system_task').' module','module.id = task.parent','INNER');
            $results=$this->db->get()->result_array();
            foreach($results as &$result)
            {
                $result['view']=1;
                $result['add']=1;
                $result['edit']=1;
                $result['delete']=1;
                $result['report']=1;
                $result['print']=1;
            }
            return $results;
        }
        else
        {
            $this->db->from($this->role_table.' ugr');
            $this->db->select('task.*,module.name module_name');
            $this->db->select('ugr.view,ugr.add,ugr.edit,ugr.delete,ugr.report,ugr.print');
            $this->db->join($this->module_task_table.' task','task.id = ugr.task_id',"INNER");
            $this->db->where('ugr.user_group_id',$user->rnd_group);
            $this->db->where('ugr.view',1);
            if(($user->pms_group==$user_group_id)||($user_group_id==1))
            {
                $this->db->where('task.controller NOT LIKE "sys_user_role%"');
            }
            $this->db->join($this->module_task_table.' module','module.id = task.parent','INNER');
            $results=$this->db->get()->result_array();
            return $results;
        }
    }
    public function get_role_status($user_group_id)
    {
        $this->db->from($this->role_table.' ugr');
        $this->db->select('ugr.id ugr_id,ugr.view,ugr.add,ugr.edit,ugr.delete,ugr.report,ugr.print,ugr.task_id');
        $this->db->where('ugr.user_group_id',$user_group_id);
        $results=$this->db->get()->result_array();
        $roles=array();
        $roles['view']=array();
        $roles['add']=array();
        $roles['edit']=array();
        $roles['delete']=array();
        $roles['report']=array();
        $roles['print']=array();
        $roles['ugr_id']=array();
        foreach($results as $result)
        {
            $roles['ugr_id'][$result['task_id']]=$result['ugr_id'];
            if($result['view'])
            {
                $roles['view'][]=$result['task_id'];
            }
            if($result['add'])
            {
                $roles['add'][]=$result['task_id'];
            }
            if($result['edit'])
            {
                $roles['edit'][]=$result['task_id'];
            }
            if($result['delete'])
            {
                $roles['delete'][]=$result['task_id'];
            }
            if($result['report'])
            {
                $roles['report'][]=$result['task_id'];
            }
            if($result['print'])
            {
                $roles['print'][]=$result['task_id'];
            }
        }

        return $roles;
    }
}