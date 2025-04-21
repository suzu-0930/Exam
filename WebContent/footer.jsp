<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- フッターのスタイルを固定して一番下に配置できるようにする -->
<div style="clear: both;"></div>
<footer style="background-color: #f0f0f0; padding: 10px; border-radius: 8px; text-align: center; margin-top: 40px;">
	<small class="text-muted">© 2023 TIC</small>
	<br><small class="text-muted">大原学園</small></br>

	<c:if test="${user.isAuthenticated()}">
		<div class="nav" style="margin-top: 5px;">
		</div>
	</c:if>
</footer>
