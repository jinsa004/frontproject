<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<html lang="en">
<head>
  <title>회원 정보 관리</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>
  <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
  <link href="css/reset.css" rel="stylesheet">
  <link href="css/main.css" rel="stylesheet">
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

    <div class="users_info">

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
    <!-- users_info -->
  </div>
</div>
<!-- body -->

<div class="mt-5 p-4 bg-dark text-white text-center">
  <p>Footer</p>
</div>
<!-- footer -->

</body>
</html>