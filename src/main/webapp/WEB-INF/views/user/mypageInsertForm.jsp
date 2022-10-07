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
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
      rel="stylesheet"
    />
    <link rel="stylesheet" href="/css/reset.css" />
    <link rel="stylesheet" href="/css/main.css" />
    <link rel="stylesheet" href="/css/mypage.css" />
    <script type="text/javascript" src="/js/main.js"></script>
    <script
      type="text/javascript"
      src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"
    ></script>

    <title>4조 PROJECT</title>
  </head>
  <body>

<div id="mypage_wrap">
<div id="gnb_mypage">
  <div class="logo">
    <a href="/main">PROJECT_4</a>
  </div>
  <ul class="gnb_left">
      <li class="gnb_list1">
          <a href="#">
            <i class="fa-regular fa-paper-plane"></i>
            <span class="txt">이력서 등록</span>
          </a>
      </li>
      <li class="gnb_list2">
          <a href="#">
            <i class="fa-regular fa-pen-to-square"></i>
            <span class="txt">이력서 관리</span>
          </a>
      </li>
      <li class="gnb_list3">
        <a href="#">
          <i class="fa-regular fa-star"></i>
          <span class="txt">관심분야 관리</span>
        </a>
    </li>
    <li class="gnb_list4">
      <a href="#">
          <i class="fa-regular fa-user"></i>
          <span class="txt">회원정보관리(수정/탈퇴)</span>
      </a>
    </li>
  </ul>
</div><!-- .gnb_mypage -->

<div id="content_wrap">
  <div class="cont_mypage">
    <h2>이력서 등록</h2>
    <div class="notice_box2">
      <div class="mypage_resume_list">
        <div class="resume_form">
          <ul>
            <li class="resume_cont">
              <span class="input_radio">
                <input
                  type="radio"
                  name="resume_select"
                  id="resume_select"
                  value=""
                  checked
                />
              </span>
              <label for="resume_select" class="resume_select_box">
                <a href="#" class="list_title">
                  <span>최상의 결과를 이끌어 낼 4조 개발자들 화이팅</span>
                </a>
                <ul class="list_option">
                  <li class="career">
                    <span>신입</span>
                  </li>
                  <li class="part"><span>프론트엔드, 백엔드, 풀스택</span></li>
                </ul>
              </label>
              <div class="btn_resume_option">
                <span><a href="#">수정하기</a></span>
                <span><a href="#">삭제하기</a></span>
              </div><!-- .btn_resume_option -->
            </li><!-- .resume_cont -->

            <li class="resume_cont">
              <span class="input_radio">
                <input
                  type="radio"
                  name="resume_select"
                  id="resume_select"
                  value=""
                />
              </span>
              <label for="resume_select" class="resume_select_box">
                <a href="#" class="list_title">
                  <span>최상의 결과를 이끌어 낼 4조 개발자들 화이팅</span>
                </a>
                <ul class="list_option">
                  <li class="career">
                    <span>신입</span>
                  </li>
                  <li class="part"><span>프론트엔드, 백엔드, 풀스택</span></li>
                </ul>
              </label>
              <div class="btn_resume_option">
                <span><a href="#">수정하기</a></span>
                <span><a href="#">삭제하기</a></span>
              </div><!-- .btn_resume_option -->
            </li><!-- .resume_cont -->

            <li class="resume_cont">
              <span class="input_radio">
                <input
                  type="radio"
                  name="resume_select"
                  id="resume_select"
                  value=""
                />
              </span>
              <label for="resume_select" class="resume_select_box">
                <a href="#" class="list_title">
                  <span>최상의 결과를 이끌어 낼 4조 개발자들 화이팅</span>
                </a>
                <ul class="list_option">
                  <li class="career">
                    <span>신입</span>
                  </li>
                  <li class="part"><span>프론트엔드, 백엔드, 풀스택</span></li>
                </ul>
              </label>
              <div class="btn_resume_option">
                <span><a href="#">수정하기</a></span>
                <span><a href="#">삭제하기</a></span>
              </div><!-- .btn_resume_option -->
            </li><!-- .resume_cont -->
          </ul><!-- #tab-1 -->
          <div class="btn_main_resume_select">
            <button id="btn_main_resume" type="button" class="btn btn-primary">
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
  <%@ include file="../layout/footer.jsp"%>
</div>
