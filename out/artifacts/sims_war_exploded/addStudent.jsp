<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <title>添加学生</title>
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
            /* 使用与登录页相同的渐变背景 */
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

        label {
            display: block;
            margin-bottom: 5px;
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

        .error {
            color: red;
            font-size: 14px;
            display: block;
            margin-bottom: 10px;
        }

        .jump-link {
            margin-top: 20px;
            text-align: center;
        }

        .jump-link a {
            color: #396386;
            text-decoration: none;
            /* 添加过渡效果 */
            transition: color 0.3s ease;
        }

        .jump-link a:hover {
            color: #2c4d6b;
            text-decoration: underline;
        }

        .jump-link i {
            margin-right: 5px;
        }
    </style>
    <script>
        function validateForm() {
            let name = document.getElementsByName("name")[0].value;
            let age = document.getElementsByName("age")[0].value;
            let sex = document.getElementsByName("sex")[0].value;
            let nameError = document.getElementById("nameError");
            let ageError = document.getElementById("ageError");
            let sexError = document.getElementById("sexError");
            let valid = true;

            // 验证姓名，必须为中文
            let nameRegex = /^[\u4e00-\u9fa5]+$/;
            if (!nameRegex.test(name)) {
                nameError.textContent = "姓名必须为中文";
                valid = false;
            } else {
                nameError.textContent = "";
            }

            // 验证年龄，必须为数字
            let ageRegex = /^\d+$/;
            if (!ageRegex.test(age)) {
                ageError.textContent = "年龄输入有误，请输入数字";
                valid = false;
            } else {
                ageError.textContent = "";
            }

            // 验证性别，必须为男或女
            if (sex!== "男" && sex!== "女") {
                sexError.textContent = "请输入男或女";
                valid = false;
            } else {
                sexError.textContent = "";
            }

            return valid;
        }
    </script>
</head>

<body>
<form action="${pageContext.request.contextPath}/addStudent.action" method="post" onsubmit="return validateForm()">
    <p>
        <label for="name">姓名</label>
        <input type="text" id="name" name="name">
        <span id="nameError" class="error"></span>
    </p>
    <p>
        <label for="age">年龄</label>
        <input type="text" id="age" name="age">
        <span id="ageError" class="error"></span>
    </p>
    <p>
        <label for="sex">性别</label>
        <input type="text" id="sex" name="sex">
        <span id="sexError" class="error"></span>
    </p>
    <div class="jump-link">
        <a href="${pageContext.request.contextPath}/students.do">
            <i class="fas fa-home"></i> 跳转首页
        </a>
    </div>
    <p>
        <input type="submit" value="添加">
    </p>
</form>
</body>

</html>