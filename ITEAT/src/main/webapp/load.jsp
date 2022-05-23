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
    <title>Document</title>
    <link rel="stylesheet" href="assets/css/load.css?ver04">
    
</head>
<body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>





<%@ include file="header.jsp" %>

<div id="load_wrap">

<div class="load_rank">
    <div class="title">
        <div id="tech">
            <span class="rank_ment">
                <h3> 기술 요구사항 순위</h3>
            </span>
        <div class ="frame1"> 
            <iframe class="inlineFrameExample"
            title="tech_rank"
            width="250"
            height="300"
            src="techno_rank.jsp">
            </iframe>
        </div>
    </div>
    </div>

    <div class="title">
        <div id="lan">
            <span class="rank_mentt">
                <h3> 개발언어 요구사항 순위</h3>
            </span>
        <div class ="frame1">
            <iframe class="inlineFrameExample"
            title="rank_lang"
            width="250"
            height="300"
            src="lang_rank.jsp">
        </iframe>
        </div>
         </div>
    </div>
</div>

<div id="vava">
<span class="solo">
    <h4>혼자 공부하기 힘드시죠?</h4>
    <strong><h2> 유튜브보면서 쉽게 접근하기!</h2></strong>
</span>

<div id="css_tabs">
    <input id="tab1" type="checkbox" name="tab"  />
    <input id="tab2" type="checkbox" name="tab" />
    <input id="tab3" type="checkbox" name="tab" checked="checked"/>
    <label for="tab1">JAVA</label>
    <label for="tab2">Python</label>
    <label for="tab3">JavaScript</label>
    

  

    <div class="tab1_content">

        <div class ="frame">
            <iframe width="300" height="200" src="https://www.youtube.com/embed/L19wXSpv5cs" allowfullscreen></iframe>
        </div>

        <div class ="frame">
            <iframe class="inlineFrameExample"
            title="rank_lang"
            width="300"
            height="200"
            src="https://www.youtube.com/embed/f0cAmTYo4tQ">
        </iframe>
        </div>

        <div class ="frame">
            <iframe class="inlineFrameExample"
            title="rank_lang"
            width="300"
            height="200"
            src="https://www.youtube.com/embed/6gNMsjcH3oA">
        </iframe>
        </div>

        <div class ="frame">
            <iframe class="inlineFrameExample"
            title="rank_lang"
            width="300"
            height="200"
            src="https://www.youtube.com/embed/o8IWnKNAG4s">
        </iframe>
        </div>

        <div class ="frame">
            <iframe class="inlineFrameExample"
            title="rank_lang"
            width="300"
            height="200"
            src="https://www.youtube.com/embed/j-H7JAooXJ8">
        </iframe>
        </div>

        <div class ="frame">
            <iframe class="inlineFrameExample"
            title="rank_lang"
            width="300"
            height="200"
            src="https://www.youtube.com/embed/eP2KR7I6hfA">
        </iframe>
        </div>
    </div>

<!-- 파이썬 -->
    
    <div class="tab2_content"><div class ="frame">
        <iframe class="inlineFrameExample"
        title="rank_lang"
        width="300"
        height="200"
        src="https://www.youtube.com/embed/XQaffRBwbTs">
    </iframe>
    </div>

    <div class ="frame">
        <iframe class="inlineFrameExample"
        title="rank_lang"
        width="300"
        height="200"
        src="https://www.youtube.com/embed/_Z33y6nJoZI">
    </iframe>
    </div>

    <div class ="frame">
        <iframe class="inlineFrameExample"
        title="rank_lang"
        width="300"
        height="200"
        src="https://www.youtube.com/embed/vYClajFpiMs">
    </iframe>
    </div>

    <div class ="frame">
        <iframe class="inlineFrameExample"
        title="rank_lang"
        width="300"
        height="200"
        src="https://www.youtube.com/embed/mBKeVWIn6cU">
    </iframe>
    </div>

    <div class ="frame">
        <iframe class="inlineFrameExample"
        title="rank_lang"
        width="300"
        height="200"
        src="https://www.youtube.com/embed/VQZ0nWOHteo">
    </iframe>
    </div>

    <div class ="frame">
        <iframe class="inlineFrameExample"
        title="rank_lang"
        width="300"
        height="200"
        src="https://www.youtube.com/embed/TyJpyfVvlw8">
    </iframe>
    </div>

    <!-- 자바스크립트 -->

</div>
    <div class="tab3_content">
        <div class ="frame">
            <iframe class="inlineFrameExample"
            title="rank_lang"
            width="300"
            height="200"
            src="https://www.youtube.com/embed/e_ZRgIpNQOA">
        </iframe>
        </div>
        <div class ="frame">
            <iframe class="inlineFrameExample"
            title="rank_lang"
            width="300"
            height="200"
            src="https://www.youtube.com/embed/52Rs-4Pj0bg">
        </iframe>
        </div>
        <div class ="frame">
            <iframe class="inlineFrameExample"
            title="rank_lang"
            width="300"
            height="200"
            src="https://www.youtube.com/embed/0btTIGygqpw">
        </iframe>
        </div>

        <div class ="frame">
            <iframe class="inlineFrameExample"
            title="rank_lang"
            width="300"
            height="200"
            src="https://www.youtube.com/embed/NMHQkAS7XEc">
        </iframe>
        </div>

        <div class ="frame">
            <iframe class="inlineFrameExample"
            title="rank_lang"
            width="300"
            height="200"
            src="https://www.youtube.com/embed/wcsVjmHrUQg">
        </iframe>
        </div>

        <div class ="frame">
            <iframe class="inlineFrameExample"
            title="rank_lang"
            width="300"
            height="200"
            src="https://www.youtube.com/embed/w6cQ-u0rHMo">
        </iframe>
        </div>

    </div>
    
    
</div>
</div>



 <div id="css_tabs2"> 
    <input id="tab2_1" type="checkbox" name="tab" checked="checked" />
    <input id="tab2_2" type="checkbox" name="tab" />
    <input id="tab2_3" type="checkbox" name="tab" />
    <label for="tab2_1">RDBMS</label>
    <label for="tab2_2">AWS</label>
    <label for="tab2_3">Spring</label>
    
    <!-- RDBM -->
    <div class="tab2_1_content">

        <div class ="frame">
            <iframe class="inlineFrameExample"
            title="rank_lang"
            width="300"
            height="200"
            src="https://www.youtube.com/embed/6BSlwKkgCYU">
        </iframe>
        </div>

        <div class ="frame">
            <iframe class="inlineFrameExample"
            title="rank_lang"
            width="300"
            height="200"
            src="https://www.youtube.com/embed/Fa0Q-5DMUBg">
        </iframe>
        </div>

        <div class ="frame">
            <iframe class="inlineFrameExample"
            title="rank_lang"
            width="300"
            height="200"
            src="https://www.youtube.com/embed/jMHOJQczrnI">
        </iframe>
        </div>

        <div class ="frame">
            <iframe class="inlineFrameExample"
            title="rank_lang"
            width="300"
            height="200"
            src="https://www.youtube.com/embed/t2EsO6yGyp8">
        </iframe>
        </div>

        <div class ="frame">
            <iframe class="inlineFrameExample"
            title="rank_lang"
            width="300"
            height="200"
            src="https://www.youtube.com/embed/rPZQnIIMHYU">
        </iframe>
        </div>

        <div class ="frame">
            <iframe class="inlineFrameExample"
            title="rank_lang"
            width="300"
            height="200"
            src="https://www.youtube.com/embed/OzY_ukr-Ldc">
        </iframe>
        </div>
    </div>


    
<!-- AWS -->

    <div class="tab2_2_content"><div class ="frame">
        <iframe class="inlineFrameExample"
        title="rank_lang"
        width="300"
        height="200"
        src="https://www.youtube.com/embed/JjiYqBl2328">
    </iframe>
    </div>

    <div class ="frame">
        <iframe class="inlineFrameExample"
        title="rank_lang"
        width="300"
        height="200"
        src="https://www.youtube.com/embed/s75iONF6XFw">
    </iframe>
    </div>

    <div class ="frame">
        <iframe class="inlineFrameExample"
        title="rank_lang"
        width="300"
        height="200"
        src="https://www.youtube.com/embed/tvwDDM-Y-qE">
    </iframe>
    </div>

    <div class ="frame">
        <iframe class="inlineFrameExample"
        title="rank_lang"
        width="300"
        height="200"
        src="https://www.youtube.com/embed/9nBq6PxDvp4">
    </iframe>
    </div>

    <div class ="frame">
        <iframe class="inlineFrameExample"
        title="rank_lang"
        width="300"
        height="200"
        src="https://www.youtube.com/embed/9nBq6PxDvp4">
    </iframe>
    </div>

    <div class ="frame">
        <iframe class="inlineFrameExample"
        title="rank_lang"
        width="300"
        height="200"
        src="https://www.youtube.com/embed/lcly_aIq1KI">
    </iframe>
    </div>


</div>


<!-- Spring -->
    <div class="tab2_3_content">
        <div class ="frame">
            <iframe class="inlineFrameExample"
            title="rank_lang"
            width="300"
            height="200"
            src="https://www.youtube.com/embed/yZzUxEp97Ho">
        </iframe>
        </div>
        <div class ="frame">
            <iframe class="inlineFrameExample"
            title="rank_lang"
            width="300"
            height="200"
            src="https://www.youtube.com/embed/XBG6CUtVCIg">
        </iframe>
        </div>
        <div class ="frame">
            <iframe class="inlineFrameExample"
            title="rank_lang"
            width="300"
            height="200"
            src="https://www.youtube.com/embed/JjiYqBl2328">
        </iframe>
        </div>

        <div class ="frame">
            <iframe class="inlineFrameExample"
            title="rank_lang"
            width="300"
            height="200"
            src="https://www.youtube.com/embed/-oeeqfRVrzI">
        </iframe>
        </div>

        <div class ="frame">
            <iframe class="inlineFrameExample"
            title="rank_lang"
            width="300"
            height="200"
            src="https://www.youtube.com/embed/XtXHIDnzS9c">
        </iframe>
        </div>

        <div class ="frame">
            <iframe class="inlineFrameExample"
            title="rank_lang"
            width="300"
            height="200"
            src="https://www.youtube.com/embed/If1Lw4pLLEo">
        </iframe>
        </div>

    </div>
</div>


</div>

<%@ include file="footer.jsp" %>

</body>
</html>