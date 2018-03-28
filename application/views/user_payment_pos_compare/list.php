<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
    $CI = & get_instance();
    $action_data=array();
    $action_buttons[]=array(
        'type'=>'button',
        'label'=>"download",
        'id'=>'button_action_csv',
        'data-title'=>"Download"
    );
    $action_buttons[]=array(
        'label'=>$CI->lang->line("ACTION_REFRESH"),
        'href'=>site_url($CI->controller_url.'/index/list')
    );
    $CI->load->view('action_buttons',array('action_buttons'=>$action_buttons));
?>

<div class="row widget">
    <div class="widget-header">
        <div class="title">
            <?php echo $title; ?>
        </div>
        <div class="clearfix"></div>
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
                { name: 'login_id', type: 'string' },
                { name: 'login_user_name', type: 'string' },
                { name: 'login_employee_id', type: 'string' },
                { name: 'login_name', type: 'string' },
                { name: 'login_user_group_name', type: 'string' },
                { name: 'login_status', type: 'string' },
                { name: 'pos_id', type: 'string' },
                { name: 'pos_user_name', type: 'string' },
                { name: 'pos_name', type: 'string' },
                { name: 'pos_user_group_name', type: 'string' },
                { name: 'pos_status', type: 'string' }
            ],
            id: 'id',
            type: 'POST',
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
                pagesize:300,
                pagesizeoptions: ['20', '50', '100', '200','300','500'],
                selectionmode: 'singlerow',
                altrows: true,
                autoheight: true,
                enablebrowserselection:true,
                columns: [
                    { text: 'user name',pinned:true,width:'60',dataField: 'login_user_name',cellsalign: 'right'},
                    { columngroup: 'login_users',text: 'ID', dataField: 'login_id',width:'40',cellsalign: 'right'},
                    { columngroup: 'login_users',text: 'Employee ID', dataField: 'login_employee_id',width:'60'},
                    { columngroup: 'login_users',text: 'Name', dataField: 'login_name',width:'200'},
                    { columngroup: 'login_users',text: 'User Group', dataField: 'login_user_group_name',width:'100'},
                    { columngroup: 'login_users',text: 'Status', dataField: 'login_status',filtertype: 'list',width:'100',cellsalign: 'right'},
                    { columngroup: 'pos_users',text: 'ID', dataField: 'pos_id',width:'40',cellsalign: 'right'},
                    { columngroup: 'pos_users',text: 'User name', dataField: 'pos_user_name',width:'60',cellsalign: 'right'},
                    { columngroup: 'pos_users',text: 'Name', dataField: 'pos_name',width:'200'},
                    { columngroup: 'pos_users',text: 'User Group', dataField: 'pos_user_group_name',width:'100'},
                    { columngroup: 'pos_users',text: 'Status', dataField: 'pos_status',filtertype: 'list',width:'100',cellsalign: 'right'}
                ],
                columngroups:
                    [
                        { text: 'Login Users', align: 'center', name: 'login_users' },
                        { text: 'Pos Users', align: 'center', name: 'pos_users' }
                    ]
            });
    });
</script>