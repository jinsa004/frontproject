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
          <span>최종학력 선택 후 학력사항을 입력하세요</span>
        </div>
        <div class="edu_form">
          <div class="edu_select">
            <div class="btn-group">
              <button type="button" class="edu_btn">고등학교 졸업</button>
              <button type="button" class="edu_btn">대학.대학원 이상 졸업</button>
            </div>
          </div>
          <hr/>

          <div class="form_text">
            <span>홍길동</span><span>남, 2000 (00세/만 00세)</span>
            <ul class="info_list">
              <li class="email" style="display: inline;">이메일</li>
              <span>hong@nate.com</span><br>
              <li class="phone_number" style="display: inline;">휴대폰</li>
              <span>010-0000-0000</span><br>
              <li class="number" style="display: inline;">전화번호</li>
              <span>010-0000-0000</span><br>
              <li class="adress" style="display: inline;">주소</li>
              <span>부산 부산진구 중앙대로 749 </span>
            </ul>
          </div>
        </div>
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