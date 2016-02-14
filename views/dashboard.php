<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
$user=User_helper::get_user();
if($user)
{
    echo 'found';
}
else
{
    echo 'not found';
}
print_r($user);
?>
<div class="row widget">



</div>
<div class="clearfix"></div>
