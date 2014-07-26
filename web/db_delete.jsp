<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setCharacterEncoding("UTF-8"); %>

<c:set var="row_id" value="${param.id}"/>

<sql:update dataSource="jdbc/cinemall" var="toDelete">
    DELETE FROM splash_messages WHERE id='${row_id}'
</sql:update>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DB Delete</title>
    </head>
    
    <body>
        Working, please wait...
        <script type="text/javascript">
            window.location = 'manage_messages.jsp';
        </script>
    </body>
</html>
