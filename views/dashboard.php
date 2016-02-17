<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
$user=User_helper::get_user();
?>
<div class="row widget">
    <div class="col-sm-12 text-center">
        <h1>WelCome <?php echo $user->name;?></h1>
        <img style="max-width: 250px;" src="<?php echo $user->picture_profile; ?>">
    </div>



</div>
<div class="clearfix"></div>
