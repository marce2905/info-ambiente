<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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
    <!-- Select2 -->
    <link rel="stylesheet" href="plugins/select2/css/select2.min.css">
    <link rel="stylesheet" href="css/AdminLTE.css">
    
    <link rel="stylesheet" href="css/icheck-bootstrap.min.css">
    
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
    <link rel="icon" href="favicon.ico" type="image/x-icon">

</head>
<body id="top">

    <header class="s-header">

        <div class="header-logo">
            <a class="site-logo" href="index.html">
                <img src="images/logo.png" alt="Homepage">
            </a>
        </div>
        <%@include file="plantillas/menu.jsp" %>
        <a class="header-menu-toggle" href="#0">
            <span class="header-menu-text">Menu</span>
            <span class="header-menu-icon"></span>
        </a>

    </header> <!-- end s-header -->


    <!-- home -->
    <section id="home" class="s-home target-section" data-parallax="scroll" data-image-src="images/hero-bg.jpg" data-natural-width=3000 data-natural-height=2000 data-position-y=center>

        <div class="overlay"></div>
        <div class="shadow-overlay"></div>

        <div class="home-content">

            <div class="row2 home-content__main">

                <h3>Bienvenido a nuestra página</h3>

                <h1>
                    Creada con el objetivo de ayudarte <br>
                    a comprender las consecuencias <br>
                    que nuestras aciones tendrán a futuro.
                </h1>

                <div class="home-content__buttons">
                    <a href="#about" class="smoothscroll btn btn--stroke">
                        Más información
                    </a>
                </div>

            </div>

            <div class="home-content__scroll">
                <a href="#about" class="scroll-link smoothscroll">
                    <span>Ir al formulario</span>
                </a>
            </div>

            <div class="home-content__line"></div>

        </div> <!-- end home-content -->


        <ul class="home-social">
            <li>
                <a href="#0"><i class="fa fa-facebook" aria-hidden="true"></i><span>Facebook</span></a>
            </li>
            <li>
                <a href="#0"><i class="fa fa-twitter" aria-hidden="true"></i><span>Twiiter</span></a>
            </li>
            <li>
                <a href="#0"><i class="fa fa-instagram" aria-hidden="true"></i><span>Instagram</span></a>
            </li>
            <li>
                <a href="#0"><i class="fa fa-behance" aria-hidden="true"></i><span>Behance</span></a>
            </li>
            <li>
                <a href="#0"><i class="fa fa-dribbble" aria-hidden="true"></i><span>Dribbble</span></a>
            </li>
        </ul> 
        <!-- end home-social -->
    </section> <!-- end s-home -->


     <!-- Main content -->
   	<section class="content" style="background-color: #e6e6e6;">
   	   <div class="box box-success">
			 <div class="box-header">
                   <h3 class="box-title til">Formulario para la construcción de los escenarios</h3>
             </div><!-- /.box-header -->
		<div class="box-body">
			 <form action="Sl_formulario" method="post">
			 	<input type="hidden" value="1" id="opc" name="opc"></input>
		 		<div class="col-md-4">
                  <!-- /.form-group -->
                  <div class="form-group">
	                <label>Selecione el tipo de ciudad</label>
	                <select id="ciudad" name="ciudadID" class="form-control select2" style="width: 100%;">
	                  <option value="1">Seleccione...</option>
	                  <option value="2">Rural</option>
	                  <option value="3">Urbana</option>
	                </select>
	              </div>	
	             </div>   
	                       
	             <div class="col-md-4">
                  <!-- /.form-group -->
	              <div class="form-group">
	                <label>Nombre de su ciudad, localidad o comunidad</label>
	                <input type="text" class="form-control" name="ciudadNombre" placeholder="Nombre de la ciudad: Managua"></input>
	              </div>
	             </div>
	             
	             <div class="col-md-12">
   		             
		             <div class="form-group">
		                <label>¿Qué tanto botan basura en su localidad?</label>
		                <div class="radio icheck-success">
	                        <input type="radio" id="opc01" name="botanBasura" value="1" />
	                        <label for="opc01">Muy poco</label>
	                    </div>
	                    <div class="radio icheck-success">
	                        <input type="radio" id="opc02" name="botanBasura" value="2"/>
	                        <label for="opc02">Medio</label>
	                    </div>
	                    <div class="radio icheck-success">
	                        <input type="radio" id="opc03" name="botanBasura" value="3"/>
	                        <label for="opc03">Alto</label>
	                    </div>
		             </div>
		              
		             <div id="ciudadDIV" style="display: none;">
			              <div class="form-group">
			                <label>¿Existen áreas verdes en su localidad?</label>
			                <div class="radio icheck-success">
		                        <input type="radio" id="area1" name="existAreas" value="1" onclick="cargarAreas(1);"/>
		                        <label for="area1">Si</label>
		                    </div>
		                    
		                    <div class="radio icheck-success">
		                    	<input type="radio" id="area2" name="existAreas" value="2" onclick="cargarAreas(0);"/>
			                    <label for="area2">No</label>
		                    </div>
			              </div>
			              	
			              <div id="areas" style="display: none;">
		             		<label style="font-weight: bold;">Diganos cuanto cree usted que cubre del área total</label>
	
							<div class="radio icheck-success">  
							    <input type="radio" id="opc9" name="porcentAreas" value="1"/>  
							    <label for="opc9">De 20% a 50%</label>  
							</div>  
							<div class="radio icheck-success">  
							    <input type="radio" id="opc10" name="porcentAreas" value="2"/>  
							    <label for="opc10">De 51% a 75%</label>  
							</div>  
							<div class="radio icheck-success">  
							    <input type="radio" id="opc11" name="porcentAreas" value="3"/>  
							    <label for="opc11">De 76% a 99.9%</label>  
							</div>
		                  </div>
			              
			              <div class="form-group">
			                <label>Porcentaje de actividad vehicular</label>
			                <label>&nbsp;Tome en cuenta cualquier medio de trasporte rutas, vehículo, particular, etc.</label>
							<div class="radio icheck-success">
		                        <input type="radio" id="opc16" name="actVehic" value="1"/>
		                        <label for="opc18">De 20% a 50%</label>
		                    </div>
		                    <div class="radio icheck-success">
		                        <input type="radio" id="opc17" name="actVehic" value="2"/>
		                        <label for="opc18">De 51% a 75%</label>
		                    </div>
		                    <div class="radio icheck-success">
		                        <input type="radio" id="opc18" name="actVehic" value="3"/>
		                        <label for="opc18">De 76% a 99.9%</label>
		                  	</div>
		              	  </div>
		              	  
		              	  <div class="form-group">
			                <label>¿Existe tratado de aguas negras en tu ciudad?</label>
		                    <div class="radio icheck-success">
		                        <input type="radio" id="tratado1" name="aguasN" value="1"/>
		                        <label for="tratado1">Si</label>
		                    </div>
		                    <div class="radio icheck-success">
		                        <input type="radio" id="tratado2" name="aguasN" value="2"/>
		                        <label for="tratado2">No</label>
		                    </div>
			              </div>
			              
			              <div class="form-group">
			                <label>¿Cómo obtiene la enegía electrica su ciudad?</label>
			                
							<div class="radio icheck-success">
		                        <input type="radio" id="opc19" name="enegia" value="1"/>
		                        <label for="opc19">Energía Fosil</label>
		                    </div>
		                    <div class="radio icheck-success">
		                        <input type="radio" id="opc20" name="enegia" value="2"/>
		                        <label for="opc20"> Eólica</label>
		                    </div>
		                    <div class="radio icheck-success">
		                        <input type="radio" id="opc21" name="enegia" value="3"/>
		                        <label for="opc21">Geotérmica</label>
		                    </div>
	
			              </div>
			              
			              <div class="form-group">
			                <label>Nivel de avance tecnologíco</label>
			                
			                <div class="radio icheck-success">
		                        <input type="radio" id="opc22" name="tecno" value="1"/>
		                        <label for="opc22">Bajo</label>
		                    </div>
		                    <div class="radio icheck-success">
		                        <input type="radio" id="opc23" name="tecno" value="2"/>
		                        <label for="opc23">Medio</label>
		                    </div>
		                    <div class="radio icheck-success">
		                        <input type="radio" id="opc24" name="tecno" value="3"/>
		                        <label for="opc24">Alto</label>
		                    </div>
		                  </div>
			              
		              </div>
		              
		              <div id="ruralDIV" style="display: none;">
		              	<div class="form-group">
			                <label>¿En su localidad se dedican a alguna actividad economica en especifico?</label>
			                
			                <div class="radio icheck-success">
		                        <input type="radio" id="actv1" name="actEcon" value="1" onclick="cargarActividadEcon(1);"/>
		                        <label for="actv1">Si</label>
		                    </div>
		                    <div class="radio icheck-success">
		                        <input type="radio" id="actv2" name="actEcon" value="2" onclick="cargarActividadEcon(0);"/>
		                        <label for="actv2">No</label>
		                    </div>
			             </div>
						  
			             <div class="form-group" id="actividadEcon" style="display: none;">
			              	<label>¿En relación con su actividad económica que tanto despale ha habido en los ultimos años?</label> 
						 	<div class= "radio icheck-success "> 
						        <input type= "radio" id= "opc1 " name= "despale" value="1"/> 
						        <label for= "opc1 ">Nada</label> 
						    </div> 
						    <div class= "radio icheck-success "> 
						        <input type= "radio" id= "opc2 " name= "despale" value="2"/> 
						        <label for= "opc2 ">Poco</label> 
						    </div> 
						    <div class= "radio icheck-success "> 
						        <input type= "radio" id= "opc3 " name= "despale" value="3"/> 
						        <label for= "opc3 ">Medio</label> 
						    </div> 
						    <div class= "radio icheck-success "> 
						        <input type= "radio" id= "opc4 " name= "despale" value="4"/> 
						        <label for= "opc4 ">Mucho</label> 
						    </div> 
						    <div class= "radio icheck-success "> 
						        <input type= "radio" id= "opc5 " name= "despale" value="5"/> 
						        <label for= "opc5 ">En exceso</label> 
						    </div>
						    
							<div class= "form-group "> 
						         <label>Porcentaje de area designada para esa actividad economica</label> 
						         <label>¿Cuanto cubre?</label> 
								 <div class= "radio icheck-success "> 
						              <input type= "radio" id= "opc6 " name="porcentEcon" value="1"/> 
						              <label for= "opc6 ">De 20% a 50%</label> 
						         </div> 
						         <div class= "radio icheck-success "> 
						             <input type= "radio" id= "opc7 " name="porcentEcon" value="2"/> 
						             <label for= "opc7 ">De 51% a 75%</label> 
						         </div> 
						         <div class= "radio icheck-success "> 
						             <input type= "radio" id= "opc8 " name="porcentEcon" value="3"/>
						           <label for= "opc8 ">De 75% a 99%</label> 
						         </div> 
						   </div>
			              </div>
			              
			              <div class="form-group">
			                <label>¿Cuentas con servicios basicos?</label>
			                <div class="radio icheck-success">
		                        <input type="radio" id="serv1" name="servBas" value="1"/>
		                        <label for="serv1">Si</label>
		                    </div>
		                    <div class="radio icheck-success">
		                        <input type="radio" id="serv2" name="servBas" value="2"/>
		                        <label for="serv2">No</label>
		                    </div>
			              </div>
			              
		              </div>
		              
		             <div class="form-group">
		                <label>¿Existen industrias que contaminen o deteriorer el medio ambiente?</label>
		                <div class="radio icheck-success">
	                        <input type="radio" id="indus1" name="indus" value="1" onclick="cargarIndustrias(1);"/>
	                        <label for="indus1">Si</label>
	                    </div>
	                    
	                    <div class="radio icheck-success">
	                    	<input type="radio" id="indus2" name="indus" value="2" onclick="cargarIndustrias(0);"/>
		                    <label for="indus2">No</label>
	                    </div>
	                    
		                <div id="industrias" style="display: none;">
		                	<label>Seleccione la más incidente</label> 
							                 
							<div class="radio icheck-success"> 
							    <input type="radio" id="opc12" name="contamInsdus" value="1"/> 
							    <label for="opc12">Suelo</label> 
							</div> 
							<div class="radio icheck-success"> 
							    <input type="radio" id="opc13" name="contamInsdus" value="2"/> 
							    <label for="opc13">Agua</label> 
							</div> 
							<div class="radio icheck-success"> 
							    <input type="radio" id="opc14" name="contamInsdus" value="3"/> 
							    <label for="opc14">Aire</label> 
							</div> 
							<div class="radio icheck-success"> 
							    <input type="radio" id="opc15" name="contamInsdus" value="4"/> 
							    <label for="opc15">Produce desperdicios solidos</label> 
							</div>
		                </div>
		                
		            </div>
		              
	                <div class="form-group">
		                <label>¿Sú localidad cuenta con recursos hídricos?</label>
		                <div class="radio icheck-success">
	                        <input type="radio" id="hidri1" name="hidri" onclick="cargarHidricos(1);" value="1"/>
	                        <label for="hidri1">Si</label>
	                    </div>
	                    <div class="radio icheck-success">
	                        <input type="radio" id="hidri2" name="hidri" onclick="cargarHidricos(0);"value="2"/>
	                        <label for="hidri2">No</label>
	                    </div>
	                </div>
		            <div class="form-group" id="hidricosDIV" style="display: none;">
		                <label>¿Que tan contaminados estan?</label>
		                <div class="radio icheck-success">
	                        <input type="radio" id="opc25" name="contamHidri" value="1"/>
	                        <label for="opc25">Muy poco contaminado</label>
	                    </div>
	                    <div class="radio icheck-success">
	                        <input type="radio" id="opc26" name="contamHidri" value="2"/>
	                        <label for="opc26">Medio contaminado</label>
	                    </div>
	                    <div class="radio icheck-success">
	                        <input type="radio" id="opc27" name="contamHidri" value="3"/>
	                        <label for="opc27">Altamente contaminado</label>
	                    </div>
	                </div>
	             </div>
	             
	             <div class="col-md-12">
	             	<button class="btn btn-primary" type="submit">Enviar cuestionario</button>
	             </div>
	             
			 </form>
		</div>
	   </div>
     </section>
     <!-- /.content -->
     
    <script src="js/modernizr.js"></script>
    <script src="js/pace.min.js"></script>    
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/plugins.js"></script>
    <script src="js/main.js"></script>
    <!-- Select2 -->
	<script src="plugins/select2/js/select2.full.min.js" type="text/javascript"></script>
	
	<script type="text/javascript">
	   var are = 0;
	   var act = 0;
	   var hid = 0;
	   var indt = 0;
	   
	   $('#ciudad').select2().on("select2:select",
			   
			   function(e) {
		   		var selected = e.params.data.id;
			   	
		   		if(selected == 1){
		   			var el = document.getElementById('ciudadDIV');
		   			el.style.display = 'none';
		   			
		   			var el2 = document.getElementById('ruralDIV');
		   			el2.style.display = 'none';
		   			$('#opc').val('1');
		   		}
		   		
		   		if(selected == 2){
		   			muestra_oculta('ciudadDIV',0);
		   			muestra_oculta('ruralDIV',1);
		   			$('#opc').val('2');
		   		}else if(selected == 3){
		   			muestra_oculta('ruralDIV',0);
		   			muestra_oculta('ciudadDIV',1);
		   			$('#opc').val('3');
		   		}
		   		
		   		console.log("OPC: "+$('#opc').val());
		   		console.log("Tipo ciudad: "+selected);
	   });
	   
	   function cargarAreas(c){
		   muestra_oculta('areas',c);
	   }
	   
	   function cargarActividadEcon(c){
		   muestra_oculta('actividadEcon',c);
	   }
	   
	   function cargarIndustrias(c){
		   muestra_oculta('industrias',c);
	   }
	   function cargarHidricos(c){
		   muestra_oculta('hidricosDIV',c);
	   }
	   
	   function muestra_oculta(id, opc) {
			 if (document.getElementById) { //se obtiene el id
			   var el = document.getElementById(id); //se define la variable "el" igual a nuestro div
			   if(opc == 1){
				   el.style.display = 'block' //damos un atributo display:block que muestra el div
			   }else{
				   el.style.display = 'none' //damos un atributo display:none que oculta el div
			   }
			 }
		}	   
	</script>
</body>
</html>