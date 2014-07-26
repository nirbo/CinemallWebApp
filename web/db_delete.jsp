<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DB Delete</title>
    </head>
    
    <body>
        Working, please wait...
        <sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"
            url="jdbc:mysql://localhost/cinemall?useUnicode=true&characterEncoding=UTF-8"
            user="root"  
            password=""/>
        
        <c:forEach var="postParams" items="${param}">
            <sql:update dataSource="${db}" var="toDelete">
                DELETE FROM splash_messages WHERE id='${postParams.value}'
            </sql:update>
        </c:forEach>
        
        <script type="text/javascript">
            window.location = 'manage_messages.jsp';
        </script>
    </body>
</html>
