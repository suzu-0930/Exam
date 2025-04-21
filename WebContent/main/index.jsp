<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="../header.jsp" %>
<%@include file="menu.jsp" %>

<div class="main">
    <!-- h2部分を囲むdivを追加 -->
    <div class="heading-box">
        <h2>メニュー</h2>
    </div>

    <div class="menu-boxes">
        <div class="menu-box box1">
            <h3><a href="Search.action">学生管理</a></h3>
        </div>
        <div class="menu-box box2">
            <h3>成績管理</h3>
            <div class="score-links">
                <a href="InsertSearch.action">成績登録</a>
                <a href="ScoreSearch.action">成績参照</a>
            </div>
        </div>
        <div class="menu-box box3">
            <h3><a href="SubjectManage.action">科目管理</a></h3>
        </div>
    </div>
</div>

<%@include file="../footer.jsp" %>

<style>
/* h2部分を囲むdivのスタイル */
.heading-box {
    background-color: #d0d0d0;   /* 薄い灰色 */
    padding: 10px 15px;          /* 小さめに調整 */
    margin-bottom: 25px;         /* 下に余白 */
    border: none;                /* 枠線なし（念のため） */
}

/* h2のスタイル */
.heading-box h2 {
    margin: 0;
    color: black;                /* 黒文字に変更 */
    text-align: left;
    font-size: 22px;
}

/* メニュー項目を長方形で囲む */
.menu-box {
    flex: 1;
    padding: 20px;
    border-radius: 10px;
    background-color: #dcdcdc;
    box-shadow: 2px 2px 8px #b0b0b0;
    font-size: 20px;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    min-height: 170px;
    text-align: center;
}

/* メニュー項目タイトルのスタイル */
.menu-box h3 {
    margin-bottom: 15px;
}

/* メニューリンクのスタイル */
.menu-box a {
    text-decoration: none;
    color: #005eff;
    font-weight: normal;
    font-size: 18px;
    border-bottom: 1px solid #005eff;
    padding-bottom: 2px;
    margin: 5px 0;
    display: inline-block;
}

/* メニューリンクのホバー時のスタイル */
.menu-box a:hover {
    color: #007bff;
    border-bottom-color: #007bff;
}

/* 成績リンクの縦並びスタイル */
.score-links {
    display: flex;
    flex-direction: column;
    align-items: center;
}

/* 各メニュー項目の背景色 */
.box1 {
    background-color: #e6bcbc;
}
.box2 {
    background-color: #cbe6cb;
}
.box3 {
    background-color: #ccc9f0;
}

/* メニュー全体の配置 */
.menu-boxes {
    display: flex;
    gap: 20px;
    margin-top: 30px;
}
</style>
