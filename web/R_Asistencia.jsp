<%-- 
    Document   : RegistrarVenta
    Created on : 8/03/2023, 6:14:17 p. m.
    Author     : jhoan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Personas</title>
    </head>
    <body>
        <div class="d-flex">
            <div class="col-sm-4">
                <div class="card">
                    <div class="card-body">
                        <form action="controlador" method="POST">
                            <div class="form-group">
                                <label>datos aprendiz</label>
                            </div>
                            <div class="form-group d-flex">
                                <div class="col-sm-6 d-flex">
                                    <input type="text" name="codigoaprendiz" class="form-control " placeholder="codigo">
                                    <input type="submit" name="accion" value="Buscar" class="btn btn-outline-info">
                                </div>

                                <div class="col-sm-6">
                                    <input type="text" name="nombresaprendiz" class="form-control" placeholder="Datos Aprendiz">
                                </div>                            
                            </div>
                            <div class="form-group">
                                <label>Datos Aprendiz</label>
                            </div>
                            <div class="form-group d-flex">
                                <div class="col-sm-6 d-flex">
                                    <input type="text" name="codigoaprendiz" class="form-control " placeholder="codigo">
                                    <input type="submit" name="accion" value="Buscar" class="btn btn-outline-info" >
                                </div>
                                <div class="col-sm-6">
                                    <input type="text" name="nombresaprendiz" class="form-control" placeholder="">
                                </div>
                            </div>
                            <div class="form-group d-flex">
                                <div class="col-sm-6 d-flex">
                                    <input type="text" name="precio" class="form-control " placeholder="$/.0.00">
                                </div>
                                <div class="col-sm-3">
                                    <input type="number" name="cant" class="form-control " placeholder="">
                                </div>
                                <div class="col-sm-3">
                                    <input type="text" name="nombreStockAprendiz" class="form-control" placeholder="Stock">
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-sm-7">
                <div class="card">
                    <div class="card-body">
                        <div class="d-flex col-sm-5 ml-auto">
                            <label>NumeroFicha</label>
                            <input type="text" name="Nficha" class="form-control">
                        </div>
                        <br> 
                        <table class="table table-hover">
                            <thead>
                                <tr>
                                    <th>Nro</th>
                                    <th>Codigo</th>
                                    <th>Descripcion</th>
                                    <th>Precio</th>
                                    <th>Cantidad</th>
                                    <th>Subtotal</th>
                                    <th>Acciones</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="car-footer">
                        <div>
                            <input type="submit" name="accion" value="Generar Asistencia" class="btn btn-success">
                            <input type="submit" name="accion" value="Cancelar" class="btn btn-danger">
                        </div>
                    </div> 
                </div>
            </div>
        </div>
        
        
           <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
    </body>
</html>
