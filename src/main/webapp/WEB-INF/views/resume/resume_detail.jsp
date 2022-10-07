<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<html lang="en">
<head>
  <title>이력서 상세보기</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>

  <style>
    body{
      margin: 0;
      padding: 0;
      border: 0;
      font-size: 100%;
      font: inherit;
      vertical-align: baseline;
      line-height: 1;
      font-family: "Malgun Gothic",dotum,gulim,sans-serif;
    }
    ol, ul {
      list-style: none;
    }
    table {
      border-collapse: collapse;
      border-spacing: 0;
    }
    a{
      color: inherit;
      text-decoration: none;
    }
    a:hover{
      color: inherit;
    }
    input:focus{
      outline: none;
    }
    button{
      background: none;
      color: inherit;
      border: none;
      cursor: pointer;
      outline: inherit;
    }
    /* 기초세팅 */

    body{
      width: 1600px;
      margin: 0 auto;
      align-items: center;
    }
    .container{
      width: 1200px;
      background-color: azure;
      justify-content: space-between;
      align-items: center;
      position: relative;
    }
    .row{
      width: 1200px;
      justify-content: space-between;
      align-items: center;
    }
    .resume{
      background-color: antiquewhite;
      width: 1000px;
      margin: 0 auto;
    }
    /* 전체 */

    .form{
      justify-content: space-between;
      align-items: center;
      margin: 40px 0 60px;
    }
    .form_title{
      position: relative;
      padding-bottom: 15px;
      min-height: 33px;
    }
    /* form */

    #info{
      position: relative;
      padding: 34px 50px 35px;
      background-color: #fbfbfb;
    }
    #info .form_title h2.title{
      float: left;
      color: #222;
      font-size: 26px;
      font-weight: bold;
      letter-spacing: -2px;
      line-height: 34px;
    }
    .info_form .info_img{
      float: left;
      position: relative;
      padding: 9px;
      margin-right: 28px;
      width: 120px;
      height: 160px;
      border: 1px solid #e9e9e9;
      box-sizing: border-box;
      text-align: center;
      background-color: #fff;
    }
    .info_name{
      margin-bottom: 9px;
      display: block;
      margin-block-start: 1em;
      margin-block-end: 1em;
      margin-inline-start: 0px;
      margin-inline-end: 0px;
      overflow: hidden;
    }
    .info_name dd.name{
      display: inline-block;
      margin: 3px 6px 0 0;
      font-size: 26px;
      line-height: 33px;
      font-weight: bold;
      color: #444;
      letter-spacing: -2px;
    }
    .info_name dd.sex{
      display: inline-block;
    }
    .info_basic{
      display: block;
      margin-block-start: 1em;
      margin-block-end: 1em;
      margin-inline-start: 0px;
      margin-inline-end: 0px;
      overflow: hidden;
    }
    .info_basic dt{
      float: left;
      margin-top: 12px;
      width: 120px;
      font-weight: bold;
      font-size: 14px;
      line-height: 16px;
      color: #444;
      letter-spacing: -1px;
      display: block;
    }
    .info_basic dd{
      overflow: hidden;
      display: block;
      margin-top: 12px;
      font-size: 14px;
      line-height: 18px;
      color: #444;
      margin-inline-start: 40px;
    }
    /* info */

    #edu{
      position: relative;
      padding: 34px 50px 35px;
      background-color: #fbfbfb;
    }
    #edu .form_title{
      position: relative;
      padding-bottom: 15px;
      min-height: 33px;
    }
    #edu .form_title h2.title{
      float: left;
      color: #222;
      font-size: 26px;
      font-weight: bold;
      letter-spacing: -2px;
      line-height: 34px;
    }
    #edu .resume_edu .edu_select{
      padding: 50px 70px;
      border-bottom: 1px solid #ebebeb;
    }
    .resume_edu .edu_select .btn-group{
      justify-content: space-between;
      align-items: center;
    }
    .resume_edu .edu_select .btn-group button{
      border: 1px solid #ddd;
      background-color: #fff;
      size: 10px;
      width: 200px;
      height: 55px;
    }
    .resume_edu .edu_select .btn-group #checked{
      border: 1px solid #4876ef;
      background-color: #4876ef;
      color: #fff;
    }
    .resume_edu .edu_form{
      position: relative;
      padding: 50px 0 25px;
      display: block;
    }
    .resume_edu .edu_form h4{
      color: #222;
      font-size: 20px;
      font-weight: bold;
      letter-spacing: -1px;
      line-height: 28px;
      padding-bottom: 30px;
    }
    .edu_row{
      position: relative;
      padding: 0 49px 25px;
      display: block;
    }
    .edu_row:after{
      display: table;
      clear: both;
      content: "";
      table-layout: fixed;
    }
    .edu_form .edu_row .edu_list{
      float: left;
      padding-top: 15px;
      width: 150px;
      color: #222;
      font-size: 16px;
      letter-spacing: -1px;
      line-height: 21px;
      display: block;
    }
    .edu_form .edu_row .edu_input{
      padding-top: 15px;
      color: #222;
      font-size: 16px;
      letter-spacing: -1px;
      line-height: 21px;
    }
    /* edu */

    #career{
      position: relative;
      padding: 34px 50px 35px;
      background-color: #fbfbfb;
    }
    #career .form_title{
      position: relative;
      padding-bottom: 15px;
      min-height: 33px;
    }
    #career .form_title h2.title{
      float: left;
      color: #222;
      font-size: 26px;
      font-weight: bold;
      letter-spacing: -2px;
      line-height: 34px;
    }
    #career .resume_career .career_select{
      padding: 50px 70px;
      border-bottom: 1px solid #ebebeb;
    }
    .resume_career .career_select .btn-group{
      justify-content: space-between;
      align-items: center;
    }
    .resume_career .career_select .btn-group button{
      border: 1px solid #ddd;
      background-color: #fff;
      size: 10px;
      width: 200px;
      height: 55px;
    }
    .resume_career .career_select .btn-group #checked{
      border: 1px solid #4876ef;
      background-color: #4876ef;
      color: #fff;
    }
    .resume_career .career_form{
      position: relative;
      padding: 50px 0 25px;
      display: block;
    }
    .resume_career .career_form h4{
      color: #222;
      font-size: 20px;
      font-weight: bold;
      letter-spacing: -1px;
      line-height: 28px;
      padding-bottom: 30px;
    }
    .career_row{
      position: relative;
      padding: 0 49px 25px;
      display: block;
    }
    .career_row:after{
      display: table;
      clear: both;
      content: "";
      table-layout: fixed;
    }
    .career_form .career_row .career_list{
      float: left;
      padding-top: 15px;
      width: 150px;
      color: #222;
      font-size: 16px;
      letter-spacing: -1px;
      line-height: 21px;
      display: block;
    }
    .career_form .career_row .career_input{
      padding-top: 15px;
      color: #222;
      font-size: 16px;
      letter-spacing: -1px;
      line-height: 21px;
    }
    /* career */

    .contact_btn{
      margin-top: 15px;
      width: 260px;
      display: block;
      float: right;
    }
    .contact_btn button{
      border: 1px solid #4876ef;
      background-color: #4876ef;
      color: #fff;
      margin-top: 3px;
      width: 100%;
      height: 60px;
      font-size: 18px;
      font-weight: bold;
      letter-spacing: -1px;
      line-height: 56px;
      text-align: center;
      vertical-align: top;
      cursor: pointer;
    }
    /* contact_btn */
    
  </style>
</head>

<body>

<div class="p-5 border text-center">
  <h1>이력서 상세보기</h1>
</div>

<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <div class="container-fluid">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" href="#">인재 검색</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">공고등록</a>
      </li>
      <li class="nav-item">
        <a class="nav-link active" href="#">공고/지원자 관리</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">매칭리스트</a>
      </li>
    </ul>
  </div>
</nav> 
<!-- header -->

<div class="container">
  <div class="row">
    <div class="resume">

      <div id="info" class="form">
        <div class="form_title">
          <h2 class="title">기본정보</h2>
        </div>
        <div class="info_form">
          <div class="info_img">
            <img src="assets/resume/face1.jpg" width="100" height="140"/>
          </div>
          <dl class="info_name">
            <dd class="name">홍길동</dd>
            <dd class="sex">남, 2000 (00세/만 00세)</dd>
          </dl>
          <dl class="info_basic">
            <dt class="info_list_item">이메일</dt>
            <dd id="info_email">hong@nate.com</dd><br>
            <dt class="info_list_item">휴대폰</dt>
            <dd id="info_cell">010-0000-0000</dd><br>
            <dt class="info_list_item">전화번호</dt>
            <dd id="info_tel">010-0000-0000</dd><br>
            <dt class="info_list_item">주소</dt>
            <dd id="info_location">부산 부산진구 중앙대로 749 </dd>
          </dl>
        </div>
      </div>
      <!-- info -->

      <div id="edu" class="form">
        <div class="form_title">
          <h2 class="title">학력사항</h2>
        </div>
        <div class="resume_edu">
          <div class="edu_select">
            <div class="btn-group">
              <button type="button" class="edu_btn">고등학교 졸업</button>
              <button type="button" class="edu_btn" id="checked">대학.대학원 이상 졸업</button>
            </div>
          </div>
          <div class="edu_form">
            <h4>대학.대학원 정보 입력</h4>
            <div class="edu_row">
              <div class="edu_list">
                <p class="edu_list_item">대학</p>
              </div>
              <div class="edu_input">
                <span>대학교(4년)</span>
              </div>
            </div>
            <div class="edu_row">
              <div class="edu_list">
                <p class="edu_list_item">학교명</p>
              </div>
              <div class="edu_input">
                <span>00대학교</span>
              </div>
            </div>
            <div class="edu_row">
              <div class="edu_list">
                <p class="edu_list_item">지역</p>
              </div>
              <div class="edu_input">
                <span>부산</span>
              </div>
            </div>
            <div class="edu_row">
              <div class="edu_list">
                <p class="edu_list_item">재학기한</p>
              </div>
              <div class="edu_input">
                <span>202206 - 202212</span>
              </div>
            </div>
            <div class="edu_row">
              <div class="edu_list">
                <p class="edu_list_item">전공</p>
              </div>
              <div class="edu_input">
                <span>주전공 경제/경영</span>
              </div>
            </div>
            <div class="edu_row">
              <div class="edu_list">
                <p class="edu_list_item">주/야간</p>
              </div>
              <div class="edu_input">
                <span>주간</span>
              </div>
            </div>
            <div class="edu_row">
              <div class="edu_list">
                <p class="edu_list_item">학점</p>
              </div>
              <div class="edu_input">
                <span>0.0 / 4.5</span>
              </div>
            </div>
            
          </div>
        </div>
      </div>
      <!-- edu -->

      <div id="career" class="form">
        <div class="form_title">
          <h2 class="title">경력사항</h2>
        </div>
        <div class="resume_career">
          <div class="career_select">
            <div class="btn-group">
              <button type="button" class="career_btn">신입</button>
              <button type="button" class="career_btn" id="checked">경력</button>
            </div>
          </div>
          <div class="career_form">
            <h4>회사 정보 입력</h4>
            <div class="career_row">
              <div class="career_list">
                <p class="career_list_item">회사명</p>
              </div>
              <div class="career_input">
                <span>그린</span>
              </div>
            </div>
            <div class="career_row">
              <div class="career_list">
                <p class="career_list_item">재직기간</p>
              </div>
              <div class="career_input">
                <span>202206 - 202212</span>
              </div>
            </div>
            <div class="career_row">
              <div class="career_list">
                <p class="career_list_item">퇴사사유</p>
              </div>
              <div class="career_input">
                <span>업직종 전환</span>
              </div>
            </div>
            <div class="career_row">
              <div class="career_list">
                <p class="career_list_item">직급/직책</p>
              </div>
              <div class="career_input">
                <span>주임 1년차</span>
              </div>
            </div>
            <div class="career_row">
              <div class="career_list">
                <p class="career_list_item">근무부서</p>
              </div>
              <div class="career_input">
                <span>영업관리부</span>
              </div>
            </div>
            <div class="career_row">
              <div class="career_list">
                <p class="career_list_item">근무지역</p>
              </div>
              <div class="career_input">
                <span>부산</span>
              </div>
            </div>
            <div class="career_row">
              <div class="career_list">
                <p class="career_list_item">연봉</p>
              </div>
              <div class="career_input">
                <span>0000만원</span>
              </div>
            </div>
            <div class="career_row">
              <div class="career_list">
                <p class="career_list_item">담당업무</p>
              </div>
              <div class="career_input">
                <span>관리</span>
              </div>
            </div>

          </div>
        </div>
      </div>
      <!-- career -->

      <div class="contact_btn">
        <button type="button" onclick="location.href='#'">컨택하기</button>
      </div>
      <!-- contact -->
    </div>
  </div>
</div>
<!-- body -->

<div class="mt-5 p-4 bg-dark text-white text-center">
  <p>Footer</p>
</div>
<!-- footer -->

</body>
</html>