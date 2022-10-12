<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Sửa thông tin học viên</title>
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
<div align="center">
    <form method="post">
        <table border="1" cellpadding="5">
                <h2>Cập nhật thông tin học viên</h2>
            <c:if test="${students!= null}">
                <input type="hidden" name="id" value="<c:out value='${student.id}' />"/>
            </c:if>
            <tr>
                <th>Họ và tên:</th>
                <td>
                    <input type="text" name="name" size="45"
                           value="<c:out value='${student.name}' />"
                    />
                </td>
            </tr>
            <tr>
                <th>Ngày sinh:</th>
                <td>
                    <input type="text" name="name" size="45"
                           value="<c:out value='${student.dateOfBirth}' />"
                    />
                </td>
            </tr>
            <tr>
                <th>Quê quán:</th>
                <td>
                    <input type="text" name="address" size="45"
                           value="<c:out value='${student.address}' />"
                    />
                </td>
            </tr><tr>
            <th>Số điện thoại:</th>
            <td>
                <input type="text" name="phone" size="45"
                       value="<c:out value='${student.phoneNumber}' />"
                />
            </td>
        </tr><tr>
            <th>Hòm thư:</th>
            <td>
                <input type="text" name="email" size="45"
                       value="<c:out value='${student.email}' />"
                />
            </td>
        </tr>
            <tr>
                <th>Lớp học:</th>
                <td>
                    <input type="text" name="account" size="30"
                           value="<c:out value='${student.classroom}' />"
                    />
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <a href="<%=request.getContextPath()%>/student"><input type="submit" value="Lưu lại"/></a>
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>

