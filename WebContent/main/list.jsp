<%@page contentType="text/html; charset=UTF-8"%>
<%@include file="../header.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!-- サイドメニュー -->
<div class="side">
    <p><a href="index.jsp">メニュー</a></p>
    <ul id="nav">
        <li><a href="Search.action">学生管理</a></li>
        <p>成績管理</p>
        <li class="indent"><a href="InsertSearch.action">成績登録</a></li>
        <li class="indent"><a href="UpdateSearch.action">成績参照</a></li>
        <li><a href="DeleteSearch.action">科目管理</a></li>
    </ul>
</div>

<!-- メインコンテンツ -->
<div class="main">
    <div class="title-bar">
        学生管理
    </div>

    <div class="search-area">
        <form action="Search.action" method="post">
            <div class="search-form">
                <label>入学年度</label>
                <select name="year">
                    <option value="">------</option>
                    <c:forEach var="stu2" items="${list2}">
                        <option value="${stu2.year}">${stu2.year}</option>
                    </c:forEach>
                </select>

                <label>クラス</label>
                <select name="class_num">
                    <option value="">------</option>
                    <c:forEach var="c_num" items="${list3}">
                        <option value="${c_num.class_num}">${c_num.class_num}</option>
                    </c:forEach>
                </select>

                <label><input type="checkbox" name="attend" value="True"> 在学中</label>

                <input type="submit" value="絞込み" class="submit-btn">

                <a href="InsertSearch.action" class="new-link">新規登録</a>
            </div>
        </form>
    </div>

    <div class="result-area">
        検索結果：${fn:length(list1)}件
        <table class="result-table">
            <tr>
                <th>入学年度</th>
                <th>学生番号</th>
                <th>氏名</th>
                <th>クラス</th>
                <th>在学中</th>
                <th></th>
            </tr>
            <c:forEach var="stu1" items="${list1}">
                <tr>
                    <td>${stu1.year}</td>
                    <td>${stu1.no}</td>
                    <td>${stu1.name}</td>
                    <td>${stu1.class_num}</td>
                    <td>
                        <c:choose>
                            <c:when test="${stu1.attend}">〇</c:when>
                            <c:otherwise>×</c:otherwise>
                        </c:choose>
                    </td>
                    <td><a href="update-in.jsp?id=${stu1.no}&select_year=${stu1.year}">変更</a></td>
                </tr>
            </c:forEach>
        </table>
    </div>

    <div class="back-link">
        <a href="index.jsp">Topページに戻る</a>
    </div>
</div>

<!-- スタイル -->
<style>
    body {
        margin: 0;
        font-family: sans-serif;
    }

    /* サイドメニュー */
    .side {
        width: 150px;
        float: left;
        border-right: 2px solid #ccc;
        min-height: 100vh;
        padding: 10px 20px;
        box-sizing: border-box;
        background-color: #f9f9f9;
    }

    .side ul {
        list-style-type: none;
        padding: 0;
        margin: 0;
    }

    .side ul li {
        margin: 10px 0;
        text-align: left;
    }

    .side ul li.indent {
        padding-left: 20px;
    }

    .side ul li a {
        text-decoration: underline;
        color: #5a00ff;
        font-size: 16px;
    }

    .side ul li a:hover {
        color: #007bff;
    }

    /* メインエリア */
    .main {
        margin-left: 200px;
        padding: 20px;
        box-sizing: border-box;
    }

    .title-bar {
        background-color: #d3d3d3;
        text-align: center;
        font-weight: bold;
        padding: 10px 0;
        font-size: 18px;
        margin-bottom: 10px;
    }

    .search-area {
        background-color: #e6f0ff;
        padding: 15px;
        margin-bottom: 20px;
    }

    .search-form {
        display: flex;
        flex-wrap: wrap;
        align-items: center;
        gap: 10px;
        position: relative;
    }

    .submit-btn {
        padding: 5px 10px;
    }

    .new-link {
        position: absolute;
        right: 0;
        font-weight: bold;
        color: #0000ff;
    }

    .result-area {
        margin-top: 20px;
    }

    .result-table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 10px;
    }

    .result-table th {
        background-color: #f0f0f0;
        border: 1px solid #ccc;
        padding: 8px;
    }

    .result-table td {
        border: 1px solid #ccc;
        padding: 8px;
        text-align: center;
    }

    .result-table tr:nth-child(even) {
        background-color: #f9f9f9;
    }

    .back-link {
        margin-top: 20px;
        text-align: center;
    }

    .back-link a {
        text-decoration: none;
        color: #000;
    }
</style>
