<%-- 
    Document   : viewAprendiz
    Created on : Apr 26, 2023, 12:48:28 AM
    Author     : jhoan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Aprendiz</h1>
        
       <div class="dropdown">
                <button style="border: none" class="btn btn-outline-light dropdown-toggle" type="button" data-toggle="dropdown" aria-expanded="false">
                   ${usuario.getNombre()}
                </button>
                <div class="dropdown-menu dropdown-menu-right text-center">
                    <a class="dropdown-item" href="#">
                        <img src="img/profile.png" alt=""/>
                    </a>
                    <a class="dropdown-item" href="#">${usuario.getUser()}</a>
                    <a class="dropdown-item" href="#">${usuario.getemail()}</a>
                    <div class="dropdown-divider"></div>
                    <form action="validar" method="POST">
                        <button name="accion" value="salir" class="dropdown-item" href="# ">Salir</button>
                    </form>
                </div>
            </div>
    </body>
</html>
