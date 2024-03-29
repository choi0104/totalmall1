<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../resources/css/product/list.css">
</head>
<body>
  	<%@ include file="../Main/Header2.jsp" %>
    <!-- ---------카테고리 페이지--------- -->
    <div id="CategoryPage">
        <c:choose>
			<c:when test="${productList[0].category eq 'meat'}">
       			<h3 style="color: #3498db;">홈> 식품> 고기</h3>
       		</c:when>
			<c:when test="${productList[0].category eq 'vegetables'}">
       			<h3 style="color: #3498db;">홈> 식품> 야채</h3>
       		</c:when>
			<c:when test="${productList[0].category eq 'fruits'}">
       			<h3 style="color: #3498db;">홈> 식품> 과일</h3>
       		</c:when>
			<c:when test="${productList[0].category eq 'frozen'}">
       			<h3 style="color: #3498db;">홈> 식품> 냉동</h3>
       		</c:when>
			<c:when test="${productList[0].category eq 'kitchen'}">
       			<h3 style="color: #3498db;">홈> 홈데코> 주방</h3>
       		</c:when>
			<c:when test="${productList[0].category eq 'curtain'}">
       			<h3 style="color: #3498db;">홈> 홈데코> 커튼</h3>
       		</c:when>
			<c:when test="${productList[0].category eq 'games'}">
       			<h3 style="color: #3498db;">홈> 취미> 게임</h3>
       		</c:when>
			<c:when test="${productList[0].category eq 'lego'}">
       			<h3 style="color: #3498db;">홈> 취미> 레고</h3>
       		</c:when>
			<c:when test="${productList[0].category eq 'petsupplies'}">
       			<h3 style="color: #3498db;">홈> 취미> 펫용품</h3>
       		</c:when>
			<c:when test="${productList[0].category eq 'dailynecessities'}">
       			<h3 style="color: #3498db;">홈> 생필품> 생필품</h3>
       		</c:when>
			<c:when test="${productList[0].category eq 'bodyhair'}">
       			<h3 style="color: #3498db;">홈> 생필품> 바디헤어</h3>
       		</c:when>
			<c:when test="${productList[0].category eq 'men'}">
       			<h3 style="color: #3498db;">홈> 의류> 남성</h3>
       		</c:when>
			<c:when test="${productList[0].category eq 'women'}">
       			<h3 style="color: #3498db;">홈> 의류> 여성</h3>
       		</c:when>
			<c:when test="${productList[0].category eq 'education'}">
       			<h3 style="color: #3498db;">홈> 도서> 교육</h3>
       		</c:when>
			<c:when test="${productList[0].category eq 'novels'}">
       			<h3 style="color: #3498db;">홈> 도서> 소설</h3>
       		</c:when>
			<c:when test="${productList[0].category eq 'overseas'}">
       			<h3 style="color: #3498db;">홈> 도서> 해외</h3>
       		</c:when>
			<c:when test="${productList[0].category eq 'living'}">
       			<h3 style="color: #3498db;">홈> 가구> 생활</h3>
       		</c:when>
			<c:when test="${productList[0].category eq 'bedding'}">
       			<h3 style="color: #3498db;">홈> 가구> 침상</h3>
       		</c:when>
			<c:when test="${productList[0].category eq 'homeAppliances'}">
       			<h3 style="color: #3498db;">홈> 가전> 가전</h3>
       		</c:when>
			<c:when test="${productList[0].category eq 'digital'}">
       			<h3 style="color: #3498db;">홈> 가전> 디지털</h3>
       		</c:when>
			<c:when test="${productList[0].category eq 'soccer'}">
       			<h3 style="color: #3498db;">홈> 스포츠> 축구</h3>
       		</c:when>
			<c:when test="${productList[0].category eq 'golf'}">
       			<h3 style="color: #3498db;">홈> 스포츠> 골프</h3>
       		</c:when>
        	<c:otherwise>
        		상품을 등록해주세요.
        	</c:otherwise>
        </c:choose>
        <div id="CategoryServeLine">
            <div id="CategoryServemenuLine">
                <h2>카테고리</h2>
                <span>식품</span><br>
                <a href="list.do?category=meat"><p>>고기</p></a><br>
                <a href="list.do?category=vegetables"><p>>야채</p></a><br>
                <a href="list.do?category=fruits"><p>>과일</p></a><br>
                <a href="list.do?category=frozen"><p>>냉동</p></a><br><br>
                <span>홈데코</span><br>
                <a href="list.do?category=kitchen"><p>>주방</p></a><br>
                <a href="list.do?category=curtain"><p>>커튼</p></a><br><br>
                <span>취미</span><br>
                <a href="list.do?category=games"><p>>게임</p></a><br>
                <a href="list.do?category=lego"><p>>레고</p></a><br>
                <a href="list.do?category=petsupplies"><p>>펫용품</p></a><br><br>
                <span>생필품</span><br>
                <a href="list.do?category=dailynecessities"><p>>생필품</p></a><br>
                <a href="list.do?category=bodyhair"><p>>바디헤어</p></a><br><br>
                <span>의류</span><br>
                <a href="list.do?category=men"><p>>남성</p></a><br>
                <a href="list.do?category=women"><p>>여성</p></a><br><br>
                <span>도서</span><br>
                <a href="list.do?category=education"><p>>교육</p></a><br>
                <a href="list.do?category=novels"><p>>소설</p></a><br>
                <a href="list.do?category=overseas"><p>>해외</p></a><br><br>
                <span>가구</span><br>
                <a href="list.do?category=living"><p>>생활</p></a><br>
                <a href="list.do?category=bedding"><p>>침상</p></a><br><br>
                <span>가전</span><br>
                <a href="list.do?category=homeAppliances"><p>>가전</p></a><br>
                <a href="list.do?category=digital"><p>>디지털</p></a><br><br>
                <span>스포츠</span><br>
                <a href="list.do?category=soccer"><p>>축구</p></a><br>
                <a href="list.do?category=golf"><p>>골프</p></a>
            </div>
            <div id="CategoryProductLine">
                <div id="CategoryProductContainer">
                    <a href="${pageContext.request.contextPath}/nav/EventPage.do" id="CategoryEventbox">
                        <div id="CategoryEvent">
                            <button id="FoodImg1" onmouseover="PakgeImg(1, 'FoodImg1')"></button>
                            <button id="FoodImg2" onmouseover="PakgeImg(2, 'FoodImg2')"></button>
                            <button id="FoodImg3" onmouseover="PakgeImg(3, 'FoodImg3')"></button>
                            <button id="FoodImg4" onmouseover="PakgeImg(4, 'FoodImg4')"></button>
                            <button id="FoodImg5" onmouseover="PakgeImg(5, 'FoodImg5')"></button>
                            <button id="FoodImg6" onmouseover="PakgeImg(6, 'FoodImg6')"></button>
                            <button id="FoodImg7" onmouseover="PakgeImg(7, 'FoodImg7')"></button>
                        </div>
                        <img id="FoodImg" src="../resources/img/Mallimg/식품1.jpg">
                    </a>
                    <div id="CategoryProductbox">
                        <br><h3>핫딜 세일</h3><hr>
                        <div class="Productmain">
						    <c:choose>
								<c:when test="${empty productList}">
									<tr><td colspan="6">등록된 상품이 없습니다</td></tr>
								</c:when>
								<c:otherwise>
									<c:forEach var="i" begin="1" end="5" varStatus="vs">
										<c:if test="${not empty productList[vs.count-1]}">
						                    <div class="CategoryProduct">
						                        <a href="${pageContext.request.contextPath}/product/item.do?p_idx=${productList[vs.count-1].p_idx}">
						                       	<img src="../resources/uploads/${productList[vs.count-1].save_file_name1}">
						                       	</a>
						                       	
						                        <a href="${pageContext.request.contextPath}/product/item.do?p_idx=${productList[vs.count-1].p_idx}">
						                        	${productList[vs.count-1].product_name}
						                        </a>
							                        <span class="price" style="width:100%; text-align: center;">${productList[i-1].price}원</span>
						                    </div>
										</c:if>
									</c:forEach>
								</c:otherwise>
							</c:choose>
                        </div>
                    </div>
                    <div id="CategoryProductbestbox">
                        <br><h3>검색어 순위</h3><hr>
                        <div class="Productmain">
   						    <c:choose>
								<c:when test="${empty productList}">
									<tr><td colspan="6">등록된 상품이 없습니다</td></tr>
								</c:when>
								<c:otherwise>
									<c:forEach var="i" begin="1" end="5" varStatus="vs">
											<c:if test="${not empty productList[i-1]}">
					                            <div class="CategoryProduct">
					                                <span>${i}</span>
					                                <a href="${pageContext.request.contextPath}/product/item.do?p_idx=${productList[i-1].p_idx}">
								                       	<img src="../resources/uploads/${productList[vs.count-1].save_file_name1}">
					                                </a>
					                                <a href="${pageContext.request.contextPath}/product/item.do?p_idx=${productList[i-1].p_idx}">
						                                ${productList[i-1].product_name}
					                                </a>
										            <span class="price" style="width:100%; text-align: center;" class="productPrice" id="productPrice2${i}">${productList[i-1].price}원</span>
			        		                    </div>
											</c:if>
                                	</c:forEach>
								</c:otherwise>
							</c:choose>
                        </div>
                        <div class="Productmain">
   						    <c:choose>
								<c:when test="${empty productList}">
									<tr><td colspan="6">등록된 상품이 없습니다</td></tr>
								</c:when>
								<c:otherwise>
									<c:forEach var="i" begin="6" end="10" varStatus="vs">
										<c:if test="${not empty productList[i-1]}">
									        <div class="CategoryProduct">
									            <span>${i}</span>
									            <a href="${pageContext.request.contextPath}/product/item.do?p_idx=${productList[i-1].p_idx}">
									                <img src="../resources/uploads/${productList[vs.count-1].save_file_name1}">
									            </a>
									            <a href="${pageContext.request.contextPath}/product/item.do?p_idx=${productList[i-1].p_idx}">
									                ${productList[i-1].product_name}
									            </a>
									            <span class="price" style="width:100%; text-align: center;">${productList[i-1].price}원</span>
									        </div>
										</c:if>
                                	</c:forEach>
								</c:otherwise>
							</c:choose>
                        </div><br><br>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
  	<%@ include file="../Main/Footer2.jsp" %>
</body>
<script type="text/javascript" src="../resources/js/Main/pricenum.js"></script>
<script type="text/javascript" src="../resources/js/Product/list.js"></script>
</html>