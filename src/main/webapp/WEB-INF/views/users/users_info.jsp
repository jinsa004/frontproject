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
      margin: 100px auto 250px auto;
    }
    .menu{
      float: left;
      width: 300px;
      text-align: left;
    }
    .users_form{
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

    .menu .employ_list{
      margin: 0 auto;
      width: 240px;
    }
    .menu .employ_list .employ_list_item{
      margin-top: 30px;
      position: relative;
      display: block;
      height: 44px;
      box-sizing: border-box;
      font-size: 20px;
      line-height: 44px;
    }
    .menu .employ_list .resume_list{
      margin: 0 auto;
      width: 240px;
      height: 90px;
    }
    .menu .employ_list .resume_list .resume_list_item{
      margin: 10px 0;
      position: relative;
      display: block;
      height: 30px;
      box-sizing: border-box;
      font-size: 15px;
      line-height: 44px;
    }
    /* menu */

    .users_form{
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
    .contact_form{
      position: relative;
      padding: 50px 0 25px;
      display: block;
    }

    .contact_row{
      position: relative;
      padding: 0 49px 25px;
      display: block;
    }
    .contact_row:after{
      display: table;
      clear: both;
      content: "";
      table-layout: fixed;
    }
    .contact_row .contact_list{
      float: left;
      padding-top: 15px;
      width: 150px;
      color: #222;
      font-size: 16px;
      letter-spacing: -1px;
      line-height: 21px;
      display: block;
    }
    .contact_row .contact_input{
      padding-top: 15px;
      color: #222;
      font-size: 16px;
      letter-spacing: -1px;
      line-height: 21px;
    }
    .contact_row .contact_input #user_location{
      width: 300px;
    }

    .contact_row .contact_input .box_input{
      overflow: hidden;
      display: block;
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

    .login_form{
      position: relative;
      padding: 50px 0 25px;
      display: block;
    }
    .login_row{
      position: relative;
      padding: 0 49px 25px;
      display: block;
    }
    .login_row:after{
      display: table;
      clear: both;
      content: "";
      table-layout: fixed;
    }
    .login_row .login_list{
      float: left;
      padding-top: 15px;
      width: 150px;
      color: #222;
      font-size: 16px;
      letter-spacing: -1px;
      line-height: 21px;
      display: block;
    }
    .login_row .edu_input{
      padding-top: 15px;
      color: #222;
      font-size: 16px;
      letter-spacing: -1px;
      line-height: 21px;
    }

    .login_row .edu_input .box_input{
      overflow: hidden;
      display: block;
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
    #field_info .field_select{
      display: block;
      margin-block-start: 1em;
      margin-block-end: 1em;
      margin-inline-start: 0px;
      margin-inline-end: 0px;
      margin: 40px 0 0 10px;
      overflow: hidden;
    }
    #field_info .field_select form{
      float: left;
      width: 120px;
      font-weight: 500;
      font-size: 18px;
      line-height: 22px;
      color: #444;
      letter-spacing: -1px;
      display: block;
    }
    #field_info .field_select form .form-check{
      margin-bottom: 10px;
    }
    #field_info .field_select form .form-check .form-check-input{}
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
  <h1>회원 정보 관리</h1>
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
    <div class="menu">
      <div class="employ_list">
        <ul>
          <li class="employ_list_item">
            <a href="#">이력서 관리</a>
          </li>
            <ul class="resume_list">
              <li class="resume_list_item">
                <a href="/resume_update">이력서 등록</a>
              </li>
              <li class="resume_list_item">
                <a href="#">이력서 관리</a>
              </li>
            </ul>
          <li class="employ_list_item">
            <a href="/users_info">회원정보 관리</a>
          </li>
        </ul>
      </div>
    </div>
    <!-- menu -->

    <div class="users_form">

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
            <dt class="info_list_item">이름</dt>
            <input type="text" id="user_name" name="user_name" class="box_input" value="홍길동" placeholder="이름을 입력하세요"/>
            <dt class="info_list_item">생년월일</dt>
            <input type="text" id="user_birth" name="user_birth" class="box_input" value="2000년 00월 00일" placeholder="생년월일을 입력하세요"/>
            <dt class="info_list_item">성별</dt>
            <input type="text" id="user_sex" name="user_sex" class="box_input" value="남성" placeholder="셩별을 입력하세요"/>
          </dl>
        </div>
      </div>
      <!-- info -->

      <div id="contact_info" class="form">
        <div class="form_title">
          <h2 class="title">연락처 정보</h2>
        </div>
        <div class="contact_form">
          <div class="contact_row">
            <div class="contact_list">
              <p class="contact_list_item">휴대폰</p>
            </div>
            <div class="contact_input">
              <input type="text" id="user_tel" name="user_tel" class="box_input" value="010-0000-0000" placeholder="휴대폰 번호을 입력하세요"/>
            </div>
          </div>
          <div class="contact_row">
            <div class="contact_list">
              <p class="contact_list_item">이메일</p>
            </div>
            <div class="contact_input">
              <input type="text" id="user_email" name="user_email" class="box_input" value="green@nate.com" placeholder="이메일을 입력하세요"/>
            </div>
          </div>
          <div class="contact_row">
            <div class="contact_list">
              <p class="contact_list_item">주소</p>
            </div>
            <div class="contact_input">
              <div class="select-group">
                <select>
                  <option>부산</option>
                  <option>서울</option>
                  <option>대전</option>
                  <option>광주</option>
                </select>
              </div>
              <input type="text" id="user_location" name="user_location" class="box_input" value="금정구" placeholder="상세주소를 입력하세요"/>
            </div>
          </div>
        </div>
      </div>
      <!-- contact -->

      <div id="login_info" class="form">
        <div class="form_title">
          <h2 class="title">로그인 정보</h2>
        </div>
        <div class="login_form">
          <div class="login_row">
            <div class="login_list">
              <p class="login_list_item">ID</p>
            </div>
            <div class="edu_input">
              <input type="text" id="user_id" name="user_id" class="box_input" value="ssar" placeholder="아이디를 입력하세요"/>
            </div>
          </div>
          <div class="login_row">
            <div class="login_list">
              <p class="login_list_item">Password</p>
            </div>
            <div class="edu_input">
              <input type="text" id="user_password" name="user_password" class="box_input" value="1234" placeholder="비밀번호를 입력하세요"/>
            </div>
          </div>
        </div>
      </div>
      <!-- login -->

      <div id="field_info" class="form">
        <div class="form_title">
          <h2 class="title">관심분야</h2>
        </div>
        <div class="field_select">
            <form method="post" action="/#">
              <div class="form-check">
                <input type="checkbox" class="form-check-input" id="프론트엔드" name="프론트엔드" value="프론트엔드">
                <label class="form-check-label" for="프론트엔드">프론트엔드</label>
              </div>
              <div class="form-check">
                <input type="checkbox" class="form-check-input" id="백엔드" name="백엔드" value="백엔드">
                <label class="form-check-label" for="백엔드">백엔드</label>
              </div>
              <div class="form-check">
                <input type="checkbox" class="form-check-input" id="풀스택" name="풀스택" value="풀스택">
                <label class="form-check-label" for="풀스택">풀스택</label>
              </div>
              <div class="form-check">
                <input type="checkbox" class="form-check-input" id="안드로이드" name="안드로이드" value="안드로이드">
                <label class="form-check-label" for="chec안드로이드k1">안드로이드</label>
              </div>
              <div class="form-check">
                <input type="checkbox" class="form-check-input" id="IOS" name="IOS" value="IOS">
                <label class="form-check-label" for="IOS">IOS</label>
              </div>
            </form>
        </div>
      </div>
      <!-- field -->

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