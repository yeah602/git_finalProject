<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Static Navigation - SB Admin</title>
        <link href="/market/admin/css/styles.css" rel="stylesheet" />
	
	</head>
<body>
    <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <a class="navbar-brand" href="/market/admin/index.jsp">아나바다</a>
            <button class="btn btn-link btn-sm order-1 order-lg-0" id="sidebarToggle" href="#"><i class="fas fa-bars"></i></button>
            
            <!-- Navbar Search-->
            <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
                <div class="input-group">
                    	<a href="#" style="color:#FFFFFF;">관리자 아이디</a>"&nbsp; &nbsp; "<a href="#" style="color:#FFFFFF;">로그인시간</a>
                </div>
            </form>
            
            <!-- Navbar-->
            <ul class="navbar-nav ml-auto ml-md-0">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="userDropdown" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
                        <a class="dropdown-item" href="#">옵션1</a>
                        <a class="dropdown-item" href="#">옵션2</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="login.html">Logout</a>
                    </div>
                </li>
            </ul>
        </nav>
        
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                            <div class="sb-sidenav-menu-heading">Core</div>
                            <a class="nav-link" href="/market/admin/index">HOME</a>
                            
                            <div class="sb-sidenav-menu-heading">Interface</div>
	                           <ul>
		                            <a class="nav-link" href="/market/admin/memberList">전체 회원 목록</a>
		                            <a class="nav-link" href="/market/admin/reportedMemberList">신고회원 관리</a>
		                            <a class="nav-link" href="/market/admin/productList">전체 상품 목록</a>
		                            <a class="nav-link" href="/market/admin/">신고된 상품 관리</a>
		                            <a class="nav-link" href="/market/admin/storeList">전체 상점 목록</a>
		                            <a class="nav-link" href="/market/admin/boardList">게시글목록</a>
		                            <a class="nav-link" href="/market/admin/noticeWrite">공지사항 등록</a>
		                            <a class="nav-link" href="/market/admin/">공지사항 관리</a>
	                    		</ul>
                            
                            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages" aria-expanded="false" aria-controls="collapsePages">
                                <div class="sb-nav-link-icon"></div>
                                	이게 필요할까?
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapsePages" aria-labelledby="headingTwo" data-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav accordion" id="sidenavAccordionPages">
                                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#pagesCollapseAuth" aria-expanded="false" aria-controls="pagesCollapseAuth">
                                        Authentication
                                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                    </a>
                                    <div class="collapse" id="pagesCollapseAuth" aria-labelledby="headingOne" data-parent="#sidenavAccordionPages">
                                        <nav class="sb-sidenav-menu-nested nav">
                                            <a class="nav-link" href="login.html">Login</a>
                                            <a class="nav-link" href="register.html">Register</a>
                                            <a class="nav-link" href="password.html">Forgot Password</a>
                                        </nav>
                                    </div>
                                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#pagesCollapseError" aria-expanded="false" aria-controls="pagesCollapseError">
                                        Error
                                        <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                                    </a>
                                    <div class="collapse" id="pagesCollapseError" aria-labelledby="headingOne" data-parent="#sidenavAccordionPages">
                                        <nav class="sb-sidenav-menu-nested nav">
                                            <a class="nav-link" href="401.html">401 Page</a>
                                            <a class="nav-link" href="404.html">404 Page</a>
                                            <a class="nav-link" href="500.html">500 Page</a>
                                        </nav>
                                    </div>
                                </nav>
                            </div>
                            <div class="sb-sidenav-menu-heading">Addons</div>
                            <a class="nav-link" href="charts.jsp">
                                <div class="sb-nav-link-icon"><i class="fas fa-chart-area"></i></div>
                                Charts
                            </a>
                            <a class="nav-link" href="tables.jsp">
                                <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                                Tables
                            </a>
                        </div>
                    </div>
                    <div class="sb-sidenav-footer">
                        <div class="small">Logged in as:</div>
                       	 관리자 아이디
                    </div>
                </nav>
            </div>
            
            
<%-- ======================================================= --%>
<%-- ======================================================= --%>


            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h3 class="mt-4">전체 회원리스트</h3>
                        <hr>                  		
						<div class="row">
                            <div class="col-xl-6">
                                <div class="card mb-4">
                                    <div class="card-header">
                                        <i class="fas fa-chart-area mr-1"></i>
                                        (이름)회원 정보
                                    </div>
                                    <div class="card-body">
                                    	이름 ,아이디, 주소, ?
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-6">
                                <div class="card mb-4">
                                    <div class="card-header">
                                        <i class="fas fa-chart-bar mr-1"></i>
                                       (이름)상세정보
                                    </div>
                                    <div class="card-body">
                                    	물건등록갯수, 구매갯수, 신고수, 등급, 가입일자
                                    </div>
                                </div>
                            </div>
                        </div>
						
						<nav class="navbar navbar-expand-lg navbar-light bg-light">
						  <div class="container-fluid">
						  
						    <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
						      <div class="btn-group btn-group-sm me-auto mb-2 mb-lg-0" role="group" aria-label="Basic outlined example">
								  <button type="button" class="btn btn-outline-primary" id="">가나다순</button>
								  <button type="button" class="btn btn-outline-primary" id="">가입일자순</button>
								  <button type="button" class="btn btn-outline-primary" id="">판매등록순</button>
							  </div>
							  
						      <form class="d-flex">
						        <input class="form-control me-2 " type="search" placeholder="Search" aria-label="Search">
						        <button class="btn btn-outline-success" type="submit" id="memberSearch">Search</button>
						      </form>  
						    </div>
						    
						  </div>
						</nav>
						
						
					<div class="table-responsive-xxl">
						<table class="table table-bordered table-striped table table-sm">
					        <thead class="table-dark">
					            <tr>
					                <th>Id</th>
					                <th>Pw</th>
					                <th>Name</th>
					                <th>Tel</th>
					                <th>Location</th>
					            </tr>
					        </thead>
					        <tbody id="tobody">
					        	
					        </tbody>
						   	<tfoot class="table-secondary">
					            <tr>
					              	<th>Id</th>
					                <th>Pw</th>
					                <th>Name</th>
					                <th>Tel</th>
					                <th>Location</th>
					            </tr>
					        </tfoot>
						</table>
					</div>
<!-- 					페이징 -->
<input type="hidden" name="pg" value="1">
 		<div id="boardPagingDiv" class="paging" align="center">dd</div>
 		
					<nav aria-label="Page navigation example">
					  <ul class="pagination justify-content-center">
					    
					    <li class="page-item">
					      <a class="page-link" href="#" aria-label="Previous">
					        <span aria-hidden="true">&laquo;</span>
					      </a>
					    </li>
					    
					    <li class="page-item"><a class="page-link" href="#">1</a></li>
					    <li class="page-item"><a class="page-link" href="#">2</a></li>
					    <li class="page-item"><a class="page-link" href="#">3</a></li>
					    
					    <li class="page-item">
					      <a class="page-link" href="#" aria-label="Next">
					        <span aria-hidden="true">&raquo;</span>
					      </a>
					    </li>
					    
					  </ul>
					</nav>
						                        
                    </div>
                </main>
            
            
<%-- ======================================================= --%>
<%-- ======================================================= --%>
               
               
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; Your Website 2020</div>
                            <div>
                                <a href="#">Privacy Policy</a>
                                &middot;
                                <a href="#">Terms &amp; Conditions</a>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/js/all.min.js" crossorigin="anonymous"></script>
    <script src="/market/admin/js/memberList.js"></script>
<!--     <link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css" type="text/css"/> -->
<!--     <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js" type="text/javascript" ></script> -->

</body>
