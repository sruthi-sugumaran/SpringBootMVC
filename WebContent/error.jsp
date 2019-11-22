<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Error</title>
</head>
<body>
<jsp:include page="/sign_in.jsp"></jsp:include>

</body>
<footer style="position:fixed; bottom:0; width:100%;">
<div class="alert alert-danger">
  <strong>Login Failed!</strong> Invalid credentials!
</div>
</footer>
</html>