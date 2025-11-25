<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <title>编辑学生信息</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
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
            /* 使用与前两个页面相同的渐变背景 */
            background: linear-gradient(135deg, #83a4d4, #b6fbff);
            display: flex;
            justify-content: center;
            align-items: center;
        }

        form {
            background-color: rgba(255, 255, 255, 0.9);
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
            /* 添加过渡效果 */
            transition: all 0.3s ease;
        }

        form:hover {
            box-shadow: 0 15px 30px rgba(0, 0, 0, 0.2);
        }

        h1 {
            font-size: 32px;
            margin-bottom: 30px;
            color: #333;
            text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.1);
        }

        label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
            color: #333;
        }

        input[type="text"] {
            width: 300px;
            height: 48px;
            border: none;
            border-bottom: 2px solid #ccc;
            background-color: transparent;
            padding-left: 15px;
            font-size: 16px;
            color: #333;
            margin-bottom: 20px;
            outline: none;
            /* 添加过渡效果 */
            transition: border-color 0.3s ease;
        }

        input[type="text"]:focus {
            border-color: #396386;
        }

        input[type="hidden"] {
            display: none;
        }

        input[type="submit"] {
            width: 325px;
            line-height: 46px;
            text-align: center;
            font-size: 18px;
            color: #fff;
            background: #396386;
            outline: none;
            border: none;
            border-radius: 5px;
            margin-top: 15px;
            cursor: pointer;
            /* 添加过渡效果 */
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #2c4d6b;
        }

        .home-link {
            margin-top: 20px;
            text-align: center;
        }

        .home-link a {
            color: #396386;
            text-decoration: none;
            /* 添加过渡效果 */
            transition: color 0.3s ease;
            font-size: 18px;
        }

        .home-link a:hover {
            color: #2c4d6b;
            text-decoration: underline;
        }

        .home-link i {
            margin-right: 5px;
        }
    </style>
</head>

<body>
<form action="${pageContext.request.contextPath}/edit.action" method="post">
    <h1>编辑学生信息</h1>

    <input type="hidden" name="id" value="${student.id}">
    <p>
        <label for="name">姓名</label>
        <input type="text" id="name" name="name" value="${student.name}">
    </p>
    <p>
        <label for="age">年龄</label>
        <input type="text" id="age" name="age" value="${student.age}">
    </p>
    <p>
        <label for="sex">性别</label>
        <input type="text" id="sex" name="sex" value="${student.sex}">
    </p>
    <div class="home-link">
        <a href="${pageContext.request.contextPath}/students.do">
            <i class="fas fa-home"></i> 跳转首页
        </a>
    </div>
    <p>
        <input type="submit" value="保存">
    </p>
</form>
</body>

</html>