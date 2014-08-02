<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://www.atg.com/taglibs/json" prefix="json"%>
<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setCharacterEncoding("UTF-8"); %>

<sql:query dataSource="jdbc/cinemall" var="results">
    SELECT * FROM splash_messages WHERE start_date <= NOW() AND end_date > NOW() AND active='YES';
</sql:query>

<json:object prettyPrint="true">
    <json:array name="All_Messages" var="row" items="${results.rows}" prettyPrint="true">
        <json:object prettyPrint="true">
            <json:property name="id" value="${row.id}"/>
            <json:property name="title" value="${row.title}"/>
            <json:property name="content" value="${row.content}"/>
            <json:property name="published_date" value="${row.published_date}"/>
            <json:property name="start_date" value="${row.start_date}"/>
            <json:property name="end_date" value="${row.end_date}"/>
            <json:property name="active" value="${row.active}"/>
        </json:object>
    </json:array>
</json:object>