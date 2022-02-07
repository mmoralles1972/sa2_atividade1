<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sistema de Controle de Vagas de Emprego</title>
<link rel="stylesheet" type="text/css" href="estilos.css">
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
<script type="text/javascript">
public void Incluir() 
{
try {
// conecta com BD
ConectaBD cbd = new ConectaBD();
Connection conn = cbd.Conectar();
 // inclusão modo objeto PreparedStatement
String Sql = "insert into "
 + 
"vagas(descricao,req_obrigatorios,req_desejaveis,remuneracao,beneficios,loc
al_trabalho) "
 + "values(?,?,?,?,?,?)";
 PreparedStatement comando = (PreparedStatement) 
conn.prepareStatement(Sql); 
 // inclusão modo objeto PreparedStatement - continuação
 comando.setString(1, descricao_cc);
 comando.setString(2, req_obrigatorios_cc);
 comando.setString(3, req_desejaveis_cc);
 comando.setFloat(4, remuneracao_cc);
 comando.setString(5, beneficios_cc);
 comando.setString(6, local_trabalho_cc);
 comando.execute();
 comando.close();
 conn.close();
} 
catch (Exception e) {
System.out.println(e.getMessage());
}
</script>
</head>
<body>
<header id="cabecalho">
<div align=center>   <h1>SISTEMA DE CONTROLE DE VAGA DE EMPREGO</h1> </div>
   </header>

<div align=center><h2>Inclusão</h2></div>
<br>
<div>
<form action="emp_011.jsp" method="post">
<table>
<tr><td>Descrição</td>
<td><input type="text" name="nome" placeholder= "Digite o tipo da vaga" required maxlength=100></td></tr>
<tr><td>Requisitos Obrigatórios</td>
<td><input type="text" name="rob" placeholder= "Graduação / Especialista / Mestrado / + 5 anos na àrea" required maxlength=100></td></tr>
<tr><td>Requisitos Desejáveis</td>
<td><input type="text" name="rde" placeholder= "Digite qual exepriência necessária" maxlength=100></td></tr>
<tr><td>Remuneração</td>
<td><input type="text" name="rem" placeholder= "Digite o valor inicial" required class="mask-real" size=8
style="text-align: right"></td></tr>
<tr><td>Benefícios</td>
<td><input type="text" name="ben" placeholder= "vale refeição / vale alimentação / assistência médica" required maxlength=100></td></tr>
<tr><td>Local de Trabalho</td>
<td><input type="text" name="ltr" placeholder= "home office / matriz / escritorio SP" required maxlength=100></td></tr>
<tr><td colspan=2>&nbsp;</td></tr>
<tr><th colspan=2><input type="submit" value="Enviar"></th></tr>
</table>
</form>
</div>
</body>
</html>