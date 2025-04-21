<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- 青い枠全体 -->
<div class="blue-box">
  <!-- タイトル部分 -->
  <div class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-dark text-decoration-none">
    <h1 class="fs-1">得点管理システム</h1>
  </div>

  <!-- ナビゲーション部分 -->
  <c:if test="${user.isAuthenticated()}">
    <div class="nav align-self-end">
      <span class="nav-item px-2">${user.getName()}様</span>
      <a class="nav-item px-2" href="Logout.action">ログアウト</a>
    </div>
  </c:if>
</div>

<style>
/* 青い枠のスタイル */
.blue-box {
  border: 2px solid #cccccc;
  background-color: #e6f2fc;
  padding: 8px;
  margin: 20px;
  position: relative;  /* ここを指定して子要素を基準に配置 */
}

/* タイトル部分のスタイル (青い枠内で左上に固定) */
.d-flex.align-items-center {
  background-color: #e6f2fc;
  padding: 8px 16px;
  font-size: 1.0rem;
  margin: 0 20px 16px 20px;
}

.nav.align-self-end {
  position: absolute;
  bottom: 10px;
  right: 20px;
  background-color: #e6f2fc;
  padding: 6px 16px;
  margin: 0 20px;
  /* 灰色の線を削除 */
  width: fit-content;
}
</style>
