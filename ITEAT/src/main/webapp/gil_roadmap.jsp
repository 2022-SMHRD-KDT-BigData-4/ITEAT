<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="com.iteat.domain.StudyBoard"%>
<%@page import="com.iteat.domain.StudyBoardDAO"%>
<%@page import="java.util.List"%>
<%@page import="com.iteat.domain.UserInfo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<link rel="stylesheet" href="assets/css/gil_roadmapCss.css?ver=1.1">
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/jodit/3.18.5/jodit.min.css"/>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">


</head>
<body>

<%@ include file="header.jsp" %>
    


	<div class="roadTitle">
		길잡이/로드맵
	</div>

    <div id="roadPg">
        <div id="road_text">
            <div>
            아직 포지션을 못 정하셨다고요?<br>
            무엇을 배워야할지 갈피를 못잡겠다고요?
            </div>
            
            <div>
            <br>
            로드맵을 보고 결정해보세요!
            </div>
        </div>

        <!--select 포지션 고르기-->
        <section id="section_position">
            <section class="container">
                <div id="select-all" class="col-md-6 col-sm-10 col-xs-12">
                    <div id="select-placeholder" class="select-placeholder-inactive"> 
                         <span id="select-item" class="rotation-inactive">포지션을 고르세요</span>
                         <ul id="select-list">
                            <li id="slt_frontend" class="flag" >프론트엔드</li>
                            <li id="slt_backend" class="flag" >백엔드</li>
                            <li id="slt_java" class="flag" >JAVA</li>
                            <li id="slt_react" class="flag" >React</li>
                        </ul>
                    </div>                        
                </div>
            </section>
        </section>
        <!--select 포지션 고르기끝-->

        <div>
            <hr id="road_hr">
        </div>



        <!--사진고르기-->
        <div class="imgDiv"> 
           <div>
               <a class="roadZoom" href="assets/img/gil_roadmap/road_frontend.jpg" target="_blank">
               <img class="roadImg" src="assets/img/gil_roadmap/road_frontend.jpg" >
               </a>
           </div> 
        </div>
        <!--사진끝-->
    </div>




<script>
    /*
Reference: http://jsfiddle.net/BB3JK/47/
*/


    /*열기*/

    $(document).on('click','.rotation-inactive',function(){


        event.stopPropagation();
        if ($("#select-list").css("opacity") === "1") {
            $("#select-list").css("opacity", "0");
        } else {
            $("#select-list").css("opacity", "1");
        }
        $("#select-item").attr('class','rotation-active');
        $('#select-list').css('display','block');
		$('#section_position').css('height','472px');

    })


    /*닫기*/
    $(document).on('click','.rotation-active',function(){

        event.stopPropagation();
        if ($("#select-list").css("opacity") === "1") {
            $("#select-list").css("opacity", "0");
        } else {
            $("#select-list").css("opacity", "1");
        }

        $("#select-item").attr('class','rotation-inactive');
        $('#select-list').css('display','none')
        $('#section_position').css('height','180px');


    })


    $(document).on('click','#select-list',function(){

        event.stopPropagation();
        if ($("#select-list").css("opacity") === "1") {
            $("#select-list").css("opacity", "0");
        } else {
            $("#select-list").css("opacity", "1");
        }

        $("#select-item").attr('class','rotation-inactive');
        $('#select-list').css('display','none')
        $('#section_position').css('height','180px');


    })
    
    /*열고닫기끝*/



    $(".flag").click(function (event) {
        var selectedLi;
        console.log(event)
        selectedLi = event.target.id;
        var texty = $("#" + selectedLi).text()
        $("#select-item").text(texty);
        
    })

    /*선택한 item에 따라서 사진 바뀌기*/

    $('.flag').click(function(){
        if($(this).text()==='프론트엔드'){
            $('.roadImg').prop('src','assets/img/gil_roadmap/road_frontend.jpg')
            $('.roadZoom').prop('href','assets/img/gil_roadmap/road_frontend.jpg')
        }else if($(this).text()==='백엔드'){
            $('.roadImg').prop('src',"assets/img/gil_roadmap/road_backend.jpg")
            $('.roadZoom').prop('href','assets/img/gil_roadmap/road_backend.jpg')
        }else if($(this).text()==='JAVA'){
            $('.roadImg').prop('src','assets/img/gil_roadmap/road_java.png')
            $('.roadZoom').prop('href','assets/img/gil_roadmap/road_java.png')
        }else if($(this).text()==='React'){
            $('.roadImg').prop('src','assets/img/gil_roadmap/road_react.png')
            $('.roadZoom').prop('href','assets/img/gil_roadmap//road_react.png')
        }

    })

    

    /*사진 스크롤 초기화*/



</script>
 <%@ include file="footer.jsp" %>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
      
</body>
</html>