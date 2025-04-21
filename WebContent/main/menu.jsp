<%@page contentType="text/html; charset=UTF-8"%>
<div class="side">
 <p><a href="index.jsp">メニュー</a></p>
 <ul>
    <li><a href="Search.action">学生管理</a></li>
    <p>成績管理</p>
    <li class="indent"><a href="InsertSearch.action">成績登録</a></li>
    <li class="indent"><a href="UpdateSearch.action">成績参照</a></li>
    <li><a href="DeleteSearch.action">科目管理</a></li>
 </ul>
</div>

<style>
    .side {
        width: 150px;
        float: left;
        border-right: 2px solid #ccc;
        min-height: 100vh;
        padding: 10px 20px;
        box-sizing: border-box;
    }

    .side ul {
        list-style-type: none; /* ← これで「・」を消す */
        padding: 0;
        margin: 0;
    }

    .side ul li {
        margin: 10px 0;
        text-align: left;
        padding-left: 10px;
    }

    .side ul li.indent {
        padding-left: 30px;
    }

    .side ul li a {
        text-decoration: underline;
        font-size: 16px;
    }

    .side ul li a:hover {
        color: #007bff;
    }

    .main {
        margin-left: 220px;
        padding: 20px;
    }
</style>
