<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- Incluir los archivos CSS de Bootstrap -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

<div class="container">
    <div class="row">
        <div class="col-12">
            <a href="/" class="btn btn-primary mb-3">Volver a inicio</a>
            <div class="table-responsive">
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th>ID de Usuario</th>
                            <th>Nombre de usuario</th>
                            <th>Roles</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="usuario" items="${usuarios}">
                            <tr>
                                <td>${usuario.usu_id}</td>
                                <td>${usuario.username}</td>
                                <td>
                                    <c:forEach var="rol" items="${usuario.roles}">
                                        ${rol.rol_nombre}<br>
                                    </c:forEach>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

<!-- Incluir los archivos JS de Bootstrap -->
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>