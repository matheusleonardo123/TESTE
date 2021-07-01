<%--Aqui nós pegamos os dados da tela HTML--%>


<%@page import="controle.Crontroller"%>
<%@page import="controle.ControleUsuario"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- Aqui temos 3 variaveis nome, idade e cpf, que através do metodo getparameter com o objeto request
	  consegue recuperar os dados da tela html, com a tela Html e JSP já temos a nossa camada de apresentação --%>
	<% 
		String nome = request.getParameter("nome");
		int idade  = Integer.parseInt(request.getParameter("idade"));
		String cpf  = request.getParameter("cpf");
		
		ControleUsuario	contU = new ControleUsuario();
		
		Crontroller conU = new Crontroller();
		
		contU.cadastrousuario(nome, idade, cpf);
		
		
		%>
		
		<h1>Formulario de Cadastro</h1>
		
		<p>O seguinte usuario foi cadastrado com sucesso:</p>
		
		<p>
		Nome:<%=nome %><br>
		Idade: <%=idade %><br>
		Cpf: <%=cpf %><br>
		</p>

</body>
</html>