<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html>
<html class="no-js" lang="en">


<head>

    <meta charset="utf-8">
    <title>InfoAmbiente</title>
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="css/base.css">
    <link rel="stylesheet" href="css/vendor.css">
    <link rel="stylesheet" href="css/main.css">
     <link rel="stylesheet" href="css/style.css">
    

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

    <!-- home
    ================================================== -->
    <section id="home" class="s-home target-section" data-parallax="scroll" data-image-src="images/hero-bg.jpg" data-natural-width=3000 data-natural-height=2000 data-position-y=center>

        <div class="overlay"></div>
        <div class="shadow-overlay"></div>

        <div class="home-content">

            <div class="row home-content__main">

                <h3>Bienvenidos Info-Ambiente</h3>

                <h1>
                    Somos un grupo creativo <br>
                    de ingenieros que diseñan <br>
                    aplicaciones web informativas<br>
                    acerca de la temática del medio ambiente.
                </h1>
                <div class="home-content__buttons">
                    <a href="#about" class="smoothscroll btn btn--stroke">
                        Proyecto
                    </a>
                </div>

            </div>

            <div class="home-content__scroll">
                <a href="#about" class="scroll-link smoothscroll">
                    <span>Bajar</span>
                </a>
            </div>

            <div class="home-content__line"></div>

        </div> 
    </section> 


    <!-- services
    ================================================== -->
    <section id='about' class="s-about" style="background-color: #39b54a;">

        <div class="row section-header has-bottom-sep" >
            <div class="col-full">
                <h3 style="color: white;" class="subhead">Videos</h3>
                <h1 class="display-2">Obtén más información a través de nuestro contenido visual</h1>
            </div>
        </div> <!-- end section-header -->

        <div style="width: 80%; margin-left: 10%; text-align: center;">
		
		<h3>Mujeres, Medio Ambiente y Desarrollo</h3><br>
		<iframe width="560" height="315" src="https://www.youtube.com/embed/CiQ1ZVvlw4w" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>		
		<br><h3>Índice de Medio Ambiente y Género</h3><br>
		<iframe width="560" height="315" src="https://www.youtube.com/embed/pyJOwd36GdA" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
			
		<br><h3>Mujeres y cambio climático</h3><br>
		<iframe width="560" height="315" src="https://www.youtube.com/embed/8c0vyMEt6rk" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>		
		
	</div>


    </section> <!-- end s-services -->
    

  	    <!-- services
    ================================================== -->
    <section id='services' class="s-services" style="background-color: #DCDCDC;">

        <div class="row section-header has-bottom-sep" >
            <div class="col-full">
                <h3 class="subhead">Fotos</h3>
                <h1 class="display-2">¿Que pasaría si actuamos en pro para el medio ambiente?</h1>
            </div>
        </div> <!-- end section-header -->
        
		<div class="articles">
			<div class="post">
				<div>
					<img style="width: 100%; height: 80%;" src="images/lago_limpio.jpg" width="500" height="300">
				</div>
			</div>
			<div class="post">
				<div>
					<img style="width: 100%; height: 80%;" src="images/bosque_positivo.jpg" width="500" height="300">
				</div>
			</div>
			<div class="post">
				<div>
					<img style="width: 100%; height: 80%;" src="images/city.jpg" width="500" height="300">
				</div>
			</div>

		</div>
		<br><br>
		 <div class="row section-header has-bottom-sep" >
            <div class="col-full">
                <h1 class="display-2">Y... ¿Que pasaría si actuamos en contra del medio ambiente?</h1>
            </div>
        </div> <!-- end section-header -->
			<div class="articles">
			<div class="post">
				<div>
					<img style="width: 100%; height: 80%;" src="images/lago_sucio.jpg" width="500" height="300">
				</div>
			</div>
			<div class="post">
				<div>
					<img style="width: 100%; height: 80%;" src="images/despale.jpg" width="500" height="300">
				</div>
			</div>
			<div class="post">
				<div>
					<img style="width: 100%; height: 80%;" src="images/ciudad_sucia.jpg" width="500" height="300">
				</div>
			</div>

		</div>

    </section> <!-- end s-services 


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


    <!-- photoswipe background
    ================================================== -->
    <div aria-hidden="true" class="pswp" role="dialog" tabindex="-1">

        <div class="pswp__bg"></div>
        <div class="pswp__scroll-wrap">

            <div class="pswp__container">
                <div class="pswp__item"></div>
                <div class="pswp__item"></div>
                <div class="pswp__item"></div>
            </div>

            <div class="pswp__ui pswp__ui--hidden">
                <div class="pswp__top-bar">
                    <div class="pswp__counter"></div><button class="pswp__button pswp__button--close" title="Close (Esc)"></button> <button class="pswp__button pswp__button--share" title=
                    "Share"></button> <button class="pswp__button pswp__button--fs" title="Toggle fullscreen"></button> <button class="pswp__button pswp__button--zoom" title=
                    "Zoom in/out"></button>
                    <div class="pswp__preloader">
                        <div class="pswp__preloader__icn">
                            <div class="pswp__preloader__cut">
                                <div class="pswp__preloader__donut"></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="pswp__share-modal pswp__share-modal--hidden pswp__single-tap">
                    <div class="pswp__share-tooltip"></div>
                </div><button class="pswp__button pswp__button--arrow--left" title="Previous (arrow left)"></button> <button class="pswp__button pswp__button--arrow--right" title=
                "Next (arrow right)"></button>
                <div class="pswp__caption">
                    <div class="pswp__caption__center"></div>
                </div>
            </div>

        </div>

    </div> <!-- end photoSwipe background -->


    <!-- preloader
    ================================================== -->
    <div id="preloader">
        <div id="loader">
            <div class="line-scale-pulse-out">
                <div></div>
                <div></div>
                <div></div>
                <div></div>
                <div></div>
            </div>
        </div>
    </div>


    <!-- Java Script
    ================================================== -->
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/plugins.js"></script>
    <script src="js/main.js"></script>

</body>

</html>