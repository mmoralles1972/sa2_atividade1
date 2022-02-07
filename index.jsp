<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script 
src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js">
</script>
<script src = "https://cdnjs.cloudflare.com/ajax/libs/jquerymaskmoney/3.0.2/jquery.maskMoney.min.js"></script>
<!--Construçãoo de máscaras pelo JQUERY-->
<script type="text/javascript"> 
 $(function() {
 $('.mask-real').maskMoney({showSymbol:true,symbol:'R$ ', 
 decimal:',', thousands:'.', allowZero:true}); // valor monet�rio
 });
</script>

<title>Sistema de Controle de Vagas de Emprego</title>
<link rel="stylesheet" type="text/css" href="estilos.css">

</head>
<body>
<div id="interface">
<header id="cabecalho">
<div align=center><h1>SISTEMA DE CONTROLE DE VAGA DE EMPREGO</h1>
<nav id="menu">

            
            <li><a href="index.jsp">Home</a></li>
            <li><a href="inclusao.jsp">Cadastrar</a></li>
			<li><a href="emp_021.jsp">Alterar</a></li>
            <li><a href="emp_022.jsp">Excluir</a></li>
            <li><a href="emp_020.jsp">Listar Vagas</a></li>
            <li><a href="">Fale conosco</a></li>

        
</nav>
</header>
</div>
</body>
</html>