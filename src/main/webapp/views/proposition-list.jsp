<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <spring:url value="src/bootstrap" var="bts"></spring:url>
    <link rel="stylesheet" href="${bts}/css/bootstrap.min.css">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Propositions List</title>
    <style>
        body {
            background-color: #007bff; /* Changed to blue */
            font-family: Arial, sans-serif;
            color: #333;
            padding: 20px;
        }

        .container {
            margin-top: 30px;
        }

        h2 {
            color: #000000;
            font-weight: bold;
            margin-bottom: 30px;
            text-align: center;
        }

        .card {
            margin-bottom: 20px;
            border: 1px solid #ddd;
            border-radius: 10px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
        }

        .card-header {
            background-color: #0d6efd;
            color: white;
            font-weight: bold;
        }

        .card-body {
            padding: 15px;
        }

        .card-title {
            font-size: 1.25rem;
            margin-bottom: 10px;
        }

        .card-text {
            margin-bottom: 5px;
        }
    </style>
</head>
<body>
<div class="container">
    <h2>Liste des Propositions</h2>
    <div class="row">
        <c:forEach var="prop" items="${propositions}">
            <div class="col-md-4">
                <div class="card">
                    <div class="card-header">
                        ID Projet: ${prop.proj.id}
                    </div>
                    <div class="card-body">
                        <h5 class="card-title">Freelancer: ${prop.freelancer.nom}</h5>
                        <p class="card-text"><strong>Montant:</strong> ${prop.montant}</p>
                        <p class="card-text"><strong>Durée:</strong> ${prop.duree}</p>
                        <p class="card-text"><strong>Description:</strong> ${prop.description}</p>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</div>
</body>
</html>