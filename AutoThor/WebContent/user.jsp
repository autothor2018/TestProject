<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link type="text/css"
    href="css/ui-lightness/jquery-ui-1.8.18.custom.css" rel="stylesheet" />
<script type="text/javascript" src="js/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="js/jquery-ui-1.8.18.custom.min.js"></script>
<title>Add new user</title>
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css" rel="stylesheet">
<link href="http://netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
<link href="Resource/bootstrap.css" rel="stylesheet">
</head>
<body>
    <script>
        $(function() {
            $("#date").datepicker();
        });
    </script>
    
    
    <div class="container">
            <form method="POST" action='UserController' name="frmAddUser" role="form">
                 
                <div class="form-group">
                    <label for="name">
                         User ID :<input class="form-control" type="text" readonly="readonly" name="userid" value="<c:out value="${user.userid}" />" />
                    </label>
                </div>  
               
               <div class="form-group">
                    <label for="name">
                        First Name :<input class="form-control" type="text" name="firstName" value="<c:out value="${user.firstName}" />" />
                    </label>
                </div>
                <div class="form-group">
                    <label for="phone">
                        Last Name : <input class="form-control" type="text" name="lastName" value="<c:out value="${user.lastName}" />" /> 
                    </label>
                </div>
                <div class="form-group">
                    <label for="profession">
                        DOB : (mm-dd-yyyy)<input class="form-control" type="text" name="dob" id="date" value="<fmt:formatDate pattern="MM/dd/yyyy" value="${user.dob}" />" />
                    </label>
                </div>
                <div class="form-group">
                    <label for="profession">
                        Email :  <input class="form-control" type="text" name="email" value="<c:out value="${user.email}" />" />
                    </label>
                </div>
                <input type="submit" value="Submit" class="btn btn-info" />
            </form>
        </div>
    
    
    
   <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
        <script src="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
</body>
</html>