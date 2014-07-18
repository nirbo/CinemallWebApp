<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DB Insert</title>
    </head>
    
    <body>
        <sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"
            url="jdbc:mysql://localhost/cinemall"
            user="root"  
            password=""/>
        
        <sql:update dataSource="${db}" var="inputParams">
            <c:set var="title" value="${param.title}"/>
            <c:set var="content" value="${param.content}"/>
            <c:set var="start_date" value="${param.start_date}"/>
            <c:set var="end_date" value="${param.end_date}"/>

            INSERT INTO splash_messages (title,content,published_date,start_date,end_date,active) VALUES('${title}','${content}',NOW(),'${start_date}','${end_date}',"NO");
        </sql:update>
            The following message has been added to the splash messages database:
            <br><br>
            Title: ${param.title}
            Content: ${param.content}
            Start Date: ${param.start_date}
            End Date: ${param.end_date}
            <br><br><br>
            <a href="show_messages.jsp">Click here to return to the messages list</a>
    </body>
</html>
