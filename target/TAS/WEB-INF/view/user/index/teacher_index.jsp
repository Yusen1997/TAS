<%--@elvariable id="user" type="com.se.global.domain.User"--%>
<%--@elvariable id="course" type="com.se.global.domain.Course"--%>
<%--@elvariable id="courses" type="java.util.ArrayList<Course>"--%>
<%--@elvariable id="noticeTotalNum" type="int"--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>浙江大学教学辅助系统</title>
    <link rel="stylesheet" type="text/css" href="/css/user/index/user_index.css">
</head>
<body>
<h1>${user.name}老师, 欢迎您！</h1>
<h4>您有${noticeTotalNum}条未读消息,<a href="/notice">点击查看</a></h4>
<a href="/user/info">查看个人资料</a>
<img class="img-circle" src="${user.imageLocation}" width="42" height="42"/>
<ul>
    <c:forEach var="course" items="${courses}" varStatus="status">
        <li><a href="/course/${course.id}">${course.name}</a>,${course.credit},${course.semester},${course.time},${course.place}</li>
    </c:forEach>
</ul>
<a href="/logout">登出</a>
</body>
</html>
