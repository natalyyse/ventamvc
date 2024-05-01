
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <title>Lista de Productos</title>
    <!-- Agrega la referencia a Bootstrap CSS -->
    
    <style>
        body {
            background-color: #f0f0f0; 
            color: #333; 
        }

        .container {
            margin-top: 50px;
            text-align: center; 
        }

        h1 {
            font-size: 2.5rem;
            margin-bottom: 30px;
            color: #007bff; 
        }

        table {
            width: 100%;
            max-width: 1200px;
            margin: 20px auto;
            border: 1px solid #ccc; 
            border-collapse: collapse;
        }

        th, td {
            padding: 15px;
            text-align: center;
            border: 1px solid #ccc; 
        }

        .no-productos {
            font-size: 1.2rem;
            margin-top: 20px;
        }

        .volver {
            display: block;
            text-align: center;
            margin-top: 20px;
            font-size: 1.2rem;
            text-decoration: none;
            color: #007bff;
        }

        .btn-primary {
            background-color: #007bff;
            border-color: #007bff;
        }

        .btn-primary:hover {
            background-color: #0056b3;
            border-color: #0056b3;
        }
    </style>
</head>
<body>

<div class="container">
    <div class="row">
        <div class="col-md-12">
            <h1>Lista de Productos</h1>

            <c:choose>
                <c:when test="${not empty productos}">
                    <table class="table table-bordered table-striped"> 
                        <thead class="table-dark"> 
                            <tr>
                                <th>Código</th>
                                <th>Nombre</th>
                                <th>Precio</th>
                                <th>Stock</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="producto" items="${productos}">
                                <tr>
                                    <td>${producto.codigo}</td>
                                    <td>${producto.nombre}</td>
                                    <td>${producto.precio}</td>
                                    <td>${producto.stock}</td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </c:when>
                <c:otherwise>
                    <p class="no-productos">No hay productos disponibles.</p>
                </c:otherwise>
            </c:choose>

            <div class="row justify-content-center"> 
                <div class="col-md-12">
                    <a href="registro.jsp" class="btn btn-primary btn-lg">Agregar</a>
                    <a href="buscarProducto.jsp" class="btn btn-primary btn-lg">Buscar producto</a>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>



