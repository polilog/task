<%--
  Created by IntelliJ IDEA.
  User: Policaj
  Date: 26.03.2017
  Time: 13:44
  To change this template use File | Settings | File Templates.
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Salads</title>
    <link href="<c:url value="resources/css/jquery.dataTables.min.css"/>" rel="stylesheet">
</head>
<body>
<table id="salads" class="display" cellspacing="0" width="100%">
    <thead>
    <tr>
        <th>Name</th>
        <th>Weight</th>
        <th>Calories</th>
    </tr>
    </thead>
    <tfoot>
    <tr>
        <th>Name</th>
        <th>Weight</th>
        <th>Calories</th>
    </tr>
    </tfoot>
    <tbody>
    <c:forEach items="${salads}" var="salad">
        <tr>
            <td>${salad.name}</td>
            <td>${salad.countWeight()}</td>
            <td>${salad.countCalories()}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<script src="<c:url value="resources/js/lib/jquery-1.12.4.js"/>"></script>
<script src="<c:url value="resources/js/lib/jquery.dataTables.min.js"/>"></script>
<script src="<c:url value="resources/js/salads.js"/>"></script>
</body>
</html>
