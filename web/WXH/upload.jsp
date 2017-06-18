<%--
  Created by IntelliJ IDEA.
  User: jasonchen
  Date: 2017.5.30
  Time: 21:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="../bootstrap-3.3.5-dist/css/bootstrap.min.css"/>
</head>
<body>
<form action="upload" method="post" enctype="multipart/form-data">
    <span class="btn-file">
        <input class="btn-link" type="file" name="file" id="file">
    </span>
    <input type="submit" value="上传"/>
</form>
</body>
</html>
