<html>
<head>
<title>Login</title>
<style>

div{
font-size:35px;
width:60%;
margin:0 auto
}
p:nth-child(1){
text-align:center
}
p:nth-child(2){
background-color:darkcyan;
color:white
}
p:nth-child(3){
color:red;
}
  
</style>
</head>
<body>
<br><br>

<div>
 <p><strong>Bienvenido al sistema</strong></p>

 <p>Los datos ingresados son:</p>
 
 <p>
 <%
    String user=(String)request.getParameter("usuario");
    String pass=(String)request.getParameter("password");
    out.print("Tu usuario: "+user+"<br><br> Tu clave: "+pass);
  %>
 </p>
 
</div>
</body>
</html>