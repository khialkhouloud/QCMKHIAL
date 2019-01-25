<!DOCTYPE html>
<html>
<head>
  <%@ page pageEncoding="UTF-8" %>
  <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
  <meta http-equiv="Content-Type" content="text/html; charset=windows-1252" /> 
  <title>QCM</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="keywords">
  <meta content="" name="description">
  <!-- Favicons -->
  <link href="img/favicon.png" rel="icon">
  <link href="img/apple-touch-icon.png" rel="apple-touch-icon">
  <!-- Bootstrap CSS File -->
 <!--  <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet"> -->
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
  <!-- Libraries CSS Files -->
  <link href="font-awesome.min.css" rel="stylesheet">
  <link href="fancybox.css" rel="stylesheet">
  <!-- Main Stylesheet File -->
  <link href="style2.css" rel="stylesheet">
  <link rel="prefetch" href="img/zoom.png">
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
 
</head>

<body data-spy="scroll" data-offset="58" data-target="#navigation">

  <!-- Fixed navbar -->
  <div id="navigation" class="navbar navbar-fixed-top">
    <div class="container">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
          <i class="fa fa-bars"></i>
        </button>
      </div>
      <div class="navbar-collapse collapse">
        <ul class="nav navbar-nav">
          <li class="active"><a href="#intro" class="smoothscroll">Accueil</a></li>
          <li><a href="http://localhost:8080/ProjetLEE/PAGE#about-us" class="smoothscroll">Qcm</a></li>
          <li><a href="#clients" class="smoothscroll">Cours</a></li>
          <li><a href="#process" class="smoothscroll">Note</a></li>
          <li><a href="#contact" class="smoothscroll">Contact</a></li>
        </ul>
      </div>
      <!--/.nav-collapse -->
    </div>
  </div>

  <!-- === MAIN Background === -->
  <div class="slide story" id="intro" data-slide="1">
    <div class="container">
      <div id="home-row-1" class="row clearfix">
        <div class="col-12">
          <h1 class="font-semibold">QCM <span class="font-thin">SECURITE</span></h1>
          <h4 class="font-thin">TESTER VOS <span class="font-semibold">CONNAISSANCE EN SECURITE ET APPRENEZ GRACE</span> AU COURS PROPOSES.</h4>
          <br>
          <br>
        </div>
        <!-- /col-12 -->
      </div>
      <!-- /row -->
      <div id="home-row-2" class="row clearfix">

        <div class="col-12 col-sm-4">
          <a href="#portfolio" class="smoothscroll navigation-slide-a"><div class="home-hover navigation-slide"> <img src="img/s02.png"  ></div><span>PROFESSIONAL</span></a>
        </div>

        <div class="col-12 col-sm-4">
          <a href="#process" class="smoothscroll navigation-slide-a"><div class="home-hover navigation-slide"><img src="img/s01.png"></div><span>FRIENDLY</span></a>
        </div>

        <div class="col-12 col-sm-4">
          <a href="#clients" class="smoothscroll navigation-slide-a"><div class="home-hover navigation-slide"><img src="img/s03.png"></div><span>SUITABLE</span></a>
        </div>
      </div>
      <!-- /row -->
    </div>
    <!-- /container -->
  </div>
  <!-- /slide1 -->

  <!-- === Slide 2 === -->
  <div class="slide story" id="about-us" data-slide="2">
    <div class="container">
      <div class="row title-row">
        <div class="col-12 font-thin">QCM De Securite </div>
      </div>
      <!-- /row -->
      <div class="row line-row">
        <div class="hr">&nbsp;</div>
      </div>
      <!-- /row -->
     
      <!-- /row -->
      <form action="PAGE#process" method="post">
      <div class="row line-row">
        <div class="col-12">
          <h2  class="font-thin">${question1}</h2>
          <input id="prodId" name="i1" type="hidden" value="${i1}">
          <h4 class="font-thin">
			<c:forEach items="${reponse1}" var="value">        
		    <div class="row custom-control custom-checkbox">
    <label style="float:left;" class="custom-control-label" for="defaultUnchecked">
    <input type="checkbox" class="custom-control-input" name="q1" value="${value}">
    <c:out value="${value}"/>
    </label>
            </div>     
		    </c:forEach>  
          </h4>
        </div>
      </div>
      <div class="row line-row">
        <div class="col-12">
          <h2  class="font-thin">${question5}</h2>
          <input id="prodId5" name="i5" type="hidden" value="${i5}">
          <h4 class="font-thin">
			<c:forEach items="${reponse5}" var="value">        
		    <div class="row custom-control custom-checkbox">
    <label style="float:left;" class="custom-control-label" for="defaultUnchecked">
    <input type="checkbox" class="custom-control-input" id="q5" name="q5" value="${value}">
    <c:out value="${value}"/></label>
            </div>     
		    </c:forEach>  
          </h4>
        </div>
      </div>
      
      <div class="row line-row">
        <div class="col-12">
          <h2  class="font-thin">${question6}</h2>
          <input id="prodId6" name="i6" type="hidden" value="${i6}">
          <h4 class="font-thin">
			<c:forEach items="${reponse6}" var="value">        
		    <div class="row custom-control custom-checkbox">
    <label style="float:left;" class="custom-control-label" for="defaultUnchecked">
    <input type="checkbox" class="custom-control-input" id="q6" name="q6" value="${value}">
    <c:out value="${value}"/></label>
            </div>     
		    </c:forEach>  
          </h4>
        </div>
     </div>
      
        <div class="row line-row">
        <div class="col-12">
          <h2   class="font-thin">${question2} </h2>
          <input id="prodId2" name="i2" type="hidden" value="${i2}">
          <h4 class="font-thin">
         <c:forEach items="${reponse2}" var="value">        
		 <div class="row custom-control custom-checkbox">
    <label style="float:left;"  class="custom-control-label" for="defaultUnchecked">
     <input type="checkbox" class="custom-control-input" id="q2" name="q2" value="${value}">
    <c:out value="${value}"/></label>
            </div>     
		    </c:forEach> </h4>
        </div>
      </div>
        <div class="row line-row">
        <div class="col-12">
          <h2  class="font-thin">${question4} </h2>
          <input id="prodId4" name="i4" type="hidden" value="${i4}">
          <h4 class="font-thin"><c:forEach items="${reponse4}" var="value">
		<div class="row custom-control custom-checkbox">
    <label style="float:left;" class="custom-control-label" for="defaultUnchecked">
    <input type="checkbox" class="custom-control-input" id="q4" name="q4" value="${value}">
    <c:out value="${value}"/></label>
            </div>     
		    </c:forEach> </h4>
        </div>
      </div>
      <div class="row line-row">
        <div class="col-12">
          <h2  class="font-thin">${question3} </h2>
          <input id="prodId3" name="i3" type="hidden" value="${i3}">
          <h4 class="font-thin"> <c:forEach items="${reponse3}" var="value">
          <div class="row custom-control custom-checkbox">
    <label style="float:left;" class="custom-control-label" for="defaultUnchecked">
    <input type="checkbox" class="custom-control-input" id="q3" name="q3" value="${value}">
    <c:out value="${value}"/></label>
            </div>     
		    </c:forEach> </h4>
        </div>
      </div>
       <input type="submit" value="Valider" class="btn btn-success btn-sm" />
      </form>
      <!-- /row -->
    </div>
    <!-- /container -->
  </div>
  <!-- /slide2 -->

  <!-- === SLide 3 - Portfolio -->
  <div class="slide story" id="portfolio" data-slide="3">
    <div class="row">
      <div class="col-12 col-sm-6 col-lg-2"><a data-fancybox-group="portfolio" class="fancybox" href="/portfolio/p01-large.jpg"><img class="thumb" src="img/portfolio/p01-small.jpg" alt=""></a></div>
      <div class="col-12 col-sm-6 col-lg-2"><a data-fancybox-group="portfolio" class="fancybox" href="img/portfolio/p02-large.jpg"><img class="thumb" src="img/portfolio/p02-small.jpg" alt=""></a></div>
      <div class="col-12 col-sm-6 col-lg-2"><a data-fancybox-group="portfolio" class="fancybox" href="img/portfolio/p09-large.jpg"><img class="thumb" src="img/portfolio/p09-small.jpg" alt=""></a></div>
      <div class="col-12 col-sm-6 col-lg-2"><a data-fancybox-group="portfolio" class="fancybox" href="img/portfolio/p010-large.jpg"><img class="thumb" src="img/portfolio/p10-small.jpg" alt=""></a></div>
      <div class="col-12 col-sm-6 col-lg-2"><a data-fancybox-group="portfolio" class="fancybox" href="img/portfolio/p05-large.jpg"><img class="thumb" src="img/portfolio/p05-small.jpg" alt=""></a></div>
      <div class="col-12 col-sm-6 col-lg-2"><a data-fancybox-group="portfolio" class="fancybox" href="img/portfolio/p06-large.jpg"><img class="thumb" src="img/portfolio/p06-small.jpg" alt=""></a></div>
      <div class="col-12 col-sm-6 col-lg-2"><a data-fancybox-group="portfolio" class="fancybox" href="img/portfolio/p07-large.jpg"><img class="thumb" src="img/portfolio/p07-small.jpg" alt=""></a></div>
      <div class="col-12 col-sm-6 col-lg-2"><a data-fancybox-group="portfolio" class="fancybox" href="img/portfolio/p08-large.jpg"><img class="thumb" src="img/portfolio/p08-small.jpg" alt=""></a></div>
      <div class="col-12 col-sm-6 col-lg-2"><a data-fancybox-group="portfolio" class="fancybox" href="img/portfolio/p03-large.jpg"><img class="thumb" src="img/portfolio/p03-small.jpg" alt=""></a></div>
      <div class="col-12 col-sm-6 col-lg-2"><a data-fancybox-group="portfolio" class="fancybox" href="img/portfolio/p04-large.jpg"><img class="thumb" src="img/portfolio/p04-small.jpg" alt=""></a></div>
      <div class="col-12 col-sm-6 col-lg-2"><a data-fancybox-group="portfolio" class="fancybox" href="img/portfolio/p11-large.jpg"><img class="thumb" src="img/portfolio/p11-small.jpg" alt=""></a></div>
      <div class="col-12 col-sm-6 col-lg-2"><a data-fancybox-group="portfolio" class="fancybox" href="img/portfolio/p12-large.jpg"><img class="thumb" src="img/portfolio/p12-small.jpg" alt=""></a></div>
    </div>
    <!-- /row -->
  </div>
  <!-- /slide3 -->

  <!-- === Slide 4 - Process === -->
  <div class="slide story" id="process" data-slide="4">
    <div class="container">
     <div class="row title-row">
        <div class="col-12 font-thin">Réponses des Questions </div>
      </div>
      <!-- /row -->
      <div class="row line-row">
        <div class="hr">&nbsp;</div>
      </div>
      <!-- /row -->
     
      <!-- /row -->
      <form action="PAGE#process" method="post">
      <div class="row line-row">
        <div class="col-12">
          <h2  class="font-thin">${question1}</h2>
          <input id="prodId" name="i1" type="hidden" value="${i1}">
          <h4 class="font-thin">
			<c:forEach items="${reponse1}" var="value">        
		    <div class="row custom-control custom-checkbox">
    <label style="float:left;" class="custom-control-label" for="defaultUnchecked">
    <c:out value="${value}"/>
    </label>
            </div>     
		    </c:forEach> 
		   <c:if test="${repo1=='Mauvaise réponse'}">
		   <p style="color:red;">  <c:out value="${repo1}"></c:out> 
		  <p>  La bonne réponse est : </p>
               <c:out value=" ${vrairepo1}"></c:out> 
		   </p>
		    </c:if>
		    <c:if test="${repo1=='Bonne réponse'}">
		   <p style="color:green;">  <c:out value="${repo1}"></c:out> </p>
		   <br>
		   <p>   <c:out value=" ${vrairepo1}"></c:out> </p>
		    </c:if>
          </h4>
        </div>
      </div>
      <div class="row line-row">
        <div class="col-12">
          <h2  class="font-thin">${question5}</h2>
          <input id="prodId5" name="i5" type="hidden" value="${i5}">
          <h4 class="font-thin">
			<c:forEach items="${reponse5}" var="value">        
		    <div class="row custom-control custom-checkbox">
    <label style="float:left;" class="custom-control-label" for="defaultUnchecked">
   
    <c:out value="${value}"/></label>
            </div>     
		    </c:forEach>  
		    <c:if test="${repo5=='Mauvaise réponse'}">
		   <p style="color:red;">  <c:out value="${repo5}"></c:out>
		    <br>
		   <p> La bonne réponse est : </p>
            <c:out value=" ${vrairepo5}"></c:out>
		    </p>
		    </c:if>
		    <c:if test="${repo5=='Bonne réponse'}">
		   <p style="color:green;">  <c:out value="${repo5}"></c:out> </p>
		     <br>
		   <p>   <c:out value=" ${vrairepo5}"></c:out> </p>
		    </c:if>
          </h4>
        </div>
      </div>
      
      <div class="row line-row">
        <div class="col-12">
          <h2  class="font-thin">${question6}</h2>
          <input id="prodId6" name="i6" type="hidden" value="${i6}">
          <h4 class="font-thin">
			<c:forEach items="${reponse6}" var="value">        
		    <div class="row custom-control custom-checkbox">
    <label style="float:left;" class="custom-control-label" for="defaultUnchecked">
   
    <c:out value="${value}"/></label>
            </div>     
		    </c:forEach>
		    <c:if test="${repo6=='Mauvaise réponse'}">
		   <p style="color:red;">  <c:out value="${repo6}"></c:out>
		    <br>
		   <p> La bonne réponse est : </p>
            <c:out value=" ${vrairepo6}"></c:out>
		    </p>
		    </c:if>
		    <c:if test="${repo6=='Bonne réponse'}">
		   <p style="color:green;">  <c:out value="${repo6}"></c:out> </p>
		     <br>
		   <p>   <c:out value=" ${vrairepo6}"></c:out> </p>
		    </c:if>  
          </h4>
        </div>
     </div>
      
        <div class="row line-row">
        <div class="col-12">
          <h2   class="font-thin">${question2} </h2>
          <input id="prodId2" name="i2" type="hidden" value="${i2}">
          <h4 class="font-thin">
         <c:forEach items="${reponse2}" var="value">        
		 <div class="row custom-control custom-checkbox">
    <label style="float:left;"  class="custom-control-label" for="defaultUnchecked">
    
    <c:out value="${value}"/></label>
            </div>     
		    </c:forEach>
		    <c:if test="${repo2=='Mauvaise réponse'}">
	   <p style="color:red;">  <c:out value="${repo2}"></c:out>
	    <br>
	   <p> La bonne réponse est : </p>
     <c:out value=" ${vrairepo2}"></c:out>
	    </p>
	    </c:if>
	    <c:if test="${repo2=='Bonne réponse'}">
	   <p style="color:green;">  <c:out value="${repo2}"></c:out> </p>
	    <br>
		   <p>   <c:out value=" ${vrairepo2}"></c:out> </p>
	    </c:if>
		    
		     </h4>
        </div>
      </div>
        <div class="row line-row">
        <div class="col-12">
          <h2  class="font-thin">${question4} </h2>
          <input id="prodId4" name="i4" type="hidden" value="${i4}">
          <h4 class="font-thin"><c:forEach items="${reponse4}" var="value">
		<div class="row custom-control custom-checkbox">
    <label style="float:left;" class="custom-control-label" for="defaultUnchecked">
   
    <c:out value="${value}"/></label>
            </div>     
		    </c:forEach>
		    <c:if test="${repo4=='Mauvaise réponse'}">
	   <p style="color:red;">  <c:out value="${repo4}"></c:out>
	    <br>
	   <p> La bonne réponse est : </p>
     <c:out value=" ${vrairepo4}"></c:out>
	    </p>
	    </c:if>
	    <c:if test="${repo4=='Bonne réponse'}">
	   <p style="color:green;">  <c:out value="${repo4}"></c:out> </p>
	     <br>
		   <p>   <c:out value=" ${vrairepo4}"></c:out> </p>
	    </c:if>
		    
		     </h4>
        </div>
      </div>
      <div class="row line-row">
        <div class="col-12">
          <h2  class="font-thin">${question3} </h2>
          <input id="prodId3" name="i3" type="hidden" value="${i3}">
          <h4 class="font-thin"> <c:forEach items="${reponse3}" var="value">
          <div class="row custom-control custom-checkbox">
    <label style="float:left;" class="custom-control-label" for="defaultUnchecked">
   
    <c:out value="${value}"/></label>
            </div>     
		    </c:forEach> 
		    <c:if test="${repo3=='Mauvaise réponse'}">
	   <p style="color:red;">  <c:out value="${repo3}"></c:out>
	    <br>
	   <p> La bonne réponse est : </p>
     <c:out value=" ${vrairepo3}"></c:out>
	    </p>
	    </c:if>
	    <c:if test="${repo3=='Bonne réponse'}">
	   <p style="color:green;">  <c:out value="${repo3}"></c:out> </p>
	    <br>
		   <p>   <c:out value=" ${vrairepo3}"></c:out> </p>
	    </c:if>
		    </h4>
        </div>
      </div>
       
      </form>
      <!-- /row -->
    </div>
    <!-- /container -->
  </div>
  <!-- /slide4 -->

  <!-- === Slide 5 === -->
  <div class="slide story" id="clients" data-slide="5">
    <div class="container">
      <div class="row title-row">
        <div class="col-12 font-thin"><span class="font-semibold">Bonnes</span> pratiques de la sécurité informatique</div>
      </div>
      <!-- /row -->
      <div class="row line-row">
        <div class="hr">&nbsp;</div>
      </div>
      <!-- /row -->
    
      <!-- /row -->
      <div class="row content-row" style="font-size: medium; text-align:left;">
        <div class="col-12 col-sm-1 hidden-sm" style="text-align:left;">&nbsp;</div>
         <br>
        Les menaces se multipliant ces derniers temps (virus, vers, spyware, intrusions), il est primordial de savoir quelles attitudes et actions adopter pour se prémunir et réagir aux problèmes de sécurité. A côté de ça un autre problème (le spam) augmente aussi de manière inquiétante...
     <br>
    <h1 style="text-decoration: underline;">  1. Ce qu'il faut savoir sur le spam:  </h1> 
       <br>
       Tout ce que veulent les spammeurs, c'est recueillir un maximum d'adresses de courrier électronique valides.
Par conséquent:
- Ne répondez jamais à un spam (d'ailleurs la plupart du temps les adresses d'origine sont fausses).
- N'utilisez jamais les liens pour vous désinscrire, vous ne feriez que valider votre adresse, et la quantité de spam ne fera qu'augmenter
- Les pseudos-sites vous inscrivant sur des listes pour ne plus avoir de spam sont des escroqueries, vous recevrez encore plus de spam.
      <br>
     <h1 style="text-decoration: underline;">  2. S'en protéger: </h1>
      <br>
- Ne faites jamais suivre des chaînes vous recevrez dans 99% des cas des virus sur votre adresse e-mail : pourquoi ? Le champ servant à masquer les destinataires est en effet peu utilisé, et les listes des destinataires restent dans le corps du message. Ainsi, la première machine infectée recevant cette chaîne dispose de plusieurs centaines d'adresses e-mail valides à infecter.. Faites pression sur vos contacts pour qu'ils ne vous envoient pas ces chaînes....

- Evitez de donner votre adresse de courrier électronique "n'importe où".

- Créez une boite aux lettres "poubelle" que vous utiliserez si vous devez fournir une adresse de courrier électronique pour vous inscrire sur un site autre qu'un site de "confiance" (banque, enseigne connue,etc.).

- Utilisez un filtre anti-spam ou encodez vos adresses e-mail pour ne pas les exposer sur le web.
- Les webmails tels que yahoo, livemail, gmail ou autres proposent en général un filtrage antispam, d'autant plus efficace qu'il évolue avec les signalements des autres utilisateurs.
      <h1 style="text-decoration: underline;">  3. Ce qu'il faut savoir sur les spywares: </h1>
      <br>
      Les spywares sont des espions qui récoltent des informations quand vous naviguez sur internet. Les spywares sont
souvent présent dans les version gratuites de certains logiciels et récoltent des informations à but commercial.
Ils envoient donc, à votre insu, des données sur internet.
<br>
  <h1 style="text-decoration: underline;">4. L'attitude à adopter pour éviter les virus:</h1>
  <br>
  - Si vous recevez par courrier électronique un message d'un inconnu, surtout si c'est dans une langue étrangère,
avec une pièce jointe, ce message contient quasiment toujours un virus : supprimez le sans le lire. Cette simple
précaution suffit à éliminer la plupart des virus.
- Installez un antivirus et mettez le à jour. Norton Antivirus inclut un an de mise à jour après l'installation.
- Installez les mises à jour de sécurité via Windows Update (Démarrer > Windows Update) pour les ordinateurs sous
Windows, ou le système correspondant à votre OS. Ces virus s'en prennent aux machines connectées à Internet,
sans que vous ayez eu à exécuter un logiciel infecté.
<br>
<h1 style="text-decoration: underline;"> 5. Fermer les services inutiles:</h1>
<br>
Il est important de ne pas lancer de services inutiles. Les ressources libérées en mémoire et en CPU peuvent alors
servir aux applications de sécurité (firewall et antivirus) et évitent aux failles de sécurité de devenir critiques. De plus,
certains services, de par leur fonctionnement peuvent directement poser des problèmes de sécurité. D'autres, au
contraire, sont indispensables au bon fonctionnement de votre PC.

        
      
        <div class="col-1 col-sm-1 hidden-sm">&nbsp;</div>
      </div>
      <!-- /row -->
    </div>
    <!-- /container -->
  </div>
  <!-- /slide5 -->

  <!-- === Slide 6 / Contact === -->
  <div class="slide story" id="contact" data-slide="6">
    <div class="container">
      <div class="row title-row">
        <div class="col-12 font-light">Leave us a <span class="font-semibold">message</span></div>
      </div>
      <!-- /row -->
      <div class="row line-row">
        <div class="hr">&nbsp;</div>
      </div>
      <!-- /row -->
      <div class="row subtitle-row">
        <div class="col-sm-1 hidden-sm">&nbsp;</div>
        <div class="col-12 col-sm-10 font-light">You can find us literally anywhere, just push a button and we are there</div>
        <div class="col-sm-1 hidden-sm">&nbsp;</div>
      </div>
      <!-- /row -->
      <div id="contact-row-4" class="row">
        <div class="col-sm-1 hidden-sm">&nbsp;</div>
        <div class="col-12 col-sm-2 with-hover-text">
          <p><a target="_blank" href="#"><i class="fa fa-phone"></i></a></p>
          <span class="hover-text font-light ">+44 4839-4343</span></a>
        </div>
        <!-- /col12 -->
        <div class="col-12 col-sm-2 with-hover-text">
          <p><a target="_blank" href="https://www.gmail.com"><i class="fa fa-envelope"></i></a></p>
          <span class="hover-text font-light ">munter@example.com</span></a>
        </div>
        <!-- /col12 -->
        <div class="col-12 col-sm-2 with-hover-text">
          <p><a target="_blank" href="#intro" ><i class="fa fa-home"></i></a></p>
          <span class="hover-text font-light ">London, England<br>zip code 98443</span></a>
        </div>
        <!-- /col12 -->
        <div class="col-12 col-sm-2 with-hover-text">
          <p><a target="_blank" href="https://www.facebook.com"><i class="fa fa-facebook"></i></a></p>
          <span class="hover-text font-light ">facebook/TemplateMag</span></a>
        </div>
        <!-- /col12 -->
        <div class="col-12 col-sm-2 with-hover-text">
          <p><a target="_blank" href="https://twitter.com/"><i class="fa fa-twitter"></i></a></p>
          <span class="hover-text font-light ">@TemplateMag</span></a>
        </div>
        <!-- /col12 -->
        <div class="col-sm-1 hidden-sm">&nbsp;</div>
      </div>
      <!-- /row -->

      <div class="row">
        <div class="col-md-8 col-md-offset-2">

          <form class="contact-form php-mail-form" role="form" action="contactform/contactform.php" method="POST">

            <div class="form-group">
              <label for="contact-name">Your Name</label>
              <input type="name" name="name" class="form-control" id="contact-name" placeholder="Your Name" data-rule="minlen:4" data-msg="Please enter at least 4 chars" >
              <div class="validate"></div>
            </div>
            <div class="form-group">
              <label for="contact-email">Your Email</label>
              <input type="email" name="email" class="form-control" id="contact-email" placeholder="Your Email" data-rule="email" data-msg="Please enter a valid email">
              <div class="validate"></div>
            </div>
            <div class="form-group">
              <label for="contact-subject">Subject</label>
              <input type="text" name="subject" class="form-control" id="contact-subject" placeholder="Subject" data-rule="minlen:4" data-msg="Please enter at least 8 chars of subject">
              <div class="validate"></div>
            </div>

            <div class="form-group">
              <label for="contact-message">Your Message</label>
              <textarea class="form-control" name="message" id="contact-message" placeholder="Your Message" rows="5" data-rule="required" data-msg="Please write something for us"></textarea>
              <div class="validate"></div>
            </div>

            <div class="loading"></div>
            <div class="error-message"></div>
            <div class="sent-message">Your message has been sent. Thank you!</div>

            <div class="form-send">
              <button type="submit" class="btn btn-large">Send Message</button>
            </div>

          </form>
        </div>
      </div>
    </div>
    <!-- /container -->
  </div>

  

  <!-- JavaScript Libraries -->


</body>
</html>
