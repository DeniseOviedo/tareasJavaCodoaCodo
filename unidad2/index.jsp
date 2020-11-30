<!--Importo la clase que conecta a mysql-->
<%@page import="conecta.conectaBD"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Conectando a mysql...</h1>

        <%
            conectaBD con = new conectaBD();//Objeto de la clase conectaBD.
            
            if(con.conecta()==null){//Llamo a método que retorna null si la conexion no tubo errores.
                %>
                Conexion exitosa!
                <%
            }
            else{
                out.print(con.conecta());//Si no imprimo el error.
            }
        %>
        
    </body>
</html>
