<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Show All Users</title>
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css" rel="stylesheet">
<link href="http://netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
<link href="css/bootstrap.css" rel="stylesheet">
</head>
<body>




<div class="wrap">
	<section>
            <div class="container">
                    <table class="table table-hover">
                            <thead>
                                    <tr>
                                            <th>
                                                    User Id
                                            </th>
                                            <th>
                                                    First Name
                                            </th>
                                            <th>
                                                    Last Name
                                            </th>
                                            <th>
                                                    DOB
                                            </th>
                                            <th>
                                                    Email address
                                            </th>
                                             <th>
                                                    Action
                                            </th>
                                    </tr>
                            </thead>
                            <tbody>
                                    <c:forEach items="${users}" var="user">
                                            <tr>
                                                    <td>
                                                            <c:out value="${user.userid}"/>
                                                    </td>
                                                    <td>
                                                            <c:out value="${user.firstName}"/>
                                                    </td>
                                                    <td>
                                                            <c:out value="${user.lastName}"/>
                                                    </td>
                                                    <td>
                                                            <fmt:formatDate pattern="yyyy-MMM-dd" value="${user.dob}" />
                                                    </td>
                                                    <td>
                                                            <c:out value="${user.email}"/>
                                                    </td>
                                                    <td><a href="UserController?action=edit&userId=<c:out value="${user.userid}"/>">Update</a></td>
                                                    <td><a href="UserController?action=delete&userId=<c:out value="${user.userid}"/>">Delete</a></td>
                                            </tr>
                                    </c:forEach>
                            </tbody>
                    </table>
            <a href="UserController?action=insert" role="button" class="btn btn-info btn-lg" data-toggle="modal">Add new user</a>	
            </div>
	</section>	
</div>

<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>

</body>
</html>