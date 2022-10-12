<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ include file="../layout/headerMypage.jsp"%>

<div id="content_wrap">
  <div class="cont_mypage">
    <h2>이력서 등록</h2>
    <div class="notice_box2">
      <div class="mypage_resume_list">
        <div class="resume_form">
          <ul>
          <c:forEach var="resumePS" items="${resumePS}">
            <li class="resume_cont">

              <span class="input_radio">
                <input
                  type="radio"
                  name="resume_select"
                  id="resumeId"
                  value="${resumePS.resumeId}"
                  <c:if test="${resumePS.main eq true}">checked</c:if>
                />
              </span>
              <label for="resume_select" class="resume_select_box">
                <a href="#" class="list_title">
                  <span>${resumePS.resumeName}</span>
                </a>
                <ul class="list_option">
                  <li class="career">
                    <span>경력: ${resumePS.careerPeriod}</span>
                  </li>
                  <li class="part"><span>${resumePS.jobName}</span></li>
                </ul>
              </label>
              <div class="btn_resume_option">
                <span><a href="#">수정하기</a></span>
                <span><a href="#">삭제하기</a></span>
              </div><!-- .btn_resume_option -->
            </li><!-- .resume_cont -->
            </c:forEach>
          </ul><!-- #tab-1 -->
          <div class="btn_main_resume_select">
            <button id="btnSetMainResume" type="button" class="btn btn-primary">
              대표이력서 선택
            </button>
          </div>
        </div>
      </div>
      <!-- .resume_list -->
    </div>
    <!-- .notice_box -->
  </div>
    <!-- .cont_mypage -->
  </div>
  </div>
  <!-- #wrap -->
  <script src="/js/main.js"></script>

  <script>
    $("#btnSetMainResume").click(() => {
      setMainResume();
    });

                function setMainResume() {

                  resumeId = $('input[id=resumeId]:checked').val();

                  console.log(resumeId);

                   $.ajax("/emp/setMainResume/"+resumeId, {
                    type: "PUT",
                    dataType: "json", // 응답 데이터
                    data: JSON.stringify(resumeId), // http body에 들고갈 요청 데이터
                    headers: {
                        // http header에 들고갈 요청 데이터
                        "Content-Type": "application/json; charset=utf-8",
                    },
                  }).done((res) => {
                    if (res.code == 1) {
                        alert("메인 이력서 등록 완료");
                        location.reload();
                    } else {
                        alert("등록에 실패하였습니다");
                    }
                  });
                }
  </script>
  <%@ include file="../layout/footer.jsp"%>