<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8" />
    <title>Registrar Establecimiento</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 40px;
        }
        form {
            max-width: 600px;
            margin: auto;
        }
        h1 {
            text-align: center;
        }
        fieldset {
            border: 1px solid #ccc;
            padding: 15px 20px 20px 20px;
            margin-bottom: 25px;
            border-radius: 6px;
        }
        legend {
            font-weight: bold;
            padding: 0 10px;
        }
        label {
            display: block;
            margin-top: 10px;
            font-weight: bold;
        }
        input[type="text"],
        input[type="email"],
        input[type="tel"] {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        /* Flex containers for grouped inputs */
        .flex-row {
            display: flex;
            gap: 15px;
            margin-top: 10px;
        }
        .flex-row > div {
            flex: 1;
        }
        /* Icons section */
        .icon-section {
            margin-top: 30px;
        }
        .icon-section h3 {
            margin-bottom: 10px;
            font-weight: bold;
        }
        .icons {
            display: flex;
            justify-content: space-around;
            margin-top: 10px;
        }
        .icon {
            text-align: center;
            font-size: 14px;
            cursor: pointer;
        }
        .icon img {
            width: 60px;
            height: 60px;
            display: block;
            margin: 0 auto 5px auto;
        }
        button {
            margin-top: 30px;
            width: 100%;
            padding: 12px;
            font-size: 16px;
            background-color: #3498db;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        button:hover {
            background-color: #2980b9;
        }
        /* Success message */
        .success-message {
            max-width: 600px;
            margin: 20px auto;
            padding: 10px;
            background-color: #d4edda;
            color: #155724;
            border-radius: 5px;
            border: 1px solid #c3e6cb;
            text-align: center;
        }
    </style>
</head>
<body>

@if(session('success'))
    <div class="success-message">
        {{ session('success') }}
    </div>
@endif

<h1>Registrar Establecimiento</h1>

<form action="/establecimientos" method="POST" enctype="multipart/form-data">
    @csrf

    <fieldset>
        <legend>Datos del Comercio</legend>

        <label for="nombre_comercial">Nombre Comercial:</label>
        <input type="text" id="nombre_comercial" name="nombre_comercial" required>

        <label for="rfc">RFC:</label>
        <input type="text" id="rfc" name="rfc" required>

        <div class="flex-row">
            <div>
                <label for="calle">Calle:</label>
                <input type="text" id="calle" name="calle" required>
            </div>
            <div>
                <label for="numero">Número:</label>
                <input type="text" id="numero" name="numero" required>
            </div>
        </div>

        <div class="flex-row">
            <div>
                <label for="cruzamiento_1">Cruzamiento 1:</label>
                <input type="text" id="cruzamiento_1" name="cruzamiento_1">
            </div>
            <div>
                <label for="cruzamiento_2">Cruzamiento 2:</label>
                <input type="text" id="cruzamiento_2" name="cruzamiento_2">
            </div>
        </div>

        <label for="colonia">Colonia:</label>
        <input type="text" id="colonia" name="colonia" required>

        <label for="codigo_postal">Código Postal:</label>
        <input type="text" id="codigo_postal" name="codigo_postal" required>
    </fieldset>

    <fieldset>
        <legend>Datos del Responsable</legend>

        <label for="responsable_nombre">Nombre:</label>
        <input type="text" id="responsable_nombre" name="responsable_nombre" required>

        <label for="responsable_telefono">Teléfono:</label>
        <input type="tel" id="responsable_telefono" name="responsable_telefono" required>

        <label for="responsable_correo">Correo Electrónico:</label>
        <input type="email" id="responsable_correo" name="responsable_correo" required>
    </fieldset>

    <fieldset class="icon-section">
        <legend>Carga de Documentos (PDF)</legend>

        <div class="icons">
            <div class="icon" title="Subir Constancia de Situación Fiscal">
                <img src="https://cdn-icons-png.flaticon.com/512/337/337946.png" alt="Subir PDF">
                <div>Constancia Situación Fiscal</div>
            </div>
            <div class="icon" title="Subir Licencia de Funcionamiento">
                <img src="https://cdn-icons-png.flaticon.com/512/337/337946.png" alt="Subir PDF">
                <div>Licencia Funcionamiento</div>
            </div>
            <div class="icon" title="Subir Comprobante Domiciliario">
                <img src="https://cdn-icons-png.flaticon.com/512/337/337946.png" alt="Subir PDF">
                <div>Comprobante Domiciliario</div>
            </div>
        </div>
    </fieldset>

    <button type="submit">Guardar</button>
</form>

</body>
</html>
