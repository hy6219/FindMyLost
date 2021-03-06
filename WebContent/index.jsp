<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% request.setCharacterEncoding("UTF-8"); %>    
<% response.setContentType("text/html;charset=UTF-8"); %> 
<%@ page import="ksh.sighting.dto.SightingDto" %>
<%@ page import="join.dto.*" %>
<%@ page import="ksh.sighting.dao.SightingDao" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ page import="java.util.List" %>  
    
    
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    body{
        margin:0;
        padding:0;
    }

    section{
        display: grid;
        place-items: center;
    }

    a{
        text-decoration: none;
    }

    ul{
        list-style: none;
    }



    .wrapper{
        width: 1160px;
        margin-top: 40px;
        display: grid;
        grid-template-columns: repeat(3, 1fr);
        gap: 30px;
        grid-auto-rows: minmax(40px, auto);
        margin-bottom: 40px;
    }

    .wrapper div {
        padding-top: 10px;
    }

    .wrapper div h2{
        font-size: 16px;
        width: 200px;
        margin: 13px 0;
        display: inline;
    }

    .aplus{
        margin-top: 3px;
        font-size: 13px;
        color: #e96211;;
        float: right;
        text-decoration: underline;
        font-weight: 600;
    }

    .board1{
        grid-column: 1 / 3;
        grid-row: 1/7;
    }
    
    .board2{
        grid-column: 1 / 3;
        grid-row: 8/14;
    }
    
    .bot1,
	.bot2,
	.bot3,
	.bot4,
	.bot5{
		padding-bottom: 5px;
		border-bottom: solid 1px;
	}
	
	
    .boc1 ul,
    .boc2 ul{
        padding: 0;
        list-style: none;

    }

    .boc1 ul li ,
    .boc2 ul li {
        width: 148px;
        padding: 0;
        float: left;
        margin-right: 1.8px;
    }

    .boc1 ul li img,
    .boc2 ul li img{
        width: 145px;
        height: 145px;
    }



    .board3{
        grid-column: 1 / 2;
        grid-row: 15/21;
    }

    

    .board4{
        grid-column: 2 / 3;
        grid-row: 15 / 21;
    }

    

    .boc3 ul,
    .boc4 ul{
        list-style: square;
        width: 340px;
        padding-left: 20px;
    }

    .boc3 ul li a,
    .boc4 ul li a{
        display: inline-block;
        text-decoration: none;
        color: black;
        max-width: 240px;
        overflow: hidden;
        text-overflow: ellipsis;
        white-space: nowrap;
        font-size: 14px;
    }



    .boc3 ul li span,
    .boc4 ul li span{
        float: right;
        padding-right: 0;
        font-size: 14px;
    }




    .board5{
        grid-column: 3 / 4;
        grid-row: 15 / 21;
    }


    .loginbox {
        grid-column: 3 / 4;
        grid-row: 1 / 3;
        background-color: #f7f9fa;
        border: 1px solid #dae1e6;
        padding: 15px;
    }
    
    .loginboxtop {
        color: grey;
        font-size: 12px;
        margin: 0;

    }
    .loginboxin{
        display: block;
        background-color: #19ce60;
        border: 1px solid #15c654;
        padding: 15px 0;
        margin: 10px 0;
        border-radius: 5px;
        font-size: 15px;
        color: white;
        font-weight: 900;
        text-align: center;
        width: 345px;
    }

    .loginboxin i{
        font-size: 17px;
        padding-right: 5px;
    }

    .loginboxbotdiv{
        margin-top: 15px;
    }

    .loginboxbot{
        color: grey;
        font-size: 12px;
        float: left;
    }

    .loginboxjoin{
        color: grey;
        font-size: 12px;
        float: right;
    }

	.slogoutbtn{
		float: right;
		font-size: 12px; 
	}



    .chatbox{
        grid-column: 3 / 4;
        grid-row: 4 / 14;      

    }


	.chkuserbr{
		height: 1px;
	}

	.rbimglink img{
		width: 375px;
		height: 500px;
	}







</style>
</head>
<body>
<%
	AniDto dto = (AniDto)session.getAttribute("dto");
	
%>
<%@include file="/header.jsp" %>
    <section>

        <div class="wrapper">
            <div class="board1">
            <div class="bot1">
                <h2>???????????????</h2>
                <a class="aplus" href="<%=request.getContextPath() %>/lost.do?command=lostMain&page=1">?????????</a>
            </div>
            <div class="boc1">
                <ul>
                	<li><a href="lost.do?command=lostAnimal&boardId=1&no=18&lev=0&seq=1"><span><img src="./image/lost6.jpg"></span></a></li> 
                    <li><a href="lost.do?command=lostAnimal&boardId=1&no=17&lev=0&seq=1"><span><img src="./image/lost6.jpg"></span></a></li>
                    <li><a href="lost.do?command=lostAnimal&boardId=1&no=16&lev=0&seq=1"><span><img src="./image/lost6.jpg"></span></a></li> 
                    <li><a href="lost.do?command=lostAnimal&boardId=1&no=15&lev=0&seq=1"><span><img src="./image/lost1.jpg"></span></a></li>
                    <li><a href="lost.do?command=lostAnimal&boardId=1&no=14&lev=0&seq=1"><span><img src="./image/lost1.jpg"></span></a></li>
                    <li><a href="lost.do?command=lostAnimal&boardId=1&no=13&lev=0&seq=1"><span><img src="./image/lost1.jpg"></span></a></li>
                    <li><a href="lost.do?command=lostAnimal&boardId=1&no=12&lev=0&seq=1"><span><img src="./image/lost1.jpg"></span></a></li>
                    <li><a href="lost.do?command=lostAnimal&boardId=1&no=11&lev=0&seq=1"><span><img src="./image/lost1.jpg"></span></a></li>
                    <li><a href="lost.do?command=lostAnimal&boardId=1&no=10&lev=0&seq=1"><span><img src="./image/lost6.jpg"></span></a></li>
                    <li><a href="lost.do?command=lostAnimal&boardId=1&no=9&lev=0&seq=1"><span><img src="./image/lost6.jpg"></span></a></li>  
                </ul>
            </div>
            </div>
            
            
            <div class="board2">
            <div class="bot2">
                <h2>?????? / ?????? ?????????</h2>
                <a class="aplus" href="sighting.do?command=sightingmain">?????????</a>
            </div>
            <div class="boc2">
                <ul>
                    <c:forEach var="i" begin="0" end="9">
                    	
                		<li><a href="sighting.do?command=selectOne&animal_no=${i+2 }">
                		
                		<span> 			
                			<c:choose>
                				<c:when test="${i eq 0 }">
                					<img src="http://www.animal.go.kr/files/shelter/2014/04/201405021605820.jpg">
                				</c:when>
                				<c:when test="${i eq 1 }">
                					<img src="http://www.animal.go.kr/files/shelter/2014/05/201405091605804.jpg">
                				</c:when>
                				<c:when test="${i eq 2 }">
                					<img src="http://www.animal.go.kr/files/shelter/2014/05/201405091705254.jpg">
                				</c:when>
                				<c:when test="${i eq 3 }">
                					<img src="http://www.animal.go.kr/files/shelter/2014/05/20140509170506.jpg">
                				</c:when>
                				<c:when test="${i eq 4 }">
                					<img src="http://www.animal.go.kr/files/shelter/2014/04/201405031605482.jpg">
                				</c:when>
                				<c:when test="${i eq 5 }">
                					<img src="http://www.animal.go.kr/files/shelter/2014/04/201405031605559.jpg">
                				</c:when>
                				<c:when test="${i eq 6 }">
                					<img src="http://www.animal.go.kr/files/shelter/2014/04/201405031605283.jpg">
                				</c:when>
                				<c:when test="${i eq 7 }">
                					<img src="http://www.animal.go.kr/files/shelter/2014/04/201405031605752.jpg">
                				</c:when>
                				<c:when test="${i eq 8 }">
                					<img src="http://www.animal.go.kr/files/shelter/2014/04/201405031605606.jpg">
                				</c:when>
                				<c:when test="${i eq 9 }">
                					<img src="http://www.animal.go.kr/files/shelter/2014/04/201405031605376.jpg">
                				</c:when>
                				
                				
                			</c:choose>
                		</span>
                			</a>
                		
                    
                    	</li> 
                    	
                    </c:forEach>
                    <!-- ????????? ????????????  0-i ??????????????? ??????-->
                </ul>
            </div>
            </div>

            
            
            <div class="board3">
            <div class="bot3">
                <h2>????????????</h2>
                <a class="aplus" href="">?????????</a>
            </div>
            <div class="boc3">
                <ul>
                	<c:forEach var="i" begin="0" end="5">
                    	<li>
                           <a href="<%= request.getContextPath()%>/notice.do?command=notice_detail&notice_no=13">[??????]???????????????.</a><span>${lii}2021-07-16</span>
                       </li>

                    	
                    </c:forEach>
                </ul>
            </div>
            </div>



            <div class="board4">
            <div class="bot4">
                <h2>????????????</h2>
                <a class="aplus" href="">?????????</a>
            </div>
            <div class="boc4">
                <ul>
                    
                    <li>
                        <a href="">${a}??????????????? ????????????</a><span>???</span>
                    </li>
                    <li>
                        <a href="">${a}?????????????????? ????????????</a><span>???</span>
                    </li>
                    <li>
                        <a href="">${a}?????????????????? ????????????</a><span>???</span>
                    </li>
                    <li>
                        <a href="">${a}???????????? ????????????</a><span>???</span>
                    </li>
                    <li>
                        <a href="">${a}??????????????? ????????????</a><span>???</span>
                    </li>
                    <li>
                        <a href="">${a}??????????????? ????????????</a><span>???</span>
                    </li>
                </ul>
            </div>
            </div>

            



            <div class="loginbox">
            
            
            
            	<% if(dto == null) {%>
                <p class="loginboxtop">??????????????? ????????? ?????? ?????????????????????</p>
                <a class="loginboxin" href="controller.do?command=loginform"><i>???????????????</i> ?????????</a>
                <div class="loginboxbotdiv">
                    <a class="loginboxbot" href="controller.do?command=findidform">????????? &nbsp</a>
                    <a class="loginboxbot" href="controller.do?command=findpwform">??????????????????</a>
                    <a class="loginboxjoin" href="controller.do?command=joinform">????????????</a>
                </div>

				<% } else if(dto != null) {%>
				<div class="chkuserbr"></div>
				<span><%= dto.getMyname() %> ??? ???????????????</span>
				<input type="button" class="slogoutbtn" value="????????????" onclick="location.href='controller.do?command=logout'">
				<div class="loginboxbotdiv">
					<a class="loginboxbot" href="">????????? &nbsp</a>
					<a class="loginboxbot" href="">?????????????????? &nbsp</a>
					<a class="loginboxbot" href="controller.do?command=mypage">??????????????? &nbsp</a>
				</div>

				<%} %>

				

            </div>
            <div class="chatbox">
                <div class="chatbot">
               		
                <a href="AdoptController.do?command=adoptMain" class="rbimglink"><img alt="??????" src="./image/rbanner.jpg"></a>
            
                </div>
                <div class="chatchat">
                </div>
            </div>

            
        </div>


    </section>






<%@include file="/footer.jsp" %>




</body>
</html>