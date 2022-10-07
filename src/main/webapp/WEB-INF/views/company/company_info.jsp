<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<html lang="en">
<head>
  <title>회원 정보 관리</title>
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

    .menu .company_list{
      margin: 0 auto;
      width: 240px;
    }
    .menu .company_list .company_list_item{
      margin-top: 30px;
      position: relative;
      display: block;
      height: 44px;
      box-sizing: border-box;
      font-size: 20px;
      line-height: 44px;
    }
    /* menu */

    .company_form{
      background-color: antiquewhite;
    }

    #basic_info{
      position: relative;
      padding: 34px 50px 35px;
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
    .basic_form .info_img{
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
    .basic_form .info_img form{
      margin: 10px;
    }
    .basic_form .info_img form label{
      border: #ddd solid 1px;
      background-color: rgb(243, 238, 238);
    }
    .basic_form .info_img form input{
      margin-bottom: 50px;
    }
    .basic_form .info_img form input.hidden{
      visibility: hidden;
    }
    .basic_form .info_img button{
      border: #ddd solid 1px;
      background-color: rgb(243, 238, 238);
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
    .info_basic .box_input{
      overflow: hidden;
      display: block;
      margin-top: 12px;
      font-size: 16px;
      line-height: 30px;
      color: #444;
      margin-inline-start: 40px;
      width: 300px;
      height: 30px;
      padding: 0 15px 0 25px;
      border: 1px solid #dfdfdf;
      box-sizing: border-box;
    }
    /* basic */

    #contact_info{
      position: relative;
      padding: 34px 50px 35px;
      background-color: #fbfbfb;
    }
    #contact_info .form_title {
    position: relative;
    padding-bottom: 15px;
    min-height: 33px;
    }
    #contact_info .form_title h2.title{
      float: left;
      color: #222;
      font-size: 26px;
      font-weight: bold;
      letter-spacing: -2px;
      line-height: 34px;
    }
    .contact_form .info_contact{
      display: block;
      margin-block-start: 1em;
      margin-block-end: 1em;
      margin-inline-start: 0px;
      margin-inline-end: 0px;
      overflow: hidden;
    }
    .contact_form .info_contact dt{
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
    .contact_form .info_contact .box_input{
      overflow: hidden;
      display: block;
      margin-top: 12px;
      font-size: 16px;
      line-height: 30px;
      color: #444;
      margin-inline-start: 40px;
      width: 300px;
      height: 30px;
      padding: 0 15px 0 25px;
      border: 1px solid #dfdfdf;
      box-sizing: border-box;
    }
    .contact_form .info_contact .selece-group{}
    /* contact */

    #login_info{
      position: relative;
      padding: 34px 50px 35px;
      background-color: #fbfbfb;
    }
    #login_info .form_title {
    position: relative;
    padding-bottom: 15px;
    min-height: 33px;
    }
    #login_info .form_title h2.title{
      float: left;
      color: #222;
      font-size: 26px;
      font-weight: bold;
      letter-spacing: -2px;
      line-height: 34px;
    }
    .login_form .info_login{
      display: block;
      margin-block-start: 1em;
      margin-block-end: 1em;
      margin-inline-start: 0px;
      margin-inline-end: 0px;
      overflow: hidden;
    }
    ..login_form .info_login dt{
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
    ..login_form .info_login .box_input{
      overflow: hidden;
      display: block;
      margin-top: 12px;
      font-size: 16px;
      line-height: 30px;
      color: #444;
      margin-inline-start: 40px;
      width: 300px;
      height: 30px;
      padding: 0 15px 0 25px;
      border: 1px solid #dfdfdf;
      box-sizing: border-box;
    }
    /* login */

    .btn_group{}
    .btn_group .update_btn{
      margin-top: 15px;
      width: 260px;
      display: block;
      float: right;
    }
    .btn_group .delete_btn{}
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
  <h1>기업 정보 관리</h1>
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
    <div class="menu">
      <div class="company_list">
        <ul>
          <li class="company_list_item">
            <a href="#">기업 소개</a>
          </li>
          <li class="company_list_item">
            <a href="#">공고 관리</a>
          </li>
          <li class="company_list_item">
            <a href="#">회원 정보 관리</a>
          </li>
        </ul>
      </div>
    </div>
    <!-- menu -->

    <div class="company_form">

      <div id="basic_info" class="form">
        <div class="form_title">
          <h2 class="title">기본정보</h2>
        </div>
        <div class="basic_form">
          <div class="info_img">
            <form method="post" action="/resume_detail" enctype="multipart/form-data">
              <label for="files">파일 선택</label>
              <input type="file" name="file" id="files" class="hidden"/>
              <button type="submit">파일전송</button>
            </form>
          </div>
          <dl class="info_basic">
            <dt class="info_list_item">회사명</dt>
            <input type="text" id="company_name" name="company_name" class="box_input" value="그린" placeholder="회사명을 입력하세요"/>
            <dt class="info_list_item">사업자번호</dt>
            <input type="text" id="company_number" name="company_number" class="box_input" value="1231312-123123" placeholder="사업자번호를 입력하세요"/>
            <dt class="info_list_item">설립년도</dt>
            <input type="text" id="company_birth" name="company_birth" class="box_input" value="2022년 10월 07일" placeholder="설립년도를 입력하세요"/>
          </dl>
        </div>
      </div>
      <!-- info -->

      <div id="contact_info" class="form">
        <div class="form_title">
          <h2 class="title">담당자 연락처</h2>
        </div>
        <div class="contact_form">
          <dl class="info_contact">
            <dt class="info_list_item">휴대폰</dt>
            <input type="text" id="company_tel" name="company_tel" class="box_input" value="010-0000-0000" placeholder="휴대폰 번호을 입력하세요"/>
            <dt class="info_list_item">이메일</dt>
            <input type="text" id="company_email" name="company_email" class="box_input" value="green@nate.com" placeholder="이메일을 입력하세요"/>
            <dt class="info_list_item">기업 주소</dt>
            <div class="select-group">
              <select>
                <option>부산</option>
                <option>서울</option>
                <option>1</option>
                <option>2</option>
              </select>
            </div>
            <input type="text" id="company_location" name="company_location" class="box_input" value="금정구" placeholder="상세주소를 입력하세요"/>
          </dl>
        </div>
      </div>
      <!-- contact -->

      <div id="login_info" class="form">
        <div class="form_title">
          <h2 class="title">로그인 정보</h2>
        </div>
        <div class="login_form">
        <dl class="info_login">
          <dt class="info_list_item">ID</dt>
          <input type="text" id="company_id" name="company_id" class="box_input" value="ssar" placeholder="아이디를 입력하세요"/>
          <dt class="info_list_item">Password</dt>
          <input type="text" id="company_password" name="company_password" class="box_input" value="1234" placeholder="비밀번호를 입력하세요"/>
        </dl>
        </div>
      </div>
      <!-- login -->

      <div class="btn_group">
        <div class="update_btn">
          <button type="button" onclick="location.href='#'">등록완료</button>
        </div>
        <div class="delete_btn">
          <button type="button" onclick="location.href='#'">회원탈퇴</button>
        </div>
      </div>
      <!-- btn -->

    </div>
    <!-- resume_form -->
  </div>
</div>
<!-- body -->

<div class="mt-5 p-4 bg-dark text-white text-center">
  <p>Footer</p>
</div>
<!-- footer -->

</body>
</html>