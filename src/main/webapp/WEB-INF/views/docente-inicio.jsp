<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head><meta charset="UTF-8"><title>Inicio Docente</title></head>
<body style="font-family:Arial;margin:0">
  <jsp:include page="/WEB-INF/views/menu.jsp"/>
  <div style="padding:20px">
    <h1>Panel del docente</h1>
    <p>Hola <b>${usuario}</b>. Solo los usuarios con rol DOCENTE llegan aquí.</p>
  </div>
</body>
</html>
