<%-- 
    Document   : empleados
    Created on : 8/03/2023, 6:17:15 p. m.
    Author     : jhoan
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>JSP Page</title>
        <link href="css/estilos.css" rel="stylesheet" type="text/css"/>

    </head>
    <body>
        <div class="d-md-flex d-sm-flex-column">
             <div class="card col-md-4 col-sm-12">
            <div>
                <form action="controlador?menu=Aprendiz" method="POST">
                    <div class="form-group">
                        <label>Cedula</label>
                        <input type="text" value="${Personas.getcedula()}" name="txtCedula" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Nombre</label>
                        <input type="text" value="${Personas.getNombre()}" name="txtNombre" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Apellido</label>
                        <input type="text" value="${Personas.getapellido()}" name="txtApellido" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Email</label>
                        <input type="text" value="${Personas.getemail()}" name="txtEmail" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>IDRol</label>
                        <input type="text" value="${Personas.getIdrol()}" name="txtIDRol" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>IDExcusa</label>
                        <input type="text" value="${Personas.getIdexcusa()}" name="txtExcusa" class="form-control">
                    </div>
                    <input type="submit" name="accion" value="Agregar" class="btn btn-info">
                    <input type="submit" name="accion" value="Actualizar" class="btn btn-success">
                </form>
            </div>
        </div>
            <div class="col-md-8 col-sm-8">
                <table class="table table-sm">
                <thead>
                    <tr>
                        <th>DNI</th>
                        <th>CEDULA</th>
                        <th>NOMBRE</th>
                        <th>APELLIDO</th>
                        <th>EMAIL</th>
                        <th>USUARIO</th>
                        <th>ROL</th>
                        <th>ACCIONES</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="pm" items="${aprendiz}">
                        <tr>
                            <td>${pm.getId()}</td>
                            <td>${pm.getcedula()}</td>
                            <td>${pm.getNombre()}</td>
                            <td>${pm.getapellido()}</td>
                            <td>${pm.getemail()}</td>
                            <td>${pm.getUser()}</td>
                            <td>${pm.getrol()}</td>
                            <td>
                                <a class="btn btn-warning btn-table" href="controlador?menu=Aprendiz&accion=Editar&id=${pm.getId()}">Editar</a>
                                <a class="btn btn-danger btn-table" href="controlador?menu=Aprendiz&accion=Eliminar&id=${pm.getId()}">Eliminar</a>
                            </td>
                        </tr>
                    </c:forEach>
                    
                
                </tbody>
            </table>

       </div>
        </div>
        
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>
