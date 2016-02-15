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
echo '<PRE>';
print_r($user);
echo '</PRE>';

?>
<div class="row widget">



</div>
<div class="clearfix"></div>
