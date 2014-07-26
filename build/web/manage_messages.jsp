<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setCharacterEncoding("UTF-8"); %>

<sql:query dataSource="jdbc/cinemall" var="result">
    SELECT * FROM splash_messages;
</sql:query>

<!DOCTYPE html>
<html>
    <head>
        <title>Show all messages</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        <link rel="stylesheet" type="text/css" href="css/button.css">
        <script type="text/javascript" src="js/functions.js"></script>
    </head>
    
    <body>    
    <center><button id="manage_messages_page" type="button" class="button" onClick="window.location = 'index.jsp'">Return to Homepage</center></button>
            <br><br><br>
            <form method="post" name="messages">
                <table border="1" width="100%">
                    <tr>
                        <th>Title</th>
                        <th>Message</th>
                        <th>Publish Date</th>
                        <th>Message Active</th>
                        <th>Message Start Date</th>
                        <th>Message End Date</th>
                        <th>Actions</th>
                    </tr>

                    <c:forEach var="row" items="${result.rows}">
                        <tr>
                            <td><center><c:out value="${row.title}"/></center></td>
                            <td><center><c:out value="${row.content}"/></center></td>
                            <td><center><c:out value="${row.published_date}"/></center></td>
                            <td><center><c:out value="${row.active}"/></center></td>
                            <td><center><c:out value="${row.start_date}"/></center></td>
                            <td><center><c:out value="${row.end_date}"/></center></td>
                            <td><center>
                                <img src="images/activate-icon.png" id="${row.id}" title="Activate Message" style="cursor: pointer;" onClick="changeActiveState(this.id, 'YES')"> &nbsp;&nbsp;&nbsp;
                                <img src="images/deactivate-icon.png" id="${row.id}" title="Deactivate Message" style="cursor: pointer;" onClick="changeActiveState(this.id, 'NO')"> &nbsp;&nbsp;&nbsp;
                                <img src="images/edit-icon.png" id="${row.id}" title="Edit Message" style="cursor: pointer;" onClick="editMessage(this.id)"> &nbsp;&nbsp;&nbsp;
                                <img src="images/delete-icon.png" id="${row.id}" title="Delete Message" style="cursor: pointer;" onClick="deleteFromDB(this.id)">
                            </center></td>
                        </tr>
                    </c:forEach>
                </table>
            </form>
    </body>
</html>
