<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setCharacterEncoding("UTF-8"); %>

<link rel="stylesheet" type="text/css" href="css/button.css">

<c:set var="title" value="${param.title}"/>
<c:set var="content" value="${param.content}"/>
<c:set var="start_date" value="${param.start_date}"/>
<c:set var="end_date" value="${param.end_date}"/>

<sql:update dataSource="jdbc/cinemall" var="inputParams">   
    INSERT INTO splash_messages (title,content,published_date,start_date,end_date,active) VALUES('${title}','${content}',NOW(),'${start_date}','${end_date}',"NO");
</sql:update>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DB Insert</title>
    </head>
    
    <body>
        The following message has been added to the splash messages database:
        <br><br>
        Title: ${param.title}<br>
        Content: ${param.content}<br>
        Start Date: ${param.start_date}<br>
        End Date: ${param.end_date}
        <br><br><br>
        <button id="add_another_message" type="button" class="button" onClick="window.location = 'add_message.jsp'">Add another Message</button>
        <br><br>
        <button id="return_to_list" type="button" class="button" onClick="window.location = 'manage_messages.jsp'">Return to messages list</button>
    </body>
</html>
