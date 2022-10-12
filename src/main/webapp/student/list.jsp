<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Quản lý học viên</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
          rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
          crossorigin="anonymous">
    <link rel="stylesheet" href="css/style.css">

</head>
<body>
<div class="list">
    <ul class="list-group">
        <li class="list-group-item"><h5><a href="/students" >Danh sách học viên</a></h5></li>
        <li class="list-group-item"><h5><a href="/students?action=create">Thêm học viên mới</a></h5></li>

        <li class="list-group-item"><h5><a href="/students?action=sort"> Sắp xếp học viên theo tên</a></h5></li>
    </ul>
</div>
<form action="/students?action=search" method="post">
    <input type="text" name="input" placeholder="Nhập tên học viên ">

    <button type="submit" >Tìm</button>
</form>
<h4>
    <div>
        <table style="width: 100%" border="1" cellpadding="5">
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
                        <a href="/students?action=edit&id=${student.id}">Sửa</a>
                        <a href="/students?action=delete&id=${student.id}">Xoá</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
</h4>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</html>

