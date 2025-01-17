<%@page import="com.recetA.domain.RefriMember"%>
<%@page import="com.recetA.domain.Member"%>
<%@page import="java.util.List"%>
<%@page import="com.recetA.domain.Basic"%>
<%@page import="com.recetA.domain.BasicDAO"%>
<%@page import="java.util.Random"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<link  href="css/style.css"  rel="stylesheet"  type="text/css">
<head>
    <meta charset="utf-8">
    <title>💕recetA-나의 냉장고💕</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600;700&display=swap" rel="stylesheet">
    
    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>

<body>
	<%
	// 로그인 세션 불러오기
	Member loginMember = (Member)session.getAttribute("loginMember"); %>
    <div class="container-xxl position-relative bg-white d-flex p-0">
        <!-- Spinner Start -->
        <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
            <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
                <span class="sr-only">Loading...</span>
            </div>
        </div>
        <!-- Spinner End -->
        
		<!-- Sidebar Start -->
        <div class="sidebar pe-4 pb-3">
            <nav class="navbar bg-light navbar-light">
                <a href="main.jsp" class="navbar-brand mx-4 mb-3 navbar bg-danger row rounded">
                    <h3 class="text-primary text-white mb-0"><i class="fa fa-hashtag me-2"></i> recetA</h3>
                </a>
                <div class="d-flex align-items-center ms-4 mb-4">
                    <div class="position-relative">
                        <i class="bi bi-person-check"></i>
                        <!-- <img class="rounded-circle" src="img/user.jpg" alt="" style="width: 40px; height: 40px;"> -->
                        <div class="bg-success rounded-circle border border-2 border-white position-absolute end-0 bottom-0 p-1"></div>
                    </div>
                    <div class="ms-3">
                        <%-- JSTL 방식 --%>
						<c:choose>
							<c:when test="${empty loginMember}">
								<h6 class="mb-0">ID</h6>
								<span>이름</span>
							</c:when>
							<c:otherwise>
								<h6 class="mb-0">${loginMember.m_id}</h6>
								<%-- <span>이름</span> --%>
							</c:otherwise>
						</c:choose>
                    </div>
                </div>
                <div class="navbar-nav w-100">
                    <a href="main.jsp" class="nav-item nav-link"><i class="bi bi-egg-fried"></i>HOME</a>
                    <div class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="bi bi-cup"></i>레시피</a>
                        <div class="dropdown-menu bg-transparent border-0">
                            <a href="PagingCon?b_ctype=korean&page=0" class="dropdown-item">한식</a>
                            <a href="PagingCon?b_ctype=chinese&page=0" class="dropdown-item">중식</a>
                            <a href="PagingCon?b_ctype=japanese&page=0" class="dropdown-item">일식</a>
                            <a href="PagingCon?b_ctype=western&page=0" class="dropdown-item">양식</a>
                            <a href="PagingCon?b_ctype=asia&page=0" class="dropdown-item">동남아시아</a>
                            <a href="PagingCon?b_ctype=fusion&page=0" class="dropdown-item">퓨전</a>
                        </div>
                    </div>
                    <a href="notice.jsp" class="nav-item nav-link"><i class="bi bi-cup-straw"></i>공지사항</a>
                </div>
            </nav>
        </div>
        <!-- Sidebar End -->

        <!-- Content Start -->
        <div class="content">
            <!-- Navbar Start -->
            <nav class="navbar navbar-expand bg-light navbar-light sticky-top px-4 py-0">
            	
	                <a href="main.jsp" class="navbar-brand d-flex d-lg-none me-4">
	                    <h2 class="text-primary mb-0"><i class="fa fa-hashtag"></i></h2>
	                </a>
	                <a href="#" class="sidebar-toggler flex-shrink-0">
	                    <i class="fa fa-bars"></i>
	                </a>
	                <form class="d-none d-md-flex ms-4" action="SearchCon" method="post">
	                    <input class="form-control border-0" type="search" name="search" placeholder="검색">
	                </form>
	                <div class="navbar-nav align-items-center ms-auto">
	                <c:choose> 
		                <c:when test="${empty loginMember}">
		                     <div class="nav-item dropdown">
		                        <a href="signup.jsp" class="nav-link" >
		                            <i class="bi bi-person-circle"></i>
		                            <span class="d-none d-lg-inline-flex">회원가입</span>
		                        </a>
		                     </div>
		                     <div class="nav-item dropdown">
		                     <%-- 로그인 후 드롭다운 되는 코드
		                     <a href="signin.jsp" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"> --%>
		                     <a href="signin.jsp" class="nav-link">
		                        <i class="bi bi-person-check"></i>
		                            <span class="d-none d-lg-inline-flex">로그인</span>
		                     </a>
		                </c:when>
	                    <%-- 지워야할 로그아웃 --%>
		                <c:otherwise>
		               		<div class="nav-item dropdown">
		                    <%-- <a href="LogoutCon" class="dropdown-item">로그아웃</a> --%>
		                        
		                        <%-- 로그인 후 드롭다운 되는 코드 --%>
		                        <%-- <div class="dropdown-menu dropdown-menu-end bg-light border-0 rounded-0 rounded-bottom m-0">
		                            <a href="information.jsp" class="dropdown-item">개인정보수정</a>
		                            <a href="refrigerator.jsp" class="dropdown-item">나의 냉장고</a>
		                            <a href="LogoutCon" class="dropdown-item">로그아웃</a>
		                        </div> --%>
		                    <div class="nav-item dropdown">
                      		<a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">
                      			<i class="bi bi-person-bounding-box"></i>  
                            		<span class="d-none d-lg-inline-flex">${loginMember.m_id} 님 환영합니다~!</span>
                       		</a>
                       		<div class="dropdown-menu dropdown-menu-end bg-light border-0 rounded-0 rounded-bottom m-0">
                            <a href="information.jsp" class="dropdown-item">개인정보수정</a>
                            <a href="refrigerator.jsp" class="dropdown-item active">나의 냉장고</a>
                            <a href="Favorites_LoadCon" class="dropdown-item">즐겨찾기</a>
                             <c:if test="${loginMember.m_id eq 'admin'}">
	                            <!-- admin만 -->
	                             <a href="Manager.jsp" class="dropdown-item">회원관리</a>
	                             <!-- admin만 끝 -->
	                             </c:if>                           
                            <a href="LogoutCon" class="dropdown-item">로그아웃</a>
                            </div>
                   		    </div>
		                </c:otherwise>
	               </c:choose>
	                        <!-- 로그인 후 드롭다운 되는 코드 끝 -->
	                    </div>
	                </div>
            </nav>
            <!-- Navbar End -->

            <!-- 나의 냉장고 Start -->
            <div class="container-fluid pt-4 px-4">
                <div class="row g-4">
                    <div class="col-sm-12">
                        <div class="bg-light rounded h-100 p-4">
                        <span><h2>나의 냉장고</h2></span>
                        <br>
                <div id="tabs-4-1">
                    <ul style="word-spacing: 10px">
                        <table class="table table-borderless" id="table-refrigerator-count">
                            <tr>
                                <td>재료명</td>
                                <td>남은개수</td>
                                <%
                        List<RefriMember> refri = (List) session.getAttribute("refri");
                            if (refri != null) {
                            for (int i = 0; i < refri.size(); i++) {
                            %>
                            <tr>
                                <td><%=refri.get(i).getS_name()%> 
                                </td>
                                <td>
                                <%=refri.get(i).getK_volume()%><%=refri.get(i).getK_unit()%>
                                </td>
                                <td>
                                <a href="Ingred_delCon?s_name=<%=refri.get(i).getS_name()%>" class="btn btn-primary">삭제</a>
                                </td>
                                
                          	</tr>
                        <br>
                        <%}
                          }%> 
                                
                            </tr>
                        </table>

                            <table class="table table-borderless" id="table-refrigerator">
                            <tr>
                                <td>
                                <form action="Ingred_updateCon" method="post">
                                    <input type="text" placeholder="재료명" id="corr3" name="s_name">
                                </td>
                                <td id="table-refrigerator-td"> 
                                    <input type="number" placeholder="개수" id="corr" name="k_volume"> 
                                </td>
                                <td>   
                                    <select id="Select_box" aria-label="Floating label select example" name="k_unit">
                                        <option selected>단위 선택</option>
                                        <option value="g">g</option>
                                        <option value="kg">kg</option>
                                        <option value="mL">mL</option>
                                        <option value="L">L</option>
                                        <option value="개">개</option>
                                        <option value="쪽">쪽</option>
                                        <option value="통">통</option>
                                        <option value="마리">마리</option>
                                    </select>
                                </td>
                                <td>
                                    <input type="submit" value="수정" class="btn btn-primary">
                                </td>
                                <td>
                                </form>
                            </td>
                        </tr>
                        </table>
                    <br><br>
                    
                    <form action="Ingred_search" method="post">
                        <li>
                            <input type="text" placeholder="검색할 재료를 적어주세요!" name="s_name" id="search_ingred">
                            <input type="submit" value="검색" class="btn btn-primary">
                        </li>
                    </form>
                        <!-- 검색해서 받아온 데이터 출력하기 -->
                        <%
                        List<RefriMember> Ingred_search = (List) session.getAttribute("Ingred_search");
                            if (Ingred_search != null) {
                            for (int i = 0; i < Ingred_search.size(); i++) {
                            %>
                            <tr>
                                <td><%=Ingred_search.get(i).getS_name()%> 
                                </td>
                                <form action="Ingred_plusCon?s_name=<%=Ingred_search.get(i).getS_name()%>" method="post">
                                <td>
                                <input type="number" placeholder="개수" id="corr" name="k_volume2">
                                </td>
                                <td>   
                                    <select id="Select_box" aria-label="Floating label select example" name="k_unit2">
                                        <option selected>단위 선택</option>
                                        <option value="g">g</option>
                                        <option value="kg">kg</option>
                                        <option value="mL">mL</option>
                                        <option value="L">L</option>
                                        <option value="개">개</option>
                                        <option value="쪽">쪽</option>
                                        <option value="통">통</option>
                                        <option value="마리">마리</option>
                                    </select>
                                </td>
                                <input type="submit" value="추가" class="btn btn-outline-primary">
                                </form>
                          	</tr>
                        <br>
                        <%}
                          }%> 
                    </ul>
                </div>
            </div>
            </div>
            <!-- 나의 냉장고 End -->

            <!-- Footer Start -->
            <div class="container-fluid pt-4 px-4">
                <div class="bg-light rounded-top p-4">
                    <div class="row">
                        <div class="col-12 col-sm-6 text-center text-sm-start">
                            &copy; <a href="main.jsp">recetA</a><span>, 팀장:송영지 팀원:강태준, 김기범, 김도연, 김동현</span> 
                        </div>
                        <div class="col-12 col-sm-6 text-center text-sm-end">
                            <!--/*** This template is free as long as you keep the footer author’s credit link/attribution link/backlink. If you'd like to use the template without the footer author’s credit link/attribution link/backlink, you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". Thank you for your support. ***/-->
                            <!-- Designed By <a href="https://htmlcodex.com">HTML Codex</a> -->
                        </div>
                    </div>
                </div>
            </div>
            <!-- Footer End -->
        </div>
        <!-- Content End -->

        <!-- Back to Top -->
        <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>
    </div>

    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/chart/chart.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="lib/tempusdominus/js/moment.min.js"></script>
    <script src="lib/tempusdominus/js/moment-timezone.min.js"></script>
    <script src="lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
</body>

</html>