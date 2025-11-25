<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <title>学生信息</title>
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
            /* 使用统一的渐变背景 */
            background: linear-gradient(135deg, #83a4d4, #b6fbff);
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .student-info-table {
            background-color: rgba(255, 255, 255, 0.9);
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
            /* 添加过渡效果 */
            transition: all 0.3s ease;
        }

        .student-info-table:hover {
            box-shadow: 0 15px 30px rgba(0, 0, 0, 0.2);
        }

        table {
            border-collapse: collapse;
            width: 100%;
        }

        th,
        td {
            padding: 18px;
            text-align: left;
            border-bottom: 1px solid #ccc;
            font-size: 18px;
        }

        th {
            background-color: #396386;
            color: #fff;
            font-size: 20px;
            letter-spacing: 1px;
        }

        h2 {
            font-size: 32px;
            margin-bottom: 20px;
            color: #333;
            text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.1);
        }

        .return-home {
            margin-top: 20px;
            text-align: center;
        }

        .return-home a {
            color: #396386;
            text-decoration: none;
            font-size: 18px;
            /* 添加过渡效果 */
            transition: color 0.3s ease;
        }

        .return-home a:hover {
            color: #2c4d6b;
            text-decoration: underline;
        }

        .return-home i {
            margin-right: 5px;
        }
    </style>
</head>

<body>
<div class="student-info-table">
    <h2>学生信息</h2>
    <table>
        <thead>
        <tr>
            <th>学生编号</th>
            <th>学生姓名</th>
            <th>学生年龄</th>
            <th>学生性别</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>${student.id}</td>
            <td>${student.name}</td>
            <td>${student.age}</td>
            <td>${student.sex}</td>
        </tr>
        </tbody>
    </table>
    <div class="return-home">
        <a href="${pageContext.request.contextPath}/students.do">
            <i class="fas fa-home"></i> 返回首页
        </a>
    </div>
</div>
</body>

</html>