<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Sắp xếp học viên</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<p>
    <a href="/students">Quay lại</a>
</p>
<center>
    <h5><a href="/students?action=create">Thêm học viên</a></h5>
    <h5><a href="/students?action=search">Tìm học viên theo tên</a></h5>
    <h5><a href="/students?action=sort"> Sắp xếp học viên theo tên</a></h5>
</center>
<div align="center">
    <table border="1" cellpadding="5">
        <caption><h2>Danh sách học viên đã được sắp xếp theo tên</h2></caption>
        <tr>
            <th>ID</th>
            <th>Họ tên</th>
            <th>Ngày sinh</th>
            <th>Quê quán</th>
            <th>Số điện thoại</th>
            <th>Hòm thư</th>
            <th>Lớp học</th>
            <th>Hành động</th>
        </tr>
        <c:forEach var="student" items="${students}">
            <tr>
                <td><c:out value="${student.id}"/></td>
                <td><c:out value="${student.name}"/></td>
                <td><c:out value="${student.dateOfBirth}"/></td>
                <td><c:out value="${student.address}"/></td>
                <td><c:out value="${student.phoneNumber}"/></td>
                <td><c:out value="${student.email}"/></td>
                <td><c:out value="${student.classroom}"/></td>
                <td>
                    <a href=/students?action=edit&id=${student.id}">Sửa</a>
                </td>
                <td><a href=/students?action=delete&id=${student.id}">Xoá</a></td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
