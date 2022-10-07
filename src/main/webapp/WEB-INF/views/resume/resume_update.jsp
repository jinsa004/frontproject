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
      background-color: #fff;
      align-items: center;
    }
    .container{
      width: 1200px;
      background-color: antiquewhite;
      justify-content: space-between;
      align-items: center;
      position: relative;
      margin: 0 auto;
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
    .resume_form{
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
    .resume_form{
      background-color: antiquewhite;
    }
    .resume_form .resume_title{
      margin: 40px 0 60px;
    }
    .resume_form .resume_title h2{
      margin-bottom: 20px;
    }
    .resume_form .resume_title .title_update{
      width: 100%;
      height: 60px;
      border: 2px solid #555;
      box-sizing: border-box;
      letter-spacing: -1px;
      background-color: #fff;
    }
    .resume_form .resume_title .title_update .title_input{
      padding: 16px 30px;
      height: 56px;
      box-sizing: border-box;
      position: relative;
      text-align: left;
    }
    .resume_form .resume_title .title_update .title_input .resume_title_input{
      width: 100%;
      height: 24px;
      border: none;
      box-sizing: border-box;
      font-size: 18px;
      font-weight: normal;
      letter-spacing: -1px;
      line-height: 22px;
    }
    /* title */

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
    .info_form .info_img form{
      margin: 10px;
    }
    .info_form .info_img form label{
      border: #ddd solid 1px;
      background-color: rgb(243, 238, 238);
    }
    .info_form .info_img form input{
      margin-bottom: 50px;
    }
    .info_form .info_img form input.hidden{
      visibility: hidden;
    }
    .info_form .info_img button{
      border: #ddd solid 1px;
      background-color: rgb(243, 238, 238);
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
      display: block;
      overflow: hidden;
    }
    #edu .form_title h2.title{
      float: left;
      color: #222;
      font-size: 26px;
      font-weight: bold;
      letter-spacing: -2px;
      line-height: 34px;
      margin: 3px 6px 0 0;
    }
    #edu .form_title span{
      margin: 15px 0 0 10px;
      display: inline-block;
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
    .resume_edu .edu_form{
      position: relative;
      padding: 50px 0 25px;
      display: none;
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
    .edu_form .edu_row .edu_input .box_input{
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
    .edu_form .edu_row .edu_input #start_date{ 
    }

    .edu_form .edu_row .edu_input #end_date{
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
      display: none;
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
    .career_form .career_row .career_input .box_input{
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

    .career_form .career_row .career_input #start_date{ 
    }

    .career_form .career_row .career_input #end_date{
    }
    /* career */

    #field{
      position: relative;
      padding: 34px 50px 35px;
      background-color: #fbfbfb;
    }
    #field .form_title{
      position: relative;
      padding-bottom: 15px;
      min-height: 33px;
    }
    #field .form_title h2.title{
      float: left;
      color: #222;
      font-size: 26px;
      font-weight: bold;
      letter-spacing: -2px;
      line-height: 34px;
    }
    #field .field_select{
      padding: 50px 70px;
      border-bottom: 1px solid #ebebeb;
    }
    .resume_career .career_select .select-group{
      justify-content: space-between;
      align-items: center;
    }
    /* field */

    .update_btn{
      margin-top: 15px;
      width: 260px;
      display: block;
      float: right;
    }
    .update_btn button{
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
  <h1>이력서 등록하기</h1>
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

      <div class="resume_form">

        <div class="resume_title">
          <h2>이력서 제목</h2>
          <div class="title_update">
            <div class="title_input">
              <input type="text" class="resume_title_input" placeholder="이력서 제목을 입력하세요">
              <!-- input 입력 넣기 -->
            </div>
          </div>
        </div>
          <!-- resume_title -->

        <div id="info" class="form">
          <div class="form_title">
            <h2 class="title">기본정보</h2>
          </div>
          <div class="info_form">
            <div class="info_img">
              <form method="post" action="/resume_detail" enctype="multipart/form-data">
                <label for="files">파일 선택</label>
                <input type="file" name="file" id="files" class="hidden"/>
                <button type="submit">파일전송</button>
              </form>
            </div>
            <dl class="info_name">
              <dd class="name">홍길동</dd>
              <dd class="sex">남, 2000 (00세/만 00세)</dd>
            </dl>
            <dl class="info_basic">
              <dt class="info_list_item">이메일</dt>
              <input type="text" id="user_email" name="user_email" class="box_input" placeholder="이메일을 입력하세요"/>
              <dt class="info_list_item">휴대폰</dt>
              <input type="text" id="user_cel" name="user_cel" class="box_input" placeholder="휴대폰을 입력하세요"/>
              <dt class="info_list_item">전화번호</dt>
              <input type="text" id="user_tel" name="user_tel" class="box_input" placeholder="전화번호를 입력하세요"/>
              <dt class="info_list_item">주소</dt>
              <input type="text" id="user_location" name="user_location" class="box_input" placeholder="주소를 입력하세요"/>
            </dl>
          </div>
        </div>
        <!-- info -->

        <div id="edu" class="form">
          <div class="form_title">
            <h2 class="title">학력사항</h2>
            <span>최종학력 선택 후 학력사항을 입력하세요</span>
          </div>
          <div class="resume_edu">
            <div class="edu_select">
              <div class="btn-group">
                <button type="button" class="edu_btn" id="high_btn" onclick="show_highschool()">고등학교 졸업</button>
                <button type="button" class="edu_btn" id="univ_btn" onclick="show_univ()">대학.대학원 이상 졸업</button>
              </div>
            </div>

            <div class="edu_form" id="highschool">
              <h4>고등학교 정보 입력</h4>
              <div class="edu_row">
                <div class="edu_list">
                  <p class="edu_list_item">학교명</p>
                </div>
                <div class="edu_input">
                  <input type="text" id="highschool_name" name="highschool_name" class="box_input" placeholder="고등학교 명을 입력하세요"/>
                </div>
              </div>
              <div class="edu_row">
                <div class="edu_list">
                  <p class="edu_list_item">재학기간</p>
                </div>
                <div class="edu_input">
                  <input type="text" id="start_date" name="start_date" class="box_input" placeholder="입학년도"/>
                  <input type="text" id="end_date" name="end_date" class="box_input" placeholder="졸업년도"/>
                </div>
              </div>
              <div class="edu_row">
                <div class="edu_list">
                  <p class="edu_list_item">전공계열</p>
                </div>
                <div class="edu_input">
                  <input type="text" id="highschool_major" name="highschool_major" class="box_input" placeholder="전공계열"/>
                </div>
              </div>
            </div>

            <div class="edu_form" id="univ">
              <h4>대학.대학원 정보 입력</h4>
              <div class="edu_row">
                <div class="edu_list">
                  <p class="edu_list_item">학교명</p>
                </div>
                <div class="edu_input">
                  <input type="text" id="univ_name" name="univ_name" class="box_input" placeholder="대학교 명을 입력하세요"/>
                </div>
              </div>
              <div class="edu_row">
                <div class="edu_list">
                  <p class="edu_list_item">재학기간</p>
                </div>
                <div class="edu_input">
                  <input type="text" id="start_date" name="start_date" class="box_input" placeholder="입학년도"/>
                  <input type="text" id="end_date" name="end_date" class="box_input" placeholder="졸업년도"/>
                </div>
              </div>
              <div class="edu_row">
                <div class="edu_list">
                  <p class="edu_list_item">전공</p>
                </div>
                <div class="edu_input">
                  <input type="text" id="univ_major" name="univ_major" class="box_input" placeholder="전공 입력"/>
                </div>
              </div>
              <div class="edu_row">
                <div class="edu_list">
                  <p class="edu_list_item">졸업학점</p>
                </div>
                <div class="edu_input">
                  <input type="text" id="grades" name="grades" class="box_input" placeholder="학점 입력"/><span>/4.5</span>
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
                <button type="button" class="career_btn" id="new_btn" onclick="show_new()">신입</button>
                <button type="button" class="career_btn" id="work_btn" onclick="show_work()">경력</button>
              </div>
            </div>

            <div class="career_form" id="work">
              <h4>회사 정보 입력</h4>
              <div class="career_row">
                <div class="career_list">
                  <p class="career_list_item">직작명</p>
                </div>
                <div class="career_input">
                  <input type="text" id="career_name" name="career_name" class="box_input" placeholder="직장 명을 입력하세요"/>
                </div>
              </div>
              <div class="career_row">
                <div class="career_list">
                  <p class="career_list_item">재직기간</p>
                </div>
                <div class="career_input">
                  <input type="text" id="start_date" name="start_date" class="box_input" placeholder="입사년도"/>
                  <input type="text" id="end_date" name="end_date" class="box_input" placeholder="퇴사년도"/>
                </div>
              </div>
              <div class="career_row">
                <div class="career_list">
                  <p class="career_list_item">직급명</p>
                </div>
                <div class="career_input">
                  <input type="text" id="career_position" name="career_position" class="box_input" placeholder="전공계열을 입력하세요"/>
                </div>
              </div>
              <div class="career_row">
                <div class="career_list">
                  <p class="career_list_item">근무부서</p>
                </div>
                <div class="career_input">
                  <input type="text" id="career_section" name="career_section" class="box_input" placeholder="근무 부서를 입력하세요"/>
                </div>
              </div>
              <div class="career_row">
                <div class="career_list">
                  <p class="career_list_item">담당업무</p>
                </div>
                <div class="career_input">
                  <input type="text" id="career_task" name="career_task" class="box_input" placeholder="담당 업무를 입력하세요"/>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- career -->

        <div id="field" class="form">
          <div class="form_title">
            <h2 class="title">관심분야</h2>
          </div>
          <div class="resume_field">
            <div class="field_select">
              <div class="select-group">
                <select class="form-select mt-3">
                  <option>프론트엔드</option>
                  <option>백엔드</option>
                  <option>웹 풀스택</option>
                  <option>안드로이드</option>
                  <option>IOS</option>
                </select>
              </div>
            </div>
          </div>
        </div>
        <!-- field -->

        <div class="update_btn">
          <button type="button" onclick="location.href='#'">등록완료</button>
        </div>
        <!-- update -->

      </div>
      <!-- resume_form -->
    </div>
</div>
<!-- body -->

<div class="mt-5 p-4 bg-dark text-white text-center">
  <p>Footer</p>
</div>
<!-- footer -->

<script>
  function show_highschool(){ 	
      var con1 = document.getElementById("highschool");
      var con2 = document.getElementById("univ");
      var con3 = document.getElementById("high_btn");
      var con4 = document.getElementById("univ_btn");
      if(con3.style.background!='#4876ef'){ 		
        con1.style.display = 'block';
        con2.style.display = 'none';
        con3.style.background='#4876ef';
        con3.style.color='#fff';
        con4.style.background='#fff';
        con4.style.color='#333';
      }else{ 		
        con1.style.display = 'none';
        con3.style.background='#fff';
        con3.style.color='#333';
      } 
  }
  
  function show_univ(){ 	
      var con1 = document.getElementById("univ");
      var con2 = document.getElementById("highschool");
      var con3 = document.getElementById("high_btn");
      var con4 = document.getElementById("univ_btn");
      if(con4.style.background!='#4876ef'){ 		
        con1.style.display = 'block';
        con2.style.display = 'none';
        con4.style.background='#4876ef';
        con4.style.color='#fff';
        con3.style.background='#fff';
        con3.style.color='#333';
      }else{ 		
        con1.style.display = 'none';
        con4.style.background='#fff';
        con4.style.color='#333';
      } 
  }

  function show_new(){ 	
      var con1 = document.getElementById("work");
      var con2 = document.getElementById("new_btn");
      var con3 = document.getElementById("work_btn");
      if(con2.style.background!='#4876ef'){ 		
        con1.style.display = 'none';
        con2.style.background='#4876ef';
        con2.style.color='#fff';
        con3.style.background='#fff';
        con3.style.color='#333';
      }else{
        con2.style.background='#fff';
        con2.style.color='#333';
      } 
  }
  
  function show_work(){ 	
      var con1 = document.getElementById("work");
      var con2 = document.getElementById("new_btn");
      var con3 = document.getElementById("work_btn");
      if(con3.style.background!='#4876ef'){ 		
        con1.style.display = 'block';
        con3.style.background='#4876ef';
        con3.style.color='#fff';
        con2.style.background='#fff';
        con2.style.color='#333';
      }else{ 		
        con1.style.display = 'none';
        con3.style.background='#fff';
        con3.style.color='#333';
      } 
  }
  </script>
</body>
</html>