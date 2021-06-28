<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
	    <link rel="stylesheet" href="/resources/css/layout/navbar.css">
	    <link rel="stylesheet"  href="/resources/css/layout/footer.css">
	    <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
</head>
<body>
	<c:url value="/resources/css/layout/navbar.css"></c:url>
	<!-- navbar start -->
    <div class="navbar">
        <ul class="navbar-menu-center">
            <li><a href="/" class="navbar-menu-center-logoLink"><p><img class="logo" src="/resources/img/layout/epic logo.png" alt=""></p></a></li>
            <li><a href="/browse" class="navbar-menu-center-menuLink selected"><p>스토어</p></a></li>
            <li><a href="/news" class="navbar-menu-center-menuLink"><p>새 소식</p></a></li>
            <li><a href="#" class="navbar-menu-center-menuLink"><p>자주 묻는 질문</p></a></li>
            <li><a href="#" class="navbar-menu-center-menuLink"><p>지원센터</p></a></li>
            <li><a href="#" class="navbar-menu-center-menuLink"><p>언리얼 엔진</p></a></li>
        </ul>
    
        <ul class="navbar-menu-side">
            <!-- <li class="languageButton"><a href=""><p><i class="fas fa-globe fa-lg"></i></p></a></li> -->
            <li class="dropdown-button">
		
				<a href="">
					<img class="userLogo" src="" alt="">
					<p></p>
				</a>

				<div class="dropdown-menu">
					<ul>
						
					</ul>
				</div>
			</li>
            
           
             <li><a class="downloadLink" href=""><p>에픽게임즈 받기</p></a></li>
        </ul>
</div>
</body>
</html>