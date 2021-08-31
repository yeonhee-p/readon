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
                        <li><a href="http://localhost:8080/board/list">독서노트</a></li>
                        <li><a href="#">마이페이지</a></li>
                    </ul>
                </nav> <!--.gnb-->
        
                <div class="utils">
                    <ul class="ut">
                    	<li>${member.id}</li><!-- 로그인 시 아이디 -->
                        <li><a href="http://localhost:8080/member/login">로그인</a></li>
                        <li><a href="http://localhost:8080/member/logout">로그아웃</a></li>
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
                                <img src="../resources/img/book_img/l9791165343729.jpg" alt="" width="200px" height="300px">                                
                            </a> 
                            <p>
                            	<strong>달러구트 꿈 백화점</strong>
                            	<br>이미예
                            	<br><br>
                            	<b>달러구트 꿈 백화점, 그 두번째 이야기</b><br>잠들어야만 입장 가능한 '달러구트 꿈 백화점'으로<br>여러분을 초대합니다.
                            </p>
                        </li>
                        <li>
                            <a href="">
                                <img src="../resources/img/book_img/l9791191056853.jpg" alt="생각을 바꾸는 생각들" width="200px" height="300px">                
                            </a> 
                            <p>
                             	<strong>생각을 바꾸는 생각들</strong>
                             	<br>비카스 샤
                             	<br><br>
                            	<b>유발 하라리부터 조던 피터슨까지 <br>이 시대 지성 134인과의 지적인 대화<br>"이것이야말로 오늘날의 교양이다"</b>
                            </p>
                        </li>
           
                    </ul>
                </div><!--.today-->
                
                
				
				 <div class="book_report">
                    <h2 id="title">독서노트</h2>
                    <ul>
                        <li>
                            <a href=""><img src="../resources/img/book_img/l9791191248265.jpg" alt="오늘의 단어"> </a> 
	                        <p>
                        		<strong>생활견 키키와 반려인 진아의 오늘의 단어</strong><br>
                            	임진아<br><br>
                            	<b>"오늘은 어떤 단어를 골라볼까?"</b><br><br>
                            	사계절과 그 계절에 어울리는 단어를 만화로 글로 생각하고 있으면 마음이 포근해지는 느낌이에요.-키키님<br>
                            	저는 그 중에서도 여름의 커피가 제일 와닿았어요. 밤에 커피마시고 싶어질 때를 위해서 디카페인 마시는 모습이요. -희은님 
                            </p>
						</li>
                        <li>
                            <a href="">
                                <img src="../resources/img/book_img/l9788934985051.jpg" alt="햇빛은 찬란하고 인생은 귀하니까요: 밀라논나 이야기">
                            </a> 
                            <p>
                             	<strong>햇빛은 찬란하고 인생은 귀하니까요: 밀라논나 이야기</strong><br>
                             	장명숙
                             	<br><br>
                            	<b>"누구나 다 주인공이에요"</b><br><br>
                            	지금 내게 필요한 담백한 응원.-영원님<br>
                            	하루하루 나에게 충실하게 나를 지키며 살아가자고 다짐하게 만드네요. -이다님<br>
                            	유튜브보다도 책으로 글로 접하는 밀라논나님의 생각이 더 따스하게 느껴져요 -가애님
                            </p>
                        </li>
           
                    </ul>
                </div><!--.book_report-->
                

                   
                     
                    
            

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