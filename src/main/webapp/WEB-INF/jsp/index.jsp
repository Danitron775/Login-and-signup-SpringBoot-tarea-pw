<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<!DOCTYPE html>
	<html lang="es">

	<head>
		<meta charset="UTF-8">
		<title>Pagina principal</title>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
			integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
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

			.dropdown-menu {
				text-align: center;
			}
		</style>
	</head>

	<body>
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<div class="container-fluid">
				<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
					aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarNav">
					<ul class="navbar-nav ml-auto">
						<li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
								role="button" data-bs-toggle="dropdown" aria-expanded="false">
								<i class="bi bi-person"></i>
							</a>
							<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
								<li><i class="bi bi-person-circle"></i></li>
								<li><a class="dropdown-item" href="/logout">Cerrar sesión</a></li>
							</ul>
						</li>
					</ul>
				</div>
			</div>
		</nav>


		<div class="container grid gap-3">
			<h2>Bienvenido, ${usuario.username}!</h2>
			<p>Tu rol es: ${usuario.roles[0].rol_nombre}</p>
		</div>

		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
			integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
			crossorigin="anonymous"></script>
	</body>

	</html>