<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<html lang="en">
<head>
  <title>기업소개 상세보기</title>
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
      background-color: #fff;
      align-items: center;
    }
    .container{
      width: 1200px;
      background-color: antiquewhite;
      justify-content: space-between;
      align-items: center;
      position: relative;
    }
    .row{
      width: 1200px;
      background-color: aliceblue;
      padding-top: 80px;
    }
    .menu{
      float: left;
      width: 300px;
      text-align: left;
    }
    .company_form{
      width: 700px;
      float: right;
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

    .company_info{
      background-color: antiquewhite;
    }
    #logo_info{
      position: relative;
      padding: 30px 0 0 30px;
      background-color: #fbfbfb;
    }
    .logo_form .info_img{
      padding: 9px;
      margin-top: 30px;
      width: 150px;
      height: 150px;
      border: 1px solid #e9e9e9;
      box-sizing: border-box;
      text-align: center;
      background-color: #fff;
    }
    .logo_form .info_img form{
      margin: 10px;
    }
    /* logo */

    #basic_info{
      position: relative;
      padding: 34px 20px 35px 50px;
      background-color: #fbfbfb;
    }
    #basic_info .form_title {
    position: relative;
    padding-bottom: 15px;
    min-height: 33px;
    }
    #basic_info .form_title h2.title{
      float: left;
      color: #222;
      font-size: 26px;
      font-weight: bold;
      letter-spacing: -2px;
      line-height: 34px;
    }

    .basic_form{
      position: relative;
      padding: 50px 0 25px;
      display: block;
    }
    .basic_row{
      position: relative;
      padding: 0 30px 25px;
      display: block;
    }
    .basic_row:after{
      display: table;
      clear: both;
      content: "";
      table-layout: fixed;
    }
    .basic_form .basic_row .basic_list{
      float: left;
      padding-top: 15px;
      width: 150px;
      color: #222;
      font-size: 16px;
      letter-spacing: -1px;
      line-height: 21px;
      display: block;
    }
    .basic_form .basic_row .basic_input{
      padding-top: 15px;
      color: #222;
      font-size: 16px;
      letter-spacing: -1px;
      line-height: 21px;
    }
    /* contact */

    #field_info{
      position: relative;
      padding: 34px 50px 35px;
      background-color: #fbfbfb;
    }
    #field_info .form_title{
      position: relative;
      padding-bottom: 15px;
      min-height: 33px;
    }
    #field_info .form_title h2.title{
      float: left;
      color: #222;
      font-size: 26px;
      font-weight: bold;
      letter-spacing: -2px;
      line-height: 34px;
    }
    #field_info .field_form{
      display: block;
      margin-block-start: 1em;
      margin-block-end: 1em;
      margin-inline-start: 0px;
      margin-inline-end: 0px;
      margin: 70px 0 0 30px;
      overflow: hidden;
    }
    /* field */

    .btn_group{
      float: right;
    }
    .btn_group .update_btn{
      margin-top: 15px;
      width: 200px;
      display: inline-block;
    }
    .btn_group .delete_btn{
      margin-top: 15px;
      width: 200px;
      display: inline-block;
    }
    .btn_group button{
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
    /* update_btn */
    
  </style>
</head>

<body>

<div class="p-5 border text-center">
  <h1>기업소개 상세보기</h1>
</div>

<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <div class="container-fluid">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" href="#">채용 공고</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">매칭 리스트</a>
      </li>
      <li class="nav-item">
        <a class="nav-link active" href="#">구독 기업 공고</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">기업정보</a>
      </li>
    </ul>
  </div>
</nav> 
<!-- header -->

<div class="container">
  <div class="row">
    <div class="company_info">

      <div id="logo_info" class="form">
        <div class="logo_form">
          <div class="info_img">
            <img src="assets/resume/face1.jpg" width="100" height="140"/>
          </div>
        </div>
      </div>
      <!-- logo -->

      <div id="basic_info" class="form">
        <div class="form_title">
          <h2 class="title">회사 정보</h2>
        </div>
        <div class="basic_form">
          <div class="basic_row">
            <div class="basic_list">
              <p class="basic_list_item">회사명</p>
            </div>
            <div class="basic_input">
              <span>그린</span>
            </div>
          </div>
          <div class="basic_row">
            <div class="basic_list">
              <p class="basic_list_item">설립년도</p>
            </div>
            <div class="basic_input">
              <span>0000년 00월 00일</span>
            </div>
          </div>
          <div class="basic_row">
            <div class="basic_list">
              <p class="basic_list_item">주요업무</p>
            </div>
            <div class="basic_input">
              <span>서버관리</span>
            </div>
          </div>
          <div class="basic_row">
            <div class="basic_list">
              <p class="basic_list_item">평균연봉</p>
            </div>
            <div class="basic_input">
              <span>4000만원</span>
            </div>
          </div>
          <div class="basic_row">
            <div class="basic_list">
              <p class="basic_list_item">기업복지</p>
            </div>
            <div class="basic_input">
              <span>1. 유연한 출퇴근</span>
            </div>
          </div>
          <div class="basic_row">
            <div class="basic_list">
              <p class="basic_list_item">회사소개</p>
            </div>
            <div class="basic_input">
              <span>기업의 가치를</span>
            </div>
          </div>
          <div class="basic_row">
            <div class="basic_list">
              <p class="basic_list_item">회사위치</p>
            </div>
            <div class="basic_input">
              <span>부산 금정구</span>
            </div>
          </div>

        </div>
      </div>
      <!-- basic -->

      <div id="field_info" class="form">
        <div class="form_title">
          <h2 class="title">관심분야</h2>
        </div>
        <div class="field_form">
          <p>프론트엔드</p>
        </div>
      </div>
      <!-- field -->

    </div>
    <!-- company_intro -->
  </div>
</div>
<!-- body -->

<div class="mt-5 p-4 bg-dark text-white text-center">
  <p>Footer</p>
</div>
<!-- footer -->

</body>
</html>