<%@page contentType="text/html; charset=UTF-8"%>
<%@include file="../header.jsp" %>
<%@include file="menu.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="main">
	<div class="form-title">学生登録情報</div>
	<form action="Insert.action" method="post"><br>
		入学年度:<select name="year">
			<option value="2021">2021</option>
			<option value="2022">2022</option>
			<option value="2023">2023</option>
			<option value="2024">2024</option>
			<option value="2025">2025</option>
		</select>
		学生番号:<input type="number" name="no" required><br>
<div>
	<ul>
		<c:forEach var="error" items="${errors}">
			<li>${error}</li>
		</c:forEach>
	</ul>
</div>
		名前:<input type="text" name="name" required><br>
		クラス:<select name="class_num">
			<c:forEach var="c_num" items="${list}">
				<option value="${c_num.class_num }">${c_num.class_num }</option>
			</c:forEach>
		</select>
		<input type="hidden" value="tes" name="school_cd">
		<input type="submit" value="登録して終了">
	</form>

	<div class="back-link">
		<a href="home.jsp">← 戻る</a>
	</div>
</div>

<%@include file="../footer.jsp" %>

<style>
.main form {
	max-width: 700px;
	margin: 30px auto;
	padding: 30px;
	background-color: #ffffff;
	box-shadow: 0 8px 20px rgba(0, 0, 0, 0.05);
}

form select,
form input[type="text"],
form input[type="number"] {
	width: 100%;
	margin-bottom: 20px;
	padding: 14px;
	font-size: 18px;
	border: 1px solid #bbb;
	border-radius: 6px;
	box-sizing: border-box;
}

form select[name="year"],
form select[name="class_num"] {
	background-color: #fffdf7;
}

form input[type="submit"] {
	background-color: #6c757d;
	color: white;
	padding: 12px 30px;
	font-size: 18px;
	border: none;
	border-radius: 10px;
	cursor: pointer;
	transition: background-color 0.3s ease;
}

form input[type="submit"]:hover {
	background-color: #5a6268;
}

.form-title {
	max-width: 700px;
	margin: 40px auto 10px;
	background-color: #f0f0f0;
	color: #333;
	padding: 14px 20px;
	font-size: 20px;
	font-weight: bold;
	border-radius: 10px;
	box-shadow: 0 4px 12px rgba(0, 0, 0, 0.03);
}

.back-link {
	max-width: 700px;
	margin: 20px auto;
	text-align: left;
}

.back-link a {
	color: #007bff;
	font-size: 16px;
	text-decoration: underline;
}

.back-link a:hover {
	text-decoration: none;
	color: #0056b3;
}

@media (max-width: 768px) {
	.main form {
		width: 90%;
		padding: 20px;
	}
	form input[type="submit"] {
		width: 100%;
	}
}
</style>
