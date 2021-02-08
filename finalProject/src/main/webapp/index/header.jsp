<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link rel="stylesheet" href="/market/css/index/header.css">

<div class="first">
	<div class="main-logo">
		<img src="/market/image/index/fleamarket.png"
			style="height: 70%; cursor: pointer;" alt="로고들어갈 곳"
			onclick="location.href='/market/index.jsp'">
		<!-- <h5>플리마켓</h5> -->
	</div>

	<!-- 검색창 영역 -->
	<div class="search-area">
		<!-- 검색 입력 -->
		<div class="input-group">
			<input id="searchProduct" name="searchProduct" type="text"
				placeholder="상품명, @상점명 입력"> <i id="searchBtn"
				style="cursor: pointer;" onclick="search()" class="fas fa-search"></i>
		</div>
	</div>

	<!-- 우측메뉴 -->
	<div class="header-btn">
		<a onclick="location.href='/market/product/registForm'"> <i
			style="color: #0a58ca;" class="fas fa-won-sign"></i> 판매하기
		</a><a onclick="location.href='/market/store/store'"> <i
			style="color: #0a58ca;" class="fas fa-user-check"></i> 내 상점
		</a> <a id="chat"><i style="color: #0a58ca;" class="far fa-comments"></i>
			바다톡</a> <a onclick="location.href='/market/board/list?pg=1'"><i
			class="fas fa-book-open" style="color: #0a58ca;"></i> 커뮤니티</a>
	</div>

</div>

<div class="dropdown-button">
	<a id="btn_menu" class="cateList" data-bs-toggle="dropdown"
		aria-expanded="false"> <i class="fas fa-bars"></i>
	</a>
</div>
<div class="dropdown-area">
	<div>
		<div class="dropmenu">
			<ul>
				<li id="category_1st">
					<ul>
						<p>전체 카테고리</p>
						<a href="/market/index/cateDisplay?cate_code=100" id="100">여성의류</a>
						<a href="/market/index/cateDisplay?cate_code=200" id="200">남성의류</a>
						<a href="/market/index/cateDisplay?cate_code=300" id="300">패션잡화</a>
						<a href="/market/index/cateDisplay?cate_code=400" id="400">생활/가구/식품</a>
						<a href="/market/index/cateDisplay?cate_code=500" id="500">디지털/가전</a>
						<a href="/market/index/cateDisplay?cate_code=600" id="600">유아동/출산</a>
						<a href="/market/index/cateDisplay?cate_code=700" id="700">도서/취미/애완</a>
						<a href="/market/index/cateDisplay?cate_code=800" id="800">스포츠/레저</a>
						<a href="/market/index/cateDisplay?cate_code=900" id="900">스타굿즈</a>
						<a href="/market/index/cateDisplay?cate_code=1000" id="1000">뷰티/미용</a>
						<a href="/market/index/cateDisplay?cate_code=1100" id="1100">차량/오토바이</a>
						<a href="/market/index/cateDisplay?cate_code=1200" id="1200">기타</a>
					</ul>
				</li>
				<li id="category_2st">
					<ul>
						<p>세부 카테고리</p>
						<a href="/market/index/cateDisplay?cate_code=101">패딩/점퍼</a>
						<a href="/market/index/cateDisplay?cate_code=102">코트</a>
						<a href="/market/index/cateDisplay?cate_code=103">자켓/야상</a>
						<a href="/market/index/cateDisplay?cate_code=104">조끼/베스트</a>
						<a href="/market/index/cateDisplay?cate_code=105">니트/스웨터</a>
						<a href="/market/index/cateDisplay?cate_code=106">맨투맨/후드티</a>
						<a href="/market/index/cateDisplay?cate_code=107">가디건</a>
						<a href="/market/index/cateDisplay?cate_code=108">원피스</a>
						<a href="/market/index/cateDisplay?cate_code=109">블라우스</a>
						<a href="/market/index/cateDisplay?cate_code=110">셔츠/남방</a>
						<a href="/market/index/cateDisplay?cate_code=111">긴팔 티셔츠</a>
						<a href="/market/index/cateDisplay?cate_code=112">반팔 티셔츠</a>
						<a href="/market/index/cateDisplay?cate_code=113">면/캐주얼 바지</a>
						<a href="/market/index/cateDisplay?cate_code=114">청바지</a>
						<a href="/market/index/cateDisplay?cate_code=115">반바지</a>
						<a href="/market/index/cateDisplay?cate_code=116">트레이닝/운동복</a>
						<a href="/market/index/cateDisplay?cate_code=117">언더웨어/속옷</a>
						<a href="/market/index/cateDisplay?cate_code=118">비즈니스 정장</a>
						<a href="/market/index/cateDisplay?cate_code=119">빅사이즈</a>
					</ul>	
				</li>
				
			</ul>
			</ul>
		</div>

	</div>
</div>



<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript" src="/market/js/index/header.js"></script>
<script type="text/javascript">
	//로그인 함수
	$("#searchProduct").keydown(function(key) {
		if (key.keyCode == 13) {
			search();
		}
	});
</script>

