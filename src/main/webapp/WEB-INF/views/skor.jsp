
    <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>

<title>skor</title>

</head>
<body>

<div class="row">
	<div align="center" class="container">
		<div class="card-header">
			<h3>Online Sınav Skoru</h3>
			
					<div class="col-sm-8">
		<table class="table table-hover" border=1>
		<tr class="table-dark">
		<th scope="col">Adı</th>
		<th scope="col">Puan</th>
		<th scope="col">Sınav Tarihi</th>
		<th scope="col">Doğru Sayısı</th>
		<th scope="col">Yanlış Sayısı</th>
		<th scope="col">Boş Sayısı</th>
		<th scope="col">Toplam Soru Sayısı</th>
		</tr>
		<tr>
		<td>${adi}</td>
		<td>${puan}</td>
		<td>${trh}</td>
		<td>${dogru}</td>
		<td>${yanlis}</td>
		<td>${bos}</td>
		<td>${toplam}</td>
		</tr>
	
		

		</table>
		</div>
		</div>
	</div>



</div>

<div>



</div>





</body>
</html>