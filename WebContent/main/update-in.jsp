<%@page contentType="text/html; charset=UTF-8"%>
<%@include file="../header.jsp" %>
<%@include file="menu.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>
    .form-title-box {
        background-color: #f0f0f0;
        padding: 10px 20px;
        border-radius: 8px;
        width: 500px; /* 横幅を広げる */
        margin-bottom: 15px;
        border: 1px solid #ccc;
    }
    .form-title-box h2 {
        font-size: 20px; /* 小さめのサイズに変更 */
        margin: 0;
    }
    input[type="text"],
    select {
        width: 300px;
        padding: 8px;
        margin: 8px 0;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-sizing: border-box;
    }
    input[type="checkbox"] {
        margin-top: 10px;
    }
    input[type="submit"] {
        background-color: #007BFF;
        color: white;
        border: none;
        padding: 10px 15px;
        border-radius: 5px;
        cursor: pointer;
        margin-top: 15px;
    }
    input[type="submit"]:hover {
        background-color: #0056b3;
    }
    .back-link:hover {
        text-decoration: underline;
    }
</style>

<div class="main">
<%
    request.setCharacterEncoding("utf-8");
    int text1 = Integer.parseInt(request.getParameter("select_year"));
    String text2 = request.getParameter("id");
%>

<!-- タイトルだけ囲う -->
<div class="form-title-box">
    <h2>学生情報変更</h2>
</div>

<p>入学年度: <%= text1 %></p>
<p>学生番号: <%= text2 %></p>

<form action="Update.action" method="post">
    <input type="hidden" name="no" value="<%=text2%>">
    <input type="hidden" name="year" value="<%=text1%>">

    氏名:<br>
    <input type="text" name="name"><br>

    クラス:<br>
    <select name="class_num">
        <option value="101">101</option>
        <option value="102">102</option>
        <option value="201">201</option>
        <option value="202">202</option>
    </select><br>

    <label><input type="checkbox" name="attend" value="True"> 在籍中</label><br>

    <input type="submit" value="更新">
</form>

<a href="Search.action" class="back-link">戻る</a>
</div>

<%@include file="../footer.jsp" %>
