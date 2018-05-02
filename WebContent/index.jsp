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

        <nav class="header-nav">

            <a href="#0" class="header-nav__close" title="close"><span>Close</span></a>

            <div class="header-nav__content">
                <h3>Navigation</h3>
                
                <ul class="header-nav__list">
                    <li class="current"><a class="smoothscroll"  href="#home" title="home">Inicio</a></li>
                    <li><a href="formEscenario.jsp" title="escenarios">Escenarios</a></li>
            		<li><a href="fotoreportajeDoc.jsp" title="escenarios">Genéro y Med. ambiente</a></li>
            		<li><a href="videos.jsp" title="escenarios">Videos</a></li>                  
                    <li><a class="smoothscroll"  href="#services" title="services">Información general</a></li>
                    <li><a class="smoothscroll"  href="#works" title="works">Galería</a></li>
                    <li><a class="smoothscroll"  href="#clients" title="clients">Acerca de</a></li>
                </ul>
    
                <p>Info-ambiente <a href='#0'>valoranos</a> siguenos en las redes sociales.</p>
    
                <ul class="header-nav__social">
                    <li>
                        <a href="#"><i class="fa fa-facebook"></i></a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-twitter"></i></a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-instagram"></i></a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-behance"></i></a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-dribbble"></i></a>
                    </li>
                </ul>

            </div> <!-- end header-nav__content -->

        </nav>  <!-- end header-nav -->

        <a class="header-menu-toggle" href="#0">
            <span class="header-menu-text">Menú</span>
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


    <!-- about
    ================================================== -->
    <section id='about' class="s-about">

        <div class="row section-header has-bottom-sep" >
            <div class="col-full">                
               <h1 class="display-1 display-1--light">¿Sabías qué?</h1>
            </div>
        </div> <!-- end section-header -->

        <div class="row about-desc" >
            <div class="col-full">
                <p>
               "Nuestro planeta es nuestro hogar, el único que tenemos y justamente estamos ensuciándolo, contaminándolo 
               y destruyéndolo; y lo peor de todo es que no solo es nuestro también es de todos los demás seres vivos que en él existen,
                quienes no pueden contaminarlo como nosotros, pero si sufren las terribles consecuencias de nuestros actos." 
                </p>
            </div>
        </div> <!-- end about-desc -->

        <div class="row about-stats stats block-1-4 block-m-1-2 block-mob-full" >
                
            <div class="col-block stats__col ">
                <h6>Al día se extingüen</h6>
                <div class="stats__count">150</div>
                <h6>Especies de animales</h6>
            </div>
            <div class="col-block stats__col">
                <h6>Se talan</h6>
                <div class="stats__count">15</div>
                <h6>mil millones de <br> de árboles al año</h6>               
            </div>
            <div class="col-block stats__col">
            <h6>En 27 años se han derretido</h6>
                <div class="stats__count">40</div><h5>%</h5>
                 <h6>del área total <br> del hielo polar</h6>  
            </div>
            <div class="col-block stats__col">            
            <h6>Hay una concetración de</h6>
                <div class="stats__count">381</div>
                <h6> ml/m³ en la atmósfera</h6> 
            </div>

        </div> <!-- end about-stats -->

        <div class="about__line"></div>

    </section> <!-- end s-about -->


    <!-- services
    ================================================== -->
    <section id='services' class="s-services">

        <div class="row section-header has-bottom-sep" >
            <div class="col-full">
                <h3 class="subhead">Caracteristicas</h3>
                <h1 class="display-2">Conocé mas de nuestro proyecto</h1>
            </div>
        </div> <!-- end section-header -->

        <div class="row services-list block-1-2 block-tab-full">

            <div class="col-block service-item" >
                <div class="service-icon">
                    <i class="icon-paint-brush"></i>
                </div>
                <div class="service-text">
                    <h3 class="h2">Propósito</h3>
                    <p>Nos enfocamos en los problemas actuales del medio ambiente para hacer proyecciones a futuros mediante la obtención de datos en un formulario.
                    </p>
                </div>
            </div>

            <div class="col-block service-item" >
                <div class="service-icon">
                    <i class="icon-group"></i>
                </div>
                <div class="service-text">
                    <h3 class="h2">Diseño</h3>
                    <p>Info-ambiente contiene una interfaz amigable para todo tipo de usuario y la usabilidad es una de nuestras mayores prioridades para que usted se sienta cómodo.
                    </p>
                </div>
            </div>

            <div class="col-block service-item" >
                <div class="service-icon">
                    <i class="icon-megaphone"></i>
                </div>  
                <div class="service-text">
                    <h3 class="h2">Ámbitos</h3>
                    <p> Con nuestra app puedes consultar resultados de proyecciones de entre dos diferentes tipos de ambientes. 
                    Puede ser en la ciudad o para una comunidad.
                    </p>
                </div>
            </div>

            <div class="col-block service-item" >
                <div class="service-icon">
                    <i class="icon-earth"></i>
                </div>
                <div class="service-text">
                    <h3 class="h2">Compatibilidad</h3>
                    <p>Con nuestra aplicación podrás consultar de proyecciones desde cualquier dispositivo móvil o escritorio y donde quiera que vayas.
                    </p>
                </div>
            </div> 

        </div> <!-- end services-list -->

    </section> <!-- end s-services -->

    <!-- works
    ================================================== -->
    <section id='works' class="s-works">

        <div class="intro-wrap">
                
            <div class="row section-header has-bottom-sep light-sep" >
                <div class="col-full">
                    <h3 class="subhead">Galería</h3>
                    <h1 class="display-2 display-2--light">Le mostramos algunas fotos de nuestra galería</h1>
                </div>
            </div> <!-- end section-header -->

        </div> <!-- end intro-wrap -->

        <div class="row works-content">
            <div class="col-full masonry-wrap">
                <div class="masonry">
    
                    <div class="masonry__brick" >
                        <div class="item-folio">
                                
                            <div class="item-folio__thumb">
                                <a href="images/cultivo.jpg" class="thumb-link" title="Shutterbug" data-size="1050x700">
                                    <img src="images/cultivo.jpg" 
                                         srcset="images/cultivo.jpg 1x, images/cultivo.jpg 2x" alt="">
                                </a>
                            </div>
    
                            <div class="item-folio__text">
                                <h3 class="item-folio__title">
                                    Cultivos
                                </h3>
                                <p class="item-folio__cat">
                                    Emisión de productos químicos
                                </p>
                            </div>
    
                            <a href="https://www.behance.net/" class="item-folio__project-link" title="Project link">
                                <i class="icon-link"></i>
                            </a>
    
                            <div class="item-folio__caption">
                                <p>Uno de los principales contaminantes del agua, el suelo y el aire son los químicos como fertilizantes y hervicidas</p>
                            </div>
    
                        </div>
                    </div> <!-- end masonry__brick -->

                    <div class="masonry__brick" >
                        <div class="item-folio">
                                
                            <div class="item-folio__thumb">
                                <a href="images/agua.jpg" class="thumb-link" title="Woodcraft" data-size="1050x700">
                                    <img src="images/agua.jpg" 
                                         srcset="images/agua.jpg 1x,images/agua.jpg 2x" alt="">
                                </a>
                            </div>
    
                            <div class="item-folio__text">
                                <h3 class="item-folio__title">
                                   Agua
                                </h3>
                                <p class="item-folio__cat">
                                    Vida y salud
                                </p>
                            </div>
    
                            <a class="item-folio__project-link" title="Project link">
                                <i class="icon-link"></i>
                            </a>
    
                            <div class="item-folio__caption">
                                <p>El uso irracional del agua causará problemas de avastecimiento en áreas donde se necesite.</p>
                            </div>
    
                        </div>
                    </div> <!-- end masonry__brick -->
    
                    <div class="masonry__brick" >
                        <div class="item-folio">
                                
                            <div class="item-folio__thumb">
                                <a href="images/verdes.jpg" class="thumb-link" title="The Beetle Car" data-size="1050x700">
                                    <img src="images/verdes.jpg"
                                         srcset="images/verdes.jpg 1x, images/verdes.jpg2x" alt="">
                                </a>
                            </div>
    
                            <div class="item-folio__text">
                                <h3 class="item-folio__title">
                                Áreas verdes
                                </h3>
                                <p class="item-folio__cat">
                                    En las cuidades
                                </p>
                            </div>
    
                            <a class="item-folio__project-link" title="Project link">
                                <i class="icon-link"></i>
                            </a>
    
                            <div class="item-folio__caption">
                                <p>Plantar áreas verdes en la cuidad ayuda disminuir la cantidad de CO2 en la atmósfera provocado por los vehículos.</p>
                            </div>
    
                        </div>
                    </div> <!-- end masonry__brick -->
    
                    <div class="masonry__brick" >
                        <div class="item-folio">
                                
                            <div class="item-folio__thumb">
                                <a href="images/rio.jpg" class="thumb-link" title="Grow Green" data-size="1050x700">
                                    <img src="images/rio.jpg" 
                                         srcset="images/rio.jpg 1x, images/rio.jpg 2x" alt="">
                                </a>
                            </div>
    
                            <div class="item-folio__text">
                                <h3 class="item-folio__title">
                                    Recursos naturales hídricos
                                </h3>
                                <p class="item-folio__cat">
                                    Cuidar
                                </p>
                            </div>
    
                            <a class="item-folio__project-link" title="Project link">
                                <i class="icon-link"></i>
                            </a>
    
                            <div class="item-folio__caption">
                                <p>Si la tala a de árboles continúa de esta forma podríamos perder todos los recursos hídricos con los que contamos hoy.</p>
                            </div>
    
                        </div>
                    </div> <!-- end masonry__brick -->

                    <div class="masonry__brick" >
                        <div class="item-folio">
                                
                            <div class="item-folio__thumb">
                                <a href="images/mina.jpg" class="thumb-link" title="Guitarist" data-size="1050x700">
                                    <img src="images/mina.jpg" 
                                         srcset="images/mina.jpg 1x, images/mina.jpg 2x" alt="">
                                </a>
                            </div>
    
                            <div class="item-folio__text">
                                <h3 class="item-folio__title">
                                    Explotación de recursos
                                </h3>
                                <p class="item-folio__cat">
                                    Minas
                                </p>
                            </div>
    
                            <a class="item-folio__project-link" title="Project link">
                                <i class="icon-link"></i>
                            </a>
    
                            <div class="item-folio__caption">
                                <p>Los recursos pueden ser aprovechados para mitigar el impacto ambiental, generando energía renovable.</p>
                            </div>
    
                        </div>
                    </div> <!-- end masonry__brick -->
    
                    <div class="masonry__brick" >
                        <div class="item-folio">
                                
                            <div class="item-folio__thumb">
                                <a href="images/basura.jpg" class="thumb-link" title="Palmeira" data-size="1050x700">
                                    <img src="images/basura.jpg"
                                         srcset="images/basura.jpg 1x, images/basura.jpg2x" alt="">
                                </a>
                            </div>
    
                            <div class="item-folio__text">
                                <h3 class="item-folio__title">
                                    Basura
                                </h3>
                                <p class="item-folio__cat">
                                    Principal contaminante
                                </p>
                            </div>
    
                            <a class="item-folio__project-link" title="Project link">
                                <i class="icon-link"></i>
                            </a>
    
                            <div class="item-folio__caption">
                                <p>Si la basura no se empieza a reciclar, pronto podríamos caminar sobre ella.</p>
                            </div>
    
                        </div>
                    </div> <!-- end masonry__brick -->

                </div> <!-- end masonry -->
            </div> <!-- end col-full -->
        </div> <!-- end works-content -->

    </section> <!-- end s-works -->


    <!-- clients
    ================================================== -->
    <section id="clients" class="s-clients">    
        <div class="row clients-testimonials" >
            <div class="col-full"></div>
                <div class="testimonials">

                    <div class="testimonials__slide">

                        <p>Encargado principalmente del Front-end y adaptación de la plantilla al contexto del proyecto.</p>

                        <img src="images/oscar.jpg" alt="Author image" class="testimonials__avatar">
                        <div class="testimonials__info">
                            <span class="testimonials__name">Oscar González</span> 
                            <span class="testimonials__pos">Front-end, Apple</span>
                        </div>

                    </div>

                    <div class="testimonials__slide">
                        
                        <p>Encargado del diseño de la base de datos y la conexión de la misma al proyecto.</p>

                        <img src="images/mario.jpg" alt="Author image" class="testimonials__avatar">
                        <div class="testimonials__info">
                            <span class="testimonials__name">Mario Arce</span> 
                            <span class="testimonials__pos">Programador, Google</span>
                        </div>

                    </div>

                    <div class="testimonials__slide">
                        
                        <p>Encargado de programar la obtención de requisitos que solicita el formulario y mostrar los resultados</p>

                        <img src="images/ricky.jpg" alt="Author image" class="testimonials__avatar">
                        <div class="testimonials__info">
                            <span class="testimonials__name">Ricky Bonilla</span> 
                            <span class="testimonials__pos">Programador, Microsoft</span>
                        </div>

                    </div>
                    
                    <div class="testimonials__slide">
                        
                        <p>Se encarga de controlar los datos en las demas capas del proyecto donde se establece la conexión al servidor de base de datos.</p>

                        <img src="images/avatars/user-02.jpg" alt="Author image" class="testimonials__avatar">
                        <div class="testimonials__info">
                            <span class="testimonials__name">Cristhel Centeno</span> 
                            <span class="testimonials__pos">CEO, Microsoft</span>
                        </div>

                    </div>
                    
                    <div class="testimonials__slide">
                        
                        <p>Colabora con el Front-end developer para ajustar las salidas del sistema en base a los datos procesados en la base de datos.</p>

                        <img src="images/jhoziel.jpg" alt="Author image" class="testimonials__avatar">
                        <div class="testimonials__info">
                            <span class="testimonials__name">Jhoziel Dávila</span> 
                            <span class="testimonials__pos">Front-end, Pseint</span>
                        </div>

                    </div>

                </div><!-- end testimonials -->
                
            </div> <!-- end col-full -->
        </div> <!-- end client-testimonials -->

    </section> <!-- end s-clients -->


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