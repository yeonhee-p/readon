<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <!--bootstrap 밑에 css 링크작성하기-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <link rel="stylesheet" href="../resources/css/1_style.css">
</head>
<body>
    <div id="wrap">
        <header class="header">
            <div class="headerIn">
                <h1 class="logo"><a href="#"><img src="../resources/img/logo.png" alt="읽어보다"></a></h1>
                <nav class="gnb">
                    <ul class="gnb_menu">
                        <li><a href="#">카테고리</a></li>
                        <li><a href="#">베스트</a></li>
                        <li><a href="#">독서노트</a></li>
                        <li><a href="#">마이페이지</a></li>
                    </ul>
                </nav> <!--.gnb-->
        
                <div class="utils">
                    <ul class="ut">
                        <li><a href="http://localhost:8080/member/login">로그인</a></li>
                        <li><a href="#">주문배송</a></li>
                        <li><a href="#">고객센터</a></li>
                    </ul> <!--.ut-->
                </div> <!--.utils-->
            </div><!--.headerIn-->
        </header>



        <div class="container">
            <div class="mainSlide">
                <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
                    <div class="carousel-indicators">
                      <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                      <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
                      <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
                    </div>
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img src="../resources/img/slideimg_1.jpg" class="d-block w-100" alt="...">
                        </div>
                        <div class="carousel-item">
                            <img src="../resources/img/slideimg_2.jpg" class="d-block w-100" alt="...">
                        </div>
                        <div class="carousel-item">
                            <img src="../resources/img/slideimg_3.jpg" class="d-block w-100" alt="...">
                        </div>
                    </div>
                    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
                      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                      <span class="visually-hidden">Previous</span>
                    </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
                      <span class="carousel-control-next-icon" aria-hidden="true"></span>
                      <span class="visually-hidden">Next</span>
                    </button>
                </div>
            </div><!--.mainslide-->
            
            <div class="board">
                <div class="best">
                    <h2 id="title">Best</h2>
                    <ul>
                        <li>
                            <a href="">
                                <img src="../resources/img/best_1.jpg" alt="" width="200px" height="300px">
                                <p>미드나잇 라이브러리<br>매트 헤이그</p>
                            </a> 
                        </li>
                        <li>
                            <a href="">
                                <img src="../resources/img/best_2.jpg" alt="" width="200px" height="300px">
                                <p>그러라 그래<br>양희은</p>
                            </a> 
                        </li>
                        <li>
                            <a href="">
                                <img src="../resources/img/best_3.jpg" alt="" width="200px" height="300px">
                                <p>공간의 미래<br>유현준</p>
                            </a> 
                        </li>
                        <li>
                            <a href="">
                                <img src="../resources/img/best_4.jpg" alt="" width="200px" height="300px">
                                <p>지구인만큼 지구를 사랑할 순 없어<br>정세랑</p>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="../resources/img/best_5.jpg" alt="" width="200px" height="300px">
                                <p>소크라테스 익스프레스<br>에릭 와이너</p>
                            </a>
                        </li>
                    </ul>
                </div><!--.best-->

           


				 <div class="today">
                    <h2 id="title">오늘의 책</h2>
                    <ul>
                        <li>
                            <a href="">
                                <img src="../resources/img/best_1.jpg" alt="" width="200px" height="300px">
                                
                            </a> 
                            <p>
                            	<strong>미드나잇 라이브러리</strong>
                            	<br>매트 헤이그
                            	<br><br>
                            	<b>밤 12시, 죽기 바로 전에만 열리는 마법의 도서관에서<br>
                            	인생의 두 번째 기회를 드립니다</b>
                            </p>
                        </li>
                        <li>
                            <a href="">
                                <img src="../resources/img/best_2.jpg" alt="" width="200px" height="300px">
                               
                            </a> 
                            <p>
                             	<strong>그러라 그래</strong>
                             	<br>양희은
                             	<br><br>
                            	<b>"어떻게 인생이 쉽기만 할까?<br>
                            	그저 좋아하는걸 하고,<br> 좋아하는 사람을 두고 나답게 살면 그만이지 "</b>
                            </p>
                        </li>
           
                    </ul>
                </div><!--.today-->
                
                
				
				 <div class="book report">
                    <h2 id="title">독서노트</h2>
                    <ul>
                        <li>
                            <a href="">
                                <img src="../resources/img/best_1.jpg" alt="" width="200px" height="300px">
	                            <p>
	                            	<strong>미드나잇 라이브러리</strong>
	                            	<br>매트 헤이그
	                            	<br><br>
	                            	<b> </b>
	                            </p>
                            </a> 
                        </li>
                        <li>
                            <a href="">
                                <img src="../resources/img/best_2.jpg" alt="" width="200px" height="300px">
                               
                            </a> 
                            <p>
                             	<strong>그러라 그래</strong>
                             	<br>양희은
                             	<br><br>
                            	<b>"어떻게 인생이 쉽기만 할까?<br>
                            	그저 좋아하는걸 하고,<br> 좋아하는 사람을 두고 나답게 살면 그만이지 "</b>
                            </p>
                        </li>
           
                    </ul>
                </div><!--.today-->
                

                     
                    
            

            </div><!--.board-->


        </div><!--.container-->















    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
</body>
</html> 
<!-- <div class="sub">
        <ul>
            <li><a href="#">소설</a></li>
            <li><a href="#">시/에세이</a></li>
            <li><a href="#">경제/경영</a></li>
            <li><a href="#">자기계발</a></li>
            <li><a href="#">인문</a></li>
            <li><a href="#">역사/문화</a></li>
            <li><a href="#">사회/과학</a></li>
            <li><a href="#">예술</a></li>
            <li><a href="#">취미</a></li>
            <li><a href="#">여행</a></li>
        </ul>
    </div>-->