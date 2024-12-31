<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Create Project</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css">
    <style>
        body {
            background-color: #007bff; /* Changed to blue */
            font-family: Arial, sans-serif;
            color: #333;
        }

        .container {
            margin-top: 50px;
            padding: 30px;
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0px 4px 20px rgba(0, 0, 0, 0.1);
        }

        h2 {
            color: #0d6efd;
            font-weight: bold;
            margin-bottom: 30px;
            text-align: center;
        }

        .form-label {
            font-weight: bold;
        }

        .form-control {
            border-radius: 6px;
        }

        .btn-primary {
            background-color: #0d6efd;
            border-color: #0d6efd;
            padding: 12px 20px;
            font-size: 16px;
            font-weight: bold;
            transition: background-color 0.3s ease, box-shadow 0.3s ease;
        }

        .btn-primary:hover {
            background-color: #0056b3;
            box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.2);
        }

        .form-control:focus {
            border-color: #0d6efd;
            box-shadow: 0 0 0 0.2rem rgba(13, 110, 253, 0.25);
        }

        @media (max-width: 576px) {
            .container {
                padding: 20px;
            }
        }
    </style>
</head>
<body>
<div class="container">
    <h2>Creer Un Noveau Project</h2>
    
    <form action="${pageContext.request.contextPath}/projects/new" method="post">
        <input type="hidden" name="username" value="${username}" />

        <div class="row mb-3">
            <div class="col-md-6">
                <label for="titre" class="form-label">Titre:</label>
                <input type="text" id="titre" name="titre" class="form-control" required />
            </div>
            <div class="col-md-6">
                <label for="budget" class="form-label">Budget:</label>
                <input type="number" id="budget" name="budget" class="form-control" step="0.01" required />
            </div>
        </div>

        <div class="mb-3">
            <label for="description" class="form-label">Description:</label>
            <textarea id="description" name="description" class="form-control" rows="4" required></textarea>
        </div>

        <div class="row mb-3">
            <div class="col-md-6">
                <label for="dateLimite" class="form-label">Date limite:</label>
                <input type="date" id="dateLimite" name="dateLimite" class="form-control" required />
            </div>
            <div class="col-md-6">
                <label for="nbreHeures" class="form-label">Nombre des heures:</label>
                <input type="number" id="nbreHeures" name="nbreHeures" class="form-control" required />
            </div>
        </div>

        <div class="mb-3">
            <label for="technologies" class="form-label">Technologies:</label>
            <input type="text" id="technologies" name="technologies" class="form-control" />
        </div>

        <div class="mb-3">
            <label for="statut" class="form-label">Status:</label>
            <input type="text" id="statut" name="statut" class="form-control" required />
        </div>

        <button type=" submit" class="btn btn-primary w-100">Creer Project</button>
    </form>
</div>
</body>
</html>