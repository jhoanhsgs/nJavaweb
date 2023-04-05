<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <title>JSP Page</title>
</head>

<body>
    <div class="d-flex">
        <div class="card col-sm-4">
            <div>
                <form>
                    <div class="form-group">
                        <label>Dni</label>
                        <input type="text" name="txtDni" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>NUMERO DE FICHA</label>
                        <input type="text" name="txtNombres" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>NOMBRE</label>
                        <input type="text" name="txtTelefonos" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>FECHA INICIO</label>

                        <input type="date" name="txtEstado" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>FECHA FIN</label>
                        <input type="date" name="txtUsuario" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>FECHA CREACION</label>
                        <input type="datetime-local" name="txtUsuario" class="form-control">
                    </div>
                    <input type="submit" name="accion" value="Agregar" class="btn btn-info">
                </form>
            </div>
        </div>
        <div class="col-sm-8">
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>DNI</th>
                        <th>NUMERO DE FICHA</th>
                        <th>NOMBRE</th>
                        <th>FECHA INICIO</th>
                        <th>FECHA FIN</th>
                        <th>FECHA CREACION</th>

                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="pm" items="${aprendiz}">
                        <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td>
                                <a>Editar</a>
                                <a>Eliminar</a>
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