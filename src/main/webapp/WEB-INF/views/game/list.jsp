<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Epic Games Store | Official Site</title>
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
    <link rel="stylesheet" href="/resources/css/game/list.css">
</head>
<body>
	<jsp:include page="/WEB-INF/views/layout/navbar.jsp"></jsp:include>
 	<jsp:include page="/WEB-INF/views/layout/navbar-search.jsp"></jsp:include>
    <!-- game list section start -->
    <div class="browse">
        <div class="game-list">
            <div class="order-form">
                <div class="title" onclick="clickOrderTitle()">
                    <div>
                    정렬 기준: <span>출시일</span> 
                    <i class="fas fa-caret-down"></i>
                    </div>
                </div>
                <div class="list">
                    <ul>
                        <li><button onclick="clickOrderButton(this)">출시일 오름차순</button></li>
                        <li><button onclick="clickOrderButton(this)">출시일 내림차순</button></li>
                        <li><button onclick="clickOrderButton(this)">가격 오름차순</button></li>
                        <li><button onclick="clickOrderButton(this)">가격 내림차순</button></li>
                    </ul>
                </div>
            </div>
            <div class="games">
                <ul>
                    <c:forEach items="${games}" var="game" >
                    
                    <li>
                        <a href="#" class="gno${game.gno}">
                        <div class="gno" style="display: none;">${game.gno}</div>
                        <div class="image"><img src='<c:out value="${game.titlePicture}"></c:out>' alt=""></div>
                        
                        <div class="text">
	                        <div class="title"> <c:out value="${game.title}"></c:out>  </div>
	                        <div class="company"><c:out value="${game.company}"></c:out> </div>
		                        <c:if test="${game.price != 0}">
		                        	<div class="price"><c:out value="${game.price}"></c:out>원</div>
		                        </c:if>
		                        <c:if test="${game.price == 0 }">
		                        	<div class="price">무료</div>
		                        </c:if>
	                        	</div>
	
	                        	<i class="fas fa-plus-circle" id="${game.gno}" onclick="addWishlist(${game.gno})" ></i>
	
	                        </a>
	                    </li>
                    
                    </c:forEach>
                </ul>
            </div>
            <div class="page-links">
                <ul>
                <c:if test="${pageMaker.prev == true}">
                	<li class="prev-button"><a href="#"><</a></li>
                </c:if>
                    
                    <c:forEach var="i" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
                    	<li><a href="#">${i}</a></li>	
                    </c:forEach>
				
				<c:if test="${pageMaker.next == true}">
                    <li class="next-button"><a href="#">></a></li>
				</c:if>
                </ul>
            </div>
        </div>
        <div class="filter">
            <div class="head">
                <div class="head-text">필터 [<span class="number">1</span>]</div>
                <div><button class="reset-filter">초기화</button></div>
            </div>
            
            <div id="event" class="category" onclick="clickCategory(this)">
                <div class="event-dropdown-button">
                    <div class="text">이벤트</div>
                    <div class="image"><i class="fas fa-caret-down"></i></div>
                </div>
                <div class="list">
                    <ul>
                        <li><button>에픽 메가 세일</button></li>
                    </ul>
                </div>
            </div>
            <div id="price" class="category" onclick="clickCategory(this)">
                <div class="event-dropdown-button">
                    <div class="text">가격</div>
                    <div class="image"><i class="fas fa-caret-down"></i></div>
                    
                </div>
                <div class="list">
                    <ul>
                        <li><button>₹1,099.00 이상</button></li>
                        <li><button>₹2,250.00 미만</button></li>
                        <li><button>₹1,500.00 미만</button></li>
                        <li><button>₹750.00 미만</button></li>
                        <li><button>할인</button></li>
                        <li><button>무료</button></li>
                    </ul>
                </div>
            </div>
            <div id="genre" class="category" onclick="clickCategory(this)">
                <div class="event-dropdown-button">
                    <div class="text">장르</div>
                    <div class="image"><i class="fas fa-caret-down"></i></div>
                </div>
                <div class="list">
                    <ul>
                        <li><button>액션</button></li>
                        <li><button>어드벤처</button></li>
                        <li><button>인디</button></li>
                        <li><button>RPG</button></li>
                        <li><button>전략</button></li>
                        <li><button>오픈 월드</button></li>
                        <li><button>슈팅</button></li>
                        <li><button>퍼즐</button></li>
                        <li><button>1인칭</button></li>
                        <li><button>내레이션</button></li>
                        <li><button>시뮬레이션</button></li>
                        <li><button>캐주얼</button></li>
                        <li><button>턴 기반</button></li>
                        <li><button>탐험</button></li>
                        <li><button>호러</button></li>
                        <li><button>플랫포머</button></li>
                        <li><button>파티</button></li>
                        <li><button>생존</button></li>
                        <li><button>퀴즈</button></li>
                        <li><button>도시 건설</button></li>
                        <li><button>잠입</button></li>
                        <li><button>전투</button></li>
                        <li><button>코미디</button></li>
                        <li><button>액션 어드벤처</button></li>
                        <li><button>레이싱</button></li>
                        <li><button>로그라이트</button></li>
                        <li><button>카드 게임</button></li>
                        <li><button>스포츠</button></li>
                    </ul>
                </div>
            </div>
            <div id="function" class="category" onclick="clickCategory(this)">
                <div class="event-dropdown-button">
                    <div class="text">기능</div>
                    <div class="image"><i class="fas fa-caret-down"></i></div>
                </div>
                <div class="list">
                    <ul>
                        <li><button>싱글 플레이어</button></li>
                        <li><button>컨트롤러 지원</button></li>
                        <li><button>멀티플레이어</button></li>
                        <li><button>협동</button></li>
                        <li><button>경쟁</button></li>
                        <li><button>VR</button></li>
                    </ul>
                </div>
            </div>
            <div id="kind" class="category" onclick="clickCategory(this)">
                <div class="event-dropdown-button">
                    <div class="text">종류</div>
                    <div class="image"><i class="fas fa-caret-down"></i></div>
                </div>
                <div class="list">
                    <ul>
                        <li><button>게임</button></li>
                        <li><button>게임 번들</button></li>
                        <li><button>에디터</button></li>
                        <li><button>게임 애드온</button></li>
                        <li><button>게임 데모</button></li>
                        <li><button>앱</button></li>
                    </ul>
                </div>
            </div>
            <div id="platform" class="category" onclick="clickCategory(this)">
                <div class="event-dropdown-button">
                    <div class="text">플랫폼</div>
                    <div class="image"><i class="fas fa-caret-down"></i></div>
                </div>
                <div class="list">
                    <ul>
                        <li><button>Windows</button></li>
                        <li><button>Mac OS</button></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- game list section end -->

  <jsp:include page="/WEB-INF/views/layout/footer.jsp"></jsp:include>
  
<script type="text/javascript" src="/resources/js/game/list.js"></script>
</body>
</html>