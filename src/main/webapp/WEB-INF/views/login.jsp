<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head><meta charset="UTF-8"><title>Login</title></head>
<body style="font-family:Arial;background:#ecf0f1;">
  <div style="width:320px;margin:100px auto;padding:25px;background:white;border-radius:8px;">
    <h2>Iniciar sesión</h2>
    <c:if test="${param.error != null}">
      <p style="color:red">Usuario o contraseña incorrectos.</p>
    </c:if>
    <c:if test="${param.logout != null}">
      <p style="color:green">Has cerrado sesión.</p>
    </c:if>
    <form action="${pageContext.request.contextPath}/login" method="post">
      <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
      <p><label>Usuario</label><br><input type="text" name="username" required></p>
      <p><label>Contraseña</label><br><input type="password" name="password" required></p>
      <button type="submit">Entrar</button>
    </form>
  </div>
</body>
</html>
