<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>메인페이지</title>
  </head>
  <body>
    <div id="user_wrap">
      <div class="container">
        <div class="tablist">
          <ul>
            <li>
              <button class="btn_tab" type="button">전체직군</button>
            </li>
            <li>
              <button class="btn_tab on" type="button">프론트엔드</button>
            </li>
            <li>
              <button class="btn_tab" type="button">백엔드</button>
            </li>
            <li>
              <button class="btn_tab" type="button">웹 풀스택</button>
            </li>
            <li>
              <button class="btn_tab" type="button">안드로이드</button>
            </li>
            <li>
              <button class="btn_tab" type="button">IOS</button>
            </li>
          </ul>
        </div>
        <!-- .tablist -->

        <section>
          <div class="notice_box">
            <table>
              <colgroup>
                <col width="200px" />
                <col width="600px" />
                <col width="160px" />
                <col width="120px" />
                <col width="120px" />
              </colgroup>
              <thead>
                <tr class="notice_title">
                  <th scope="col">기업명</th>
                  <th scope="col">제목</th>
                  <th scope="col">지원자격</th>
                  <th scope="col">근무조건</th>
                  <th scope="col">마감일</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>
                    <a href="#"
                      ><img src="/src/main/resources/static/img/logo_1.png"
                    /></a>
                  </td>
                  <td>
                    <a href="#">
                      보안/운영 시스템 개발팀 백엔드 개발자 모집
                      <span class="notice_small"
                        >백엔드/서버개발, 웹개발, 정보보안</span
                      >
                    </a>
                  </td>
                  <td>경력무관<span class="notice_small">학력무관</span></td>
                  <td>정규직<span class="notice_small">부산</span></td>
                  <td>~10/19(수)<span class="notice_small">(D-14)</span></td>
                </tr>
                <tr>
                  <td>
                    <a href="#"
                      ><img src="/src/main/resources/static/img/logo_1.png"
                    /></a>
                  </td>
                  <td>
                    <a href="#">
                      보안/운영 시스템 개발팀 백엔드 개발자 모집
                      <span class="notice_small"
                        >백엔드/서버개발, 웹개발, 정보보안</span
                      >
                    </a>
                  </td>
                  <td>경력무관<span class="notice_small">학력무관</span></td>
                  <td>정규직<span class="notice_small">부산</span></td>
                  <td>~10/19(수)<span class="notice_small">(D-14)</span></td>
                </tr>
                <tr>
                  <td>
                    <a href="#"
                      ><img src="/src/main/resources/static/img/logo_1.png"
                    /></a>
                  </td>
                  <td>
                    <a href="#">
                      보안/운영 시스템 개발팀 백엔드 개발자 모집
                      <span class="notice_small"
                        >백엔드/서버개발, 웹개발, 정보보안</span
                      >
                    </a>
                  </td>
                  <td>경력무관<span class="notice_small">학력무관</span></td>
                  <td>정규직<span class="notice_small">부산</span></td>
                  <td>~10/19(수)<span class="notice_small">(D-14)</span></td>
                </tr>
                <tr>
                  <td>
                    <a href="#"
                      ><img src="/src/main/resources/static/img/logo_1.png"
                    /></a>
                  </td>
                  <td>
                    <a href="#">
                      보안/운영 시스템 개발팀 백엔드 개발자 모집
                      <span class="notice_small"
                        >백엔드/서버개발, 웹개발, 정보보안</span
                      >
                    </a>
                  </td>
                  <td>경력무관<span class="notice_small">학력무관</span></td>
                  <td>정규직<span class="notice_small">부산</span></td>
                  <td>~10/19(수)<span class="notice_small">(D-14)</span></td>
                </tr>
              </tbody>
            </table>
          </div>
          <!-- .notice_box -->
        </section>
        <div class="paging">
          <ul class="pagination">
            <li class="page-item page-prev">
              <a class="page-link" href="#">Previous</a>
            </li>
            <li class="page-item"><a class="page-link" href="#">1</a></li>
            <li class="page-item active">
              <a class="page-link" href="#">2</a>
            </li>
            <li class="page-item"><a class="page-link" href="#">3</a></li>
            <li class="page-item page-next">
              <a class="page-link" href="#">Next</a>
            </li>
          </ul>
        </div>
      </div>
      <!-- .container -->
    </div>
    <!-- #wrap -->
  </body>
</html>
