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
      background-color: #fff;
    }
    .info_img{
      float: left;
    }
    .info_list_item{
      display: inline-block;
    }

    .edu_title{
      display: inline-block;
    }
    
    .edu_btn{
      border: 1px solid #ddd;
      background-color: #fff;
      size: 10px;
    }
    .edu_btn:active{

    }
    .edu_btn:hover{

    }
    .edu_list_item{
      display: inline-block;
    }

    .edu_title{
      display: inline-block;
    }
    
    .career_btn{
      border: 1px solid #ddd;
      background-color: #fff;
      size: 10px;
    }
    .career_btn:active{

    }
    .career_btn:hover{

    }
    .career_list_item{
      display: inline-block;
    }

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

      <div class="form">
        <div class="form_title">
          <h2>기본정보</h2>
        </div>
        <div class="info_form">
          <div class="info_img">
            <img src="assets/resume/face1.jpg" width="100" height="140"/>
          </div>
          <div class="form_text">
            <span>홍길동</span><span>남, 2000 (00세/만 00세)</span>
            <ul class="info_list">
              <li class="info_list_item">이메일</li>
              <span>hong@nate.com</span><br>
              <li class="info_list_item">휴대폰</li>
              <span>010-0000-0000</span><br>
              <li class="info_list_item">전화번호</li>
              <span>010-0000-0000</span><br>
              <li class="info_list_item">주소</li>
              <span>부산 부산진구 중앙대로 749 </span>
            </ul>
          </div>
        </div>
      </div>
      <!-- info -->
      <br><br>

      <div class="form">
        <div class="form_title">
          <h2 class="edu_title">학력사항</h2>
        </div>
        <div class="form_text">
          <div class="edu_select">
            <div class="btn-group">
              <button type="button" class="edu_btn">고등학교 졸업</button>
              <button type="button" class="edu_btn">대학.대학원 이상 졸업</button>
            </div>
          </div>
          <hr/>

          <div class="edu_form">
            <h4>대학.대학원 정보 입력</h4>
            <div class="edu_list">
              <p class="edu_list_item">대학</p>
              <span>대학교(4년)</span><br>
              <p class="edu_list_item">학교명</p>
              <span>00대학교</span><br>
              <p class="edu_list_item">지역</p>
              <span>부산</span><br>
              <p class="edu_list_item">재학기한</p>
              <span>202206 - 202212</span>
              <p class="edu_list_item">전공</p>
              <span>주전공 경제/경영</span>
              <p class="edu_list_item">주/야간</p>
              <span>주간</span>
              <p class="edu_list_item">학점</p>
              <span>0.0 / 4.5</span>
            </div>
          </div>
        </div>
      </div>
      <!-- edu -->
      <br><br>

      <div class="form">
        <div class="form_title">
          <h2 class="career_title">경력사항</h2>
        </div>
        <div class="form_text">
          <div class="career_select">
            <div class="btn-group">
              <button type="button" class="career_btn">신입</button>
              <button type="button" class="career_btn">경력</button>
            </div>
          </div>
          <hr/>

          <div class="career_form">
            <div class="career_list">
              <p class="career_list_item">회사명</p>
              <span>그린</span><br>
              <p class="career_list_item">재직기간</p>
              <span>202206 - 202212</span><br>
              <p class="career_list_item">퇴사사유</p>
              <span>업직종 전환</span><br>
              <p class="career_list_item">직급/직책</p>
              <span>주임 1년차</span>
              <p class="career_list_item">근무부서</p>
              <span>영업관리부</span>
              <p class="career_list_item">근무지역</p>
              <span>부산</span>
              <p class="career_list_item">연봉</p>
              <span>0000만원</span>
              <p class="career_list_item">담당업무</p>
              <span>관리</span>
            </div>
          </div>
        </div>
      </div>
      <!-- career -->
      <br><br>

      <div class="contact">
        <button type="button" class="contact_empleyee">컨택하기</button>
      </div>
      
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