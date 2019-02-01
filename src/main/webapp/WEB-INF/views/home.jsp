<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<head>
    <title>Homepage</title>
</head>
<body>

<table>
    <thead>
    <tr>
        <td colspan="3">Ostatnio dodane artykuły</td>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="article" items="${lastArticles}">
        <tr>
            <td>${article.title}</td>
            <td>${article.created}</td>
            <td>${fn:substring(article.content, 0, 200)}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<br>
<table>
    <thead>
    <tr>
        <td colspan="2">Lista kategorii</td>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="category" items="${categories}">
        <tr>
            <td>${category.name}</td>
            <td><form method="post">
                <input type="hidden" name="categoryId" value="${category.id}"/>
                <input type="submit" value="Show this category articles">
            </form></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
