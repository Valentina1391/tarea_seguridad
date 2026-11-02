<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<nav style="background:#2c3e50;padding:10px;">
  <a style="color:white;margin-right:15px" href="${pageContext.request.contextPath}/inicio">Inicio</a>
  <sec:authorize access="hasRole('ADMIN')">
    <a style="color:white;margin-right:15px" href="${pageContext.request.contextPath}/admin/inicio">Admin</a>
  </sec:authorize>
  <sec:authorize access="hasRole('DOCENTE')">
    <a style="color:white;margin-right:15px" href="${pageContext.request.contextPath}/docente/inicio">Docente</a>
  </sec:authorize>
  <sec:authorize access="hasAnyRole('ADMIN','CREATOR')">
    <a style="color:white;margin-right:15px" href="${pageContext.request.contextPath}/new">Nuevo</a>
  </sec:authorize>
  <sec:authorize access="hasAnyRole('ADMIN','DOCENTE')">
    <a style="color:white;margin-right:15px" href="${pageContext.request.contextPath}/promedio">Promedio</a>
  </sec:authorize>
  <form action="${pageContext.request.contextPath}/logout" method="post" style="display:inline;float:right">
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
    <button type="submit">Cerrar sesión (${usuario})</button>
  </form>
</nav>
