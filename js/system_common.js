//system_redirect_url for redirect page
//page url to set current page link
//system_content for replace views
//system_message to display a message
//system_page_title for title of the page
//system_style for setting style for elements
//system_redirect_url will redirect page

//$("#system_save_new_status") mandatory for save buttons as form input field
//for browse buttons data-preview-container and data-preview-height for image display
//system_loading will show on ajaxstart and hide on ajaxcomplete
//data-form attribute contains form name for save,save and new, clear buttons

$(document).ready(function()
{

    $(document).ajaxStart(function()
    {
        $("#system_loading").show();

    });
    $(document).ajaxStop(function ()
    {

    });
    $(document).ajaxSuccess(function(event,xhr,options)
    {
        if(xhr.responseJSON)
        {
            if(xhr.responseJSON.system_content)
            {
                load_template(xhr.responseJSON.system_content);
            }
            if(xhr.responseJSON.system_style)
            {
                load_style(xhr.responseJSON.system_style);
            }

        }
    });
    $(document).ajaxComplete(function(event,xhr,options)
    {
        if(xhr.responseJSON)
        {
            if(xhr.responseJSON.system_redirect_url)
            {
                window.location.replace(xhr.responseJSON.system_redirect_url);

                //window.history.pushState(null, "Search Results",xhr.responseJSON.page_url);
                //window.history.replaceState(null, "Search Results",xhr.responseJSON.system_page_url);
            }
            if(xhr.responseJSON.system_page_url)
            {
                window.history.pushState(null, "Search Results",xhr.responseJSON.system_page_url);
                //window.history.replaceState(null, "Search Results",xhr.responseJSON.system_page_url);
            }

            //$("#loading").hide();
            $("#system_loading").hide();
            if(xhr.responseJSON.system_message)
            {
                animate_message(xhr.responseJSON.system_message);
            }
            if(xhr.responseJSON.system_page_title)
            {
                $('title').html(xhr.responseJSON.system_page_title);
            }

        }
    });
    $(document).ajaxError(function(event,xhr,options)
    {

        $("#system_loading").hide();
        animate_message("Request Error");

    });
    //binds form submission with ajax
    $(document).on("submit", "form", function(event)
    {
        if($(this).is('[class*="report_form"]'))
        {
            window.open('','form_popup','toolbar=0,scrollbars=0,location=0,statusbar=0,menubar=0,resizable=0,width=1300,height=500,left = 10,top = 10,scrollbars=yes');
            this.target = 'form_popup';
            return true;
        }

        if($(this).is('[class*="external"]'))
        {
            return true;
        }
        event.preventDefault();
        $.ajax({
            url: $(this).attr("action"),
            type: $(this).attr("method"),
            dataType: "JSON",
            data: new FormData(this),
            processData: false,
            contentType: false,
            success: function (data, status)
            {

            },
            error: function (xhr, desc, err)
            {


            }
        });
    });
    //bind any anchor tag to ajax request
    $(document).on("click", "a", function(event)
    {
        if(($(this).attr('href')=='#')||($(this).attr('href')==''))
        {
            event.preventDefault();
            return;
        }
        if(($(this).is('[class*="jqx"]'))||($(this).is('[class*="dropdown"]'))||($(this).is('[class*="external"]'))||($(this).is('[class*="ui-corner-all"]')))
        {
            return;
        }
        event.preventDefault();
        $.ajax({
            url: $(this).attr("href"),
            type: 'POST',
            dataType: "JSON",
            success: function (data, status)
            {

            },
            error: function (xhr, desc, err)
            {
                console.log("error");

            }
        });

    });
    $(document).on("click", "#button_action_clear", function(event)
    {

        $($(this).attr('data-form')).trigger('reset');

    });
    $(document).on("click", "#button_action_save", function(event)
    {
        $("#system_save_new_status").val(0);
        $($(this).attr('data-form')).submit();

    });
    $(document).on("click", "#button_action_save_new", function(event)
    {
        $("#system_save_new_status").val(1);
        $($(this).attr('data-form')).submit();

    });

    $(document).on("click", ".button_action_batch", function(event)
    {
        /*if($(this).attr('id')=='button_action_delete')
        {

            var sure = confirm(DELETE_CONFIRM);
            if(!sure)
            {
                return;
            }
        }*/

        var jqxgrid_id='#system_jqx_container';

        var selected_row_indexes = $(jqxgrid_id).jqxGrid('getselectedrowindexes');



        if (selected_row_indexes.length > 0)
        {
            //var selectedRowData = $(jqxgrid_id).jqxGrid('getrowdata', selected_row_indexes[0]);//only first selected
            var selectedRowData = $(jqxgrid_id).jqxGrid('getrowdata', selected_row_indexes[selected_row_indexes.length-1]);//only last selected

            $.ajax({
                url: $(this).attr('data-action-link'),
                type: 'POST',
                dataType: "JSON",
                data:{'id':selectedRowData.id},
                success: function (data, status)
                {

                },
                error: function (xhr, desc, err)
                {
                    console.log("error");

                }
            });


        }
        else
        {
            alert(SELCET_ONE_ITEM);
        }

    });
    $(document).on("click", "#button_action_delete", function(event)
    {
        var jqxgrid_id='#system_jqx_container';

        var selected_row_indexes = $(jqxgrid_id).jqxGrid('getselectedrowindexes');
        if (selected_row_indexes.length > 0)
        {
            var sure = confirm(DELETE_CONFIRM);
            if(!sure)
            {
                return;
            }
            var ids=[];
            for (var i = 0; i < selected_row_indexes.length; i++)
            {
                ids.push($(jqxgrid_id).jqxGrid('getrowdata', selected_row_indexes[i]).id);
            }
            $.ajax({
                url: $(this).attr('data-action-link'),
                type: 'POST',
                dataType: "JSON",
                data:{'ids':ids},
                success: function (data, status)
                {

                },
                error: function (xhr, desc, err)
                {
                    console.log("error");

                }
            });


        }
        else
        {
            alert(SELCET_ONE_ITEM);
        }

    });

    //load the current page content
    load_current_content();
    // binds form submission and fields to the validation engine
    $(document).on("change", ":file", function(event)
    {
        if(($(this).is('[class*="file_external"]')))
        {
            return;
        }
        var container=$(this).attr('data-preview-container');
        if(container)
        {
            if(this.files && this.files[0])
            {
                var file_type=this.files[0].type;
                if(file_type && file_type.substr(0,5)=="image")
                {
                    var preview_height=200;
                    if($(this).attr('data-preview-height'))
                    {
                        preview_height=$(this).attr('data-preview-height');
                    }
                    var reader = new FileReader();

                    reader.onload = function (e)
                    {
                        var img_tag='<img height="'+preview_height+'" src="'+ e.target.result+'" >';
                        $(container).html(img_tag);
                    };
                    reader.readAsDataURL(this.files[0]);
                }
                else
                {
                    $(container).html(this.files[0].name);
                }
            }
        }
        else
        {
            console.log('no container');
        }

    });



});
function load_current_content()
{
    $.ajax({
        url: location,
        type: 'POST',
        dataType: "JSON",
        success: function (data, status)
        {

        },
        error: function (xhr, desc, err)
        {
            console.log("error");

        }
    });
}
function load_template(content)
{
    for(var i=0;i<content.length;i++)
    {
        $(content[i].id).html(content[i].html);

    }
}
function load_style(content)
{
    for(var i=0;i<content.length;i++)
    {
        if(content[i].style)
        {
            $(content[i].id).attr('style',content[i].style);
        }
        if(content[i].display)
        {
            $(content[i].id).show();
        }
        else
        {
            $(content[i].id).hide();
        }
    }
}
function animate_message(message)
{
    $("#system_message").hide();
    $("#system_message").html(message);
    $('#system_message').slideToggle("slow").delay(3000).slideToggle("slow");
}

function turn_off_triggers()
{
    $(document).off("click", ".task_action_all");

}
