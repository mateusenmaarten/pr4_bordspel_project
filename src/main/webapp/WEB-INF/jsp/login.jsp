<%--
  Created by IntelliJ IDEA.
  User: Hans Geerts
  Date: 21/11/2020
  Time: 10:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:include page="navigatiebar.jsp"/>
<div class="main">
    <div class="col-md-6 col-sm-12">
        <div class="login-form">
            <form>
                <div class="form-group">
                    <label>User Name</label>
                    <input type="text" class="form-control" placeholder="User Name">
                </div>
                <div class="form-group">
                    <label>Password</label>
                    <input type="password" class="form-control" placeholder="Password">
                </div>
                <button type="submit" class="btn btn-black">Inloggen</button>
                <button type="submit" class="btn btn-secondary">Register</button>

            </form>
        </div>
    </div>
</div>

</body>
</html>
