<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DB Delete</title>
    </head>
    
    <body>
        <sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"
            url="jdbc:mysql://localhost/cinemall"
            user="root"  
            password=""/>
        
        <c:forEach var="postParams" items="${param}">
            <sql:update dataSource="${db}" var="toDelete">
                DELETE FROM splash_messages WHERE id='${postParams.value}'
            </sql:update>
                The message at id: ${postParams.value} has been deleted!
                <br><br><br>
                <a href="show_messages.jsp">Click here to return to the messages list</a>
        </c:forEach>
        
    </body>
</html>
