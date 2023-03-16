<%-- 
    Document   : jsp_2.jsp
    Created on : 15 mar 2023, 22:02:40
    Author     : BD1
--%>

<%@page import="source.Datos"%>
<%@page import="source.Negocio"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
        <link rel="shortcut icon" href="images/favicon.ico">
        <link rel="stylesheet" href="style.css" type="text/css">
    </head>
    <body>

           
        <% 
            Negocio negocio = new Negocio();
            int numero = (int)(Math.random()*20);
            String cad = String.format("?numero=%d", numero);
        %>


        <div class="card text-white bg-dark mb-3" style="max-width: 38rem;">
            <div class="card-header">Tabla</div>
            <div class="card-body">
              <h5 class="card-title">Tabla de Calificaciones</h5>
              <p class="card-text">Esta es una tabla de calificaciones construida usando java y html</p>
            </div>
        </div>
        <br>
        
        <table class="table table-hover">
            <tr class="table-danger">
              <th scope="col">Nombre</th>
              <th scope="col">Calificaci&oacute;n</th>
              
              <tbody class="table-danger">
            <%
                if(negocio.getLista() != null && ! negocio.getLista().isEmpty())
                {
                    for(Datos datos : negocio.getLista())
                    {
            %>
            <tr>
                <td><%=datos.getName()%></td>
                <td><%=datos.getGrade()%></td>
            </tr>
            <%
                    }
                }
            %>
          </tbody>
            </tr>
        </table>
        <table class="table-danger">
          
            
          
          
        </table>
            

    </body>
</html>
