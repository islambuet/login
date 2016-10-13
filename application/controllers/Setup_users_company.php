<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Setup_users_company extends Root_Controller
{
    private  $message;
    public $permissions;
    public $controller_url;
    public function __construct()
    {
        parent::__construct();
        $this->message="";
        $this->permissions=User_helper::get_permission('Setup_users_company');
        $this->controller_url='setup_users_company';
        //$this->load->model("setup_users_other_sites_model");

    }

    public function index($action="list",$id=0)
    {
        if($action=="list")
        {
            $this->system_list($id);
        }
        elseif($action=="edit")
        {
            $this->system_edit($id);
        }
        elseif($action=="details")
        {
            $this->system_details($id);
        }
        elseif($action=="save")
        {
            $this->system_save();
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
            $data['title']="Employees company";
            $ajax['status']=true;
            $ajax['system_content'][]=array("id"=>"#system_content","html"=>$this->load->view("setup_users_company/list",$data,true));
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
        $user = User_helper::get_user();

        $this->db->from($this->config->item('table_setup_users_company').' uc');
        $this->db->select('uc.user_id');
        $this->db->select('c.short_name');
        $this->db->join($this->config->item('table_setup_company').' c','c.id = uc.company_id','INNER');
        $this->db->where('uc.revision',1);
        $results=$this->db->get()->result_array();
        $sites=array();
        foreach($results as $result)
        {
            if(isset($sites[$result['user_id']]['sites']))
            {
                $sites[$result['user_id']]['sites'].=', '.$result['short_name'];
            }
            else
            {
                $sites[$result['user_id']]['sites']=$result['short_name'];;
            }
        }



        $this->db->from($this->config->item('table_setup_user').' user');
        $this->db->select('user.id,user.employee_id,user.user_name,user.status');
        $this->db->select('user_info.name,user_info.ordering');
        $this->db->select('designation.name designation_name');
        $this->db->join($this->config->item('table_setup_user_info').' user_info','user.id = user_info.user_id','INNER');
        $this->db->join($this->config->item('table_setup_designation').' designation','designation.id = user_info.designation','LEFT');

        $this->db->where('user_info.revision',1);
        $this->db->where('user_info.user_type_id',1);//employee type
        $this->db->order_by('user_info.ordering','ASC');
        if($user->user_group!=1)
        {
            $this->db->where('user_info.user_group !=',1);
        }

        $items=$this->db->get()->result_array();
        foreach($items as &$item)
        {
            if(isset($sites[$item['id']]['sites']))
            {
                $item['other_sites']=$sites[$item['id']]['sites'];
            }
            else
            {
                $item['other_sites']="No Company Assigned";
            }

        }
        $this->jsonReturn($items);

    }
    private function system_edit($id)
    {
        if(isset($this->permissions['edit'])&&($this->permissions['edit']==1))
        {
            if(($this->input->post('id')))
            {
                $user_id=$this->input->post('id');
            }
            else
            {
                $user_id=$id;
            }

            $data['user']=Query_helper::get_info($this->config->item('table_setup_user'),array('id','employee_id','user_name'),array('id ='.$user_id),1);
            $data['user_info']=Query_helper::get_info($this->config->item('table_setup_user_info'),'*',array('user_id ='.$user_id,'revision =1'),1);
            $data['title']="Assign Company for ".$data['user_info']['name'];

            $data['companies']=Query_helper::get_info($this->config->item('table_setup_company'),'*',array('status ="'.$this->config->item('system_status_active').'"'),0,0,array('ordering'));
            $data['assigned_companies']=Query_helper::get_info($this->config->item('table_setup_users_company'),'*',array('user_id ='.$user_id,'revision =1'));


            $ajax['status']=true;
            $ajax['system_content'][]=array("id"=>"#system_content","html"=>$this->load->view("setup_users_company/add_edit",$data,true));
            if($this->message)
            {
                $ajax['system_message']=$this->message;
            }
            $ajax['system_page_url']=site_url($this->controller_url.'/index/edit/'.$user_id);
            $this->jsonReturn($ajax);
        }
        else
        {
            $ajax['status']=false;
            $ajax['system_message']=$this->lang->line("YOU_DONT_HAVE_ACCESS");
            $this->jsonReturn($ajax);
        }
    }
    private function system_details($id)
    {
        if(isset($this->permissions['view'])&&($this->permissions['view']==1))
        {
            if(($this->input->post('id')))
            {
                $user_id=$this->input->post('id');
            }
            else
            {
                $user_id=$id;
            }

            $data['user']=Query_helper::get_info($this->config->item('table_setup_user'),array('id','employee_id','user_name'),array('id ='.$user_id),1);
            $data['user_info']=Query_helper::get_info($this->config->item('table_setup_user_info'),'*',array('user_id ='.$user_id,'revision =1'),1);
            $data['title']="Assigned Company for ".$data['user_info']['name'];

            $data['companies']=Query_helper::get_info($this->config->item('table_setup_company'),'*',array('status ="'.$this->config->item('system_status_active').'"'),0,0,array('ordering'));
            $data['assigned_companies']=Query_helper::get_info($this->config->item('table_setup_users_company'),'*',array('user_id ='.$user_id,'revision =1'));


            $ajax['status']=true;
            $ajax['system_content'][]=array("id"=>"#system_content","html"=>$this->load->view("setup_users_company/details",$data,true));
            if($this->message)
            {
                $ajax['system_message']=$this->message;
            }
            $ajax['system_page_url']=site_url($this->controller_url.'/index/details/'.$user_id);
            $this->jsonReturn($ajax);
        }
        else
        {
            $ajax['status']=false;
            $ajax['system_message']=$this->lang->line("YOU_DONT_HAVE_ACCESS");
            $this->jsonReturn($ajax);
        }
    }

    private function system_save()
    {
        $id = $this->input->post("id");
        $user = User_helper::get_user();
        if(!(isset($this->permissions['edit'])&&($this->permissions['edit']==1)))
        {
            $ajax['status']=false;
            $ajax['system_message']=$this->lang->line("YOU_DONT_HAVE_ACCESS");
            $this->jsonReturn($ajax);
            die();
        }
        if(!$this->check_validation())
        {
            $ajax['status']=false;
            $ajax['system_message']=$this->message;
            $this->jsonReturn($ajax);
        }
        else
        {
            $time=time();


            $this->db->trans_start();  //DB Transaction Handle START

            $this->db->where('user_id',$id);
            $this->db->set('revision', 'revision+1', FALSE);
            $this->db->update($this->config->item('table_setup_users_company'));
            $companies=$this->input->post('company');
            if(is_array($companies))
            {
                foreach($companies as $company)
                {
                    $data=array();
                    $data['user_id']=$id;
                    $data['company_id']=$company;
                    $data['user_created'] = $user->user_id;
                    $data['date_created'] = $time;
                    $data['revision'] = 1;
                    Query_helper::add($this->config->item('table_setup_users_company'),$data);
                }
            }
            $this->db->trans_complete();   //DB Transaction Handle END
            if ($this->db->trans_status() === TRUE)
            {
                $this->message=$this->lang->line("MSG_SAVED_SUCCESS");
                $this->system_list();
            }
            else
            {
                $ajax['status']=false;
                $ajax['system_message']=$this->lang->line("MSG_SAVED_FAIL");
                $this->jsonReturn($ajax);
            }
        }
    }
    private function check_validation()
    {
        return true;
    }


}
