<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<sec:authentication property="principal" var="user" />

<c:if test="${user.role.role=='ROLE_CLIENT'}">
<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
    <div class="container">
        <a class="navbar-brand" href="#">FreelanceESSAT</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
      
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <form id="logoutForm" action="<c:url value='/logout' />" method="post">
                <ul class="navbar-nav ms-auto"> <!-- ms-auto pushes items to the right -->
                    <li class="nav-item">
                        <a href="projects/new?username=${user.username}" class="nav-link">Ajouter Projet</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="listProposition">Liste des propositions</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="messages?userId=${user.id}">Messages</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link btn btn-danger" onclick="document.getElementById('logoutForm').submit(); return false;">Se deconnecter</a>
                    </li>
                </ul>
            </form>
        </div>
    </div>
</nav>
    </div>
</nav>

</c:if>

<c:if test="${user.role.role=='ROLE_FREELANCER'}">
<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
    <div class="container">
        <a class="navbar-brand" href="#">FreelanceESSAT</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
     
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <form id="logoutForm" action="<c:url value='/logout' />" method="post">
                <ul class="navbar-nav ms-auto"> <!-- ms-auto pushes items to the right -->
                    <li class="nav-item">
                        <a href="projects/new?username=${user.username}" class="nav-link">Mon Profil</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="messages?userId=${user.id}">Messages</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link btn btn-danger" onclick="document.getElementById('logoutForm').submit(); return false;">Se deconnecter</a>
                    </li>
                </ul>
            </form>
        </div>
    </div>
</nav>
    </div>
</nav>

</c:if>



<style>
body{
background-color:rgb(13,110,253);
margin:0;
padding:0;}
.navbar2{
background-color:rgb(13,110,253) ;
text-color:gold;}
.hello{
color:white;
margin-left:35%;}

.myButton {
	box-shadow:inset 0px 1px 0px 0px #ffffff;
	background:linear-gradient(to bottom, #ededed 5%, #dfdfdf 100%);
	background-color:#ededed;
	border-radius:6px;
	border:1px solid #dcdcdc;
	display:inline-block;
	cursor:pointer;
	color:#777777;
	font-family:Arial;
	font-size:15px;
	font-weight:bold;
	padding:6px 24px;
	text-decoration:none;
	text-shadow:0px 1px 0px #ffffff;
}
.myButton:hover {
	background:linear-gradient(to bottom, #dfdfdf 5%, #ededed 100%);
	background-color:#dfdfdf;
}
.myButton:active {
	position:relative;
	top:1px;
}
.myButton2 {
	box-shadow:inset 0px 1px 0px 0px #f29c93;
	background:linear-gradient(to bottom, #fe1a00 5%, #ce0100 100%);
	background-color:#fe1a00;
	border-radius:6px;
	border:1px solid #d83526;
	display:inline-block;
	cursor:pointer;
	color:#ffffff;
	font-family:Arial;
	font-size:15px;
	font-weight:bold;
	padding:6px 24px;
	text-decoration:none;
	text-shadow:0px 1px 0px #b23e35;
}
.myButton2:hover {
	background:linear-gradient(to bottom, #ce0100 5%, #fe1a00 100%);
	background-color:#ce0100;
}
.myButton2:active {
	position:relative;
	top:1px;
}

</style>