<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Order Detail</title>
<link rel="shortcut icon" type="image/x-icon" href="http://localhost/ohora/resources/ohora.ico">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<link rel="stylesheet" href="http://localhost/ohora/resources/event01.css">
<link rel="stylesheet" href="http://localhost/ohora/resources/event02.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>

</style>
<style>
body, html, :lang(ko) {
    font-family: 'Noto Sans KR', sans-serif;
}
#ivStyle * {
    letter-spacing: 0px;
}
.SP_pageGuideText_wrap {
	background: #fff;
}
div {
    display: block;
    unicode-bidi: isolate;
}
#contents {
    position: relative;
    min-height: 670px;
}
.SP_layoutFix {
    width: 1200px;
    margin: 0 auto;
}
#SP_mypage_wrap .SP_subSection {
    padding: 60px 0 30px;
}
.SP_subContHeader .SP_subTitle, .SP_subSection .SP_subTitle, .SP_subLoginHeader .SP_subTitle {
    padding: 5px 0;
    text-align: center;
    font-size: 30px;
}
body, h1, h2, h3, h4, h5, h6, table, pre, xmp, plaintext, listing, input, textarea, select, button, a {
    font-family: inherit;
    line-height: normal;
}
h2 {
    display: block;
    font-size: 1.5em;
    margin-block-start: 0.83em;
    margin-block-end: 0.83em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    font-weight: bold;
    unicode-bidi: isolate;
}
#ivStyle .SP_subContHeader .SP_subTitle span, #ivStyle .SP_subSection .SP_subTitle span, #ivStyle .SP_subLoginHeader .SP_subTitle span {
    min-width: 100%;
    font-size: 28px;
    letter-spacing: -2px !important;
}
.SP_subContHeader .SP_subTitle span, .SP_subSection .SP_subTitle span, .SP_subLoginHeader .SP_subTitle span {
    display: inline-block;
    position: relative;
    font-size: 32px;
    min-width: 1200px;
    text-transform: lowercase;
}
.eng_font, .eng_font * {
    font-family: 'Libre Baskerville', 'Noto Sans KR', sans-serif !important;
}
span, a {
    font-family: inherit;
    color: inherit;
    font-size: inherit;
}
form {
    display: block;
    margin-top: 0em;
    unicode-bidi: isolate;
}
input[type="hidden" i] {
    display: none !important;
}
input:not([type="image" i], [type="range" i], [type="checkbox" i], [type="radio" i]) {
    overflow-clip-margin: 0px !important;
    overflow: clip !important;
}
input[type="hidden" i] {
    appearance: none;
    background-color: initial;
    cursor: default;
    padding: initial;
    border: initial;
}

input {
    text-rendering: auto;
    color: fieldtext;
    letter-spacing: normal;
    word-spacing: normal;
    line-height: normal;
    text-transform: none;
    text-indent: 0px;
    text-shadow: none;
    display: inline-block;
    text-align: start;
    appearance: auto;
    -webkit-rtl-ordering: logical;
    cursor: text;
    background-color: field;
    margin: 0em;
    padding: 1px 0px;
    border-width: 2px;
    border-style: inset;
    border-color: light-dark(rgb(118, 118, 118), rgb(133, 133, 133));
    border-image: initial;
    padding-block: 1px;
    padding-inline: 2px;
}
#SP_mypage_wrap .SP_subSection {
    padding: 60px 0 30px;
}
#SP_mypage_wrap .SP_contTitle {
    display: inline-block;
    font-size: 23px;
    font-weight: 500;
    color: #000;
    padding: 15px 0 35px;
}
.SP_contTitle {
    padding-bottom: 20px;
    font-size: 18px;
    color: #111;
    font-weight: 700;
    letter-spacing: -0.5px;
}
h1, h3 {
    margin: 0;
}
h3 {
    display: block;
    font-size: 1.17em;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    font-weight: bold;
    unicode-bidi: isolate;
}
.SP_tableSt01_isThAndTd {
    position: relative;
    width: 100%;
    /* margin-top: 40px; */
    /* border-top: 2px solid #111; */
}
table {
    width: 100%;
    border: 0;
    border-spacing: 0;
    border-collapse: collapse;
}
table {
    display: table;
    border-collapse: separate;
    box-sizing: border-box;
    text-indent: initial;
    unicode-bidi: isolate;
    border-spacing: 2px;
    border-color: gray;
}
caption {
    display: none;
    text-align: -webkit-center;
    unicode-bidi: isolate;
}
colgroup {
    display: table-column-group;
    unicode-bidi: isolate;
}
col {
    display: table-column;
    unicode-bidi: isolate;
}
tbody {
    display: table-row-group;
    vertical-align: middle;
    unicode-bidi: isolate;
    border-color: inherit;
}
tr {
    display: table-row;
    vertical-align: inherit;
    unicode-bidi: isolate;
    border-color: inherit;
}
.SP_tableSt01_isThAndTd tr {
    border-bottom: 1px solid #eeeeee;
    border-top: 1px solid #eeeeee;
}
th {
    display: table-cell;
    vertical-align: inherit;
    font-weight: bold;
    text-align: -internal-center;
    unicode-bidi: isolate;
}
td {
    display: table-cell;
    vertical-align: inherit;
    unicode-bidi: isolate;
}
.SP_tableSt01_isThAndTd td {
    vertical-align: middle;
    height: 60px;
    padding: 10px 0 10px 50px;
    font-size: 15px;
    color: #000;
    text-align: left;
    line-height: 1.4;
}
button {
    background: transparent;
    border: 0;
    outline: 0;
    padding: 0;
    margin: 0;
    cursor: pointer;
}
button {
    appearance: auto;
    text-rendering: auto;
    color: buttontext;
    letter-spacing: normal;
    word-spacing: normal;
    line-height: normal;
    text-transform: none;
    text-indent: 0px;
    text-shadow: none;
    display: inline-block;
    text-align: center;
    align-items: flex-start;
    cursor: default;
    box-sizing: border-box;
    background-color: buttonface;
    margin: 0em;
    padding-block: 1px;
    padding-inline: 6px;
    border-width: 2px;
    border-style: outset;
    border-color: buttonborder;
    border-image: initial;
}
.SP_tableSt01_isThAndTd {
    position: relative;
    width: 100%;
    /* margin-top: 40px; */
    /* border-top: 2px solid #111; */
}
colgroup {
    display: table-column-group;
    unicode-bidi: isolate;
}
.SP_tableSt01_isThAndTd tr {
    border-bottom: 1px solid #eeeeee;
    border-top: 1px solid #eeeeee;
}
.xans-myshop-orderhistorydetail .ec-base-table .sum th, .xans-myshop-orderhistorydetail .ec-base-table .sum td {
    font-weight: 500;
}
.SP_tableSt01_isThAndTd th, .SP_tableSt01_isThumNail .left {
    text-align: center;
}
.SP_tableSt01_isThAndTd th {
    vertical-align: middle;
    height: 46px;
    font-size: 16px;
    color: #111;
    font-weight: 500;
    background: #eeeeee;
}
strong {
    font-weight: bold;
}
html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn, em, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var, b, u, i, center, dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table, caption, tbody, tfoot, thead, tr, th, td, input, article, aside, canvas, details, embed, figure, figcaption, footer, header, hgroup, menu, nav, output, ruby, section, summary, time, mark, audio, video, fieldset {
    margin: 0;
    padding: 0;
    border: 0;
    vertical-align: baseline;
    outline: 0;
}
* {
    box-sizing: border-box;
}
.displaynone {
    display: none !important;
}
.SP_cm_btnChange .SP_cm_btn {
    vertical-align: middle;
    width: 60px;
    height: 25px;
    color: #8d8d8d;
    line-height: 25px;
    font-size: 11px;
}
.SP_cm_btn.SP_btn_gray_bd {
    border: 1px solid #ddd;
}
.SP_tableSt01_isThAndTd td a {
    color: #000;
    /* border: 1px solid #000; */
    /* padding: 3px 5px; */
    /* font-size: 12px; */
}
.SP_cm_btn {
    display: inline-block;
    vertical-align: top;
    width: calc(33.333% - 10px);
    height: 45px;
    line-height: 45px;
    font-size: 15px;
    color: #000;
    background: #fff;
    text-align: center;
    box-sizing: border-box;
}
a {
    text-decoration: none;
}
a:-webkit-any-link {
    color: -webkit-link;
    cursor: pointer;
    text-decoration: underline;
}




</style>
</head>
<body>

	<div id="container">
		<div id="contents">

			<script>
				SMARTPC_GLOBAL_OBJECT.page = 'mypage';
			</script>


			<div id="SP_mypage_wrap" class="order_detail_page">
				<div class="SP_layoutFix">
					<div class="SP_subSection">
						<h2 class="SP_subTitle">
							<span class="eng_font">order detail</span>
						</h2>
					</div>

					<form id="detailForm" name="detailForm"
						action="/exec/front/MyShop/OrderCancel/" method="POST"
						enctype="multipart/form-data">
						<input id="order_id" name="order_id" fw-filter="isFill"
							fw-label="주문번호" fw-msg="" value="20241027-0001930" type="hidden">
						<div
							class="xans-element- xans-myshop xans-myshop-orderhistorydetail xans-record-">
							<!--
				$print_spec_url = /myshop/order/print/spec.html
				$print_pg_card_url = /myshop/order/print/pg.html
				$print_tax_url = /myshop/order/print/tax.html
				$issue_tax_url = /myshop/order/issue/tax.html
				$issue_cash_url = /myshop/order/issue/cash.html
				$select_gift_url = /order/gift_select.html
			 -->
							<div class="SP_subSection">
								<h3 class="SP_contTitle">주문정보</h3>
								<div class="ec-base-table">
									<table border="1" summary="" class="SP_tableSt01_isThAndTd">
										<caption>주문정보</caption>
										<colgroup>
											<col style="width: 160px">
											<col style="width: auto">
										</colgroup>
										<tbody>
											<tr>
												<th scope="row">주문번호</th>
												<td>20241027-0001930 <span></span>
												</td>
											</tr>
											<tr>
												<th scope="row">주문일자</th>
												<td>2024-10-27 18:44:44</td>
											</tr>
											<tr>
												<th scope="row">주문자</th>
												<td><span>최사랑</span></td>
											</tr>
											<tr>
												<th scope="row">주문처리상태</th>
												<td class="SP_cm_btnChange"><span>취소</span>
													<button type="submit"
														class="SP_cm_btn SP_btn_gray_bd displaynone">주문취소</button>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
							<div class="SP_subSection">
								<h3 class="SP_contTitle">결제정보</h3>
								<div class="ec-base-table">
									<table border="1" summary="" class="SP_tableSt01_isThAndTd">
										<caption>결제정보</caption>
										<colgroup>
											<col style="width: 160px">
											<col style="width: auto">
										</colgroup>
										<tbody>
											<tr class="sum">
												<th scope="row">총 주문금액</th>
												<td class="SP_cm_btnChange"><span class="gSpace20">
														<strong class="txt14">0</strong> <span class="displaynone"></span>
												</span> <a href="#none"
													onclick="OrderLayer.onDiv('order_layer_detail', event);"
													class="SP_cm_btn SP_btn_gray_bd">내역보기</a></td>
											</tr>
										</tbody>
										<tbody class="">
											<tr class="sum">
												<th scope="row">총 할인금액</th>
												<td><strong class="txt14">3,700</strong></td>
											</tr>
											<tr class="displaynone">
												<th scope="row">쿠폰할인</th>
												<td><span class="gSpace20">0</span> <a href="#none"
													class="eUsedCouponDetail btnNormal">내역보기</a></td>
											</tr>
											<tr class="">
												<th scope="row">추가할인금액</th>
												<td><span class="gSpace20">3,700</span> <a href="#none"
													class="btnNormal"
													onclick="OrderLayer.onDiv('order_layer_addsale', event);">내역보기</a>
												</td>
											</tr>
										</tbody>
										<tbody class="displaynone">
											<tr class="sum">
												<th scope="row">총 부가결제금액</th>
												<td><strong>0</strong></td>
											</tr>
											<tr class="displaynone">
												<th scope="row">적립금</th>
												<td>0원</td>
											</tr>
											<tr class="displaynone">
												<th scope="row">네이버 마일리지/캐쉬</th>
												<td>0% 적립 / 0 (마일리지 <strong>0</strong> + 캐쉬 <strong>0</strong>)
												</td>
											</tr>
											<tr class="displaynone">
												<th scope="row">예치금</th>
												<td>0코인</td>
											</tr>
										</tbody>
									</table>
								</div>
								<div class="ec-base-table" style="margin-top: 20px;">
									<table border="1" summary="" class="SP_tableSt01_isThAndTd">
										<caption>결제정보</caption>
										<colgroup>
											<col style="width: 160px">
											<col style="width: auto">
										</colgroup>
										<tbody>
											<tr class="sum">
												<th scope="row">총 결제금액</th>
												<td><span class="txtEm"> <strong class="txt18">14,100</strong>
														<span class="displaynone"></span>
												</span></td>
											</tr>
											<tr class="">
												<th scope="row">결제수단</th>
												<td><span><span>카카오페이(간편결제)</span></span>
													<p>
														<a target="_blank" href="" class="btnNormal displaynone">인터넷뱅킹
															바로가기</a> <a target="_blank" href=""
															class="btnNormal displaynone" id="">결제사이트 바로가기</a>
													</p></td>
											</tr>
											<tr class="displaynone">
												<th scope="row">전자보증보험<br>서비스정보
												</th>
												<td></td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
							<div class="SP_subSection">
								<h3 class="SP_contTitle">주문 상품 정보</h3>

								<div class="ec-base-table typeList">
									<table border="1" summary="" class="SP_tableSt01_isThumNail ">
										<caption>기본배송</caption>
										<colgroup>
											<col style="width: 92px">
											<col style="width: auto">
											<col style="width: 60px">
											<col style="width: 100px">
											<col style="width: 95px">
											<col style="width: 110px">
											<col style="width: 110px">
										</colgroup>
										<thead>
											<tr>
												<th scope="col">이미지</th>
												<th scope="col">상품정보</th>
												<th scope="col">수량</th>
												<th scope="col">판매가</th>
												<th scope="col">배송구분</th>
												<th scope="col">주문처리상태</th>
												<th scope="col">취소/교환/반품</th>
											</tr>
										</thead>
										<tfoot class="right">
											<tr>
												<td colspan="7"><span class="gLeft">[기본배송]</span>
													상품구매금액 <strong>0</strong><span class="displaynone">
														+ 부가세 0</span> + 배송비 0 + 지역별배송비 0<span class="displaynone">
														- 상품할인금액 0</span> = 합계 : <strong class="txtEm gIndent10"><span
														class="txt18">0</span></strong> <span class="displaynone"></span></td>
											</tr>
										</tfoot>
										<tbody
											class="xans-element- xans-myshop xans-myshop-orderhistorydetailbasic center">
											<tr class="xans-record-">
												<td class="thumb"><a
													href="/product/detail.html?product_no=2089&amp;cate_no=160"><img
														src="//www.ohora.kr/web/product/tiny/202408/d2f98917c2be64437a36bcd6474375a0.jpg"
														alt=""
														onerror="this.src='//img.echosting.cafe24.com/thumb/img_product_small.gif';"></a></td>
												<td class="left"><strong class="name"><a
														href="/product/n-티니-네일/2089/category/160/"
														class="ec-product-name">N 티니 네일</a></strong>
													<div class="option "></div>
													<p class="gBlank5 displaynone">무이자할부 상품</p></td>
												<td>1</td>
												<td class="right">
													<div class="discount">
														<strong>14,800</strong>
														<div class="displaynone"></div>
													</div>
													<div class="">
														<strong>11,100</strong>
														<div class="displaynone"></div>
													</div>
												</td>
												<td><div class="txtInfo">
														기본배송
														<div class="displaynone">(해외배송가능)</div>
													</div></td>
												<td class="SP_link state">
													<p class="txtEm">취소완료</p>
													<p class="displaynone">
														<a href="#" target="_self"></a>
													</p>
													<p class="displaynone">
														<a href="#none" class="line" onclick="">[]</a>
													</p>
													<p class="SP_linkP">
														<a href="#none"
															class="SP_cm_btn SP_btn_gray_bd displaynone"
															onclick="OrderHistory.withdraw('C','20241027-0001930|2089|000A|24440490','', 'F','F','T','T')">취소철회</a>
														<a href="#none"
															class="SP_cm_btn SP_btn_gray_bd displaynone"
															onclick="OrderHistory.withdraw('E','20241027-0001930|2089|000A|24440490','', 'F','F','T','T')">교환철회</a>
														<a href="#none"
															class="SP_cm_btn SP_btn_gray_bd displaynone"
															onclick="OrderHistory.withdraw('R','20241027-0001930|2089|000A|24440490','', 'F','F','T','T')">반품철회</a>
													</p>
												</td>
												<td>
													<p class="">
														<a href="#none" class="SP_linkView"
															onclick="OrderLayer.getDetailInfo('?product_no=2089&amp;order_id=20241027-0001930&amp;ord_item_code=20241027-0001930-01');">상세정보</a>
													</p>
													<p class="displaynone">-</p>
												</td>
											</tr>
										</tbody>
									</table>
								</div>

								<div class="ec-base-table typeList">
									<table border="1" summary=""
										class="SP_tableSt01_isThumNail displaynone">
										<caption>개별배송</caption>
										<colgroup>
											<col style="width: 92px">
											<col style="width: auto">
											<col style="width: 60px">
											<col style="width: 100px">
											<col style="width: 95px">
											<col style="width: 110px">
											<col style="width: 110px">
										</colgroup>
										<thead>
											<tr>
												<th scope="col">이미지</th>
												<th scope="col">상품정보</th>
												<th scope="col">수량</th>
												<th scope="col">판매가</th>
												<th scope="col">배송구분</th>
												<th scope="col">주문처리상태</th>
												<th scope="col">취소/교환/반품</th>
											</tr>
										</thead>
										<tfoot class="right">
											<tr>
												<td colspan="7"><span class="gLeft">[개별배송]</span>
													상품구매금액 <strong>0</strong><span class="displaynone">
														+ 부가세 0</span> + 배송비 0 + 지역별배송비 0<span class="displaynone">
														- 상품할인금액 0</span> = 합계 : <strong class="txtEm gIndent10"><span
														class="txt18">0</span></strong> <span class="displaynone"></span></td>
											</tr>
										</tfoot>
									</table>
								</div>

								<div class="ec-base-table typeList">
									<table border="1" summary=""
										class="SP_tableSt01_isThumNail displaynone">
										<caption>해외배송</caption>
										<colgroup>
											<col style="width: 92px">
											<col style="width: auto">
											<col style="width: 60px">
											<col style="width: 100px">
											<col style="width: 95px">
											<col style="width: 110px">
											<col style="width: 110px">
										</colgroup>
										<thead>
											<tr>
												<th scope="col">이미지</th>
												<th scope="col">상품정보</th>
												<th scope="col">수량</th>
												<th scope="col">판매가</th>
												<th scope="col">배송구분</th>
												<th scope="col">주문처리상태</th>
												<th scope="col">취소/교환/반품</th>
											</tr>
										</thead>
										<tfoot class="right">
											<tr>
												<td colspan="7"><span class="gLeft">[해외배송]</span>
													상품구매금액 <strong>0</strong><span class="displaynone">
														+ 부가세 0</span> + 배송비 0<span class="displaynone"> - 상품할인금액
														0</span> = 합계 : <strong class="txtEm gIndent10"><span
														class="txt18">0</span></strong> <span class="displaynone"></span></td>
											</tr>
										</tfoot>
									</table>
								</div>
							</div>
							<div class="SP_subSection displaynone">
								<h3 class="SP_contTitle">사은품</h3>
								<div class="ec-base-table typeList">
									<table border="1" summary="" class="SP_tableSt01_isThumNail">
										<caption>사은품</caption>
										<colgroup>
											<col style="width: 92px">
											<col style="width: auto">
											<col style="width: 60px">
											<col style="width: 110px">
										</colgroup>
										<thead>
											<tr>
												<th scope="col">이미지</th>
												<th scope="col">상품정보</th>
												<th scope="col">수량</th>
												<th scope="col">사은품 구분</th>
											</tr>
										</thead>
										<tfoot class="right">
											<tr>
												<td colspan="4"><span class="gLeft">[사은품]</span></td>
											</tr>
										</tfoot>
									</table>
								</div>
							</div>
							<div class="SP_subSection">
								<h3 class="SP_contTitle">최종 결제 정보</h3>
								<div class="ec-base-table">
									<table border="1" summary="" class="SP_tableSt01_isThAndTd">
										<caption>최종 결제 정보</caption>
										<colgroup>
											<col style="width: 160px">
											<col style="width: auto">
										</colgroup>
										<tbody>
											<tr>
												<th scope="row">총 결제금액</th>
												<td><span class="txtEm"><strong class="txt18">0</strong></span>
													<span class="displaynone"></span></td>
											</tr>
										</tbody>
									</table>
								</div>
								<div class="ec-base-table">
									<table border="1" summary="" class="SP_tableSt01_isThAndTd">
										<caption>최종 결제 정보</caption>
										<colgroup>
											<col style="width: 160px">
											<col style="width: auto">
										</colgroup>
										<tbody
											class="xans-element- xans-myshop xans-myshop-orderhistorydetailpaymentfinal">
											<tr class="xans-record-">
												<th scope="row">상품구매금액</th>
												<td><strong>0</strong>
													<p></p></td>
											</tr>
											<tr class="xans-record-">
												<th scope="row">배송비</th>
												<td><strong>0</strong>
													<p></p></td>
											</tr>
											<tr class="xans-record-">
												<th scope="row">결제예정금액</th>
												<td><strong>0</strong>
													<p></p></td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
							<div class="SP_subSection displaynone">
								<h3 class="SP_contTitle">취소/교환/반품 신청 정보</h3>
							</div>
							<div
								class="xans-element- xans-myshop xans-myshop-orderhistorydetailrefundnew SP_subSection">
								<h3 class="SP_contTitle">환불정보</h3>
								<div class="ec-base-table total">
									<table border="1" summary="" class="SP_tableSt01_isThAndTd">
										<caption>환불정보</caption>
										<colgroup>
											<col style="width: 170px">
											<col style="width: auto">
											<col style="width: 80px">
											<col style="width: 150px">
										</colgroup>
										<thead>
											<tr>
												<th scope="col">구분</th>
												<th scope="col">상품정보</th>
												<th scope="col">수량</th>
												<th scope="col">상품구매금액</th>
											</tr>
										</thead>
										<tbody class="xans-record-">
											<tr>
												<th scope="row">취소 대상</th>
												<td class="productList" colspan="3">
													<ul
														class="xans-element- xans-myshop xans-myshop-cancelproduct">
														<li class="xans-record-">
															<div class="product">
																<strong>N 티니 네일</strong> <span class="option"
																	style="display: none;"></span>
															</div>
															<p class="quantity">1</p>
															<p class="price">
																<strong>14,800</strong>
															</p>
														</li>
													</ul>
												</td>
											</tr>
											<tr class="displaynone">
												<th scope="row"></th>
												<td class="productList" colspan="3"></td>
											</tr>
											<tr>
												<th scope="row">환불일자 (처리상태)</th>
												<td colspan="3">2024-10-27 18:47:05 <strong>(환불완료)</strong>
												</td>
											</tr>
											<tr class="">
												<th scope="row">환불금액</th>
												<td colspan="3" class="total">상품금액 14,800 -3,700(상품별할인)
													+3,000(배송비) = 합계 : <strong>14,100<span
														class="displaynone"></span></strong>
												</td>
											</tr>
											<tr class="displaynone">
												<th scope="row">보류 사유</th>
												<td colspan="3"></td>
											</tr>
											<tr>
												<th scope="row">환불수단</th>
												<td colspan="3">선불금(카카오페이)</td>
											</tr>
											<tr class="displaynone">
												<th scope="row">환불계좌</th>
												<td colspan="3">[] - 예금주 : - <a href="#none"
													onclick="changeBankAccount('20241027-0001930', 'C20241027-0128532')"
													class="btnNormal displaynone">환불계좌변경</a>
												</td>
											</tr>
											<tr class="">
												<th scope="row">할인 및 부가결제<br>복원 내역
												</th>
												<td colspan="3">
													<ul class="coupon">
														<li class="displaynone">쿠폰 복원 금액 : <strong>0</strong></li>
														<li class="">할인 복원 금액 : <strong>3700</strong></li>
														<li class="displaynone">적립금 복원 : <strong>0</strong></li>
														<li class="displaynone">예치금 복원 : <strong>0</strong></li>
														<li class="displaynone">네이버마일리지 &amp; 캐시 복원 : <strong>0</strong>
															()
														</li>
													</ul>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
							<div class="SP_subSection">
								<h3 class="SP_contTitle">배송지정보</h3>
								<div class="ec-base-table">
									<table border="1" summary="" class="SP_tableSt01_isThAndTd">
										<caption>배송지정보</caption>
										<colgroup>
											<col style="width: 160px">
											<col style="width: auto">
										</colgroup>
										<tbody>
											<tr class="displaynone">
												<th scope="row">수령지</th>
												<td><strong></strong>
													<ul class="list">
														<li>- 주소 :</li>
														<li>- 전화번호 :</li>
														<li>- 영업시간 :</li>
														<li>- 수령 가능일 :</li>
														<li>- 수령지 안내 :</li>
													</ul>
													<div class="map displaynone">
														<p>* 약도</p>
													</div></td>
											</tr>
											<tr>
												<th scope="row">받으시는분</th>
												<td><span>최사랑</span></td>
											</tr>
											<tr class="displaynone">
												<th scope="row">영문이름</th>
												<td><span></span></td>
											</tr>
											<tr class="displaynone">
												<th scope="row">이름(발음기호)</th>
												<td><span></span></td>
											</tr>
											<tr class="displaynone">
												<th scope="row">국가</th>
												<td></td>
											</tr>
											<tr class="">
												<th scope="row">우편번호</th>
												<td><span>08041</span></td>
											</tr>
											<tr class="">
												<th scope="row">주소</th>
												<td><span>서울 양천구 지양로 4 205호</span></td>
											</tr>
											<tr class="displaynone">
												<th scope="row">도시</th>
												<td></td>
											</tr>
											<tr class="displaynone">
												<th scope="row">주/지방</th>
												<td></td>
											</tr>
											<tr>
												<th scope="row">일반전화</th>
												<td></td>
											</tr>
											<tr>
												<th scope="row">휴대전화</th>
												<td><span>010-9275-1787</span></td>
											</tr>
											<tr>
												<th scope="row">배송메시지</th>
												<td><span>부재 시 문 앞에 놓아주세요.</span></td>
											</tr>
											<tr class="displaynone">
												<th scope="row">희망 배송일</th>
												<td></td>
											</tr>
											<tr class="displaynone">
												<th scope="row">희망 배송시간</th>
												<td></td>
											</tr>
											<tr class="displaynone">
												<th scope="row">희망배송업체/방식</th>
												<td></td>
											</tr>
											<tr class="displaynone">
												<th scope="row">수령가능일</th>
												<td></td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
							<div class="SP_subSection">
								<h3 class="SP_contTitle">추가정보</h3>
								<div class="ec-base-table">
									<table border="1" summary="" class="SP_tableSt01_isThAndTd">
										<caption>추가 정보</caption>
										<colgroup>
											<col style="width: 160px">
											<col style="width: auto">
										</colgroup>
										<tbody class="xans-element- xans-myshop xans-myshop-ordadd">
											<tr class="xans-record-">
												<th scope="row">배송지 확인</th>
												<td>상세주소(동,호수)를 정확하게 기재하셨나요?</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
							<div class="SP_subSection displaynone">
								<h3 class="SP_contTitle">수거신청 정보</h3>
							</div>
							<div class="SP_subSection displaynone">
								<h3 class="SP_contTitle">고객알림</h3>
								<p class="customer"></p>
							</div>
							<div class="SP_submitBtn_wrap type2">
								<div class="SP_submitBtn_left">
									<a href="#none"
										onclick="window.open('/myshop/order/issue/cash.html?order_id=20241027-0001930', '', 'scrollbars=yes, resizeable=0, status=0, directories=0, toolbar=0'); return false;"
										class="SP_cm_btn SP_btn_gray_bd displaynone">현금영수증 신청</a> <a
										href="#none"
										onclick="window.open('/exec/front/MyShop/OrderPrintPg/?order_id=20241027-0001930&amp;print_mode=print_pg_cash', '', 'scrollbars=yes, resizeable=0, status=0, directories=0, toolbar=0'); return false;"
										class="SP_cm_btn SP_btn_gray_bd displaynone">현금영수증전표 인쇄</a> <a
										href="#none"
										onclick="window.open('/myshop/order/issue/tax.html?order_id=20241027-0001930', '', 'scrollbars=yes, resizeable=0, status=0, directories=0, toolbar=0'); return false;"
										class="SP_cm_btn SP_btn_gray_bd displaynone">세금계산서 신청</a> <a
										href="#none"
										onclick="window.open('/myshop/order/print/tax.html?order_id=20241027-0001930', '', 'scrollbars=yes, resizeable=0, status=0, directories=0, toolbar=0'); return false;"
										class="SP_cm_btn SP_btn_gray_bd displaynone">세금계산서 인쇄</a>
									<!-- <a href="#none" onclick="window.open('/myshop/order/print/spec.html?order_id=20241027-0001930', '', 'scrollbars=yes, resizeable=0, status=0, directories=0, toolbar=0'); return false;" class="SP_cm_btn SP_btn_gray_bd displaynone">거래명세서 인쇄</a> -->
									<!-- <a href="#none" onclick="window.open('/exec/front/MyShop/OrderPrintPg/?order_id=20241027-0001930&print_mode=print_pg_card', '', 'scrollbars=yes, resizeable=0, status=0, directories=0, toolbar=0'); return false;" class="SP_cm_btn SP_btn_gray_bd displaynone">카드매출전표 인쇄</a> -->
									<a href="#none" onclick="createGiftLayer('20241027-0001930')"
										class="SP_cm_btn SP_btn_gray_bd displaynone">사은품 선택</a> <a
										href="#none"
										onclick="window.open('/myshop/order/store_pickup.html?order_id=20241027-0001930', '', 'scrollbars=yes, resizeable=0, status=0, directories=0, toolbar=0'); return false;"
										class="SP_cm_btn SP_btn_gray_bd displaynone">수령지정보 인쇄</a>
								</div>
								<div class="SP_submitBtn_right">
									<a href="/myshop/order/list.html?page=1"
										class="SP_cm_btn SP_btn_gray_bd">목록보기</a>
								</div>
							</div>
							<div id="order_layer_detail" class="totalDetail ec-base-layer">
								<div class="header">
									<h3 class="">총 주문금액 상세내역</h3>
								</div>
								<div class="content">
									<p>0</p>
									<ul class="ec-base-desc typeDot gLarge rightDD">
										<li><strong class="term">상품금액</strong><span class="desc">0</span>
										</li>
										<li class="displaynone"><strong class="term">부가세</strong><span
											class="desc"></span></li>
										<li><strong class="term">배송비</strong><span class="desc">0</span>
										</li>
										<li><strong class="term">지역별 배송비</strong><span
											class="desc">0</span></li>
									</ul>
								</div>
								<a href="#none" class="close"
									onclick="OrderLayer.offDiv('order_layer_detail');"><img
									src="//img.echosting.cafe24.com/skin/base/common/btn_close.gif"
									alt="닫기"></a>
							</div>
							<div id="order_layer_addsale" class="totalDetail ec-base-layer">
								<h3 class="SP_contTitle">추가금액할인 내역보기</h3>
								<div class="content">
									<p>3,700</p>
									<ul class="ec-base-desc typeDot gLarge rightDD">
										<li class="displaynone"><strong class="term">모바일할인</strong><span
											class="desc"></span></li>
										<li class=""><strong class="term">기간할인</strong><span
											class="desc">3,700</span></li>
										<li class="displaynone"><strong class="term">회원할인</strong><span
											class="desc">0</span></li>
										<li class="displaynone"><strong class="term">재구매할인</strong><span
											class="desc">0</span></li>
										<li class="displaynone"><strong class="term">결제수단할인</strong><span
											class="desc"></span></li>
										<li class="displaynone"><strong class="term">신규상품할인</strong><span
											class="desc">0</span></li>
										<li class="displaynone"><strong class="term">대량구매할인</strong><span
											class="desc">0</span></li>
										<li class="displaynone"><strong class="term">어바웃pbp할인</strong><span
											class="desc"></span></li>
										<li class="displaynone"><strong class="term">바로가기(링콘)할인</strong><span
											class="desc">0</span></li>
										<li class="displaynone"><strong class="term">회원등급할인</strong><span
											class="desc">0</span></li>
										<li class="displaynone"><strong class="term">세트할인</strong><span
											class="desc">0</span></li>
										<li class="displaynone"><strong class="term">세트상품할인</strong><span
											class="desc">0</span></li>
										<li class="displaynone"><strong class="term">배송비할인</strong><span
											class="desc"></span></li>
									</ul>
									<ul class="ec-base-desc typeDot gLarge rightDD displaynone">
									</ul>
									<ul class="ec-base-desc typeDot gLarge rightDD displaynone">
									</ul>
								</div>
								<a href="#none" class="close"
									onclick="OrderLayer.offDiv('order_layer_addsale');"><img
									src="//img.echosting.cafe24.com/skin/base/common/btn_close.gif"
									alt="닫기"></a>
							</div>
							<div class="SP_subSection SP_pageGuideText_wrap">
								<h3 class="SP_pageGuideTxt_tt">이용안내</h3>
								<div class="SP_pageGuideTxt_cont">
									<h4>신용카드매출전표 발행 안내</h4>
									<p>신용카드 결제는 사용하는 PG사 명의로 발행됩니다.</p>
									<h4>세금계산서 발행 안내</h4>
									<ol>
										<li class="item1">부가가치세법 제 54조에 의거하여 세금계산서는 배송완료일로부터 다음달
											10일까지만 요청하실 수 있습니다.</li>
										<li class="item2">세금계산서는 사업자만 신청하실 수 있습니다.</li>
										<li class="item3">배송이 완료된 주문에 한하여 세금계산서 발행신청이 가능합니다.</li>
										<li class="item4">[세금계산서 신청]버튼을 눌러 세금계산서 신청양식을 작성한 후 팩스로
											사업자등록증사본을 보내셔야 세금계산서 발생이 가능합니다.</li>
										<li class="item5">[세금계산서 인쇄]버튼을 누르면 발행된 세금계산서를 인쇄하실 수
											있습니다.</li>
										<li class="item6">세금계산서는 실결제금액에 대해서만 발행됩니다.(적립금과 할인금액은
											세금계산서 금액에서 제외됨)</li>
									</ol>
									<h4>부가가치세법 변경에 따른 신용카드매출전표 및 세금계산서 변경 안내</h4>
									<ol>
										<li class="item1">변경된 부가가치세법에 의거, 2004.7.1 이후 신용카드로 결제하신
											주문에 대해서는 세금계산서 발행이 불가하며<br>신용카드매출전표로 부가가치세 신고를 하셔야
											합니다.(부가가치세법 시행령 57조)
										</li>
										<li class="item2">상기 부가가치세법 변경내용에 따라 신용카드 이외의 결제건에 대해서만
											세금계산서 발행이 가능함을 양지하여 주시기 바랍니다.</li>
									</ol>
									<h4>현금영수증 이용안내</h4>
									<ol>
										<li class="item1">현금영수증은 1원 이상의 현금성거래(무통장입금, 실시간계좌이체,
											에스크로, 예치금)에 대해 발행이 됩니다.</li>
										<li class="item2">현금영수증 발행 금액에는 배송비는 포함되고, 적립금사용액은 포함되지
											않습니다.</li>
										<li class="item3">발행신청 기간제한 현금영수증은 입금확인일로 부터 48시간안에 발행을
											해야 합니다.</li>
										<li class="item4">현금영수증 발행 취소의 경우는 시간 제한이 없습니다. (국세청의 정책에
											따라 변경 될 수 있습니다.)</li>
										<li class="item5">현금영수증이나 세금계산서 중 하나만 발행 가능 합니다.</li>
									</ol>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

</body>
</html>



