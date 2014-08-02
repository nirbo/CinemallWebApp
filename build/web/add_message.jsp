<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>

<html>
    <head>
        <title>Add Messages</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="css/button.css">
        
        <script type="text/javascript" src="js/functions.js"></script>
        <script type="text/javascript" src="js/datetimepicker_css.js"></script>
    </head>
    
    <body>
        <div>
            <form name="add_message_form" method="post" action="db_insert.jsp">
                Please fill <B><U>ALL</U></B> the fields below to add a new splash screen message. <br>
                Note that the "Content" field will accept up to 25 characters in order to properly fit the mobile application screen sizes.
                <br><br>
                Message Title: <input type="text" id="title" name="title" size="80" onBlur="validateFormFields('add_message_form', 'add_message_form_submit');"><br>
                Message Contents: <input type="text" id="content" name="content" maxlength="25" size="80" onBlur="validateFormFields('add_message_form', 'add_message_form_submit');"><br>
                Message Start Date: <input type="text" id="start_date" name="start_date" readonly onChange="validateFormFields('add_message_form', 'add_message_form_submit');">
                    <img src="images/date_time_picker/cal.gif" onclick="javascript:NewCssCal('start_date','yyyyMMdd','dropdown',true,24,true,'future')" style="cursor: pointer"/><br>
                Message End Date: <input type="text" id="end_date" name="end_date" readonly onChange="validateFormFields('add_message_form', 'add_message_form_submit');">
                    <img src="images/date_time_picker/cal.gif" onclick="javascript:NewCssCal('end_date','yyyyMMdd','dropdown',true,24,true,'future')" style="cursor: pointer"/><br>
                <br><br>
                <input type="submit" id="add_message_form_submit" class="button" value="Add the message">
            </form>
        </div>
        
        <script>
            window.onload = disableSubmitButton("add_message_form_submit");
        </script>
    </body>
</html>
