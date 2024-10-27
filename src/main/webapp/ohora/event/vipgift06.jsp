<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ohora 오호라 공식몰</title>
<link rel="shortcut icon" type="image/x-icon" href="http://localhost/ohora/resources/ohora.ico">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
.event-wrap img {
    display: block;
    margin: 0 auto;
}
img {
    max-width: 100%;
    vertical-align: top;
    overflow-clip-margin: content-box;
    overflow: clip;
}
#floating {
    position: fixed;
    bottom: 70px;
    right: 55px;
    z-index: 1000; /* 버튼이 다른 요소 위에 위치하도록 설정 */
    cursor: pointer;
}

#floating .go_top {
    width: 50px;
    height: 50px;
    border-radius: 50%;
    display: flex;
    justify-content: center;
    align-items: center;
    background: url(/ohora/resources/arrow_top.png) no-repeat center center;
    background-size: contain;
}

#floating .go_top:before {
    content: '';
    width: 10px;
    height: 10px;
    border-top: 2px solid white;
    border-right: 2px solid white;
    transform: rotate(-45deg);
    margin-top: 4px;
}
span, a {
    font-family: inherit;
    color: inherit;
    font-size: inherit;
}
</style>
</head>
<body>

<div class="wrap">
    <div class="eventDetail">
        <div class="title-block">
        </div>
        <div class="event-wrap">
            <p style="text-align: center;">
                <img src="/ohora/resources/image/vipgift06/2_2.jpg" alt="">
                <img src="/ohora/resources/image/vipgift06/1.jpg" alt="">
                <img src="/ohora/resources/image/vipgift06/3.jpg" alt="">
                <img src="/ohora/resources/image/vipgift06/4.jpg" alt="">
                
                <!-- 접근불가 페이지 -->
                <a href="/product/detail.html?product_no=1793&amp;cate_no=389&amp;display_group=1">
                <img src="/ohora/resources/image/vipgift06/5.jpg" alt="">
                <img src="/ohora/resources/image/vipgift06/6.jpg" alt="">
                </a>
                <!-- 마이페이지 이동 링크, 로그인x일시 로그인 페이지로 이동 -->
                <a href="/myshop/mileage/historyList.html">
                <img src="/ohora/resources/image/vipgift06/7.jpg" alt="">
                <img src="/ohora/resources/image/vipgift06/event_8.jpg" alt="">
                
                <!-- go_top 버튼 -->
			   <div id="floating">
				    <div class="go_top">
				        <span class="icon"></span>
				    </div>
				</div>
                
                 <script>
	            // go_top 버튼 스크립트
	               $(document).ready(function() {
	                   // go_top 버튼 클릭 시 상단으로 부드럽게 이동
	                   $('.go_top').on('click', function() {
	                       $('html, body').animate({ scrollTop: 0 }, 400);
	                       return false;
	                   });
	                   
	                   // 스크롤 이벤트에 따라 go_top 버튼 표시
	                   $(window).scroll(function() {
	                       if ($(this).scrollTop() > 200) {
	                           $('#floating').fadeIn();
	                       } else {
	                           $('#floating').fadeOut();
	                       }
	                   });
	               });
	            </script>
            </a>
            </p>
            </div>
            </div>
        </div>

</body>
</html>