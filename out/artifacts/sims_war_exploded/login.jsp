<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>登录2</title>
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
            /* 更柔和的渐变背景 */
            background: linear-gradient(135deg, #83a4d4, #b6fbff);
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .Box {
            width: 650px;
            height: 430px;
            background-color: rgba(255, 255, 255, 0.9);
            border-radius: 15px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
            position: relative;
            overflow: hidden;
            /* 添加过渡效果 */
            transition: all 0.3s ease;
        }

        .Box:hover {
            box-shadow: 0 15px 30px rgba(0, 0, 0, 0.2);
        }

        form {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -60%);
            width: 80%;
            text-align: center;
        }

        h3 {
            font-size: 32px;
            margin-bottom: 25px;
            letter-spacing: 5px;
            color: #333;
            text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.1);
            /* 增大上边距，让文字继续往下移动 */
            margin-top: 40px;
        }

        input {
            width: 100%;
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

        input:focus {
            border-color: #396386;
        }

        .desc {
            margin: 0px 20px 35px;
            text-align: center;
            font-size: 16px;
            color: #828282;
            letter-spacing: 1px;
        }

        .loginBtn {
            width: 100%;
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

        .loginBtn:hover {
            background-color: #2c4d6b;
        }

        .no {
            display: flex;
            justify-content: space-between;
            cursor: pointer;
            text-align: center;
            font-size: 16px;
            color: #828282;
            margin-top: 10px;
        }

        .no span {
            /* 添加过渡效果 */
            transition: color 0.3s ease;
        }

        .no span:hover {
            color: #396386;
        }

        p span {
            color: red;
            font-weight: bold;
        }
    </style>
</head>

<body>
<div class="Box">
    <form method="post" action="${pageContext.request.contextPath}/login.action">
        <p>
            <span>${msg}</span>
        </p>
        <h3>欢迎登录</h3>
        <p class="desc">WELCOME LOGIN</p>
        <input type="text" placeholder="请输入账号" required name="username">
        <input type="password" placeholder="请输入密码" required name="password">
        <input type="submit" class="loginBtn" value="登录">
        <p class="no">
            <span>忘记密码</span>
            <span>没有账号？立即注册</span>
        </p>
    </form>
</div>
</body>

</html>