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
                system_resized_image_files=[];
                window.location.replace(xhr.responseJSON.system_redirect_url);

                //window.history.pushState(null, "Search Results",xhr.responseJSON.page_url);
                //window.history.replaceState(null, "Search Results",xhr.responseJSON.system_page_url);
            }
            if(xhr.responseJSON.system_page_url)
            {
                system_resized_image_files=[];
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
        var form_data=new FormData(this);
        var file;
        for(var i=0;i<system_resized_image_files.length;i++)
        {
            file=system_resized_image_files[i];
            if(form_data.has(file.key))
            {
                form_data.set(file.key,file.value,file.name);
            }
        }
        system_resized_image_files=[];
        event.preventDefault();
        $.ajax({
            url: $(this).attr("action"),
            type: $(this).attr("method"),
            dataType: "JSON",
            data: form_data,
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
        if(this.files && this.files[0])
        {
            var input_file=$(this);
            var container=$(this).attr('data-preview-container');
            var file=this.files[0];
            var file_type=file.type;
            if(file_type && file_type.substr(0,5)=="image")
            {
                var key=input_file.attr('name');
                var file_name=file.name.replace(/\.[^/.]+$/,"");
                //var file_name=file.name;
                var preview_height=200;
                if($(this).attr('data-preview-height'))
                {
                    preview_height=$(this).attr('data-preview-height');
                }
                var path=URL.createObjectURL(file);
                if(container)
                {
                    var img_tag='<img height="'+preview_height+'" src="'+path+'" >';
                    $(container).html(img_tag);
                }
                var img=new Image();
                img.src=path;
                img.onload=function()
                {
                    var MAX_WIDTH = 800;
                    var MAX_HEIGHT = 600;
                    var width = img.naturalWidth;
                    var height = img.naturalHeight;
                    if((width>MAX_WIDTH)||(height>MAX_HEIGHT))
                    {
                        if((width/height)>(MAX_WIDTH/MAX_HEIGHT))
                        {
                            height *= MAX_WIDTH / width;
                            width = MAX_WIDTH;
                        }
                        else
                        {
                            width *= MAX_HEIGHT / height;
                            height = MAX_HEIGHT;
                        }
                        var canvas = document.createElement("canvas");
                        canvas.width = width;
                        canvas.height = height;
                        var context = canvas.getContext("2d");
                        context.drawImage(img, 0, 0, width, height);
                        canvas.toBlob(function(blob)
                        {
                            system_resized_image_files[system_resized_image_files.length]={
                                key:key,
                                value:blob,
                                name:file_name+'.png'
                            };
                            //saveAs(blob, file.name);
                            input_file.val(null);
                            //input_file.parent().find('.badge').remove();
                        });
                        //console.log('with resize');

                    }
                    //console.log('without resize');
                };
            }
            else if(container)
            {
                $(container).html(file.name);
            }
            else
            {
                console.log('no container for file');
            }
        }
        else
        {
            console.log('no file attached');
        }
    });
    $(document).on("click", ".system_jqx_column", function(event)
    {
        var jqx_grid_id='#system_jqx_container';
        $(jqx_grid_id).jqxGrid('beginupdate');
        if($(this).is(':checked'))
        {
            $(jqx_grid_id).jqxGrid('showcolumn', $(this).val());
        }
        else
        {
            $(jqx_grid_id).jqxGrid('hidecolumn', $(this).val());
        }
        $(jqx_grid_id).jqxGrid('endupdate');

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
    $("#system_message").html(message);
    $("#system_message").animate({right:"100px"}).animate({right:"30px"}).delay(3000).animate({right:"100px"}).animate({right:"-5000px"});
}

function turn_off_triggers()
{
    $(document).off("click", ".task_action_all");

}
