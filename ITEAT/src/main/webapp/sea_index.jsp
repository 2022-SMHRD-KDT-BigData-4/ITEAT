<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="java.util.List"%>
<%@page import="com.iteat.domain.UserInfo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>IT EAT</title>

    <link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
    <script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link rel="stylesheet" href="assets/css/sea_index.css?ver15">
</head>
<body>

<%@ include file="header.jsp" %>
	  <div class="sea_warp" style="display: inline-block;">


		<div class="board_title">
            해저 기록            
        </div>

        <div class="sea_bar_wrap">
            <!--물고기 컬렉션 -->
            <div id="bar_wrap">
                <div class="bar"></div>
            
                <div class="barbar1"><img class="f1" src="assets/img/sea/fish1_1.png"><span class="l_text"></span></div>
                <div class="barbar2"><img class="f2" src="assets/img/sea/fish2_2.png"><span class="l_text"></span></div>
                <div class="barbar3"><img class="f3" src="assets/img/sea/fish3_3.png"><span class="l_text"></span></div>
                <div class="barbar4"><img class="f4" src="assets/img/sea/fish4_4.png"><span class="l_text"></span></div>
                <div class="barbar5"><img class="f5" src="assets/img/sea/fish5.png"><span class="l_text"></span></div>
                
                <!-- <div class="el"><img src="bubble.png"></div> -->
                <!-- <div class="barbar6"></div>
                <div class="barbar7"></div> -->
                <div class="barbar"></div>
                <img id="el" src="assets/img/sea/bubble.png">
                <img id="el1" src="assets/img/sea/bubble.png">
                <img id="el2" src="assets/img/sea/he.png">
                <img id="f" src="assets/img/sea/ssss.png">

            
            </div>
            
        </div>

        <div class="level">
            
            <h4>레   벨</h4> <progress id="progress" value="0" min="0" max="8"></progress>
            <div  id="prelv"> 
                9LV
            </div>
            <div id="nextlv">
                10LV
            </div>
        </div>



        <div class="calender_wrap">
            <div class="calendar">
                <div class="calendar-header">
                    <span class="calendar-yearmonth"></span>
                    <div class="calendar-controls">
                        <button type="button_prev" class="calendar-prev">&lt;</button>
                        <button type="button_next" class="calendar-next">&gt;</button>
                        <button type="button" class="calendar-today">오늘</button>
                    </div>
                </div>
                <div id="calendar"></div>
            </div>
        </div>



        <!-- 차트 -->
        <div class="lang-pie">
            <canvas id="lang-pie"></canvas>
        </div>


        <!--ex) 글올리기 버튼-->
        <div id="writer">
        <button id="ex">글올리기</button>
    </div>
        


</div>



    <script>
        //차트
        var ctx = document.getElementById('lang-pie').getContext('2d');
            var chart = new Chart(ctx, {
                //차트설정
                type: 'pie',
            
                //차트데이터
                data: {
                    datasets: [{
                        label: 'My First dataset',
                        backgroundColor: ['#6c5ce7','#a29bfe','#4834d4','#686de0','#5D6DBE','#9FA9D8','#CCD2F0'],
                        data: [20, 10, 10,10,10,10,20]
                    }],
                    labels: ['JAVA', 'PYthon', 'JavaScript','C／C＋＋','TypeScript','CSS','HTML']
                },
                options: {
                    pieceLabel: {
                        mode:'value', 
                        position:'outside', 
                        fontSize: 11, 
                        fontStyle: 'bold' 
                    }
                }
            });

            // $('canvas').css('width','300px')
            // $('canvas').css('height','300px')
            // $('canvas').css('text-align','center')
            // $('canvas').attr('width','500px')
            // $('canvas').attr('height','500px')

            
            






        //------------------------------------달력시작---------------------------------
        function calendar(date) {
        // 달력 연도
        var calendarYear = date.getFullYear();
        // 달력 월
        var calendarMonth = date.getMonth() + 1;
        // 달력 일
        var calendarToday = date.getDate();
        var monthLastDate = new Date(calendarYear, calendarMonth, 0);
        // 달력 월의 마지막 일
        var calendarMonthLastDate = monthLastDate.getDate();
        var monthStartDay = new Date(calendarYear, date.getMonth(), 1);
        // 달력 월의 시작 요일
        var calendarMonthStartDay = monthStartDay.getDay();
        // 주 카운트   
        var calendarWeekCount = Math.ceil((calendarMonthStartDay + calendarMonthLastDate) / 7);
        // 달력 년월
        $(".calendar-yearmonth").html(calendarYear + "." + calendarMonth);
        // 오늘
        var today = new Date();
        var html = "";
        html += "<table>";
        html += "<thead>";
        html += "<tr>";
        html += "<th>일</th><th>월</th><th>화</th><th>수</th><th>목</th><th>금</th><th>토</th>";
        html += "</tr>";
        html += "</thead>";
        html += "<tbody>";
        // 위치
        var calendarPos = 0;
        // 날짜
        var calendarDay = 0;
        for (var index1 = 0; index1 < calendarWeekCount; index1++) {
            html += "<tr>";
            for (var index2 = 0; index2 < 7; index2++) {
                html += "<td>";
                if (calendarMonthStartDay <= calendarPos && calendarDay < calendarMonthLastDate) {
                    calendarDay++;
                    html += "<span";
                    if (calendarYear == today.getFullYear() && calendarMonth == today.getMonth() + 1 && calendarDay == today.getDate()) {
                        html += " class=\"today\"";
                    }
                    html += ">" + calendarDay + "</span>";
                }
                html += "</td>";
                calendarPos++;
            }
            html += "</tr>";
        }
        html += "</tbody>";
        html += "</table>";
        $("#calendar").html(html);
        }
        calendar(new Date());
        // 이전 달 이동 버튼 클릭
        $(".calendar-controls > .calendar-prev").on("click", function() {
            var yearmonth = $(".calendar-yearmonth").text().split(".");
            calendar(new Date(parseInt(yearmonth[0]), parseInt(yearmonth[1]) - 2, 1));
        });
        // 다음 달 이동 버튼 클릭
        $(".calendar-controls > .calendar-next").on("click", function() {
            var yearmonth = $(".calendar-yearmonth").text().split(".");
            calendar(new Date(parseInt(yearmonth[0]), parseInt(yearmonth[1]), 1));
        });
        // 오늘 이동 버튼 클릭
        $(".calendar-controls > .calendar-today").on("click", function() {
            calendar(new Date());
        });
        // 날짜 클릭
        $(document).on("click", ".calendar table > tbody > tr > td > span", function(event) {
            var yearmonth = $(".calendar-yearmonth").text().split(".");
            alert(yearmonth[0] + "." + yearmonth[1] + "." + $(event.target).text());
        });
        //------------------------------------달력끝--------------------------------------------


        //달력색칠------시작
        $('tbody>tr>td>span').each(function(){
            if($(this).text()=='1'){
                $(this).css('background-color','#CCD2F0')
            }
            if($(this).text()=='2'){
                $(this).css('background-color','#3A4CA8#')
            }
            if($(this).text()=='3'){
                $(this).css('background-color','#9FA9D8')
            }
            if($(this).text()=='4'){
                $(this).css('background-color','#9FA9D8')
            }
            if($(this).text()=='5'){
                $(this).css('background-color','#3A4CA8')
            }
            if($(this).text()=='7'){
                $(this).css('background-color','#3A4CA8')
            }
            if($(this).text()=='8'){
                $(this).css('background-color','#5D6DBE')
            }
            if($(this).text()=='9'){
                $(this).css('background-color','#3A4CA8')
            }
            if($(this).text()=='10'){
                $(this).css('background-color','#3A4CA8')
            }
            if($(this).text()=='11'){
                $(this).css('background-color','#9FA9D8')
            }
            if($(this).text()=='12'){
                $(this).css('background-color','#CCD2F0')
            }
            if($(this).text()=='14'){
                $(this).css('background-color','#3A4CA8')
            }
            if($(this).text()=='14'){
                $(this).css('background-color','#3A4CA8')
            }
            if($(this).text()=='16'){
                $(this).css('background-color','#3A4CA8')
            }
            if($(this).text()=='17'){
                $(this).css('background-color','#5D6DBE')
            }
            if($(this).text()=='19'){
                $(this).css('background-color','#9FA9D8')
            }            
            if($(this).text()=='20'){
                $(this).css('background-color','#3A4CA8')
            }
            if($(this).text()=='21'){
                $(this).css('background-color','#3A4CA8')
            }
        });
        //달력색칠------끝













        //ex글올리기버튼
        let codeCnt=0;  // 오늘 업로드한 코드 게시글 갯수
        let date=new Date();
        let tod=date.getDate();
        let colorCnt =0;    // 현재 달력에 진한색 갯수




        //#0b0355 가장진한갯수 찾아서 카운트하기
        // colorCnt=지금 달력에 진한색 갯수
        $('tbody>tr>td>span').each(function(){

            if($(this).css('background-color')=='rgb(58, 76, 168)'){
            colorCnt+=1;
            }
        })
        alert('진한색 갯수:'+colorCnt)


        
        // lev = 현재 레벨 = 진한색 갯수
        let lev = colorCnt;
        alert('현재 레벨:' + lev)



        // 글올리고(버튼누르고)
        $('#ex').click(function(){

            // 버튼 누르는 만큼(글올린갯수만큼) 카운트세기
            // codeCnt : 오늘 올린 글 갯수
            codeCnt+=1;
            alert('오늘 올린 글 갯수: ' + codeCnt)

            //오늘날짜 찾아서 글 갯수만큼 색칠하기  
            $('tbody>tr>td>span').each(function(){
                if($(this).text()==tod){
                    if( codeCnt >= 8 ){
                        $(this).css('background-color','#3A4CA8')
                        }else if( codeCnt >= 6 ){
                        $(this).css('background-color','#5D6DBE')
                        }else if( codeCnt >= 4 ){
                        $(this).css('background-color','#9FA9D8')
                        }else if( codeCnt >= 1 ){
                        $(this).css('background-color','#CCD2F0')
                        
                    }
                } 
            })

            // 색 갯수 다시 초기화하고 처음부터 카운트하기
            colorCnt=0;
            $('tbody>tr>td>span').each(function(){

                if($(this).css('background-color')=='rgb(58, 76, 168)'){
                    colorCnt+=1;
                }
            })
            alert('진한색 갯수:'+colorCnt)



            //오늘 올린 글 갯수가 8개 이상이면 1 렙업
            // (원래 lev+=1 이런식이 맞는데... 걍 10으로 고정하겠음ㅎㅎ)
            // (글 갯수가 8개 이상이면 lev=10)
            if(codeCnt>=8){
                lev=10;
                alert('현재 레벨:' + lev)
            }
            //레벨이 10이 넘어가면 잠수부아래로이동, 레벨10 물고기 나타나기
            if(lev>=10){
                alert('지금 글올린갯수 8이상이여야하는데 지금 몇개올림?' + codeCnt)
                alert('지금 달력에 진한색 갯수 10개여야하는데 지금 몇개임?' + colorCnt)
                alert('지금 레벨 10이여야하는데 렙몇?' + lev)
                $('#f').css('top','-1080px')
                $('.f1').prop('src','assets/img/sea/fish1.png')
                $('#prelv').text('10LV')
                $('#nextlv').text('11LV')
                $('#progress').prop('value','0')
            }else {
                $('#progress').prop('value',codeCnt)
            }
            

            
        })

        
    </script>
 
    
    <%@ include file="footer.jsp" %>
</body>
</html>