<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head><meta charset="UTF-8"><title>Inicio</title></head>
<body style="font-family:Arial;margin:0">
  <jsp:include page="/WEB-INF/views/menu.jsp"/>
  <div style="padding:20px">
    <h1>Inicio general</h1>
    <p>Bienvenido, <b>${usuario}</b>. Esta página la ve cualquier usuario autenticado.</p>
  </div>
</body>
</html>
