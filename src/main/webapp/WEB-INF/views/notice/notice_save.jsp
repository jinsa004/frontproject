<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<html lang="en">
<head>
  <title>공고 등록</title>
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
  <h1>공고 등록</h1>
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
    <div class="notice_save">

      <div id="notice_info" class="form">
        <div class="notice_form">
          <div class="notice_row">
            <div class="notice_list">
              <p class="notice_list_item">공고명</p>
            </div>
            <div class="notice_input">
              <input type="text" id="notice_title" name="notice_title" class="box_input" placeholder="공고명을 입력하세요"/>
            </div>
          </div>
          <div class="notice_row">
            <div class="notice_list">
              <p class="notice_list_item">분야</p>
            </div>
            <div class="notice_input">
              <div class="select-group">
                <select>
                  <option>프론트엔드</option>
                  <option>백엔드</option>
                  <option>풀스택</option>
                  <option>안드로이드</option>
                  <option>IOS</option>
                </select>
              </div>
            </div>
          </div>
          <div class="notice_row">
            <div class="notice_list">
              <p class="notice_list_item">공고마감일</p>
            </div>
            <div class="notice_input">
              <input type="text" id="notice_period" name="notice_period" class="box_input" placeholder="공고 마감일"/>
            </div>
          </div>
          <div class="notice_row">
            <div class="notice_list">
              <p class="notice_list_item">채용부서</p>
            </div>
            <div class="notice_input">
              <input type="text" id="notice_dept" name="notice_dept" class="box_input" placeholder="부서명을 입력하세요"/>
            </div>
          </div>
          <div class="notice_row">
            <div class="notice_list">
              <p class="notice_list_item">채용직급</p>
            </div>
            <div class="notice_input">
              <input type="text" id="notice_position" name="notice_position" class="box_input" placeholder="직급을 입력하세요"/>
            </div>
          </div>
          <div class="notice_row">
            <div class="notice_list">
              <p class="notice_list_item">주요업무</p>
            </div>
            <div class="notice_input">
              <input type="text" id="notice_task" name="notice_task" class="box_input" placeholder="업무를 입력하세요"/>
            </div>
          </div>
          <div class="notice_row">
            <div class="notice_list">
              <p class="notice_list_item">평균연봉</p>
            </div>
            <div class="notice_input">
              <input type="text" id="notice_sal" name="notice_sal" class="box_input" placeholder="연봉를 입력하세요"/>
            </div>
          </div>
          <div class="notice_row">
            <div class="notice_list">
              <p class="notice_list_item">자격요건</p>
            </div>
            <div class="notice_input">
              <div class="form-check">
                <input type="radio" class="form-check-input" id="radio1" name="optradio" value="option1">대졸
                <label class="form-check-label" for="radio1"></label>
              </div>
              <div class="form-check">
                <input type="radio" class="form-check-input" id="radio2" name="optradio" value="option2">고졸
                <label class="form-check-label" for="radio2"></label>
              </div>
            </div>
          </div>
          <div class="notice_row">
            <div class="notice_list">
              <p class="notice_list_item">경력기간</p>
            </div>
            <div class="notice_input">
              <input type="text" id="notice_career" name="notice_career" class="box_input" placeholder="경력 기간을 입력하세요"/>
            </div>
          </div>
          <div class="notice_row">
            <div class="notice_list">
              <p class="notice_list_item">복리후생</p>
            </div>
            <div class="notice_input">
              <textarea id="company_welfare" name="company_welfare" cols="40" rows="5" placeholder="복리 후생"></textarea>
            </div>
          </div>
          <div class="notice_row">
            <div class="notice_list">
              <p class="notice_list_item">회사소개</p>
            </div>
            <div class="notice_input">
              <div class="company_logo">
                <img src="assets/resume/face1.jpg" width="140" height="180"/>
              </div>
              <textarea id="company_intro" name="company_intro" cols="40" rows="5" placeholder="회사 소개"></textarea>
            </div>
          </div>
          <div class="notice_row">
            <div class="notice_list">
              <p class="notice_list_item">회사위치</p>
            </div>
            <div class="notice_input">
              <div class="company_location">
                <input type="text" id="sample6_postcode" placeholder="우편번호">
                <input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
                <input type="text" id="sample6_address" placeholder="주소"><br>
                <input type="text" id="sample6_detailAddress" placeholder="상세주소">
                <input type="text" id="sample6_extraAddress" placeholder="참고항목">
              </div>
            </div>
          </div>

        </div>
      </div>
      <!-- notice -->

      <div class="btn_group">
        <div class="update_btn">
          <button type="button" onclick="location.href='#'">공고등록</button>
        </div>
      </div>
      <!-- btn -->

    </div>
    <!-- notice_save -->
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