<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <spring:url value="src/bootstrap" var="bts"></spring:url>
    <link rel="stylesheet" href="${bts}/css/bootstrap.min.css">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Freelance Projects</title>
    <style>
        body {
            padding-top: 56px;
        }
        .card {
            margin-bottom: 20px;
            border: none;
            border-radius: 12px;
            overflow: hidden;
            transition: transform 0.3s, box-shadow 0.3s;
        }
        .card:hover {
            transform: scale(1.05);
            box-shadow: 0 6px 15px rgba(0, 0, 0, 0.2);
        }
        .card-header {
            color: white;
            padding: 15px;
            font-size: 1.2em;
            text-align: center;
            font-weight: bold;
        }
        .card-header:nth-child(even) {
            background-color: #007bff; /* Blue */
        }
        .card-header:nth-child(odd) {
            background-color: #28a745; /* Green */
        }
        .card-body {
            padding: 20px;
            font-size: 0.9em;
            background-color: #f9f9f9;
        }
        .card-footer {
            background-color: #f1f1f1;
            padding: 10px;
            text-align: right;
        }
        .btn-primary {
            border-radius: 20px;
        }
		.p22{
		color:white;}
    </style>
</head>
<body>
<jsp:include page="header.jsp" />
<section id="projects" class="py-5">
                <center><p class="p22">Connect with talented freelancers and find the perfect project.</p></center>

    <div class="container">
        
        <!-- Project Cards -->
        <h2 class="text-center mb-4">Projets Récents</h2>
        <div class="row">
    <c:forEach items="${projs}" var="p">
        <div class="col-md-4 mb-4">
            <div class="card border-0 rounded-lg" style="background-color: #ffffff; box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);">
                <div class="card-header text-center" style="background-color: #343a40; color: white; border-top-left-radius: 15px; border-top-right-radius: 15px;">
                    <h5 class="mb-0">${p.titre}</h5>
                </div>
                <div class="card-body" style="padding: 30px; background: linear-gradient(135deg, #e9ecef, #f8f9fa); color: #333; border-radius: 10px;">
                    <p><strong>Description:</strong> ${p.description}</p>
                    <p><strong>Budget:</strong> <span style="color: #28a745;">${p.budget} €</span></p>
                    <p><strong>Technologies:</strong> <span style="font-style: italic;">${p.technologies}</span></p>
                    <p><strong>Heures:</strong> <span style="color: #007bff;">${p.nbreHeures}</span></p>
                    <p><strong>Date Limit:</strong> <span style="color: #dc3545;">${p.dateLimite}</span></p>
                    <p><strong>Status:</strong> <span style="font-weight: bold; color: #ffc107;">${p.statut}</span></p>
                    <p><strong>Client:</strong> <span style="font-weight: bold;">${p.client.nom}</span></p>
                </div>
                <div class="card-footer text-center" style="background-color: #f8f9fa; border-bottom-left-radius: 15px; border-bottom-right-radius: 15px;">
                    <a href="addPropositionForm/${p.id}" class="btn btn-outline-primary rounded-pill" style="padding: 10px 20px;">Ajouter une proposition</a>
                </div>
            </div>
        </div>
    </c:forEach>
</div>
    </div>
</section>
</body>
</html>

