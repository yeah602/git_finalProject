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
				<i class="fas fa-heart"></i>&nbsp; <span id="wishProduct">0</span>
			</p>
		</div>
		<!-- favoritesCount -->
		<br>
	</div>
	<!--찜 끝-->

	<!-- 최근 본 상품 시작 -->
	<div class="recently">
		<div class="recentlyText" >최근본상품 </div>
		<div class="recentlyProduct">
			<span id="recentlyCnt" style="margin-left:45px; margin-bottom:10px;"></span>
			<div id="recentlyArea" style="margin-left:18px;">
				<a id="recentlyList" >			
				</a> <!-- 최근본상품  -->
			</div>
			</div>	
			<div id="recentlyPaging" style="float:left; margin-left:25px;">
				<a id="subpage" class="subpage" onclick="recentlySubPage()" style="cursor: pointer;"><span style="font-size:11px;" id="recentlysubpage"></span></a>
				<a id="addpage" class="addpage" onclick="recnetlyAddPage()" style="cursor: pointer;"><span style="font-size:11px;" id="recentlyaddpage"></span></a>
			</div>
	</div>
	<!-- 최근 본 상품 끝 -->

	<div class="totheTop">
		<a href="#" class="topText">TOP</a>
	</div>
</div>
<!--사이드 배너 끝 -->

<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript" src="/market/js/index/nav.js"></script>