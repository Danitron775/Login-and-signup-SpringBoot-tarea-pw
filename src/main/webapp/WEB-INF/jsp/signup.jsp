<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
		<!DOCTYPE html>
		<html lang="es">

		<head>
			<meta charset="UTF-8">
			<title>Signup</title>
			<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
				integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
				crossorigin="anonymous">
			<style>
				:root {
					--background: #ffe6ad;
					--button: #f582ae;
					--texto: #001858;
					--main: #f3d2c1;
					--secundary: #8bd3dd;
				}

				body {
					font-family: Arial, sans-serif;
					background: var(--secundary);
					color: var(--texto);
				}

				.container {
					margin: 0 auto;
					width: 40%;
					padding: 20px;
					border: 1px solid #ccc;
					border-radius: 5px;
					margin-top: 50px;
					background: var(--main);
				}

				h2 {
					text-align: center;
				}

				.form-group {
					margin-bottom: 20px;
				}

				label {
					display: block;
					font-weight: bold;
					margin-bottom: 5px;
				}

				input[type="text"],
				input[type="password"] {
					width: 100%;
					padding: 10px;
					border: 1px solid #ccc;
					border-radius: 3px;
				}

				.boton {
					width: 100%;
					padding: 10px;
					border: none;
					background-color: var(--button);
					color: #fff;
					cursor: pointer;
					border-radius: 3px;
				}

				.boton:hover {
					background-color: var(--background);
				}

				.error {
					color: red;
					margin-top: 10px;
				}
			</style>
		</head>

		<body>
			<div class="container">
				<h2>Registrarse</h2>
				<form action="/signup" method="post">
					<c:if test="${not empty errorMessage}">
						<div class="alert alert-danger">${errorMessage}</div>
					</c:if>
					<div class="form-group">
						<label for="username">Nombre de usuario:</label> <input type="text" id="username"
							name="username" required>
					</div>
					<div class="form-group">
						<label for="password">Contraseña:</label> <input type="password" id="password" name="password"
							required>
					</div>
					<input type="submit" class="btn boton" value="Register">
					<hr>
					<c:if test="${not empty successMessage}">
						<div class="alert alert-success">${successMessage}</div>
					</c:if>
				</form>
				<div class="form-group">
					<span><a href="/login">Iniciar sesión</a></span>
				</div>
			</div>

			<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
				integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
				crossorigin="anonymous"></script>
		</body>