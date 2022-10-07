<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<html lang="en">
<head>
  <title>기업 소개 입력</title>
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

    #logo_info{
      position: relative;
      padding: 34px 50px 35px;
      background-color: #fbfbfb;
    }
    #logo_info .form_title {
    position: relative;
    padding-bottom: 15px;
    min-height: 33px;
    }
    #logo_info .form_title h2.title{
      float: left;
      color: #222;
      font-size: 26px;
      font-weight: bold;
      letter-spacing: -2px;
      line-height: 34px;
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
    .logo_form .info_img form label{
      border: #ddd solid 1px;
      background-color: rgb(243, 238, 238);
    }
    .logo_form .info_img form input{
      margin-bottom: 50px;
    }
    .logo_form .info_img form input.hidden{
      visibility: hidden;
    }
    .logo_form .info_img button{
      border: #ddd solid 1px;
      background-color: rgb(243, 238, 238);
    }
    /* logo */

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
    .basic_form .info_basic{
      display: block;
      margin-block-start: 1em;
      margin-block-end: 1em;
      margin-inline-start: 0px;
      margin-inline-end: 0px;
      overflow: hidden;
    }
    .basic_form .info_basic dt{
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
    .basic_form .info_basic .box_input{
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
    .basic_form .info_basic .basic_location{
      overflow: hidden;
      margin-top: 12px;
    }
    .basic_form .info_basic .basic_location input{
      margin-bottom: 5px;
    }
    .basic_form .info_basic .basic_location #sample6_address{
      width: 375px;
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
    .login_form .info_login{
      display: block;
      margin-block-start: 1em;
      margin-block-end: 1em;
      margin-inline-start: 0px;
      margin-inline-end: 0px;
      overflow: hidden;
    }
    .login_form .info_login dt{
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
    .login_form .info_login .box_input{
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
  <h1>기업 소개 입력</h1>
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
        <a class="nav-link" href="#">공고/지원자 관리</a>
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

      <div id="logo_info" class="form">
        <div class="form_title">
          <h2 class="title">회사로고</h2>
        </div>
        <div class="logo_form">
          <div class="info_img">
            <form method="post" action="/#" enctype="multipart/form-data">
              <label for="files">파일 선택</label>
              <input type="file" name="file" id="files" class="hidden"/>
              <button type="submit">파일전송</button>
            </form>
          </div>
        </div>
      </div>
      <!-- logo -->

      <div id="basic_info" class="form">
        <div class="form_title">
          <h2 class="title">회사 정보</h2>
        </div>
        <div class="basic_form">
          <dl class="info_basic">
            <dt class="info_list_item">회사명</dt>
            <input type="text" id="basic_name" name="basic_name" class="box_input" value="그린" placeholder="회사명을 입력하세요"/>
            <dt class="info_list_item">설립년도</dt>
            <input type="text" id="basic_birth" name="basic_birth" class="box_input" value="2022년 10월 17일" placeholder="설립년도를 입력하세요"/>
            <dt class="info_list_item">주요업무</dt>
            <input type="text" id="basic_task" name="basic_task" class="box_input" value="서버관리" placeholder="주요 업무를 입력하세요"/>
            <dt class="info_list_item">평균연봉</dt>
            <input type="text" id="basic_sal" name="basic_sal" class="box_input" value="4000만원" placeholder="평균연봉을 입력하세요"/>
            <dt class="info_list_item">기업복지</dt>
            <input type="text" id="basic_welfare" name="basic_welfare" class="box_input" value="1. 유연한 출퇴근" placeholder="복지를 입력하세요"/>
            <dt class="info_list_item">회사소개</dt>
            <input type="text" id="basic_content" name="basic_content" class="box_input" value="기업가치를 추구" placeholder="회사소개를 입력하세요"/>
            <dt class="info_list_item">회사위치</dt>
            <div class="basic_location">
              <input type="text" id="sample6_postcode" placeholder="우편번호">
              <input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
              <input type="text" id="sample6_address" placeholder="주소"><br>
              <input type="text" id="sample6_detailAddress" placeholder="상세주소">
              <input type="text" id="sample6_extraAddress" placeholder="참고항목">
            </div>
          </dl>
        </div>
      </div>
      <!-- basic -->

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
      </div>
      <!-- btn -->

    </div>
    <!-- company_form -->
  </div>
</div>
<!-- body -->

<div class="mt-5 p-4 bg-dark text-white text-center">
  <p>Footer</p>
</div>
<!-- footer -->

</body>

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                var addr = ''; 
                var extraAddr = '';

                if (data.userSelectedType === 'R') {
                    addr = data.roadAddress;
                } else {
                    addr = data.jibunAddress;
                }

                if(data.userSelectedType === 'R'){
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    document.getElementById("sample6_extraAddress").value = extraAddr;
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }
</script>
</html>