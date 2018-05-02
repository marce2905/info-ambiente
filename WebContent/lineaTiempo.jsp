<%@page import="java.util.ArrayList"%>
<%@page import="entidades.Resultado"%>
<%@page import="datos.Dt_resultado"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<% 

Integer opc = (Integer) session.getAttribute("opc")==null?0:(Integer) session.getAttribute("opc");

if(opc == 0){
	response.sendRedirect("formEscenario.jsp");
}
//OPCION 1 ------------------------------------------------------------------
String nomLoc = (String) session.getAttribute("ciudadNombre");//NO

Integer opcInudus = (Integer) session.getAttribute("indus")==null?0:(Integer) session.getAttribute("indus");//OPCION
Integer contIndus = (Integer) session.getAttribute("contamInsdus")==null?0:(Integer) session.getAttribute("contamInsdus");//4 --
Integer opcHidri = (Integer) session.getAttribute("hidri")==null?0:(Integer) session.getAttribute("hidri");//OPCION
Integer contHidri = (Integer) session.getAttribute("contamHidri")==null?0:(Integer) session.getAttribute("contamHidri");//11 --
Integer opcBasura = (Integer) session.getAttribute("botanBasura")==null?0:(Integer) session.getAttribute("botanBasura"); //1 --
//OPCION 2 ----------------------------RURAL---------------------------------
Integer opcActEcon = (Integer) session.getAttribute("actEcon")==null?0:(Integer) session.getAttribute("actEcon");//OPCION
Integer despale = (Integer) session.getAttribute("despale")==null?0:(Integer) session.getAttribute("despale"); //2  --
Integer areaEcon = (Integer) session.getAttribute("porcentEcon")==null?0:(Integer) session.getAttribute("porcentEcon");//8 --
Integer serviciosBas = (Integer) session.getAttribute("servBas")==null?0:(Integer) session.getAttribute("servBas");//7 --
//OPCION 3 ----------------------------URBANA--------------------------------
Integer opcAreasVer = (Integer) session.getAttribute("existAreas")==null?0:(Integer) session.getAttribute("existAreas");//OPCION
Integer areasVerde = (Integer) session.getAttribute("porcentAreas")==null?0:(Integer) session.getAttribute("porcentAreas"); //3 --
Integer actVehicular = (Integer) session.getAttribute("actVehic")==null?0:(Integer) session.getAttribute("actVehic");//5 --
Integer aguasNegras = (Integer) session.getAttribute("aguasN")==null?0:(Integer) session.getAttribute("aguasN");//12 --
Integer energia = (Integer) session.getAttribute("enegia")==null?0:(Integer) session.getAttribute("enegia");//9 --
Integer tecnologia = (Integer) session.getAttribute("tecno")==null?0:(Integer) session.getAttribute("tecno");//10

%>
<!DOCTYPE html>
<html class="no-js" lang="en">
<head>
    <meta charset="utf-8">
    <title>Medio ambiente</title>
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- css de font-aweasome -->
	<link rel="stylesheet" href="plugins/font-awesome/css/font-awesome.css">
	<link rel="stylesheet" href="plugins/font-awesome/css/font-awesome.min.css">
	
	<!-- css de bootstrap -->
	<link rel="stylesheet" href="plugins/bootstrap/dist/css/bootstrap.css">
	<link rel="stylesheet" href="plugins/bootstrap/dist/css/bootstrap.min.css">
	
	<link rel="stylesheet" href="css/base2.css">
    <link rel="stylesheet" href="css/vendor.css">
    <link rel="stylesheet" href="css/main2.css">
    <link rel="stylesheet" href="css/style.css">
	
	<!-- Ionicons -->
    <link rel="stylesheet	" href="plugins/Ionicons/css/ionicons.min.css">
    <link rel="stylesheet" href="css/icheck-bootstrap.min.css">
    <!-- AdminLTE Skins. Choose a skin from the css/skins
    folder instead of downloading all of them to reduce the load. -->
      	<link rel="stylesheet" href="css/AdminLTE.min.css">
  	<link rel="stylesheet" href="css/skins/_all-skins.min.css">
    
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
    <link rel="icon" href="favicon.ico" type="image/x-icon">
</head>
<body id="top">

	<header class="s-header">
        <%@include file="plantillas/menu.jsp" %>
        <a class="header-menu-toggle" href="#0">
            <span class="header-menu-text">Menu</span>
            <span class="header-menu-icon"></span>
        </a>

    </header> 
    <!-- end s-header -->
	<!-- 	Carousel ----------------------------------------------------------------------------------------------->
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
        <!-- Wrapper for slides -->
        <div class="carousel-inner" role="listbox">
            <div class="item active">
                <img src="images/banner1.jpg" alt="Chania">
                <div class="carousel-caption">
                    <h3 class="badge bg-blue" style="font-size: 1.4em;">Cuidemos el Medio Ambiente</h3>
                    <p>Un sistema formado por elementos naturales y artificiales que están interrelacionados y que son modificados por la acción humana.</p>
                </div>
            </div>
            <div class="item">
                <img src="images/banner2.jpg" alt="Chania">
                <div class="carousel-caption">
                    <h3 class="badge bg-blue" style="font-size: 1.4em;">Aún podemos salvar nuestro Medio Ambiente</h3>
                    <p>Pequeñas acciones reprecentan significativos cambios en pro de nuestro ecosistema, flora, fauna. Permitiendo asi nuestra sobreviviencia. </p>
                </div>
            </div>
            <div class="item">
                <img src="images/banner3.jpg" alt="Flower">
                <div class="carousel-caption">
                	<h3 class="badge bg-blue" style="font-size: 1.4em;">Depende de nosostros tener un mejor futuro</h3>
                    <p>Nuestras acciones deciden día a día lo que nos depara más adelante ¿Podemos cambiar? porsupuesto que si.</p>
                </div>
            </div>
            <div class="item">
                <img src="images/banner4.jpg" alt="Flower">
                <div class="carousel-caption">
                    <h3 class="badge bg-blue" style="font-size: 1.4em;">Medio Ambiente</h3>
                    <p>Nuetro planeta nos necesita, es momento de cambiar.</p>
                </div>
            </div>
        </div>
        <!-- Left and right controls -->
        <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
            <span class="fa fa-angle-left" aria-hidden="true"></span>
            <span class="sr-only">Anterior</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
            <span class="fa fa-angle-right" aria-hidden="true"></span>
            <span class="sr-only">Siguente</span>
        </a>
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
            <li data-target="#myCarousel" data-slide-to="3"></li>
        </ol>
    </div>
	<!-- 	Fin Carousel ------------------------------------------------------------------------------------------->
    <!-- Main content ---------------------------------------------------------------------------------------------->
	<!-- Instanciación de objetos a utilizar en todo el jsp -->
   	<% 
   	Dt_resultado dtr = new Dt_resultado();
   	ArrayList<Resultado> resultados = new ArrayList<Resultado>();
   	%>
   	<section class="content" style="background-color: #e6e6e6;">
   	  <h3>Linea del tiempo</h3>
      <div class="row">
        <div class="col-md-12">
          <ul class="timeline">
            
            <li class="time-label">
                  <span class="bg-red">
                    10 años después
                  </span>
            </li>
	<!--    PARAMETROS 2,8,11,12-->
            <% if(despale != 0 || areaEcon != 0 || contHidri != 0 || aguasNegras != 0){%>
            <li>
              <i class="fa  fa-tree bg-green"></i>

              <div class="timeline-item">
                <span class="time"><i class="fa fa-clock-o"></i></span>

                <h3 class="timeline-header"><a href="#">Actividades económica, fuentes hidrograficas</a>&nbsp;Estado del ecosistema</h3>
                <div class="timeline-body">
                <% 
                	if(despale != 0){
                		for(Resultado res : dtr.listarResultados("020"+despale, "10")){ %>
                			<div class="form-group">
								<% if(res.getUrlImg().isEmpty()){%>
									<%=res.getDescripcion() %>
								<% }else{%>
								<div class="col-md-7"><%=res.getDescripcion() %></div>
								<div class="col-md-5">
									<img alt="Error al cargar la imagen" src="<%=res.getUrlImg()%>">
								</div>
								<% }%>
							</div>	
                		<%}
                	}
                %>
                <% 
                	if(areaEcon != 0){
                		for(Resultado res : dtr.listarResultados("080"+areaEcon, "10")){ %>
                			<div class="form-group">
								<% if(res.getUrlImg().isEmpty()){%>
									<%=res.getDescripcion() %>
								<% }else{%>
								<div class="col-md-7"><%=res.getDescripcion() %></div>
								<div class="col-md-5">
									<img alt="Error al cargar la imagen" src="<%=res.getUrlImg()%>">
								</div>
								<% }%>
							</div>	
                		<%}
                	}
                %>
                <% 
                	if(contHidri != 0){
                		for(Resultado res : dtr.listarResultados("110"+contHidri, "10")){ %>
                			<div class="form-group">
								<% if(res.getUrlImg().isEmpty()){%>
									<%=res.getDescripcion() %>
								<% }else{%>
								<div class="col-md-7"><%=res.getDescripcion() %></div>
								<div class="col-md-5">
									<img alt="Error al cargar la imagen" src="<%=res.getUrlImg()%>">
								</div>
								<% }%>
							</div>	
                		<%}
                	}
                %>
                <% 
                	if(aguasNegras != 0){
                		for(Resultado res : dtr.listarResultados("120"+aguasNegras, "10")){ %>
                			<div class="form-group">
								<% if(res.getUrlImg().isEmpty()){%>
									<%=res.getDescripcion() %>
								<% }else{%>
								<div class="col-md-7"><%=res.getDescripcion() %></div>
								<div class="col-md-5">
									<img alt="Error al cargar la imagen" src="<%=res.getUrlImg()%>">
								</div>
								<% }%>
							</div>	
                		<%}
                	}
                %>
                </div>
              </div>
            </li>
            <% } %>
	<!--             PARAMTROS 4,3          -->
            <% if(contIndus != 0 || areasVerde != 0){%>
            <li>
              <i class="fa fa-cloud bg-red"></i>

              <div class="timeline-item">
                <span class="time"><i class="fa fa-clock-o"></i></span>

                <h3 class="timeline-header"><a href="#">Industrias contaminantes, flora y fauna</a>&nbsp;El trabajo del hombre, trae consecuencias para el medio ambiente</h3>
                <div class="timeline-body">
                <% 
                	if(contIndus != 0){
                		for(Resultado res : dtr.listarResultados("040"+contIndus, "10")){ %>
                			<div class="form-group">
								<% if(res.getUrlImg().isEmpty()){%>
									<%=res.getDescripcion() %>
								<% }else{%>
								<div class="col-md-7"><%=res.getDescripcion() %></div>
								<div class="col-md-5">
									<img alt="Error al cargar la imagen" src="<%=res.getUrlImg()%>">
								</div>
								<% }%>
							</div>	
                		<%}
                	}
                %>
                <% 
                	if(areasVerde != 0){
                		for(Resultado res : dtr.listarResultados("030"+areasVerde, "10")){ %>
                			<div class="form-group">
								<% if(res.getUrlImg().isEmpty()){%>
									<%=res.getDescripcion() %>
								<% }else{%>
								<div class="col-md-7"><%=res.getDescripcion() %></div>
								<div class="col-md-5">
									<img alt="Error al cargar la imagen" src="<%=res.getUrlImg()%>">
								</div>
								<% }%>
							</div>	
                		<%}
                	}
                %>
                </div>
              </div>

            </li>
            <% }%>
	<!--    PARAMTROS 1,5 -->
			<% if(opcBasura != 0 || actVehicular != 0){ %>
            <li>
              <i class="fa fa-comments bg-yellow"></i>

              <div class="timeline-item">
                <span class="time"><i class="fa fa-clock-o"></i></span>

                <h3 class="timeline-header"><a href="#">Contaminantes</a></h3>
                <div class="timeline-body"> 
                <% 
                	if(opcBasura != 0){
                		for(Resultado res : dtr.listarResultados("010"+opcBasura, "10")){ %>
                			<div class="form-group">
								<% if(res.getUrlImg().isEmpty()){%>
									<%=res.getDescripcion() %>
								<% }else{%>
								<div class="col-md-7"><%=res.getDescripcion() %></div>
								<div class="col-md-5">
									<img alt="Error al cargar la imagen" src="<%=res.getUrlImg()%>">
								</div>
								<% }%>
							</div>	
                		<%}
                	}
                %>
                <% 
                	if(actVehicular != 0){
                		for(Resultado res : dtr.listarResultados("050"+actVehicular, "10")){ %>
                			<div class="form-group">
								<% if(res.getUrlImg().isEmpty()){%>
									<%=res.getDescripcion() %>
								<% }else{%>
								<div class="col-md-7"><%=res.getDescripcion() %></div>
								<div class="col-md-5">
									<img alt="Error al cargar la imagen" src="<%=res.getUrlImg()%>">
								</div>
								<% }%>
							</div>	
                		<%}
                	}
                %>
                </div>
              </div>
            </li>
			<% }%>
			<!-- 		  PARAMTROS 10,7,9 -->
            <% if(tecnologia != 0 || serviciosBas != 0 || energia != 0){ %>
            <li>            
	          <i class="fa fa fa-tint bg-blue"></i>
	          <div class="timeline-item">
	            <span class="time"><i class="fa fa-clock-o"></i></span>
	
	            <h3 class="timeline-header"><a href="#">Energía, tecnología y sevicios básicos</a>&nbsp;Comsumo energetico. Afectaciones</h3>
	            <div class="timeline-body">
	              <% 
	              		if(tecnologia != 0){
	                		for(Resultado res : dtr.listarResultados("100"+tecnologia, "10")){ %>
	                			<div class="form-group">
								<% if(res.getUrlImg().isEmpty()){%>
									<%=res.getDescripcion() %>
								<% }else{%>
								<div class="col-md-7"><%=res.getDescripcion() %></div>
								<div class="col-md-5">
									<img alt="Error al cargar la imagen" src="<%=res.getUrlImg()%>">
								</div>
								<% }%>
							</div>	
	                		<%}
	                	}
	                %>
	                <% 
	                	if(serviciosBas != 0){
	                		for(Resultado res : dtr.listarResultados("070"+serviciosBas, "10")){ %>
	                			<div class="form-group">
									<% if(res.getUrlImg().isEmpty()){%>
										<%=res.getDescripcion() %>
									<% }else{%>
									<div class="col-md-7"><%=res.getDescripcion() %></div>
									<div class="col-md-5">
										<img alt="Error al cargar la imagen" src="<%=res.getUrlImg()%>">
									</div>
									<% }%>
								</div>	
	                		<%}
	                	}
	                %>
	                                <% 
	                	if(energia != 0){
	                		for(Resultado res : dtr.listarResultados("090"+energia, "10")){ %>
	                		<div class="form-group">
								<% if(res.getUrlImg().isEmpty()){%>
									<%=res.getDescripcion() %>
								<% }else{%>
								<div class="col-md-7"><%=res.getDescripcion() %></div>
								<div class="col-md-5">
									<img alt="Error al cargar la imagen" src="<%=res.getUrlImg()%>">
								</div>
								<% }%>
							</div>	
	                		<%}
	                	}
	                %>
	            </div>
	          </div>
	        </li>
            <%}%>
        <li class="time-label">
          <span class="bg-red">
            20 años después
          </span>
        </li>
        	<!--    PARAMETROS 2,8,11,12-->
            <% if(despale != 0 || areaEcon != 0 || contHidri != 0 || aguasNegras != 0){%>
            <li>
              <i class="fa  fa-tree bg-green"></i>

              <div class="timeline-item">
                <span class="time"><i class="fa fa-clock-o"></i></span>

                <h3 class="timeline-header"><a href="#">Actividades económica, fuentes hidrograficas</a>&nbsp;Estado del ecosistema</h3>
                <div class="timeline-body">
                <% 
                	if(despale != 0){
                		for(Resultado res : dtr.listarResultados("020"+despale, "20")){ %>
                		<div class="form-group">
								<% if(res.getUrlImg().isEmpty()){%>
									<%=res.getDescripcion() %>
								<% }else{%>
								<div class="col-md-7"><%=res.getDescripcion() %></div>
								<div class="col-md-5">
									<img alt="Error al cargar la imagen" src="<%=res.getUrlImg()%>">
								</div>
								<% }%>
							</div>
                		<%}
                	}
                %>
                <% 
                	if(areaEcon != 0){
                		for(Resultado res : dtr.listarResultados("080"+areaEcon, "20")){ %>
                			<div class="form-group">
								<% if(res.getUrlImg().isEmpty()){%>
									<%=res.getDescripcion() %>
								<% }else{%>
								<div class="col-md-7"><%=res.getDescripcion() %></div>
								<div class="col-md-5">
									<img alt="Error al cargar la imagen" src="<%=res.getUrlImg()%>">
								</div>
								<% }%>
							</div>
                		<%}
                	}
                %>
                <% 
                	if(contHidri != 0){
                		for(Resultado res : dtr.listarResultados("110"+contHidri, "20")){ %>
                			<div class="form-group">
								<% if(res.getUrlImg().isEmpty()){%>
									<%=res.getDescripcion() %>
								<% }else{%>
								<div class="col-md-7"><%=res.getDescripcion() %></div>
								<div class="col-md-5">
									<img alt="Error al cargar la imagen" src="<%=res.getUrlImg()%>">
								</div>
								<% }%>
							</div>
                		<%}
                	}
                %>
                <% 
                	if(aguasNegras != 0){
                		for(Resultado res : dtr.listarResultados("120"+aguasNegras, "20")){ %>
                			<div class="form-group">
								<% if(res.getUrlImg().isEmpty()){%>
									<%=res.getDescripcion() %>
								<% }else{%>
								<div class="col-md-7"><%=res.getDescripcion() %></div>
								<div class="col-md-5">
									<img alt="Error al cargar la imagen" src="<%=res.getUrlImg()%>">
								</div>
								<% }%>
							</div>
                		<%}
                	}
                %>
                </div>
              </div>
            </li>
            <% } %>
	<!--             PARAMTROS 4,3          -->
            <% if(contIndus != 0 || areasVerde != 0){%>
            <li>
              <i class="fa fa-cloud bg-red"></i>

              <div class="timeline-item">
                <span class="time"><i class="fa fa-clock-o"></i></span>

                <h3 class="timeline-header"><a href="#">Industrias contaminantes, flora y fauna</a>&nbsp;El trabajo del hombre, trae consecuencias para el medio ambiente</h3>
                <div class="timeline-body">
                <% 
                	if(contIndus != 0){
                		for(Resultado res : dtr.listarResultados("040"+contIndus, "20")){ %>
                			<div class="form-group">
								<% if(res.getUrlImg().isEmpty()){%>
									<%=res.getDescripcion() %>
								<% }else{%>
								<div class="col-md-7"><%=res.getDescripcion() %></div>
								<div class="col-md-5">
									<img alt="Error al cargar la imagen" src="<%=res.getUrlImg()%>">
								</div>
								<% }%>
							</div>
                		<%}
                	}
                %>
                <% 
                	if(areasVerde != 0){
                		for(Resultado res : dtr.listarResultados("030"+areasVerde, "20")){ %>
                			<div class="form-group">
								<% if(res.getUrlImg().isEmpty()){%>
									<%=res.getDescripcion() %>
								<% }else{%>
								<div class="col-md-7"><%=res.getDescripcion() %></div>
								<div class="col-md-5">
									<img alt="Error al cargar la imagen" src="<%=res.getUrlImg()%>">
								</div>
								<% }%>
							</div>
                		<%}
                	}
                %>
                </div>
              </div>

            </li>
            <% }%>
	<!--    PARAMTROS 1,5 -->
			<% if(opcBasura != 0 || actVehicular != 0){ %>
            <li>
              <i class="fa fa-comments bg-yellow"></i>

              <div class="timeline-item">
                <span class="time"><i class="fa fa-clock-o"></i></span>

                <h3 class="timeline-header"><a href="#">Contaminantes</a></h3>
                <div class="timeline-body"> 
                <% 
                	if(opcBasura != 0){
                		for(Resultado res : dtr.listarResultados("010"+opcBasura, "20")){ %>
                			<div class="form-group">
								<% if(res.getUrlImg().isEmpty()){%>
									<%=res.getDescripcion() %>
								<% }else{%>
								<div class="col-md-7"><%=res.getDescripcion() %></div>
								<div class="col-md-5">
									<img alt="Error al cargar la imagen" src="<%=res.getUrlImg()%>">
								</div>
								<% }%>
							</div>
                		<%}
                	}
                %>
                <% 
                	if(actVehicular != 0){
                		for(Resultado res : dtr.listarResultados("050"+actVehicular, "20")){ %>
                			<div class="form-group">
								<% if(res.getUrlImg().isEmpty()){%>
									<%=res.getDescripcion() %>
								<% }else{%>
								<div class="col-md-7"><%=res.getDescripcion() %></div>
								<div class="col-md-5">
									<img alt="Error al cargar la imagen" src="<%=res.getUrlImg()%>">
								</div>
								<% }%>
							</div>
                		<%}
                	}
                %>
                </div>
              </div>
            </li>
			<% }%>
			<!-- 		  PARAMTROS 10,7,9 -->
            <% if(tecnologia != 0 || serviciosBas != 0 || energia != 0){ %>
            <li>            
	          <i class="fa fa fa-tint bg-blue"></i>
	          <div class="timeline-item">
	            <span class="time"><i class="fa fa-clock-o"></i></span>
	
	            <h3 class="timeline-header"><a href="#">Energía, tecnología y sevicios básicos</a>&nbsp;Comsumo energetico. Afectaciones</h3>
	            <div class="timeline-body">
	              <% 
	              		if(tecnologia != 0){
	                		for(Resultado res : dtr.listarResultados("100"+tecnologia, "20")){ %>
	                			<div class="form-group">
								<% if(res.getUrlImg().isEmpty()){%>
									<%=res.getDescripcion() %>
								<% }else{%>
								<div class="col-md-7"><%=res.getDescripcion() %></div>
								<div class="col-md-5">
									<img alt="Error al cargar la imagen" src="<%=res.getUrlImg()%>">
								</div>
								<% }%>
							</div>
	                		<%}
	                	}
	                %>
	                <% 
	                	if(serviciosBas != 0){
	                		for(Resultado res : dtr.listarResultados("070"+serviciosBas, "20")){ %>
	                			<div class="form-group">
								<% if(res.getUrlImg().isEmpty()){%>
									<%=res.getDescripcion() %>
								<% }else{%>
								<div class="col-md-7"><%=res.getDescripcion() %></div>
								<div class="col-md-5">
									<img alt="Error al cargar la imagen" src="<%=res.getUrlImg()%>">
								</div>
								<% }%>
							</div>
	                		<%}
	                	}
	                %>
	                                <% 
	                	if(energia != 0){
	                		for(Resultado res : dtr.listarResultados("090"+energia, "20")){ %>
	                		 <div class="form-group">
								<% if(res.getUrlImg().isEmpty()){%>
									<%=res.getDescripcion() %>
								<% }else{%>
								<div class="col-md-7"><%=res.getDescripcion() %></div>
								<div class="col-md-5">
									<img alt="Error al cargar la imagen" src="<%=res.getUrlImg()%>">
								</div>
								<% }%>
							</div>
	                		<%}
	                	}
	                %>
	            </div>
	          </div>
	        </li>
            <%}%>
        <li class="time-label">
          <span class="bg-red">
            30 años después
          </span>
        </li>
        	<!--    PARAMETROS 2,8,11,12-->
            <% if(despale != 0 || areaEcon != 0 || contHidri != 0 || aguasNegras != 0){%>
            <li>
              <i class="fa  fa-tree bg-green"></i>

              <div class="timeline-item">
                <span class="time"><i class="fa fa-clock-o"></i></span>

                <h3 class="timeline-header"><a href="#">Actividades económica, fuentes hidrograficas</a>&nbsp;Estado del ecosistema</h3>
                <div class="timeline-body">
                <% 
                	if(despale != 0){
                		for(Resultado res : dtr.listarResultados("020"+despale, "30")){ %>
                			<div class="form-group">
								<% if(res.getUrlImg().isEmpty()){%>
									<%=res.getDescripcion() %>
								<% }else{%>
								<div class="col-md-7"><%=res.getDescripcion() %></div>
								<div class="col-md-5">
									<img alt="Error al cargar la imagen" src="<%=res.getUrlImg()%>">
								</div>
								<% }%>
							</div>
                		<%}
                	}
                %>
                <% 
                	if(areaEcon != 0){
                		for(Resultado res : dtr.listarResultados("080"+areaEcon, "30")){ %>
                			<div class="form-group">
								<% if(res.getUrlImg().isEmpty()){%>
									<%=res.getDescripcion() %>
								<% }else{%>
								<div class="col-md-7"><%=res.getDescripcion() %></div>
								<div class="col-md-5">
									<img alt="Error al cargar la imagen" src="<%=res.getUrlImg()%>">
								</div>
								<% }%>
							</div>
                		<%}
                	}
                %>
                <% 
                	if(contHidri != 0){
                		for(Resultado res : dtr.listarResultados("110"+contHidri, "30")){ %>
                			<div class="form-group">
								<% if(res.getUrlImg().isEmpty()){%>
									<%=res.getDescripcion() %>
								<% }else{%>
								<div class="col-md-7"><%=res.getDescripcion() %></div>
								<div class="col-md-5">
									<img alt="Error al cargar la imagen" src="<%=res.getUrlImg()%>">
								</div>
								<% }%>
							</div>
                		<%}
                	}
                %>
                <% 
                	if(aguasNegras != 0){
                		for(Resultado res : dtr.listarResultados("120"+aguasNegras, "30")){ %>
                			<div class="form-group">
								<% if(res.getUrlImg().isEmpty()){%>
									<%=res.getDescripcion() %>
								<% }else{%>
								<div class="col-md-7"><%=res.getDescripcion() %></div>
								<div class="col-md-5">
									<img alt="Error al cargar la imagen" src="<%=res.getUrlImg()%>">
								</div>
								<% }%>
							</div>
                		<%}
                	}
                %>
                </div>
              </div>
            </li>
            <% } %>
	<!--             PARAMTROS 4,3          -->
            <% if(contIndus != 0 || areasVerde != 0){%>
            <li>
              <i class="fa fa-cloud bg-red"></i>

              <div class="timeline-item">
                <span class="time"><i class="fa fa-clock-o"></i></span>

                <h3 class="timeline-header"><a href="#">Industrias contaminantes, flora y fauna</a>&nbsp;El trabajo del hombre, trae consecuencias para el medio ambiente</h3>
                <div class="timeline-body">
                <% 
                	if(contIndus != 0){
                		for(Resultado res : dtr.listarResultados("040"+contIndus, "30")){ %>
                			<div class="form-group">
								<% if(res.getUrlImg().isEmpty()){%>
									<%=res.getDescripcion() %>
								<% }else{%>
								<div class="col-md-7"><%=res.getDescripcion() %></div>
								<div class="col-md-5">
									<img alt="Error al cargar la imagen" src="<%=res.getUrlImg()%>">
								</div>
								<% }%>
							</div>
                		<%}
                	}
                %>
                <% 
                	if(areasVerde != 0){
                		for(Resultado res : dtr.listarResultados("030"+areasVerde, "30")){ %>
                			<div class="form-group">
								<% if(res.getUrlImg().isEmpty()){%>
									<%=res.getDescripcion() %>
								<% }else{%>
								<div class="col-md-7"><%=res.getDescripcion() %></div>
								<div class="col-md-5">
									<img alt="Error al cargar la imagen" src="<%=res.getUrlImg()%>">
								</div>
								<% }%>
							</div>
                		<%}
                	}
                %>
                </div>
              </div>

            </li>
            <% }%>
	<!--    PARAMTROS 1,5 -->
			<% if(opcBasura != 0 || actVehicular != 0){ %>
            <li>
              <i class="fa fa-comments bg-yellow"></i>

              <div class="timeline-item">
                <span class="time"><i class="fa fa-clock-o"></i></span>

                <h3 class="timeline-header"><a href="#">Contaminantes</a></h3>
                <div class="timeline-body"> 
                <% 
                	if(opcBasura != 0){
                		for(Resultado res : dtr.listarResultados("010"+opcBasura, "30")){ %>
                			<div class="form-group">
								<% if(res.getUrlImg().isEmpty()){%>
									<%=res.getDescripcion() %>
								<% }else{%>
								<div class="col-md-7"><%=res.getDescripcion() %></div>
								<div class="col-md-5">
									<img alt="Error al cargar la imagen" src="<%=res.getUrlImg()%>">
								</div>
								<% }%>
							</div>
                		<%}
                	}
                %>
                <% 
                	if(actVehicular != 0){
                		for(Resultado res : dtr.listarResultados("050"+actVehicular, "30")){ %>
                			<div class="form-group">
								<% if(res.getUrlImg().isEmpty()){%>
									<%=res.getDescripcion() %>
								<% }else{%>
								<div class="col-md-7"><%=res.getDescripcion() %></div>
								<div class="col-md-5">
									<img alt="Error al cargar la imagen" src="<%=res.getUrlImg()%>">
								</div>
								<% }%>
							</div>
                		<%}
                	}
                %>
                </div>
              </div>
            </li>
			<% }%>
			<!-- 		  PARAMTROS 10,7,9 -->
            <% if(tecnologia != 0 || serviciosBas != 0 || energia != 0){ %>
            <li>            
	          <i class="fa fa fa-tint bg-blue"></i>
	          <div class="timeline-item">
	            <span class="time"><i class="fa fa-clock-o"></i></span>
	
	            <h3 class="timeline-header"><a href="#">Energía, tecnología y sevicios básicos</a>&nbsp;Comsumo energetico. Afectaciones</h3>
	            <div class="timeline-body">
	              <% 
	              		if(tecnologia != 0){
	                		for(Resultado res : dtr.listarResultados("100"+tecnologia, "30")){ %>
	                		  <div class="form-group">
								<% if(res.getUrlImg().isEmpty()){%>
									<%=res.getDescripcion() %>
								<% }else{%>
								<div class="col-md-7"><%=res.getDescripcion() %></div>
								<div class="col-md-5">
									<img alt="Error al cargar la imagen" src="<%=res.getUrlImg()%>">
								</div>
								<% }%>
							</div>
	                		<%}
	                	}
	                %>
	                <% 
	                	if(serviciosBas != 0){
	                		for(Resultado res : dtr.listarResultados("070"+serviciosBas, "30")){ %>
	                			<div class="form-group">
								<% if(res.getUrlImg().isEmpty()){%>
									<%=res.getDescripcion() %>
								<% }else{%>
								<div class="col-md-7"><%=res.getDescripcion() %></div>
								<div class="col-md-5">
									<img alt="Error al cargar la imagen" src="<%=res.getUrlImg()%>">
								</div>
								<% }%>
							</div>
	                		<%}
	                	}
	                %>
	                                <% 
	                	if(energia != 0){
	                		for(Resultado res : dtr.listarResultados("090"+energia, "30")){ %>
	                			<div class="form-group">
								<% if(res.getUrlImg().isEmpty()){%>
									<%=res.getDescripcion() %>
								<% }else{%>
								<div class="col-md-7"><%=res.getDescripcion() %></div>
								<div class="col-md-5">
									<img alt="Error al cargar la imagen" src="<%=res.getUrlImg()%>">
								</div>
								<% }%>
							</div>
	                		<%}
	                	}
	                %>
	            </div>
	          </div>
	        </li>
            <%}%>
        <li>
          <i class="fa fa-clock-o bg-gray"></i>
        </li>
          </ul>
        </div>
      </div>
	<!-- Segunda Escenario -->
	<h3>Linea del tiempo</h3>
      <div class="row">
        <div class="col-md-12">
          <ul class="timeline">
            
            <li class="time-label">
                  <span class="bg-red">
                    10 años después
                  </span>
            </li>
	<!--    PARAMETROS 2,8,11,12-->
            <% if(despale != 0 || areaEcon != 0 || contHidri != 0 || aguasNegras != 0){%>
            <li>
              <i class="fa  fa-tree bg-green"></i>

              <div class="timeline-item">
                <span class="time"><i class="fa fa-clock-o"></i></span>

                <h3 class="timeline-header"><a href="#">Actividades económica, fuentes hidrograficas</a>&nbsp;Estado del ecosistema</h3>
                <div class="timeline-body">
                <% 
                	if(despale != 0){
                		for(Resultado res : dtr.listarResultados("021"+despale, "10")){ %>
                			<div class="form-group">
								<% if(res.getUrlImg().isEmpty()){%>
									<%=res.getDescripcion() %>
								<% }else{%>
								<div class="col-md-7"><%=res.getDescripcion() %></div>
								<div class="col-md-5">
									<img alt="Error al cargar la imagen" src="<%=res.getUrlImg()%>">
								</div>
								<% }%>
							</div>
                		<%}
                	}
                %>
                <% 
                	if(areaEcon != 0){
                		for(Resultado res : dtr.listarResultados("081"+areaEcon, "10")){ %>
                			<div class="form-group">
								<% if(res.getUrlImg().isEmpty()){%>
									<%=res.getDescripcion() %>
								<% }else{%>
								<div class="col-md-7"><%=res.getDescripcion() %></div>
								<div class="col-md-5">
									<img alt="Error al cargar la imagen" src="<%=res.getUrlImg()%>">
								</div>
								<% }%>
							</div>
                		<%}
                	}
                %>
                <% 
                	if(contHidri != 0){
                		for(Resultado res : dtr.listarResultados("111"+contHidri, "10")){ %>
                			<div class="form-group">
								<% if(res.getUrlImg().isEmpty()){%>
									<%=res.getDescripcion() %>
								<% }else{%>
								<div class="col-md-7"><%=res.getDescripcion() %></div>
								<div class="col-md-5">
									<img alt="Error al cargar la imagen" src="<%=res.getUrlImg()%>">
								</div>
								<% }%>
							</div>
                		<%}
                	}
                %>
                <% 
                	if(aguasNegras != 0){
                		for(Resultado res : dtr.listarResultados("121"+aguasNegras, "10")){ %>
                			<div class="form-group">
								<% if(res.getUrlImg().isEmpty()){%>
									<%=res.getDescripcion() %>
								<% }else{%>
								<div class="col-md-7"><%=res.getDescripcion() %></div>
								<div class="col-md-5">
									<img alt="Error al cargar la imagen" src="<%=res.getUrlImg()%>">
								</div>
								<% }%>
							</div>
                		<%}
                	}
                %>
                </div>
              </div>
            </li>
            <% } %>
	<!--             PARAMTROS 4,3          -->
            <% if(contIndus != 0 || areasVerde != 0){%>
            <li>
              <i class="fa fa-cloud bg-red"></i>

              <div class="timeline-item">
                <span class="time"><i class="fa fa-clock-o"></i></span>

                <h3 class="timeline-header"><a href="#">Industrias contaminantes, flora y fauna</a>&nbsp;El trabajo del hombre, trae consecuencias para el medio ambiente</h3>
                <div class="timeline-body">
                <% 
                	if(contIndus != 0){
                		for(Resultado res : dtr.listarResultados("041"+contIndus, "10")){ %>
                			<div class="form-group">
								<% if(res.getUrlImg().isEmpty()){%>
									<%=res.getDescripcion() %>
								<% }else{%>
								<div class="col-md-7"><%=res.getDescripcion() %></div>
								<div class="col-md-5">
									<img alt="Error al cargar la imagen" src="<%=res.getUrlImg()%>">
								</div>
								<% }%>
							</div>
                		<%}
                	}
                %>
                <% 
                	if(areasVerde != 0){
                		for(Resultado res : dtr.listarResultados("031"+areasVerde, "10")){ %>
                			<div class="form-group">
								<% if(res.getUrlImg().isEmpty()){%>
									<%=res.getDescripcion() %>
								<% }else{%>
								<div class="col-md-7"><%=res.getDescripcion() %></div>
								<div class="col-md-5">
									<img alt="Error al cargar la imagen" src="<%=res.getUrlImg()%>">
								</div>
								<% }%>
							</div>
                		<%}
                	}
                %>
                </div>
              </div>

            </li>
            <% }%>
	<!--    PARAMTROS 1,5 -->
			<% if(opcBasura != 0 || actVehicular != 0){ %>
            <li>
              <i class="fa fa-comments bg-yellow"></i>

              <div class="timeline-item">
                <span class="time"><i class="fa fa-clock-o"></i></span>

                <h3 class="timeline-header"><a href="#">Contaminantes</a></h3>
                <div class="timeline-body"> 
                <% 
                	if(opcBasura != 0){
                		for(Resultado res : dtr.listarResultados("011"+opcBasura, "10")){ %>
                			<div class="form-group">
								<% if(res.getUrlImg().isEmpty()){%>
									<%=res.getDescripcion() %>
								<% }else{%>
								<div class="col-md-7"><%=res.getDescripcion() %></div>
								<div class="col-md-5">
									<img alt="Error al cargar la imagen" src="<%=res.getUrlImg()%>">
								</div>
								<% }%>
							</div>
                		<%}
                	}
                %>
                <% 
                	if(actVehicular != 0){
                		for(Resultado res : dtr.listarResultados("051"+actVehicular, "10")){ %>
                			<div class="form-group">
								<% if(res.getUrlImg().isEmpty()){%>
									<%=res.getDescripcion() %>
								<% }else{%>
								<div class="col-md-7"><%=res.getDescripcion() %></div>
								<div class="col-md-5">
									<img alt="Error al cargar la imagen" src="<%=res.getUrlImg()%>">
								</div>
								<% }%>
							</div>
                		<%}
                	}
                %>
                </div>
              </div>
            </li>
			<% }%>
			<!-- 		  PARAMTROS 10,7,9 -->
            <% if(tecnologia != 0 || serviciosBas != 0 || energia != 0){ %>
            <li>            
	          <i class="fa fa fa-tint bg-blue"></i>
	          <div class="timeline-item">
	            <span class="time"><i class="fa fa-clock-o"></i></span>
	
	            <h3 class="timeline-header"><a href="#">Energía, tecnología y sevicios básicos</a>&nbsp;Comsumo energetico. Afectaciones</h3>
	            <div class="timeline-body">
	              <% 
	              		if(tecnologia != 0){
	                		for(Resultado res : dtr.listarResultados("101"+tecnologia, "10")){ %>
	                			<div class="form-group">
								<% if(res.getUrlImg().isEmpty()){%>
									<%=res.getDescripcion() %>
								<% }else{%>
								<div class="col-md-7"><%=res.getDescripcion() %></div>
								<div class="col-md-5">
									<img alt="Error al cargar la imagen" src="<%=res.getUrlImg()%>">
								</div>
								<% }%>
							</div>
	                		<%}
	                	}
	                %>
	                <% 
	                	if(serviciosBas != 0){
	                		for(Resultado res : dtr.listarResultados("071"+serviciosBas, "10")){ %>
	                			<div class="form-group">
								<% if(res.getUrlImg().isEmpty()){%>
									<%=res.getDescripcion() %>
								<% }else{%>
								<div class="col-md-7"><%=res.getDescripcion() %></div>
								<div class="col-md-5">
									<img alt="Error al cargar la imagen" src="<%=res.getUrlImg()%>">
								</div>
								<% }%>
							</div>
	                		<%}
	                	}
	                %>
	                                <% 
	                	if(energia != 0){
	                		for(Resultado res : dtr.listarResultados("091"+energia, "10")){ %>
	                			<div class="form-group">
								<% if(res.getUrlImg().isEmpty()){%>
									<%=res.getDescripcion() %>
								<% }else{%>
								<div class="col-md-7"><%=res.getDescripcion() %></div>
								<div class="col-md-5">
									<img alt="Error al cargar la imagen" src="<%=res.getUrlImg()%>">
								</div>
								<% }%>
							</div>
	                		<%}
	                	}
	                %>
	            </div>
	          </div>
	        </li>
            <%}%>
        <li class="time-label">
          <span class="bg-red">
            20 años después
          </span>
        </li>
        	<!--    PARAMETROS 2,8,11,12-->
            <% if(despale != 0 || areaEcon != 0 || contHidri != 0 || aguasNegras != 0){%>
            <li>
              <i class="fa  fa-tree bg-green"></i>

              <div class="timeline-item">
                <span class="time"><i class="fa fa-clock-o"></i></span>

                <h3 class="timeline-header"><a href="#">Actividades económica, fuentes hidrograficas</a>&nbsp;Estado del ecosistema</h3>
                <div class="timeline-body">
                <% 
                	if(despale != 0){
                		for(Resultado res : dtr.listarResultados("021"+despale, "20")){ %>
                			<div class="form-group">
								<% if(res.getUrlImg().isEmpty()){%>
									<%=res.getDescripcion() %>
								<% }else{%>
								<div class="col-md-7"><%=res.getDescripcion() %></div>
								<div class="col-md-5">
									<img alt="Error al cargar la imagen" src="<%=res.getUrlImg()%>">
								</div>
								<% }%>
							</div>
                		<%}
                	}
                %>
                <% 
                	if(areaEcon != 0){
                		for(Resultado res : dtr.listarResultados("081"+areaEcon, "20")){ %>
                			<div class="form-group">
								<% if(res.getUrlImg().isEmpty()){%>
									<%=res.getDescripcion() %>
								<% }else{%>
								<div class="col-md-7"><%=res.getDescripcion() %></div>
								<div class="col-md-5">
									<img alt="Error al cargar la imagen" src="<%=res.getUrlImg()%>">
								</div>
								<% }%>
							</div>
                		<%}
                	}
                %>
                <% 
                	if(contHidri != 0){
                		for(Resultado res : dtr.listarResultados("111"+contHidri, "20")){ %>
                			<div class="form-group">
								<% if(res.getUrlImg().isEmpty()){%>
									<%=res.getDescripcion() %>
								<% }else{%>
								<div class="col-md-7"><%=res.getDescripcion() %></div>
								<div class="col-md-5">
									<img alt="Error al cargar la imagen" src="<%=res.getUrlImg()%>">
								</div>
								<% }%>
							</div>
                		<%}
                	}
                %>
                <% 
                	if(aguasNegras != 0){
                		for(Resultado res : dtr.listarResultados("121"+aguasNegras, "20")){ %>
                			<div class="form-group">
								<% if(res.getUrlImg().isEmpty()){%>
									<%=res.getDescripcion() %>
								<% }else{%>
								<div class="col-md-7"><%=res.getDescripcion() %></div>
								<div class="col-md-5">
									<img alt="Error al cargar la imagen" src="<%=res.getUrlImg()%>">
								</div>
								<% }%>
							</div>
                		<%}
                	}
                %>
                </div>
              </div>
            </li>
            <% } %>
	<!--             PARAMTROS 4,3          -->
            <% if(contIndus != 0 || areasVerde != 0){%>
            <li>
              <i class="fa fa-cloud bg-red"></i>

              <div class="timeline-item">
                <span class="time"><i class="fa fa-clock-o"></i></span>

                <h3 class="timeline-header"><a href="#">Industrias contaminantes, flora y fauna</a>&nbsp;El trabajo del hombre, trae consecuencias para el medio ambiente</h3>
                <div class="timeline-body">
                <% 
                	if(contIndus != 0){
                		for(Resultado res : dtr.listarResultados("041"+contIndus, "20")){ %>
                			<div class="form-group">
								<% if(res.getUrlImg().isEmpty()){%>
									<%=res.getDescripcion() %>
								<% }else{%>
								<div class="col-md-7"><%=res.getDescripcion() %></div>
								<div class="col-md-5">
									<img alt="Error al cargar la imagen" src="<%=res.getUrlImg()%>">
								</div>
								<% }%>
							</div>
                		<%}
                	}
                %>
                <% 
                	if(areasVerde != 0){
                		for(Resultado res : dtr.listarResultados("031"+areasVerde, "20")){ %>
                			<div class="form-group">
								<% if(res.getUrlImg().isEmpty()){%>
									<%=res.getDescripcion() %>
								<% }else{%>
								<div class="col-md-7"><%=res.getDescripcion() %></div>
								<div class="col-md-5">
									<img alt="Error al cargar la imagen" src="<%=res.getUrlImg()%>">
								</div>
								<% }%>
							</div>
                		<%}
                	}
                %>
                </div>
              </div>

            </li>
            <% }%>
	<!--    PARAMTROS 1,5 -->
			<% if(opcBasura != 0 || actVehicular != 0){ %>
            <li>
              <i class="fa fa-comments bg-yellow"></i>

              <div class="timeline-item">
                <span class="time"><i class="fa fa-clock-o"></i></span>

                <h3 class="timeline-header"><a href="#">Contaminantes</a></h3>
                <div class="timeline-body"> 
                <% 
                	if(opcBasura != 0){
                		for(Resultado res : dtr.listarResultados("011"+opcBasura, "20")){ %>
                			<div class="form-group">
								<% if(res.getUrlImg().isEmpty()){%>
									<%=res.getDescripcion() %>
								<% }else{%>
								<div class="col-md-7"><%=res.getDescripcion() %></div>
								<div class="col-md-5">
									<img alt="Error al cargar la imagen" src="<%=res.getUrlImg()%>">
								</div>
								<% }%>
							</div>
                		<%}
                	}
                %>
                <% 
                	if(actVehicular != 0){
                		for(Resultado res : dtr.listarResultados("051"+actVehicular, "20")){ %>
                			<div class="form-group">
								<% if(res.getUrlImg().isEmpty()){%>
									<%=res.getDescripcion() %>
								<% }else{%>
								<div class="col-md-7"><%=res.getDescripcion() %></div>
								<div class="col-md-5">
									<img alt="Error al cargar la imagen" src="<%=res.getUrlImg()%>">
								</div>
								<% }%>
							</div>
                		<%}
                	}
                %>
                </div>
              </div>
            </li>
			<% }%>
			<!-- 		  PARAMTROS 10,7,9 -->
            <% if(tecnologia != 0 || serviciosBas != 0 || energia != 0){ %>
            <li>            
	          <i class="fa fa fa-tint bg-blue"></i>
	          <div class="timeline-item">
	            <span class="time"><i class="fa fa-clock-o"></i></span>
	
	            <h3 class="timeline-header"><a href="#">Energía, tecnología y sevicios básicos</a>&nbsp;Comsumo energetico. Afectaciones</h3>
	            <div class="timeline-body">
	              <% 
	              		if(tecnologia != 0){
	                		for(Resultado res : dtr.listarResultados("101"+tecnologia, "20")){ %>
	                			<div class="form-group">
								<% if(res.getUrlImg().isEmpty()){%>
									<%=res.getDescripcion() %>
								<% }else{%>
								<div class="col-md-7"><%=res.getDescripcion() %></div>
								<div class="col-md-5">
									<img alt="Error al cargar la imagen" src="<%=res.getUrlImg()%>">
								</div>
								<% }%>
							</div>
	                		<%}
	                	}
	                %>
	                <% 
	                	if(serviciosBas != 0){
	                		for(Resultado res : dtr.listarResultados("071"+serviciosBas, "20")){ %>
	                			<div class="form-group">
								<% if(res.getUrlImg().isEmpty()){%>
									<%=res.getDescripcion() %>
								<% }else{%>
								<div class="col-md-7"><%=res.getDescripcion() %></div>
								<div class="col-md-5">
									<img alt="Error al cargar la imagen" src="<%=res.getUrlImg()%>">
								</div>
								<% }%>
							</div>
	                		<%}
	                	}
	                %>
	                                <% 
	                	if(energia != 0){
	                		for(Resultado res : dtr.listarResultados("091"+energia, "20")){ %>
	                			<div class="form-group">
								<% if(res.getUrlImg().isEmpty()){%>
									<%=res.getDescripcion() %>
								<% }else{%>
								<div class="col-md-7"><%=res.getDescripcion() %></div>
								<div class="col-md-5">
									<img alt="Error al cargar la imagen" src="<%=res.getUrlImg()%>">
								</div>
								<% }%>
							</div>
	                		<%}
	                	}
	                %>
	            </div>
	          </div>
	        </li>
            <%}%>
        <li class="time-label">
          <span class="bg-red">
            30 años después
          </span>
        </li>
        	<!--    PARAMETROS 2,8,11,12-->
            <% if(despale != 0 || areaEcon != 0 || contHidri != 0 || aguasNegras != 0){%>
            <li>
              <i class="fa  fa-tree bg-green"></i>

              <div class="timeline-item">
                <span class="time"><i class="fa fa-clock-o"></i></span>

                <h3 class="timeline-header"><a href="#">Actividades económica, fuentes hidrograficas</a>&nbsp;Estado del ecosistema</h3>
                <div class="timeline-body">
                <% 
                	if(despale != 0){
                		for(Resultado res : dtr.listarResultados("021"+despale, "30")){ %>
                			<div class="form-group">
								<% if(res.getUrlImg().isEmpty()){%>
									<%=res.getDescripcion() %>
								<% }else{%>
								<div class="col-md-7"><%=res.getDescripcion() %></div>
								<div class="col-md-5">
									<img alt="Error al cargar la imagen" src="<%=res.getUrlImg()%>">
								</div>
								<% }%>
							</div>
                		<%}
                	}
                %>
                <% 
                	if(areaEcon != 0){
                		for(Resultado res : dtr.listarResultados("081"+areaEcon, "30")){ %>
                			<div class="form-group">
								<% if(res.getUrlImg().isEmpty()){%>
									<%=res.getDescripcion() %>
								<% }else{%>
								<div class="col-md-7"><%=res.getDescripcion() %></div>
								<div class="col-md-5">
									<img alt="Error al cargar la imagen" src="<%=res.getUrlImg()%>">
								</div>
								<% }%>
							</div>
                		<%}
                	}
                %>
                <% 
                	if(contHidri != 0){
                		for(Resultado res : dtr.listarResultados("111"+contHidri, "30")){ %>
                			<div class="form-group">
								<% if(res.getUrlImg().isEmpty()){%>
									<%=res.getDescripcion() %>
								<% }else{%>
								<div class="col-md-7"><%=res.getDescripcion() %></div>
								<div class="col-md-5">
									<img alt="Error al cargar la imagen" src="<%=res.getUrlImg()%>">
								</div>
								<% }%>
							</div>
                		<%}
                	}
                %>
                <% 
                	if(aguasNegras != 0){
                		for(Resultado res : dtr.listarResultados("121"+aguasNegras, "30")){ %>
                			<div class="form-group">
								<% if(res.getUrlImg().isEmpty()){%>
									<%=res.getDescripcion() %>
								<% }else{%>
								<div class="col-md-7"><%=res.getDescripcion() %></div>
								<div class="col-md-5">
									<img alt="Error al cargar la imagen" src="<%=res.getUrlImg()%>">
								</div>
								<% }%>
							</div>
                		<%}
                	}
                %>
                </div>
              </div>
            </li>
            <% } %>
	<!--             PARAMTROS 4,3          -->
            <% if(contIndus != 0 || areasVerde != 0){%>
            <li>
              <i class="fa fa-cloud bg-red"></i>

              <div class="timeline-item">
                <span class="time"><i class="fa fa-clock-o"></i></span>

                <h3 class="timeline-header"><a href="#">Industrias contaminantes, flora y fauna</a>&nbsp;El trabajo del hombre, trae consecuencias para el medio ambiente</h3>
                <div class="timeline-body">
                <% 
                	if(contIndus != 0){
                		for(Resultado res : dtr.listarResultados("041"+contIndus, "30")){ %>
                			<div class="form-group">
								<% if(res.getUrlImg().isEmpty()){%>
									<%=res.getDescripcion() %>
								<% }else{%>
								<div class="col-md-7"><%=res.getDescripcion() %></div>
								<div class="col-md-5">
									<img alt="Error al cargar la imagen" src="<%=res.getUrlImg()%>">
								</div>
								<% }%>
							</div>
                		<%}
                	}
                %>
                <% 
                	if(areasVerde != 0){
                		for(Resultado res : dtr.listarResultados("031"+areasVerde, "30")){ %>
                			<div class="form-group">
								<% if(res.getUrlImg().isEmpty()){%>
									<%=res.getDescripcion() %>
								<% }else{%>
								<div class="col-md-7"><%=res.getDescripcion() %></div>
								<div class="col-md-5">
									<img alt="Error al cargar la imagen" src="<%=res.getUrlImg()%>">
								</div>
								<% }%>
							</div>
                		<%}
                	}
                %>
                </div>
              </div>

            </li>
            <% }%>
	<!--    PARAMTROS 1,5 -->
			<% if(opcBasura != 0 || actVehicular != 0){ %>
            <li>
              <i class="fa fa-comments bg-yellow"></i>

              <div class="timeline-item">
                <span class="time"><i class="fa fa-clock-o"></i></span>

                <h3 class="timeline-header"><a href="#">Contaminantes</a></h3>
                <div class="timeline-body"> 
                <% 
                	if(opcBasura != 0){
                		for(Resultado res : dtr.listarResultados("011"+opcBasura, "30")){ %>
                			<div class="form-group">
								<% if(res.getUrlImg().isEmpty()){%>
									<%=res.getDescripcion() %>
								<% }else{%>
								<div class="col-md-7"><%=res.getDescripcion() %></div>
								<div class="col-md-5">
									<img alt="Error al cargar la imagen" src="<%=res.getUrlImg()%>">
								</div>
								<% }%>
							</div>
                		<%}
                	}
                %>
                <% 
                	if(actVehicular != 0){
                		for(Resultado res : dtr.listarResultados("051"+actVehicular, "30")){ %>
                			<div class="form-group">
								<% if(res.getUrlImg().isEmpty()){%>
									<%=res.getDescripcion() %>
								<% }else{%>
								<div class="col-md-7"><%=res.getDescripcion() %></div>
								<div class="col-md-5">
									<img alt="Error al cargar la imagen" src="<%=res.getUrlImg()%>">
								</div>
								<% }%>
							</div>
                		<%}
                	}
                %>
                </div>
              </div>
            </li>
			<% }%>
			<!-- 		  PARAMTROS 10,7,9 -->
            <% if(tecnologia != 0 || serviciosBas != 0 || energia != 0){ %>
            <li>            
	          <i class="fa fa fa-tint bg-blue"></i>
	          <div class="timeline-item">
	            <span class="time"><i class="fa fa-clock-o"></i></span>
	
	            <h3 class="timeline-header"><a href="#">Energía, tecnología y sevicios básicos</a>&nbsp;Comsumo energetico. Afectaciones</h3>
	            <div class="timeline-body">
	              <% 
	              		if(tecnologia != 0){
	                		for(Resultado res : dtr.listarResultados("101"+tecnologia, "30")){ %>
	                			<div class="form-group">
								<% if(res.getUrlImg().isEmpty()){%>
									<%=res.getDescripcion() %>
								<% }else{%>
								<div class="col-md-7"><%=res.getDescripcion() %></div>
								<div class="col-md-5">
									<img alt="Error al cargar la imagen" src="<%=res.getUrlImg()%>">
								</div>
								<% }%>
							</div>
	                		<%}
	                	}
	                %>
	                <% 
	                	if(serviciosBas != 0){
	                		for(Resultado res : dtr.listarResultados("071"+serviciosBas, "30")){ %>
	                			<div class="form-group">
								<% if(res.getUrlImg().isEmpty()){%>
									<%=res.getDescripcion() %>
								<% }else{%>
								<div class="col-md-7"><%=res.getDescripcion() %></div>
								<div class="col-md-5">
									<img alt="Error al cargar la imagen" src="<%=res.getUrlImg()%>">
								</div>
								<% }%>
							</div>
	                		<%}
	                	}
	                %>
	                                <% 
	                	if(energia != 0){
	                		for(Resultado res : dtr.listarResultados("091"+energia, "30")){ %>
	                			<div class="form-group">
								<% if(res.getUrlImg().isEmpty()){%>
									<%=res.getDescripcion() %>
								<% }else{%>
								<div class="col-md-7"><%=res.getDescripcion() %></div>
								<div class="col-md-5">
									<img alt="Error al cargar la imagen" src="<%=res.getUrlImg()%>">
								</div>
								<% }%>
							</div>
	                		<%}
	                	}
	                %>
	            </div>
	          </div>
	        </li>
            <%}%>
        <li>
          <i class="fa fa-clock-o bg-gray"></i>
        </li>
          </ul>
        </div>
      </div>	
	<!-- Fin Segunda Escenario -->
	<h3>Linea del tiempo</h3>
      <div class="row">
        <div class="col-md-12">
          <ul class="timeline">
            
            <li class="time-label">
                  <span class="bg-red">
                    10 años después
                  </span>
            </li>
	<!--    PARAMETROS 2,8,11,12-->
            <% if(despale != 0 || areaEcon != 0 || contHidri != 0 || aguasNegras != 0){%>
            <li>
              <i class="fa  fa-tree bg-green"></i>

              <div class="timeline-item">
                <span class="time"><i class="fa fa-clock-o"></i></span>

                <h3 class="timeline-header"><a href="#">Actividades económica, fuentes hidrograficas</a>&nbsp;Estado del ecosistema</h3>
                <div class="timeline-body">
                <% 
                	if(despale != 0){
                		for(Resultado res : dtr.listarResultados("022"+despale, "10")){ %>
                			<div class="form-group">
								<% if(res.getUrlImg().isEmpty()){%>
									<%=res.getDescripcion() %>
								<% }else{%>
								<div class="col-md-7"><%=res.getDescripcion() %></div>
								<div class="col-md-5">
									<img alt="Error al cargar la imagen" src="<%=res.getUrlImg()%>">
								</div>
								<% }%>
							</div>
                		<%}
                	}
                %>
                <% 
                	if(areaEcon != 0){
                		for(Resultado res : dtr.listarResultados("082"+areaEcon, "10")){ %>
                			<div class="form-group">
								<% if(res.getUrlImg().isEmpty()){%>
									<%=res.getDescripcion() %>
								<% }else{%>
								<div class="col-md-7"><%=res.getDescripcion() %></div>
								<div class="col-md-5">
									<img alt="Error al cargar la imagen" src="<%=res.getUrlImg()%>">
								</div>
								<% }%>
							</div>
                		<%}
                	}
                %>
                <% 
                	if(contHidri != 0){
                		for(Resultado res : dtr.listarResultados("112"+contHidri, "10")){ %>
                			<div class="form-group">
								<% if(res.getUrlImg().isEmpty()){%>
									<%=res.getDescripcion() %>
								<% }else{%>
								<div class="col-md-7"><%=res.getDescripcion() %></div>
								<div class="col-md-5">
									<img alt="Error al cargar la imagen" src="<%=res.getUrlImg()%>">
								</div>
								<% }%>
							</div>
                		<%}
                	}
                %>
                <% 
                	if(aguasNegras != 0){
                		for(Resultado res : dtr.listarResultados("122"+aguasNegras, "10")){ %>
                			<div class="form-group">
								<% if(res.getUrlImg().isEmpty()){%>
									<%=res.getDescripcion() %>
								<% }else{%>
								<div class="col-md-7"><%=res.getDescripcion() %></div>
								<div class="col-md-5">
									<img alt="Error al cargar la imagen" src="<%=res.getUrlImg()%>">
								</div>
								<% }%>
							</div>
                		<%}
                	}
                %>
                </div>
              </div>
            </li>
            <% } %>
	<!--             PARAMTROS 4,3          -->
            <% if(contIndus != 0 || areasVerde != 0){%>
            <li>
              <i class="fa fa-cloud bg-red"></i>

              <div class="timeline-item">
                <span class="time"><i class="fa fa-clock-o"></i></span>

                <h3 class="timeline-header"><a href="#">Industrias contaminantes, flora y fauna</a>&nbsp;El trabajo del hombre, trae consecuencias para el medio ambiente</h3>
                <div class="timeline-body">
                <% 
                	if(contIndus != 0){
                		for(Resultado res : dtr.listarResultados("042"+contIndus, "10")){ %>
                			<div class="form-group">
								<% if(res.getUrlImg().isEmpty()){%>
									<%=res.getDescripcion() %>
								<% }else{%>
								<div class="col-md-7"><%=res.getDescripcion() %></div>
								<div class="col-md-5">
									<img alt="Error al cargar la imagen" src="<%=res.getUrlImg()%>">
								</div>
								<% }%>
							</div>
                		<%}
                	}
                %>
                <% 
                	if(areasVerde != 0){
                		for(Resultado res : dtr.listarResultados("032"+areasVerde, "10")){ %>
                			<div class="form-group">
								<% if(res.getUrlImg().isEmpty()){%>
									<%=res.getDescripcion() %>
								<% }else{%>
								<div class="col-md-7"><%=res.getDescripcion() %></div>
								<div class="col-md-5">
									<img alt="Error al cargar la imagen" src="<%=res.getUrlImg()%>">
								</div>
								<% }%>
							</div>
                		<%}
                	}
                %>
                </div>
              </div>

            </li>
            <% }%>
	<!--    PARAMTROS 1,5 -->
			<% if(opcBasura != 0 || actVehicular != 0){ %>
            <li>
              <i class="fa fa-comments bg-yellow"></i>

              <div class="timeline-item">
                <span class="time"><i class="fa fa-clock-o"></i></span>

                <h3 class="timeline-header"><a href="#">Contaminantes</a></h3>
                <div class="timeline-body"> 
                <% 
                	if(opcBasura != 0){
                		for(Resultado res : dtr.listarResultados("012"+opcBasura, "10")){ %>
                			<div class="form-group">
								<% if(res.getUrlImg().isEmpty()){%>
									<%=res.getDescripcion() %>
								<% }else{%>
								<div class="col-md-7"><%=res.getDescripcion() %></div>
								<div class="col-md-5">
									<img alt="Error al cargar la imagen" src="<%=res.getUrlImg()%>">
								</div>
								<% }%>
							</div>
                		<%}
                	}
                %>
                <% 
                	if(actVehicular != 0){
                		for(Resultado res : dtr.listarResultados("052"+actVehicular, "10")){ %>
                			<div class="form-group">
								<% if(res.getUrlImg().isEmpty()){%>
									<%=res.getDescripcion() %>
								<% }else{%>
								<div class="col-md-7"><%=res.getDescripcion() %></div>
								<div class="col-md-5">
									<img alt="Error al cargar la imagen" src="<%=res.getUrlImg()%>">
								</div>
								<% }%>
							</div>
                		<%}
                	}
                %>
                </div>
              </div>
            </li>
			<% }%>
			<!-- 		  PARAMTROS 10,7,9 -->
            <% if(tecnologia != 0 || serviciosBas != 0 || energia != 0){ %>
            <li>            
	          <i class="fa fa fa-tint bg-blue"></i>
	          <div class="timeline-item">
	            <span class="time"><i class="fa fa-clock-o"></i></span>
	
	            <h3 class="timeline-header"><a href="#">Energía, tecnología y sevicios básicos</a>&nbsp;Comsumo energetico. Afectaciones</h3>
	            <div class="timeline-body">
	              <% 
	              		if(tecnologia != 0){
	                		for(Resultado res : dtr.listarResultados("102"+tecnologia, "10")){ %>
	                			<div class="form-group">
								<% if(res.getUrlImg().isEmpty()){%>
									<%=res.getDescripcion() %>
								<% }else{%>
								<div class="col-md-7"><%=res.getDescripcion() %></div>
								<div class="col-md-5">
									<img alt="Error al cargar la imagen" src="<%=res.getUrlImg()%>">
								</div>
								<% }%>
							</div>
	                		<%}
	                	}
	                %>
	                <% 
	                	if(serviciosBas != 0){
	                		for(Resultado res : dtr.listarResultados("072"+serviciosBas, "10")){ %>
	                			<div class="form-group">
								<% if(res.getUrlImg().isEmpty()){%>
									<%=res.getDescripcion() %>
								<% }else{%>
								<div class="col-md-7"><%=res.getDescripcion() %></div>
								<div class="col-md-5">
									<img alt="Error al cargar la imagen" src="<%=res.getUrlImg()%>">
								</div>
								<% }%>
							</div>
	                		<%}
	                	}
	                %>
	                                <% 
	                	if(energia != 0){
	                		for(Resultado res : dtr.listarResultados("092"+energia, "10")){ %>
	                			<div class="form-group">
								<% if(res.getUrlImg().isEmpty()){%>
									<%=res.getDescripcion() %>
								<% }else{%>
								<div class="col-md-7"><%=res.getDescripcion() %></div>
								<div class="col-md-5">
									<img alt="Error al cargar la imagen" src="<%=res.getUrlImg()%>">
								</div>
								<% }%>
							</div>
	                		<%}
	                	}
	                %>
	            </div>
	          </div>
	        </li>
            <%}%>
        <li class="time-label">
          <span class="bg-red">
            20 años después
          </span>
        </li>
        	<!--    PARAMETROS 2,8,11,12-->
            <% if(despale != 0 || areaEcon != 0 || contHidri != 0 || aguasNegras != 0){%>
            <li>
              <i class="fa  fa-tree bg-green"></i>

              <div class="timeline-item">
                <span class="time"><i class="fa fa-clock-o"></i></span>

                <h3 class="timeline-header"><a href="#">Actividades económica, fuentes hidrograficas</a>&nbsp;Estado del ecosistema</h3>
                <div class="timeline-body">
                <% 
                	if(despale != 0){
                		for(Resultado res : dtr.listarResultados("022"+despale, "20")){ %>
                			<div class="form-group">
								<% if(res.getUrlImg().isEmpty()){%>
									<%=res.getDescripcion() %>
								<% }else{%>
								<div class="col-md-7"><%=res.getDescripcion() %></div>
								<div class="col-md-5">
									<img alt="Error al cargar la imagen" src="<%=res.getUrlImg()%>">
								</div>
								<% }%>
							</div>
                		<%}
                	}
                %>
                <% 
                	if(areaEcon != 0){
                		for(Resultado res : dtr.listarResultados("082"+areaEcon, "20")){ %>
                			<div class="form-group">
								<% if(res.getUrlImg().isEmpty()){%>
									<%=res.getDescripcion() %>
								<% }else{%>
								<div class="col-md-7"><%=res.getDescripcion() %></div>
								<div class="col-md-5">
									<img alt="Error al cargar la imagen" src="<%=res.getUrlImg()%>">
								</div>
								<% }%>
							</div>
                		<%}
                	}
                %>
                <% 
                	if(contHidri != 0){
                		for(Resultado res : dtr.listarResultados("112"+contHidri, "20")){ %>
                			<div class="form-group">
								<% if(res.getUrlImg().isEmpty()){%>
									<%=res.getDescripcion() %>
								<% }else{%>
								<div class="col-md-7"><%=res.getDescripcion() %></div>
								<div class="col-md-5">
									<img alt="Error al cargar la imagen" src="<%=res.getUrlImg()%>">
								</div>
								<% }%>
							</div>
                		<%}
                	}
                %>
                <% 
                	if(aguasNegras != 0){
                		for(Resultado res : dtr.listarResultados("122"+aguasNegras, "20")){ %>
                			<div class="form-group">
								<% if(res.getUrlImg().isEmpty()){%>
									<%=res.getDescripcion() %>
								<% }else{%>
								<div class="col-md-7"><%=res.getDescripcion() %></div>
								<div class="col-md-5">
									<img alt="Error al cargar la imagen" src="<%=res.getUrlImg()%>">
								</div>
								<% }%>
							</div>
                		<%}
                	}
                %>
                </div>
              </div>
            </li>
            <% } %>
	<!--             PARAMTROS 4,3          -->
            <% if(contIndus != 0 || areasVerde != 0){%>
            <li>
              <i class="fa fa-cloud bg-red"></i>

              <div class="timeline-item">
                <span class="time"><i class="fa fa-clock-o"></i></span>

                <h3 class="timeline-header"><a href="#">Industrias contaminantes, flora y fauna</a>&nbsp;El trabajo del hombre, trae consecuencias para el medio ambiente</h3>
                <div class="timeline-body">
                <% 
                	if(contIndus != 0){
                		for(Resultado res : dtr.listarResultados("042"+contIndus, "20")){ %>
                			<div class="form-group">
								<% if(res.getUrlImg().isEmpty()){%>
									<%=res.getDescripcion() %>
								<% }else{%>
								<div class="col-md-7"><%=res.getDescripcion() %></div>
								<div class="col-md-5">
									<img alt="Error al cargar la imagen" src="<%=res.getUrlImg()%>">
								</div>
								<% }%>
							</div>
                		<%}
                	}
                %>
                <% 
                	if(areasVerde != 0){
                		for(Resultado res : dtr.listarResultados("032"+areasVerde, "20")){ %>
                			<div class="form-group">
								<% if(res.getUrlImg().isEmpty()){%>
									<%=res.getDescripcion() %>
								<% }else{%>
								<div class="col-md-7"><%=res.getDescripcion() %></div>
								<div class="col-md-5">
									<img alt="Error al cargar la imagen" src="<%=res.getUrlImg()%>">
								</div>
								<% }%>
							</div>
                		<%}
                	}
                %>
                </div>
              </div>

            </li>
            <% }%>
	<!--    PARAMTROS 1,5 -->
			<% if(opcBasura != 0 || actVehicular != 0){ %>
            <li>
              <i class="fa fa-comments bg-yellow"></i>

              <div class="timeline-item">
                <span class="time"><i class="fa fa-clock-o"></i></span>

                <h3 class="timeline-header"><a href="#">Contaminantes</a></h3>
                <div class="timeline-body"> 
                <% 
                	if(opcBasura != 0){
                		for(Resultado res : dtr.listarResultados("012"+opcBasura, "20")){ %>
                			<div class="form-group">
								<% if(res.getUrlImg().isEmpty()){%>
									<%=res.getDescripcion() %>
								<% }else{%>
								<div class="col-md-7"><%=res.getDescripcion() %></div>
								<div class="col-md-5">
									<img alt="Error al cargar la imagen" src="<%=res.getUrlImg()%>">
								</div>
								<% }%>
							</div>
                		<%}
                	}
                %>
                <% 
                	if(actVehicular != 0){
                		for(Resultado res : dtr.listarResultados("052"+actVehicular, "20")){ %>
                			<div class="form-group">
								<% if(res.getUrlImg().isEmpty()){%>
									<%=res.getDescripcion() %>
								<% }else{%>
								<div class="col-md-7"><%=res.getDescripcion() %></div>
								<div class="col-md-5">
									<img alt="Error al cargar la imagen" src="<%=res.getUrlImg()%>">
								</div>
								<% }%>
							</div>
                		<%}
                	}
                %>
                </div>
              </div>
            </li>
			<% }%>
			<!-- 		  PARAMTROS 10,7,9 -->
            <% if(tecnologia != 0 || serviciosBas != 0 || energia != 0){ %>
            <li>            
	          <i class="fa fa fa-tint bg-blue"></i>
	          <div class="timeline-item">
	            <span class="time"><i class="fa fa-clock-o"></i></span>
	
	            <h3 class="timeline-header"><a href="#">Energía, tecnología y sevicios básicos</a>&nbsp;Comsumo energetico. Afectaciones</h3>
	            <div class="timeline-body">
	              <% 
	              		if(tecnologia != 0){
	                		for(Resultado res : dtr.listarResultados("102"+tecnologia, "20")){ %>
	                			<div class="form-group">
								<% if(res.getUrlImg().isEmpty()){%>
									<%=res.getDescripcion() %>
								<% }else{%>
								<div class="col-md-7"><%=res.getDescripcion() %></div>
								<div class="col-md-5">
									<img alt="Error al cargar la imagen" src="<%=res.getUrlImg()%>">
								</div>
								<% }%>
							</div>
	                		<%}
	                	}
	                %>
	                <% 
	                	if(serviciosBas != 0){
	                		for(Resultado res : dtr.listarResultados("072"+serviciosBas, "20")){ %>
	                			<div class="form-group">
								<% if(res.getUrlImg().isEmpty()){%>
									<%=res.getDescripcion() %>
								<% }else{%>
								<div class="col-md-7"><%=res.getDescripcion() %></div>
								<div class="col-md-5">
									<img alt="Error al cargar la imagen" src="<%=res.getUrlImg()%>">
								</div>
								<% }%>
							</div>
	                		<%}
	                	}
	                %>
	                                <% 
	                	if(energia != 0){
	                		for(Resultado res : dtr.listarResultados("092"+energia, "20")){ %>
	                			<div class="form-group">
								<% if(res.getUrlImg().isEmpty()){%>
									<%=res.getDescripcion() %>
								<% }else{%>
								<div class="col-md-7"><%=res.getDescripcion() %></div>
								<div class="col-md-5">
									<img alt="Error al cargar la imagen" src="<%=res.getUrlImg()%>">
								</div>
								<% }%>
							</div>
	                		<%}
	                	}
	                %>
	            </div>
	          </div>
	        </li>
            <%}%>
        <li class="time-label">
          <span class="bg-red">
            30 años después
          </span>
        </li>
        	<!--    PARAMETROS 2,8,11,12-->
            <% if(despale != 0 || areaEcon != 0 || contHidri != 0 || aguasNegras != 0){%>
            <li>
              <i class="fa  fa-tree bg-green"></i>

              <div class="timeline-item">
                <span class="time"><i class="fa fa-clock-o"></i></span>

                <h3 class="timeline-header"><a href="#">Actividades económica, fuentes hidrograficas</a>&nbsp;Estado del ecosistema</h3>
                <div class="timeline-body">
                <% 
                	if(despale != 0){
                		for(Resultado res : dtr.listarResultados("022"+despale, "30")){ %>
                			<div class="form-group">
								<% if(res.getUrlImg().isEmpty()){%>
									<%=res.getDescripcion() %>
								<% }else{%>
								<div class="col-md-7"><%=res.getDescripcion() %></div>
								<div class="col-md-5">
									<img alt="Error al cargar la imagen" src="<%=res.getUrlImg()%>">
								</div>
								<% }%>
							</div>
                		<%}
                	}
                %>
                <% 
                	if(areaEcon != 0){
                		for(Resultado res : dtr.listarResultados("082"+areaEcon, "30")){ %>
                			<div class="form-group">
								<% if(res.getUrlImg().isEmpty()){%>
									<%=res.getDescripcion() %>
								<% }else{%>
								<div class="col-md-7"><%=res.getDescripcion() %></div>
								<div class="col-md-5">
									<img alt="Error al cargar la imagen" src="<%=res.getUrlImg()%>">
								</div>
								<% }%>
							</div>
                		<%}
                	}
                %>
                <% 
                	if(contHidri != 0){
                		for(Resultado res : dtr.listarResultados("112"+contHidri, "30")){ %>
                			<div class="form-group">
								<% if(res.getUrlImg().isEmpty()){%>
									<%=res.getDescripcion() %>
								<% }else{%>
								<div class="col-md-7"><%=res.getDescripcion() %></div>
								<div class="col-md-5">
									<img alt="Error al cargar la imagen" src="<%=res.getUrlImg()%>">
								</div>
								<% }%>
							</div>
                		<%}
                	}
                %>
                <% 
                	if(aguasNegras != 0){
                		for(Resultado res : dtr.listarResultados("122"+aguasNegras, "30")){ %>
                			<div class="form-group">
								<% if(res.getUrlImg().isEmpty()){%>
									<%=res.getDescripcion() %>
								<% }else{%>
								<div class="col-md-7"><%=res.getDescripcion() %></div>
								<div class="col-md-5">
									<img alt="Error al cargar la imagen" src="<%=res.getUrlImg()%>">
								</div>
								<% }%>
							</div>
                		<%}
                	}
                %>
                </div>
              </div>
            </li>
            <% } %>
	<!--             PARAMTROS 4,3          -->
            <% if(contIndus != 0 || areasVerde != 0){%>
            <li>
              <i class="fa fa-cloud bg-red"></i>

              <div class="timeline-item">
                <span class="time"><i class="fa fa-clock-o"></i></span>

                <h3 class="timeline-header"><a href="#">Industrias contaminantes, flora y fauna</a>&nbsp;El trabajo del hombre, trae consecuencias para el medio ambiente</h3>
                <div class="timeline-body">
                <% 
                	if(contIndus != 0){
                		for(Resultado res : dtr.listarResultados("042"+contIndus, "30")){ %>
                			<div class="form-group">
								<% if(res.getUrlImg().isEmpty()){%>
									<%=res.getDescripcion() %>
								<% }else{%>
								<div class="col-md-7"><%=res.getDescripcion() %></div>
								<div class="col-md-5">
									<img alt="Error al cargar la imagen" src="<%=res.getUrlImg()%>">
								</div>
								<% }%>
							</div>
                		<%}
                	}
                %>
                <% 
                	if(areasVerde != 0){
                		for(Resultado res : dtr.listarResultados("032"+areasVerde, "30")){ %>
                			<div class="form-group">
								<% if(res.getUrlImg().isEmpty()){%>
									<%=res.getDescripcion() %>
								<% }else{%>
								<div class="col-md-7"><%=res.getDescripcion() %></div>
								<div class="col-md-5">
									<img alt="Error al cargar la imagen" src="<%=res.getUrlImg()%>">
								</div>
								<% }%>
							</div>
                		<%}
                	}
                %>
                </div>
              </div>

            </li>
            <% }%>
	<!--    PARAMTROS 1,5 -->
			<% if(opcBasura != 0 || actVehicular != 0){ %>
            <li>
              <i class="fa fa-comments bg-yellow"></i>

              <div class="timeline-item">
                <span class="time"><i class="fa fa-clock-o"></i></span>

                <h3 class="timeline-header"><a href="#">Contaminantes</a></h3>
                <div class="timeline-body"> 
                <% 
                	if(opcBasura != 0){
                		for(Resultado res : dtr.listarResultados("012"+opcBasura, "30")){ %>
                			<div class="form-group">
								<% if(res.getUrlImg().isEmpty()){%>
									<%=res.getDescripcion() %>
								<% }else{%>
								<div class="col-md-7"><%=res.getDescripcion() %></div>
								<div class="col-md-5">
									<img alt="Error al cargar la imagen" src="<%=res.getUrlImg()%>">
								</div>
								<% }%>
							</div>
                		<%}
                	}
                %>
                <% 
                	if(actVehicular != 0){
                		for(Resultado res : dtr.listarResultados("052"+actVehicular, "30")){ %>
                			<div class="form-group">
								<% if(res.getUrlImg().isEmpty()){%>
									<%=res.getDescripcion() %>
								<% }else{%>
								<div class="col-md-7"><%=res.getDescripcion() %></div>
								<div class="col-md-5">
									<img alt="Error al cargar la imagen" src="<%=res.getUrlImg()%>">
								</div>
								<% }%>
							</div>
                		<%}
                	}
                %>
                </div>
              </div>
            </li>
			<% }%>
			<!-- 		  PARAMTROS 10,7,9 -->
            <% if(tecnologia != 0 || serviciosBas != 0 || energia != 0){ %>
            <li>            
	          <i class="fa fa fa-tint bg-blue"></i>
	          <div class="timeline-item">
	            <span class="time"><i class="fa fa-clock-o"></i></span>
	
	            <h3 class="timeline-header"><a href="#">Energía, tecnología y sevicios básicos</a>&nbsp;Comsumo energetico. Afectaciones</h3>
	            <div class="timeline-body">
	              <% 
	              		if(tecnologia != 0){
	                		for(Resultado res : dtr.listarResultados("102"+tecnologia, "30")){ %>
	                			<div class="form-group">
								<% if(res.getUrlImg().isEmpty()){%>
									<%=res.getDescripcion() %>
								<% }else{%>
								<div class="col-md-7"><%=res.getDescripcion() %></div>
								<div class="col-md-5">
									<img alt="Error al cargar la imagen" src="<%=res.getUrlImg()%>">
								</div>
								<% }%>
							</div>
	                		<%}
	                	}
	                %>
	                <% 
	                	if(serviciosBas != 0){
	                		for(Resultado res : dtr.listarResultados("072"+serviciosBas, "30")){ %>
	                			<div class="form-group">
								<% if(res.getUrlImg().isEmpty()){%>
									<%=res.getDescripcion() %>
								<% }else{%>
								<div class="col-md-7"><%=res.getDescripcion() %></div>
								<div class="col-md-5">
									<img alt="Error al cargar la imagen" src="<%=res.getUrlImg()%>">
								</div>
								<% }%>
							</div>
	                		<%}
	                	}
	                %>
	                		<div class="form-group">
	                                <% 
	                	if(energia != 0){
	                		for(Resultado res : dtr.listarResultados("092"+energia, "30")){ %>
	                			
								<% if(res.getUrlImg().isEmpty()){%>
									<%=res.getDescripcion() %>
								<% }else{%>
								<div class="col-md-7"><%=res.getDescripcion() %></div>
								<div class="col-md-5">
									<img alt="Error al cargar la imagen" src="<%=res.getUrlImg()%>">
								</div>
								<% }%>
							</div>
	                		<%}
	                	}
	                %>
	            </div>
	          </div>
	        </li>
            <%}%>
        <li>
          <i class="fa fa-clock-o bg-gray"></i>
        </li>
          </ul>
        </div>
      </div>	
	</section>
     <!-- /.content -->
    <script src="js/modernizr.js"></script>
    <script src="js/pace.min.js"></script>    
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/plugins.js"></script>
    <script src="js/main.js"></script>
    <!-- Bootstrap 3.3.7 -->
	<script src="plugins/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- AdminLTE App -->
	<script src="js/adminlte.min.js"></script>
	<!-- AdminLTE for demo purposes -->
	<script src="js/demo.js"></script>	
</body>
</html>