<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
    $CI = & get_instance();
    $action_data=array();
    if(isset($CI->permissions['add'])&&($CI->permissions['add']==1))
    {
        $action_data["action_new"]=base_url($CI->controller_url."/index/add");
    }
    if(isset($CI->permissions['edit'])&&($CI->permissions['edit']==1))
    {
        $action_data["action_edit"]=base_url($CI->controller_url."/index/edit");
    }
    if(isset($CI->permissions['view'])&&($CI->permissions['view']==1))
    {
        $action_data["action_details"]=base_url($CI->controller_url."/index/details");
    }
    $action_data["action_refresh"]=base_url($CI->controller_url."/index/list");
    $CI->load->view("action_buttons",$action_data);
?>

<div class="row widget">
    <div class="widget-header">
        <div class="title">
            <?php echo $title; ?>
        </div>
        <div class="clearfix"></div>
    </div>
    <div class="col-xs-12" style="margin-bottom: 20px;">
        <div class="col-xs-12" style="margin-bottom: 20px;">
            <label class="checkbox-inline"><input type="checkbox" class="system_jqx_column" checked value="id"><?php echo $CI->lang->line('ID'); ?></label>
            <label class="checkbox-inline"><input type="checkbox" class="system_jqx_column" checked value="employee_id"><?php echo $CI->lang->line('LABEL_EMPLOYEE_ID'); ?></label>
            <label class="checkbox-inline"><input type="checkbox" class="system_jqx_column" checked value="user_name"><?php echo $CI->lang->line('LABEL_USERNAME'); ?></label>
            <label class="checkbox-inline"><input type="checkbox" class="system_jqx_column" checked value="name"><?php echo $CI->lang->line('LABEL_NAME'); ?></label>
            <label class="checkbox-inline"><input type="checkbox" class="system_jqx_column" checked value="email"><?php echo $CI->lang->line('LABEL_EMAIL'); ?></label>
            <label class="checkbox-inline"><input type="checkbox" class="system_jqx_column" checked value="designation_name"><?php echo $CI->lang->line('LABEL_DESIGNATION_NAME'); ?></label>
            <label class="checkbox-inline"><input type="checkbox" class="system_jqx_column" checked value="department_name"><?php echo $CI->lang->line('LABEL_DEPARTMENT_NAME'); ?></label>
            <label class="checkbox-inline"><input type="checkbox" class="system_jqx_column" checked value="mobile_no"><?php echo $CI->lang->line('LABEL_MOBILE_NO'); ?></label>
            <label class="checkbox-inline"><input type="checkbox" class="system_jqx_column" checked value="blood_group"><?php echo $CI->lang->line('LABEL_BLOOD_GROUP'); ?></label>
            <label class="checkbox-inline"><input type="checkbox" class="system_jqx_column" checked value="group_name"><?php echo $CI->lang->line('LABEL_USER_GROUP'); ?></label>
            <label class="checkbox-inline"><input type="checkbox" class="system_jqx_column" checked value="ordering"><?php echo $CI->lang->line('LABEL_ORDER'); ?></label>
            <label class="checkbox-inline"><input type="checkbox" class="system_jqx_column" checked value="status"><?php echo $CI->lang->line('STATUS'); ?></label>
        </div>
    </div>
    <div class="col-xs-12" id="system_jqx_container">

    </div>
</div>
<div class="clearfix"></div>
<script type="text/javascript">
    $(document).ready(function ()
    {
        turn_off_triggers();
        var url = "<?php echo base_url($CI->controller_url.'/get_items');?>";

        // prepare the data
        var source =
        {
            dataType: "json",
            dataFields: [
                { name: 'id', type: 'int' },
                { name: 'employee_id', type: 'string' },
                { name: 'user_name', type: 'string' },
                { name: 'name', type: 'string' },
                { name: 'email', type: 'string' },
                { name: 'designation_name', type: 'string' },
                { name: 'department_name', type: 'string' },
                { name: 'mobile_no', type: 'string' },
                { name: 'blood_group', type: 'string' },
                { name: 'group_name', type: 'string' },
                { name: 'ordering', type: 'int' },
                { name: 'status', type: 'string' }
            ],
            id: 'id',
            url: url
        };

        var dataAdapter = new $.jqx.dataAdapter(source);
        // create jqxgrid.
        $("#system_jqx_container").jqxGrid(
            {
                width: '100%',
                source: dataAdapter,
                pageable: true,
                filterable: true,
                sortable: true,
                showfilterrow: true,
                columnsresize: true,
                pagesize:50,
                pagesizeoptions: ['20', '50', '100', '200','300','500'],
                selectionmode: 'singlerow',
                altrows: true,
                autoheight: true,
                columns: [
                    { text: '<?php echo $CI->lang->line('ID'); ?>', dataField: 'id',width:'50',cellsAlign:'right'},
                    { text: '<?php echo $CI->lang->line('LABEL_EMPLOYEE_ID'); ?>', dataField: 'employee_id',width:'100'},
                    { text: '<?php echo $CI->lang->line('LABEL_USERNAME'); ?>', dataField: 'user_name',width:'150'},
                    { text: '<?php echo $CI->lang->line('LABEL_NAME'); ?>', dataField: 'name',width:'300'},
                    { text: '<?php echo $CI->lang->line('LABEL_EMAIL'); ?>', dataField: 'email',width:'200'},
                    { text: '<?php echo $CI->lang->line('LABEL_DESIGNATION_NAME'); ?>', dataField: 'designation_name',width:'200'},
                    { text: '<?php echo $CI->lang->line('LABEL_DEPARTMENT_NAME'); ?>', dataField: 'department_name',width:'200'},
                    { text: '<?php echo $CI->lang->line('LABEL_MOBILE_NO'); ?>', dataField: 'mobile_no'},
                    { text: '<?php echo $CI->lang->line('LABEL_BLOOD_GROUP'); ?>', dataField: 'blood_group',filtertype: 'list'},
                    { text: '<?php echo $CI->lang->line('LABEL_USER_GROUP'); ?>', dataField: 'group_name',filtertype: 'list'},
                    { text: '<?php echo $CI->lang->line('LABEL_ORDER'); ?>', dataField: 'ordering',width:'100',cellsalign: 'right'},
                    { text: '<?php echo $CI->lang->line('STATUS'); ?>', dataField: 'status',filtertype: 'list',width:'150',cellsalign: 'right'}
                ]
            });
    });
</script>