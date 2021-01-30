<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- 사이드 배너 시작-->
<div class="navBanner">
	<!--찜 하트 수-->
	<div class="favorites">
		<div class="favoritesText">찜한상품</div>
		<div class="favoritesCount">
			<p id="toFavorites" class="toFavorites">
				<i class="fas fa-heart"></i>&nbsp; <span>0</span>
			</p>
		</div>
		<!-- favoritesCount -->
		<br>
	</div>
	<!--찜 끝-->

	<!-- 최근 본 상품 시작 -->
	<div class="recently">
		<div class="recentlyText">최근본상품</div>
		<div class="recentlyCount">
			<a id="toRecently" class="toRecently"> <i
				class="far fa-hand-point-down"></i>&nbsp; <span>0</span>
			</a>
		</div>
	</div>
	<!-- 최근 본 상품 끝 -->

	<div class="totheTop">
		<a href="#" class="topText">TOP</a>
	</div>
</div>
<!--사이드 배너 끝 -->