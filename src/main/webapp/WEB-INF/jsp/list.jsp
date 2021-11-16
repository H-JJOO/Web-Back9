<%@ page import="com.koreait.board.BoardVO" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    List<BoardVO> list = (List<BoardVO>)request.getAttribute("data");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>리스트</title>
</head>
<body>
    <h1>리스트</h1>

    <a href="/write"><input type="button" value="글쓰기"></a>

    <table border="1">
        <tr>
            <th>번호</th>
            <th>제목</th>
            <th>작성자</th>
            <th>작성일자</th>
        </tr>

        <% for(BoardVO vo : list) { %>
        <tr>
            <td><%=vo.getIboard()%></td>
            <td>
                <a href="/detail?iboard=<%=vo.getIboard()%>">
                <%=vo.getTitle()%>
                </a>
            </td>
            <td><%=vo.getWriter()%></td>
            <td><%=vo.getRdt()%></td>
        </tr>

        <% } %>

    </table>

</body>
</html>
