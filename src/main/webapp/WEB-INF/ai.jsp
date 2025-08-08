<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!-- OG Tag => 디스코드 상 미리보기 컨트롤 -->
<!-- Webfont -->

<!-- 1. 한글 사용 가능하게 설정 -->
<html>
<head>
    <title>AI 챗봇</title>
    <!-- OG Tag -->
    <meta property="og:title" content="0808 챗봇">
    <meta property="og:description" content="던파 비트비트체를 사용한 챗봇">
    <!-- Web Font -->
    <style>
        @font-face{
          font-family:'bitbit';
          src:url('//cdn.df.nexon.com/img/common/font/DNFBitBit-Regular.woff'),url('//cdn.df.nexon.com/img/common/font/DNFBitBit-Regular.woff2') ;
        }
    </style>
</head>
<body>
<!-- II. 질문을 표시 -->
<p>
    질문 : <%= request.getAttribute("question") %>
</p>
<p>
    <!-- 2. req(request) 안에 set된 'data'라는 attribute가 있다면 출력 -->
    답변 : <%= request.getAttribute("data") %> <!-- 값을 출력 -->
</p>
<!-- I. 주소창이 아니라 우리가 데이터를 화면에서 아예 전달 -->
<form method="post">
    <input name="question">
    <button>질문하기</button>
</form>
</body>
</html>