<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Test extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
    public function index()
    {
        //$this->user_order();
    }
	private function user_order()
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
        $this->db->select('user.id,user.employee_id,user.user_name,user.status');
        $this->db->join('arm_login.setup_user_info'.' user_info','user.id = user_info.user_id','INNER');
        $this->db->select('user_info.name');
        $this->db->join('arm_login.system_user_group'.' ug','ug.id = user_info.user_group','LEFT');
        $this->db->select('ug.name group_name');
        $this->db->where('user_info.revision',1);
        $this->db->where_in('user.id',$user_ids);
        $this->db->where('user.id !=',1);
        $this->db->order_by('user.id','ASC');
        $items=$this->db->get()->result_array();
        $user_names=array();
        foreach($items as $item)
        {
            $user_names[$item['user_name']]=$item['user_name'];
        }
        $this->db->from('arm_pos.pos_setup_user'.' user');
        $this->db->select('user.id,user.user_name,user.status');
        $this->db->join('arm_pos.pos_setup_user_info'.' user_info','user.id = user_info.user_id','INNER');
        $this->db->select('user_info.name');
        $this->db->join('arm_pos.pos_system_user_group'.' ug','ug.id = user_info.user_group','LEFT');
        $this->db->select('ug.name group_name');
        $this->db->where('user_info.revision',1);
        $this->db->where_in('user.user_name',$user_names);
        $results=$this->db->get()->result_array();

        echo '<pre>';
        echo sizeof($results);
        print_r($results);

        echo '</pre>';


	}
}
