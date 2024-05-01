
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <title>Resultados de Búsqueda</title>
   
    <style>
        body {
            background: #f0f0f0; 
            padding-top: 80px;
        }

        h1 {
            font-size: 2.5rem;
            text-align: center;
            margin-bottom: 30px;
            color: #4CAF50; 
        }

        table {
            width: 100%;
            margin-bottom: 1rem;
            color: #212529;
        }

        table th, table td {
            padding: 1rem;
            text-align: center;
        }

        .no-productos {
            text-align: center;
            font-size: 1.5rem;
            margin-top: 20px;
            color: #DC143C; 
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
            background-color: #4CAF50; 
            border-color: #4CAF50; 
        }

        .btn-primary:hover {
            background-color: #45a049; 
            border-color: #45a049;
        }
    </style>
</head>
<body>

    <h1>Resultados de Búsqueda</h1>

    <c:if test="${not empty productosEncontrados}">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-12">
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>Código</th>
                                <th>Nombre</th>
                                <th>Precio</th>
                                <th>Stock</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="producto" items="${productosEncontrados}">
                                <tr>
                                    <td>${producto.codigo}</td>
                                    <td>${producto.nombre}</td>
                                    <td>${producto.precio}</td>
                                    <td>${producto.stock}</td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>

                    <div class="row">
                        <div class="col-md-6 text-start">
                            <a href="/ventas/" class="btn btn-primary">Volver</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </c:if>

    <c:if test="${empty productosEncontrados}">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-12">
                    <div class="no-productos">No hay productos disponibles.</div>
                </div>
            </div>
        </div>
        <a href="/ventas/" class="volver">Volver al inicio</a>
    </c:if>

</body>
</html>


