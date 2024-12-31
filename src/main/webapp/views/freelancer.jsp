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
    <title>Profile FREELANCER</title>
    <style>
        body {
            background-color: rgb(13,110,253);
            font-family: Arial, sans-serif;
            color: #333;
        }

        .container {
            margin-top: 50px;
            padding: 20px;
            background-color: lightgray;
            border-radius: 10px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
        }

        h1, h3 {
            color: #0d6efd;
            font-weight: bold;
        }

        .card {
            border: none;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
        }

        .btn-primary {
            background-color: #0d6efd;
            border-color: #0d6efd;
            padding: 10px 20px;
            font-size: 16px;
            font-weight: bold;
            transition: background-color 0.3s ease, box-shadow 0.3s ease;
        }

        .btn-primary:hover {
            background-color: #0056b3;
            box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.2);
        }

        .btn-secondary {
            background-color: #6c757d;
            border-color: #6c757d;
            transition: background-color 0.3s ease;
        }

        .btn-secondary:hover {
            background-color: #5a6268;
        }

        footer {
            margin-top: 20px;
            background-color: #f8f9fa;
            padding: 15px 0;
        }

        .alert {
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1 class="text-center">Freelancer Profile</h1>

        <!-- Display Success or Error Messages -->
        <c:if test="${not empty message}">
            <div class="alert alert-success">${message}</div>
        </c:if>
        <c:if test="${not empty error}">
            <div class="alert alert-danger">${error}</div>
        </c:if>

        <!-- Profile form -->
        <h3>Edit Profile</h3>
        <form:form action="${pageContext.request.contextPath}/profile" 
                   method="POST" 
                   modelAttribute="profile" 
                   accept-charset="UTF-8">
            <input type="hidden" name="username" value="${profile.user.username}" />
            <form:hidden path="id" />
            <form:hidden path="user.id" />

            <div class="card mb-4">
                <div class="card-body text-center">
                    <h3>Informations Utilisateur</h3>
                    <p><strong>Name:</strong> ${profile.user.nom}</p>
                    <p><strong>Email:</strong> ${profile.user.email}</p>
                </div>
            </div>

            <div class="row mb-3">
                <div class="col-md-6">
                    <label for="biblio" class="form-label">Bibliographie</label>
                    <form:textarea path="biblio" id="biblio" class="form-control" rows="3"></form:textarea>
                </div>
                <div class="col-md-6">
                    <label for="skills" class="form-label">Compétences</label>
                    <form:input path="skills" id="skills" class="form-control" />
                </div>
            </div>

            <div class="row mb-3">
                <div class="col-md-6">
                    <label for="anneeExperience" class="form-label">Annees d'experience</label>
                    <form:input path="anneeExperience" id="anneeExperience" class="form-control" type="number" />
                </div>
                <div class="col-md-6">
                    <label for="disponibilite" class="form-label">Disponibilité</label>
                    <form:input path="disponibilite" id="disponibilite" class="form-control" />
                </div>
            </div>

            <div class="text-center">
                <button type="submit" class="btn btn-primary">Enregistrer les donnees</button>
            </div>
        </form:form>

        <!-- Back to Projects link -->
        <div class="text-center mt-4">
            <a href="ShowAllProjects" class="btn btn-secondary">Liste des projets</a>
        </div>
    </div>

    <footer class="text-center">
        <p class="text-muted mb-0">&copy; 2024 FreelanceESSAT. All rights reserved.</p>
    </footer>
</body>
</html>