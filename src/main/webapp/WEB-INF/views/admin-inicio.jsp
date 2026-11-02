<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head><meta charset="UTF-8"><title>Inicio Admin</title></head>
<body style="font-family:Arial;margin:0">
  <jsp:include page="/WEB-INF/views/menu.jsp"/>
  <div style="padding:20px">
    <h1>Panel de administrador</h1>
    <p>Hola <b>${usuario}</b>. Solo los usuarios con rol ADMIN llegan aquí.</p>
  </div>
</body>
</html>
