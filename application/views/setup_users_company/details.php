<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
$CI = & get_instance();
$action_data=array();
$action_data["action_back"]=base_url($CI->controller_url);
$CI->load->view("action_buttons",$action_data);
?>

<div class="row widget">
    <div class="widget-header">
        <div class="title">
            <?php echo $title; ?>
        </div>
        <div class="clearfix"></div>
    </div>
    <?php
    foreach($companies as $company)
    {
        ?>
        <div style="" class="row show-grid">
            <div class="col-xs-4">
                <label title="<?php echo $company['full_name'];?>" class="control-label pull-right"><?php echo $company['short_name'];?></label>
            </div>
            <div class="col-sm-4 col-xs-8">
                <label class="control-label"><?php if(in_array($company['id'],$assigned_companies)){echo 'YES';}else{echo 'NO';}?></label>
            </div>
        </div>
        <?php
    }
    ?>



</div>

<div class="clearfix"></div>

<script type="text/javascript">

    jQuery(document).ready(function()
    {
        turn_off_triggers();

    });
</script>
