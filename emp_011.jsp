<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sistema de Controle de Vagas de Emprego</title>
<link rel="stylesheet" type="text/css" href="estilos.css">

</head>
<body>
<header id="cabecalho">
<div align=center>   <h1>SISTEMA DE CONTROLE DE VAGA DE EMPREGO</h1> </div>
   </header>

<div align=center><h2>Inclus�o Conclu�da</h2></div>
<br>
<div>


<table>
<tr><td>Descri��o</td><td style="color:blue">
<%
	String nome = request.getParameter("nome");
	out.print(nome);
%>
</td></tr>
<tr><td>Requisitos Obrigat�rios</td><td style="color:blue">
<%
	String rob = request.getParameter("rob");
	out.print(rob);
%></td></tr>
<tr><td>Requisitos Desej�veis</td><td style="color:blue">
<%
	String rde = request.getParameter("rde");
	out.print(rde);
%></td></tr>
<tr><td>Remunera��o</td><td style="color:blue">
<%
	String rem = request.getParameter("rem");
	out.print(rem);
%></td></tr>
<tr><td>Benef�cio</td><td style="color:blue">
<%
	String ben = request.getParameter("ben");
	out.print(ben);
%></td></tr>
<tr><td>Local de Trabalho</td><td style="color:blue">
<%
	String ltr = request.getParameter("ltr");
	out.print(ltr);
%>
</td></tr>
<tr><th colspan=2 style="color:green">Vaga inclu�da com sucesso.</th></tr>
</table>

</div><br>
<div>
<form action="index.jsp" method="get">
<input type="submit" value="Voltar">
</form>
</div>
</body>
</html>