<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head><meta charset="UTF-8"><title>Promedio</title></head>
<body style="font-family:Arial;margin:0">
  <jsp:include page="/WEB-INF/views/menu.jsp"/>
  <div style="padding:20px">
    <h1>Calculadora de promedio</h1>
    <form action="${pageContext.request.contextPath}/promedio" method="post">
      <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
      Nota 1: <input type="number" step="0.1" min="0" max="5" name="n1" required><br><br>
      Nota 2: <input type="number" step="0.1" min="0" max="5" name="n2" required><br><br>
      Nota 3: <input type="number" step="0.1" min="0" max="5" name="n3" required><br><br>
      <button type="submit">Calcular</button>
    </form>
    <c:if test="${promedio != null}">
      <h3>Promedio: ${promedio}</h3>
      <c:choose>
        <c:when test="${aprobado}"><p style="color:green">Aprobado</p></c:when>
        <c:otherwise><p style="color:red">Reprobado</p></c:otherwise>
      </c:choose>
    </c:if>
  </div>
</body>
</html>
