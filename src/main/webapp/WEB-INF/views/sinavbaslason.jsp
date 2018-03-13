<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<title>sinavbasla</title>
</head>
<body>
	<div align="center" class="container">
		<div class="card-header">
			<div class="row">
				<div class="col-lg-4">
					Son Bir Adım
				</div>
			</div>
		</div>
	</div>

	<div align="center" class="container">
		<div class="card-header">
			<div class="row">
				<div align="right" class="col-lg-4"></div>
				
				<div class="col-lg-4 ">
				  <form  action='<s:url value="/ilerle/bitir/${say }"></s:url>' method="post">
				
					<input type="text" name="adi" class="form-control" placeholder="Adınız">
					
					${ ls.getSoru() }"
					
                
						<c:forEach var="itemsc" items="${ secenek }">

							<div class="text-left">
								<input class="form-check-input text-left" type="radio"
									name="sec" id="sec" value="${ itemsc.getDurum() }">
								<label class="form-check-label text-left" for="inlineRadio1">${ itemsc.getSecenek() }</label>
							</div>

						</c:forEach>
					
					<div>
				
                    <input type="submit" value="Bitir">                    
					</form>
					</div>
					
				</div>
				
				<div align="right" class="col-lg-4">
				 ${say}/${boyut}
				
				
				</div>

			</div>
		</div>
	</div>

</body>
</html>