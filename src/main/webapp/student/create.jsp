<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Thêm học viên</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    <style>
        .message{
            color: mediumvioletred;
        }
    </style>
</head>
<body>
<p>
    <a href="/students">Quay lại</a>
</p>
<div align="center">
    <form method="post">
        <table border="1" cellpadding="5">
            <caption>
                <h2>Thêm học viên</h2>
            </caption>
            <tr>
                <th>Họ và tên:</th>
                <td>
                    <input type="text" name="name" id="name" size="45" placeholder="Họ và tên"/>
                </td>
            </tr>
            <th>Ngày sinh:</th>
            <td>
                <input type="text" name="dateOfBirth" id="dateOfBirth" size="45" placeholder="Ngày sinh"/>
            </td>
            </tr>
            <tr>
                <th>Quê quán:</th>
                <td>
                    <input type="text" name="address" id="address" size="45"placeholder="Quê quán"/>
                </td>
            </tr>
            <tr>
                <th>Số điện thoại:</th>
                <td>
                    <input type="text" name="phoneNumber" id="phoneNumber" size="45"placeholder="Số điện thoại"/>
                </td>
            </tr>
            <tr>
                <th>Hộp thư:</th>
                <td>
                    <input type="text" name="email" id="email" size="45"placeholder="Địa chỉ email"/>
                </td>
            </tr>
            <tr>
                <th>Lớp học:</th>
                <td>
                    <input type="text" name="classroom" id="classrom" size="45"placeholder="Lớp học"/>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="Thêm"/>
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>

