<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
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
<title>secenekekle</title>
</head>
<body>
<div class="container">
		<div class="card-header">
		<div class="row">
  <div class="col-lg-4">
  ${ soru }
  <br>
  <form action='<s:url value="/secenekekle"></s:url>' method="GET">
  <div class="input-group mb-3">
  <input  name="secenek" type="text" class="form-control" placeholder="Secenek" aria-label="Recipient's username" aria-describedby="basic-addon2">
<select class="selectpicker" name="durum">
  <option >yanlis</option>
  <option >dogru</option>
</select>
  <div class="input-group-append">
    <button class="btn btn-outline-secondary" type="submit">Ekle</button>

  </div>
</div>
</form>
  </div>
</div>

 
  </div>
</div>

<div class="row">
<div class="col-6">



</div>
<div class="col-6">



</div>


</div>
</body>
</html>