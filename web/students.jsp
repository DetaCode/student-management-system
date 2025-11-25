<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>学生信息管理系统</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <style>
        /* 全局样式重置 */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        body {
            height: 100vh;
            background: linear-gradient(135deg, #83a4d4, #b6fbff);
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
        }

        .table-container {
            width: 90%;
            max-height: 85vh;
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
            overflow: auto;
        }

        .table-header {
            padding: 20px;
            position: sticky;
            top: 0;
            background-color: white;
            z-index: 100;
            border-bottom: 1px solid #eee;
        }

        .table-title {
            font-size: 28px;
            font-weight: bold;
            color: #2c4d6b;
            display: inline-block;
        }

        .add-box {
            float: right;
            padding: 8px 16px;
            background-color: #396386;
            color: white;
            border-radius: 5px;
            text-decoration: none;
            font-size: 16px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            font-size: 16px;
            table-layout: fixed; /* 关键：固定表格布局 */
        }

        th, td {
            padding: 12px 15px;
            text-align: left;
            border-bottom: 1px solid #eee;
            vertical-align: middle; /* 垂直居中 */
        }

        th {
            background-color: #396386;
            color: white;
            position: sticky;
            top: 80px;
            z-index: 50;
            font-weight: 500;
        }

        /* 精确设置每列宽度 */
        th:nth-child(1), td:nth-child(1) { width: 10%; }  /* 编号 */
        th:nth-child(2), td:nth-child(2) { width: 25%; }  /* 姓名 */
        th:nth-child(3), td:nth-child(3) { width: 15%; }  /* 年龄 */
        th:nth-child(4), td:nth-child(4) { width: 15%; }  /* 性别 */
        th:nth-child(5), td:nth-child(5) { width: 35%; }  /* 操作 */

        .action-links {
            display: flex;
            gap: 8px;
        }

        .action-links a {
            padding: 6px 12px;
            background-color: #396386;
            color: white;
            border-radius: 4px;
            text-decoration: none;
            font-size: 14px;
            white-space: nowrap;
        }

        .login-link {
            padding: 15px;
            text-align: center;
            background-color: white;
            position: sticky;
            bottom: 0;
            border-top: 1px solid #eee;
        }

        .login-link a {
            display: inline-block;
            padding: 10px 20px;
            background-color: #396386;
            color: white;
            border-radius: 5px;
            text-decoration: none;
        }
    </style>
</head>
<body>
<div class="table-container">
    <div class="table-header">
        <span class="table-title">学生信息表</span>
        <a class="add-box" href="${pageContext.request.contextPath}/addStudent.jsp">
            <i class="fas fa-plus"></i> 添加学生
        </a>
    </div>

    <table>
        <thead>
        <tr>
            <th>编号</th>
            <th>姓名</th>
            <th>年龄</th>
            <th>性别</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${studentList}" var="student">
            <tr>
                <td>${student.id}</td>
                <td>${student.name}</td>
                <td>${student.age}</td>
                <td>${student.sex}</td>
                <td>
                    <div class="action-links">
                        <a href="${pageContext.request.contextPath}/view.action?id=${student.id}">
                            <i class="fas fa-eye"></i> 查看
                        </a>
                        <a href="${pageContext.request.contextPath}/delete.action?id=${student.id}">
                            <i class="fas fa-trash"></i> 删除
                        </a>
                        <a href="${pageContext.request.contextPath}/edit.action?id=${student.id}">
                            <i class="fas fa-edit"></i> 编辑
                        </a>
                    </div>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

    <div class="login-link">
        <a href="${pageContext.request.contextPath}/login.jsp">返回登录页面</a>
    </div>
</div>
</body>
</html>