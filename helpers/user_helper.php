<?php

class User_helper
{
    public static $logged_user = null;
    function __construct($id)
    {
        $CI = & get_instance();
        $user = $CI->db->get_where($CI->config->item('table_user_info'), array('user_id' => $id))->row();
        if ($user)
        {
            foreach ($user as $key => $value)
            {
                $this->$key = $value;
            }
        }
    }
    public static function login($username, $password)
    {
        $CI = & get_instance();
        $user = $CI->db->get_where($CI->config->item('table_user'), array('user_name' => $username, 'password' =>(md5($password)),'status'=>$CI->config->item('system_status_active')))->row();
        if ($user)
        {
            $CI->session->set_userdata("user_id", $user->id);
            return TRUE;
        }
        else
        {
            return FALSE;
        }
    }



    public static function get_user()
    {
        $CI = & get_instance();
        if (User_helper::$logged_user) {
            return User_helper::$logged_user;
        }
        else
        {
            if($CI->session->userdata("user_id")!="")
            {
                $user = $CI->db->get_where($CI->config->item('table_user_info'), array('user_id' => $CI->session->userdata('user_id')))->row();
                //$user = $CI->db->get_where($CI->config->item('table_user'), array('id' => $CI->session->userdata('user_id'),'status'=>$CI->config->item('system_status_active')))->row();
                if($user)
                {
                    User_helper::$logged_user = new User_helper($CI->session->userdata('user_id'));
                    return User_helper::$logged_user;
                }
                return null;
            }
            else
            {
                return null;
            }

        }
    }
}