<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
    <head>
        <title>Add Messages</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        <script src="js/datetimepicker_css.js"></script>
        <link rel="stylesheet" type="text/css" href="css/button.css">
    </head>
    
    <body>
        <div>
            <form name="add_message_form" method="get" action="db_insert.jsp">
                Fill the fields below to add a new splash screen message:
                <br><br>
                Message Title: <input type="text" id="title" name="title" size="80"><br>
                Message Contents: <input type="text" id="content" name="content" size="80"><br>
                Message Start Date: <input type="text" id="start_date" name="start_date" readonly>
                    <img src="images/date_time_picker/cal.gif" onclick="javascript:NewCssCal('start_date','yyyyMMdd','dropdown',true,24,true)" style="cursor: pointer"/><br>
                Message End Date: <input type="text" id="end_date" name="end_date" readonly>
                    <img src="images/date_time_picker/cal.gif" onclick="javascript:NewCssCal('end_date','yyyyMMdd','dropdown',true,24,true)" style="cursor: pointer"/><br>
                <br><br>
                <input type="submit" class="button" value="Add the message">
            </form>
        </div>
    </body>
</html>
