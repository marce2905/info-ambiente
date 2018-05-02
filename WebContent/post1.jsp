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
        <link rel="stylesheet" href="css/base.css">
    <link rel="stylesheet" href="css/vendor.css">
    <link rel="stylesheet" href="css/main.css">
     <link rel="stylesheet" href="css/style.css">
    <!-- Select2 -->
    <link rel="stylesheet" href="plugins/select2/css/select2.min.css">
    <link rel="stylesheet" href="css/AdminLTE.css">
    
    <link rel="stylesheet" href="css/icheck-bootstrap.min.css">
    <script src="js/modernizr.js"></script>
    <script src="js/pace.min.js"></script>
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
                    <span>Ir al artículo</span>
                </a>
            </div>

            <div class="home-content__line"></div>

        </div> <!-- end home-content -->


        <ul class="home-social">
            <li>
                <a href="#0"><i class="fa fa-facebook" aria-hidden="true"></i><span>Facebook</span></a>
            </li>
            <li>
                <a href="#0"><i class="fa fa-twitter" aria-hidden="true"></i><span>Twitter</span></a>
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
         <section id='services' class="s-services" style="background-color:#e6e6e6;">

        <div class="row section-header has-bottom-sep" >
            <div class="col-full">
                <h3 align="center" style="text-align:center;" class="subhead">Mujeres y niños más vulnerables ante desastres</h3>
            </div>
        </div> <!-- end section-header -->
   	
   	<br>
   	   <center>
        <img style="border-radius: 5%; width: 50%;" align="center" src="images/desastres.jpg" >
        </center>
        <br><br>
        
             <div style="width: 90%; margin-left: 5%; text-align: justify;">
        
        
        <p> Nicaragua es uno de los diez países más afectados por los riesgos climatológicos a nivel mundial. Ante esa realidad, el Fondo de Población de las Naciones Unidas (Unfpa) llamó a hacer uso de los datos demográficos para prevenir desastres y preparar respuestas efectivas ante fenómenos naturales. (Leyla, 2015)</p>
        
<p>Según Unfpa (2015) “en Nicaragua, Markus Behrend, en los últimos 20 años en el país se han contabilizado más de 50 desastres naturales, sobre todo inundaciones, sequías y temperaturas extremas, y que los más afectados son mujeres, niños y niñas.”</p>

<p>“Un ejemplo de cómo los desastres aumentan la vulnerabilidad social y tienden a potenciar las inequidades en contextos de pobreza y exclusión podemos verlo a partir de la experiencia de Haití, donde después del terremoto del 2010, la tasa de mortalidad aumentó, principalmente en el grupo de entre 15-24 años, que representó un 25% de las muertes”, refirió.</p>

<p>“Además, la tasa de fecundidad en adolescentes ubicadas en campamentos se duplicó en relación con aquellas que vivían en áreas rurales y se triplicó en relación con las que se encontraban en áreas urbanas fuera de los campamentos”, agregó Behrend (2015).</p>
        
  	   
     </section>
     </div>
     <!-- /.content -->
     
        <!-- footer
    ================================================== -->
    <footer>


        <div class="row footer-bottom">

            <div class="col-twelve">
                <div class="copyright">
                    <span>© Copyright Info-Ambiente 2018</span> 
                    <span>Creado por <a href="https://www.colorlib.com/">am corp</a></span>	
                </div>

                <div class="go-top">
                    <a class="smoothscroll" title="Back to Top" href="#top"><i class="icon-arrow-up" aria-hidden="true"></i></a>
                </div>
            </div>

        </div> <!-- end footer-bottom -->

    </footer> <!-- end footer -->
     
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