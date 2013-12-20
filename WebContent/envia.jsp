<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Envia E-mail</title>
</head>
<body>
<form action="Enviar" method="post">
	De:<input type="text" name="de" value="suporte@integrator.com.br" /><br />
	Para: <input type="text" name="para"  value="suporte@integrator.com.br" /><br />
	Assunto: <input type="text" name="assunto"  value="Enviando Email em Java" /><br />
	Mensagem: <input type="text" name="mensagem" value="Enviando Email em Java" /><br />
	<input type="submit" name="enviar" value="Enviar" />
</form>

</body>
</html>