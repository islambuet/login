<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class User_payment_pos_compare extends Root_Controller
{
    private $message;
    public $permissions;
    public $controller_url;
    public function __construct()
    {
        parent::__construct();
        $this->message="";
        $this->permissions=User_helper::get_permission('User_payment_pos_compare');
        $this->controller_url='user_payment_pos_compare';
        //$this->load->model("sys_module_task_model");
    }

    public function index($action="list",$id=0)
    {
        if($action=="list")
        {
            $this->system_list($id);
        }
        else
        {
            $this->system_list($id);
        }
    }

    private function system_list()
    {
        if(isset($this->permissions['view'])&&($this->permissions['view']==1))
        {
            $data['title']="Users Compare";
            $ajax['status']=true;
            $ajax['system_content'][]=array("id"=>"#system_content","html"=>$this->load->view($this->controller_url."/list",$data,true));
            if($this->message)
            {
                $ajax['system_message']=$this->message;
            }
            $ajax['system_page_url']=site_url($this->controller_url);
            $this->jsonReturn($ajax);
        }
        else
        {
            $ajax['status']=false;
            $ajax['system_message']=$this->lang->line("YOU_DONT_HAVE_ACCESS");
            $this->jsonReturn($ajax);
        }

    }
    public function get_items()
    {
        $this->db->from('arm_ems.ems_payment_payment');
        $this->db->select('DISTINCT(user_created) user_created');
        $this->db->order_by('user_created','ASC');
        $results=$this->db->get()->result_array();
        $user_ids=array();
        foreach($results as $result)
        {
            $user_ids[$result['user_created']]=$result['user_created'];
        }

        $this->db->from('arm_ems.ems_payment_payment');
        $this->db->select('DISTINCT(user_receive) user_receive');
        $results=$this->db->get()->result_array();
        foreach($results as $result)
        {
            if($result['user_receive']>0)
            {
                $user_ids[$result['user_receive']]=$result['user_receive'];
            }

        }
        $this->db->from('arm_login.setup_user'.' user');
        $this->db->select('user.id login_id,user.employee_id login_employee_id,user.user_name login_user_name,user.status login_status');
        $this->db->join('arm_login.setup_user_info'.' user_info','user.id = user_info.user_id','INNER');
        $this->db->select('user_info.name login_name');
        $this->db->join('arm_login.system_user_group'.' ug','ug.id = user_info.user_group','LEFT');
        $this->db->select('ug.name login_user_group_name');
        $this->db->where('user_info.revision',1);
        $this->db->where_in('user.id',$user_ids);
        $this->db->where('user.id !=',1);
        $this->db->order_by('user.id','ASC');
        $items=$this->db->get()->result_array();

        $user_names=array();
        foreach($items as $item)
        {
            $user_names[$item['login_user_name']]=$item['login_user_name'];
        }
        $this->db->from('arm_pos.pos_setup_user'.' user');
        $this->db->select('user.id pos_id,user.user_name pos_user_name,user.status pos_status');
        $this->db->join('arm_pos.pos_setup_user_info'.' user_info','user.id = user_info.user_id','INNER');
        $this->db->select('user_info.name pos_name');
        $this->db->join('arm_pos.pos_system_user_group'.' ug','ug.id = user_info.user_group','LEFT');
        $this->db->select('ug.name pos_user_group_name');
        $this->db->where('user_info.revision',1);
        $this->db->where_in('user.user_name',$user_names);
        $results=$this->db->get()->result_array();
        $pos_users=array();
        foreach($results as $result)
        {
            $pos_users[$result['pos_user_name']]=$result;
        }
        foreach($items as &$item)
        {
            if(isset($pos_users[$item['login_user_name']]))
            {
                $item['pos_id']=$pos_users[$item['login_user_name']]['pos_id'];
                $item['pos_user_name']=$pos_users[$item['login_user_name']]['pos_user_name'];
                $item['pos_name']=$pos_users[$item['login_user_name']]['pos_name'];
                $item['pos_user_group_name']=$pos_users[$item['login_user_name']]['pos_user_group_name'];
                $item['pos_status']=$pos_users[$item['login_user_name']]['pos_status'];
            }
            else
            {
                $item['pos_id']='';
                $item['pos_user_name']='';
                $item['pos_name']='';
                $item['pos_user_group_name']='';
                $item['pos_status']='Pending';
            }
        }
        $this->jsonReturn($items);

    }

}
