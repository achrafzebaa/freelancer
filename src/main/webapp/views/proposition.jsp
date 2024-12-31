<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <spring:url value="src/bootstrap" var="bts"></spring:url>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/${bts}/css/bootstrap.min.css">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Proposition Form</title>
    <style>
        body {
            background-color: #007bff; /* Changed to blue */
            font-family: Arial, sans-serif;
            color: #333;
            padding: 50px 0;
        }

        h2, h3 {
            margin-bottom: 20px;
            color: #ffffff; /* White text for headings */
            text-align: center;
        }

        .form-container {
            border: 2px solid #ffffff;
            border-radius: 10px;
            max-width: 600px;
            margin: 30px auto;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.9); /* Slightly opaque white */
            box-shadow: 0px 4px 20px rgba(0, 0, 0, 0.3);
        }

        .form-label {
            font-weight: bold;
            color: #0d6efd; /* Bootstrap primary color */
        }

        .form-control {
            margin-bottom: 15px;
            background-color: rgba(255, 255, 255, 0.8); /* Slightly opaque white */
            border: 1px solid #0d6efd; /* Bootstrap primary color */
            color: #333; /* Dark text for input */
        }

        .form-control::placeholder {
            color: #333; /* Dark placeholder color */
            opacity: 0.7; /* Placeholder opacity */
        }

        .btn-primary {
            background-color: #0d6efd; /* Bootstrap primary color */
            border-color: #0d6efd;
            padding: 12px 20px;
            font-size: 16px;
            font-weight: bold;
            transition: background-color 0.3s ease, box-shadow 0.3s ease;
            width: 100%; /* Full width button */
        }

        .btn-primary:hover {
            background-color: #0056b3; /* Darker blue on hover */
            box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.2);
        }

        @media (max-width: 576px) {
            .form-container {
                padding: 20px;
            }
        }
    </style>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>

    <h2>Proposition Form</h2>
    <h3>Titre du Projet: ${proj.titre}</h3>
    <div class="form-container">
        <form:form method="post" modelAttribute="proposition" action="${pageContext.request.contextPath}/addPropositionForm/${id}">
            <div class="mb-3">
                <label for="freelancerId" class="form-label">Freelancer ID:</label>
                <form:input path="freelancer.id" id="freelancerId" required="true" class="form-control" placeholder="Enter Freelancer ID" />
            </div>
            <div class="mb-3">
                <label for="montant" class="form-label">Montant:</label>
                <form:input path="montant" type="number" step="0.01" id="montant" required="true" class="form-control" placeholder="Enter Amount" />
            </div>
            <div class="mb-3">
                <label for="duree" class="form -label">Duree:</label>
                <form:input path="duree" type="number" id="duree" required="true" class="form-control" placeholder="Enter Duration in Days" />
            </div>
            <div class="mb-3">
                <label for="description" class="form-label">Description:</label>
                <form:textarea path="description" id="description" rows="4" required="true" class="form-control" placeholder="Enter Project Description"></form:textarea>
            </div>
            <div class="text-center">
                <button type="submit" class="btn btn-primary"><b>Enregistrer Proposition</b></button>
            </div>
        </form:form>
    </div>
</body>
</html>