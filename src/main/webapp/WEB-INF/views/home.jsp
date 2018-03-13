<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ page session="false"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
<title>OnlineSinavSistemi</title>

</head>
<body>
	<div align="center" class="container">
		<div class="card-header">
			<h3>Online Sınav Sistemine Hoşgeldiniz</h3>
		</div>
	</div>

	<div class="container">
		<div class="card-header">
			<div class="row">
				<div align="center" class="col-sm-6">

					<a href='<s:url value="/sinavbasla"></s:url>'
						class="btn btn-success " role="button" aria-disabled="true">Sınava
						Başla</a>

				</div>

				<div align="center" class="col-sm-6">
					<a href='<s:url value="/sinavduzenle"></s:url>'
						class="btn btn-primary " role="button" aria-disabled="true">Sınava
						Hazırla</a>
				</div>

			</div>

		</div>
	</div>
	<div class="container">
		<div class="card-header">
			<div class="media-body">

				<div id="carouselExampleIndicators" class="carousel slide"
					data-ride="carousel">
					<ol class="carousel-indicators">
						<li data-target="#carouselExampleIndicators" data-slide-to="0"
							class="active"></li>
						<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
						<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
					</ol>
					<div class="carousel-inner">
						<div class="carousel-item active">
							<img class="d-block w-100" width="500" height="500"
								src='\OnlineSinav\resources\4.jpg' alt="First slide">
						</div>
						<div class="carousel-item">
							<img class="d-block w-100" height="500"
								src='\OnlineSinav\resources\5.jpg' alt="Second slide">
						</div>
						<div class="carousel-item">
							<img class="d-block w-100" height="500"
								src='\OnlineSinav\resources\6.jpg' alt="Third slide">
						</div>
					</div>
					<a class="carousel-control-prev" href="#carouselExampleIndicators"
						role="button" data-slide="prev"> <span
						class="carousel-control-prev-icon" aria-hidden="true"></span> <span
						class="sr-only">Previous</span>
					</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
						role="button" data-slide="next"> <span
						class="carousel-control-next-icon" aria-hidden="true"></span> <span
						class="sr-only">Next</span>
					</a>
				</div>
			</div>
		</div>
	</div>

</body>
</html>
