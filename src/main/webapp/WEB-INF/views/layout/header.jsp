<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
    />
    <link rel="stylesheet" href="/src/main/resources/static/css/main.css" />
    <link rel="stylesheet" href="/src/main/resources/static/css/reset.css" />
    <title>header</title>
  </head>
  <body>
    <div id="user_wrap">
      <div class="header_wrap">
        <header>
          <div class="logo">
            <a href="#">PROJECT_4</a>
          </div>
          <!-- .logo -->

          <div class="search_bar">
            <form class="cf">
              <input
                type="text"
                id="search"
                title="검색어 입력"
                name="search"
                placeholder="검색어를 입력해주세요."
                maxlength="50"
              />
              <button type="submit" class="btn_search">검색</button>
            </form>
          </div>
          <!-- .search_bar -->

          <div class="login_box">
            <button
              class="btn_login"
              type="button"
              onClick="javascript:popOpen();"
            >
              로그인
            </button>
            <button
              class="btn_join"
              type="button"
              onClick="javascript:popOpen();"
            >
              회원가입
            </button>
            <a href="#" class="btn_company">기업 서비스</a
            ><!-- .btn_company -->
          </div>
          <!-- .login_box -->

          <nav>
            <ul>
              <li>
                <a href="#">채용공고</a>
              </li>
              <li>
                <a href="#">매칭리스트</a>
              </li>
              <li>
                <a href="#">구독기업광고</a>
              </li>
              <li>
                <a href="#">기업정보</a>
              </li>
            </ul>
          </nav>
          <!-- nav -->
        </header>
        <!-- header -->
      </div>
      <!-- .header_wrap -->

  </body>
</html>
