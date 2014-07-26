<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
    <head>
        <title>Manage Splash Messages</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        <link rel="stylesheet" type="text/css" href="css/button.css">
    </head>
    
    <body>
        <div>
            <button id="manage_messages_page" type="button" class="button" onClick="window.location = 'manage_messages.jsp'">Manage messages</button>
            <br><br>
            <button id="add_message_page" type="button" class="button" onClick="window.location = 'add_message.jsp'">Add a Message</button>
            <br><br>
        </div>
    </body>
</html>

