<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DB Message Update</title>
    </head>
    
    <body>
        <sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"
            url="jdbc:mysql://localhost/cinemall"
            user="root"  
            password=""/>
        
        <c:set var="row_id" value="${param.id}"/>
        <c:set var="title" value="${param.title}"/>
        <c:set var="content" value="${param.content}"/>
        <c:set var="start_date" value="${param.start_date}"/>
        <c:set var="end_date" value="${param.end_date}"/>
        <c:set var="active" value="${param.active}"/>
        
        <sql:update dataSource="${db}" var="messageUpdate">
            UPDATE splash_messages SET title='${title}', content='${content}', start_date='${start_date}', end_date='${end_date}', active='${active}' WHERE id='${row_id}';
        </sql:update>
            
        <script type="text/javascript">
            window.location = 'manage_messages.jsp';
        </script>
    </body>
</html>
