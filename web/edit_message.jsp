<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Message Page</title>
        
        <link rel="stylesheet" type="text/css" href="css/button.css">
        <script src="js/datetimepicker_css.js"></script>
    </head>
    
    <body>
        <sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"
            url="jdbc:mysql://localhost/cinemall"
            user="root"  
            password=""/>
        
        <c:set var="row_id" value="${param.id}"/>
        <sql:query dataSource="${db}" var="results">
            SELECT * FROM splash_messages WHERE id='${row_id}';
        </sql:query>
        
            <form name="edit_message_form" method="post" action='db_update.jsp'>
            <table border="1" width="90%">
                <tr>
                    <th>ID</th>
                    <th>Title</th>
                    <th>Message</th>
                    <th>Publish Date</th>
                    <th>Message Active</th>
                    <th>Message Start Date</th>
                    <th>Message End Date</th>
                </tr>
                
                <c:forEach var="row" items="${results.rows}">
                    <input type='hidden' value='${row.id}'/>
                    <tr>
                        <td><center><input type='text' id='id' name='id' readonly size='11' value='<c:out value="${row.id}"/>'</center></td>
                        <td><center><input type="text" id="title" name="title" value="<c:out value="${row.title}"/>"</center></td>
                        <td><center><input type="text" id="content" name="content" value="<c:out value="${row.content}"/>"</center></td>
                        <td><center><input type="text" id="published_date" name="published_date" readonly value="<c:out value="${row.published_date}"/>"</center></td>
                        <td><center><input type="text" id="active" name="active" readonly value="<c:out value="${row.active}"/>"</center></td>
                        <td><center><input type="text" id="start_date" name="start_date" readonly value="<c:out value="${row.start_date}"/>"/>
                            <img src="images/date_time_picker/cal.gif" onclick="javascript:NewCssCal('start_date','yyyyMMdd','dropdown',true,24,true)" style="cursor: pointer"</center></td>
                        <td><center><input type="text" id="end_date" name="end_date" readonly value="<c:out value="${row.end_date}"/>"/>
                            <img src="images/date_time_picker/cal.gif" onclick="javascript:NewCssCal('end_date','yyyyMMdd','dropdown',true,24,true)" style="cursor: pointer"</center></td>
                    </tr>
                </c:forEach>
            </table>
            <br><br>
            <input type="submit" class="button" value="Apply changes">
        </form>
    </body>
</html>
