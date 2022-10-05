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

    <div class="employ_list">
      <ul class="employ_list_item">
        <li class="employ_list_item">
          <a href="#">이력서 관리</a>
        </li>
          <ol>
            <li class="employ_list_item">
              <a href="#">이력서 등록</a>
            </li>
            <li class="employ_list_item">
              <a href="#">이력서 관리</a>
            </li>
        </ol>
        <li class="employ_list_item">
          <a href="#">회원정보 관리</a>
        </li>
      </ul>
    </div>
  </div>
  <!-- list -->

  <div class="resume_update">
    <div class="form">
      <div class="resume_title">
        <h2>이력서 제목</h2>
      </div>
      <div class="title_input">
        <input></input>
        <!-- input 입력 넣기 -->
      </div>
    </div>
  </div>
  <!-- title -->

  <div class="form">
    <div class="form_title">
      <h2>기본정보</h2>
    </div>
    <div class="info_form">
      <div class="info_img">
        <form method="post" action="/upload" enctype="multipart/form-data">
          <input type="file" name="file"/>
          <button type="submit">파일전송</button>
          </form>
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
    <div class="form_text">
      <div class="edu_select">
        <div class="btn-group">
          <button type="button" class="edu_btn"><a href="#">고등학교 졸업</a></button>
          <button type="button" class="edu_btn"><a href="#">대학.대학원 이상 졸업</a></button>
        </div>
      </div>
      <hr/>
      <div class="edu_form">
        <div class="edu_list">
          <p class="edu_list_item">학교명</p>
          <input></input>
          <!-- 인풋으로 입력할 수 있게 -->
          <p class="edu_list_item">재학기한</p>
          <input></input>
          <!-- 인풋으로 입력할 수 있게 -->
          <p class="edu_list_item">전공</p>
          <input></input>
          <!-- 인풋으로 입력할 수 있게 -->
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
          <!-- 버튼눌렀을 때 폼뜨게 -->
          <!-- 폼 숨겼다가 버튼누르면 생기는걸로/ 통신말고 -->
        </div>
      </div>
      <hr/>

      <div class="career_form">
        <div class="career_list">
          <p class="career_list_item">회사명</p>
          <input></input>
          <!-- 인풋으로 입력할 수 있게 -->
          <!-- 입력전에 미리 텍스트 뜨는거 space? 블로그꺼 참고 -->
          <p class="career_list_item">재직기간</p>
          <input></input>
          <p class="career_list_item">퇴사사유</p>
          <input></input>
          <p class="career_list_item">직급/직책</p>
          <input></input>
          <p class="career_list_item">근무부서</p>
          <input></input>
          <p class="career_list_item">근무지역</p>
          <input></input>
          <p class="career_list_item">연봉</p>
          <input></input>
          <p class="career_list_item">담당업무</p>
          <input></input>
        </div>
      </div>
    </div>
  </div>
  <!-- career -->
  <br><br>

  <div class="form">
    <div class="form_title">
      <h2 class="field_title">관심분야</h2>
    </div>
      <div class="career_select">
        <div class="select-group">
          <select></select>
          <!-- 셀렉트로 선택 -->
        </div>
      </div>
    </div>
  </div>
  <!-- field -->
  <br><br>
  

  <div class="update">
    <button type="button" class="resume_update">등록완료</button>
  </div>

</div>

   
<!-- body -->

<div class="mt-5 p-4 bg-dark text-white text-center">
  <p>Footer</p>
</div>
<!-- footer -->

</body>
</html>