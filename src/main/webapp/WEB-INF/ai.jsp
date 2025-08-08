<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>AI 챗봇</title>

    <meta property="og:title" content="0808 챗봇">
    <meta property="og:description" content="던파 비트비트체를 사용한 챗봇">

    <style>
        @font-face {
            font-family: 'bitbit';
            src: url('https://cdn.df.nexon.com/img/common/font/DNFBitBit-Regular.woff2') format('woff2'),
                 url('https://cdn.df.nexon.com/img/common/font/DNFBitBit-Regular.woff') format('woff');
            font-weight: normal;
            font-style: normal;
        }

        /* 페이지 전체에 'bitbit' 폰트 적용 */
        body {
            font-family: 'bitbit', sans-serif; /* 폰트 로딩 실패 시 대비하여 기본 폰트(sans-serif) 지정 */
            padding: 20px;
        }

        /* 입력창과 버튼에도 스타일을 적용하여 일관성 유지 */
        input[name="question"] {
            font-family: 'bitbit', sans-serif;
            padding: 8px;
            border: 2px solid #333;
        }

        button {
            font-family: 'bitbit', sans-serif;
            padding: 8px 12px;
            border: 2px solid #333;
            background-color: #f0f0f0;
            cursor: pointer;
        }

        button:hover {
            background-color: #ddd;
        }
    </style>
</head>
<body>

    <div>
        <p>
            <strong>질문 :</strong> <%= request.getAttribute("question") != null ? request.getAttribute("question") : "아직 질문이 없습니다." %>
        </p>
        <p>
            <strong>답변 :</strong> <%= request.getAttribute("data") != null ? request.getAttribute("data") : "답변을 기다리고 있어요." %>
        </p>
    </div>

    <hr>

    <form method="post">
        <input name="question" placeholder="여기에 질문을 입력하세요...">
        <button type="submit">질문하기</button>
    </form>

</body>
</html>