<!doctype html>
<html class="no-js" lang="">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Colégio Almeida Santos</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" href="apple-touch-icon.png">
    <!-- Place favicon.ico in the root directory -->

    <!-- Font -->
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,700,600italic,700italic,800,800italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
    <!-- Font -->
    <link rel="stylesheet" href="css/slider.css">

    <link rel="stylesheet" href="css/normalize.css">
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/responsive.css">
    <script src="js/vendor/modernizr-2.8.3.min.js"></script><script src="//code.jivosite.com/widget.js" data-jv-id="WAUdmp1i36" async></script>

    <style type="text/css">
        .logo{
        }
        @media screen and (max-width: 400px) {
            .logo{
                max-width: 65%!important;
                margin-left: 3% !important;
                margin-top: -20% !important;
            }
        }
    </style>
</head>

<body>
    <script type="text/javascript">
        function closePopup(strId){
            var popup = document.getElementById(strId);
            popup.parentNode.removeChild(popup);
        }
    </script>

</head>

<body>

</div>
        <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->

        <!-- Header Start -->




        <header id="home">
            <!-- Main Menu Start -->
            <div class="main-menu">



                <div class="navbar-wrapper">
                    <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
                        <!-- -->
                        <div class="none topmobile" align="right">
                            <span style="font-size:18px;">

                                <a href="https://www.facebook.com/Col%C3%A9gio-Almeida-Santos-163920423690314" target="_blank"><i class="fa fa-facebook fa-1x" style="color: #78b186;"></i></a>&nbsp;&nbsp;
                                <a href="https://www.instagram.com/colegioalmeidasantos/" target="_blank"><i class="fa fa-instagram" style="color: #78b186;"></i></a>&nbsp;&nbsp;
                                <a href="https://www.youtube.com/channel/UCj_jLyaPHbhHp_NGne3hbYQ"  target="blank"><i class="fa fa-youtube-play" style="color: #78b186;"></i></a>&nbsp;&nbsp;
                                <a href="http://www.linkedin.com/in/colegioalmeidasantos"  target="_blank"><i class="fab fa-linkedin-in" style="color: #78b186;"></i></a>&nbsp;&nbsp;
                                <a href="https://colegioalmeidasantos.blogspot.com/"  target="blank"><i class="fas fa-blog" style="color: #78b186"></i></a>&nbsp;&nbsp;
                                
                                <!--<a class="btn btn-theme margintop10 btnmobile" href="#" target="_blank" style="background-color: #78b186">Aluno</a>-->
                                <a class="btn btn-theme margintop10 btnmobile" href="https://mailpro.uol.com.br/colegioalmeidasantos.com.br/" target="_blank" style="
                                background: #78b186;
                                ">Professor</a>
                            </span>


                        </div>

                        <div class="container">
                            <div class="navbar-header">
                                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                    <span class="sr-only">Toggle Navigation</span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                </button>

                                <a href="index.html" class="navbar-brand logomobile"><img src="img/logocas-peq.png"  class="logo" alt="Logo" style="margin-top:-29%; margin-left: -10%;" /></a>	</div>

                            <div class="navbar-collapse collapse">
                                <ul class="nav navbar-nav navbar-right">                                    <li><a href="index.html#home">Home</a></li>
                                    <li><a href="index.html#proposta">Proposta</a></li>
                                    <li><a href="index.html#about">Sobre Nós</a></li>
                                    <li><a href="index.html#features">CASnews</a></li>
                                    <li><a href="index.html#eventos">Eventos</a></li>
                                    <li><a href="index.html#pricing">Time</a></li>
                                    <li><a href="index.html#depoimentos1">Depoimentos</a></li>
                                    <!--                                    <li><a href="#faq">Clube</a></li>-->
                                    <li><a href="index.html#contato1">Fale Conosco</a></li>
                                    <li><a href="index.html#localizacao">Localização</a></li>
                                </ul>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </header>
        
        
        
        <section class="blog-single">
            <div class="container">
                <div class="row">
                <div class="col-md-2"></div>
                    <div class="col-md-10">
                        <div class="title">
                        
                            <h3>Fale <span>conosco</span></h3>
                            <p>Através deste formulário você pode tirar suas dúvidas ou obter informações sobre matrículas.</p>
                            </div>
                            <?php
 
/* Valores recebidos do formulário  */
$arquivo = $_FILES['arquivo'];
$nome = $_POST['nome'];
$replyto = $_POST['email']; // Email que será respondido
$telefone = $_POST['telefone'];
$mensagem_form = $_POST['mensagem'];
$assunto = $_POST['assunto'];
 
/* Destinatário e remetente - EDITAR SOMENTE ESTE BLOCO DO CÓDIGO */
$to = "atendimento@colegioalmeidasantos.com.br";
$remetente = "atendimento@colegioalmeidasantos.com.br"; // Deve ser um email válido do domínio
 
/* Cabeçalho da mensagem  */
$boundary = "XYZ-" . date("dmYis") . "-ZYX";
$headers = "MIME-Version: 1.0\n";
$headers.= "From: $remetente\n";
$headers.= "Reply-To: $replyto\n";
$headers.= "Content-type: multipart/mixed; boundary=\"$boundary\"\r\n";  
$headers.= "$boundary\n"; 
 
/* Layout da mensagem  */
$corpo_mensagem = " 
<br>Formulário site - Trabalhe Conosco
<br>--------------------------------------------<br>
<br><strong>Nome:</strong> $nome
<br><strong>Email:</strong> $replyto
<br><strong>Telefone:</strong> $telefone
<br><strong>Assunto:</strong> $assunto
<br><strong>Mensagem:</strong> $mensagem_form
<br><br>--------------------------------------------
";
 
/* Função que codifica o anexo para poder ser enviado na mensagem  */
if(file_exists($arquivo["tmp_name"]) and !empty($arquivo)){
 
    $fp = fopen($_FILES["arquivo"]["tmp_name"],"rb"); // Abri o arquivo enviado.
 $anexo = fread($fp,filesize($_FILES["arquivo"]["tmp_name"])); // Le o arquivo aberto na linha anterior
 $anexo = base64_encode($anexo); // Codifica os dados com MIME para o e-mail 
 fclose($fp); // Fecha o arquivo aberto anteriormente
    $anexo = chunk_split($anexo); // Divide a variável do arquivo em pequenos pedaços para poder enviar
    $mensagem = "--$boundary\n"; // Nas linhas abaixo possuem os parâmetros de formatação e codificação, juntamente com a inclusão do arquivo anexado no corpo da mensagem
    $mensagem.= "Content-Transfer-Encoding: 8bits\n"; 
    $mensagem.= "Content-Type: text/html; charset=\"utf-8\"\n\n";
    $mensagem.= "$corpo_mensagem\n"; 
    $mensagem.= "--$boundary\n"; 
    $mensagem.= "Content-Type: ".$arquivo["type"]."\n";  
    $mensagem.= "Content-Disposition: attachment; filename=\"".$arquivo["name"]."\"\n";  
    $mensagem.= "Content-Transfer-Encoding: base64\n\n";  
    $mensagem.= "$anexo\n";  
    $mensagem.= "--$boundary--\r\n"; 
}
 else // Caso não tenha anexo
 {
 $mensagem = "--$boundary\n"; 
 $mensagem.= "Content-Transfer-Encoding: 8bits\n"; 
 $mensagem.= "Content-Type: text/html; charset=\"utf-8\"\n\n";
 $mensagem.= "$corpo_mensagem\n";
}
 
/* Função que envia a mensagem  */
if(mail($to, $assunto, $mensagem, $headers))
{
 echo "<br><br><center><b><font color='green'>Mensagem enviada com sucesso!";
} 
 else
 {
 echo "<br><br><center><b><font color='red'>Ocorreu um erro ao enviar a mensagem!";
}
?>
                            </div>
                        <div class="single-blog"></div>
                        

                        
                        
                        <!-- Pagination 
                        <div id="pagination">
                            <span class="all">Page 1 of 3</span>
                            <span class="current">1</span>
                            <a href="#" class="inactive">2</a>
                            <a href="#" class="inactive">3</a>
                        </div>
                        <!-- Pagination -->
                        
          </div>
                   
                   <div class="col-md-2"></div>
                    
                    <!-- Right Sidebar -->
                    <!--<div class="col-md-4">
                        <aside class="right-sidebar">
                            <div class="widget">
                                <form class="form-search">
                                    <input class="form-control" type="text" placeholder="Search..">
                                </form>
                            </div>
                            <div class="widget">
                                <h5 class="widgetheading">Categories</h5>
                                <ul class="cat">
                                    <li><i class="icon-angle-right"></i><a href="#">Web design</a><span> (20)</span></li>
                                    <li><i class="icon-angle-right"></i><a href="#">Online business</a><span> (11)</span></li>
                                    <li><i class="icon-angle-right"></i><a href="#">Marketing strategy</a><span> (9)</span></li>
                                    <li><i class="icon-angle-right"></i><a href="#">Technology</a><span> (12)</span></li>
                                    <li><i class="icon-angle-right"></i><a href="#">About finance</a><span> (18)</span></li>
                                </ul>
                            </div>
                            <div class="widget">
                                <h5 class="widgetheading">Latest posts</h5>
                                <ul class="recent">
                                    <li>
                                    <img src="img/blog-thumb.jpg" class="pull-left blog-thumb-image" alt="" />
                                    <h6><a href="#">Lorem ipsum dolor sit</a></h6>
                                    <p>
                                         Mazim alienum appellantur eu cu ullum officiis pro pri
                                    </p>
                                    </li>
                                    <li>
                                    <a href="#"><img src="img/blog-thumb.jpg" class="pull-left blog-thumb-image" alt="" /></a>
                                    <h6><a href="#">Maiorum ponderum eum</a></h6>
                                    <p>
                                         Mazim alienum appellantur eu cu ullum officiis pro pri
                                    </p>
                                    </li>
                                    <li>
                                    <a href="#"><img src="img/blog-thumb.jpg" class="pull-left blog-thumb-image" alt="" /></a>
                                    <h6><a href="#">Et mei iusto dolorum</a></h6>
                                    <p>
                                         Mazim alienum appellantur eu cu ullum officiis pro pri
                                    </p>
                                    </li>
                                </ul>
                            </div>
                            <div class="widget">
                                <h5 class="widgetheading">Popular tags</h5>
                                <ul class="tags">
                                    <li><a href="#">Web design</a></li>
                                    <li><a href="#">Trends</a></li>
                                    <li><a href="#">Technology</a></li>
                                    <li><a href="#">Internet</a></li>
                                    <li><a href="#">Tutorial</a></li>
                                    <li><a href="#">Development</a></li>
                                </ul>
                            </div>
                            </aside>
                    </div>-->
                </div>
            </div>
         </section>
        
        
        
    <div class="clearfix"></div>

                <footer>
    <div class="container">
        <div class="row">

            <!-- Single Footer -->
            <div class="col-sm-4">
                <!--<center><div class="single-footer" style="margin:30px 0">
                    <h4>UNIDADE VILA FORMOSA</h4>

                    <h5>Berçário e Educação Infantil</h5>
                    <hr style="margin:0 10%">
                    <p>Rua Cristóvão Girão, 255 - Vila Formosa<br>
                    CEP.: 03362-030</p>
                    <p>Tel.: 2674-3296</p>
                </div></center>-->
            </div>
            <!-- Single Footer -->


            <!-- Single Footer -->
            <div class="col-sm-4">
                <center><div class="single-footer" style="margin:30px 0">
                    <h4>Colégio Almeida Santos</h4>
                    <h5>Ed. Infantil, Fundamental I, II e Vestibulinho</h5>
                    <hr style="margin:0 10%">
                    <p>Rua Bartolomeu dos Santos 19 - 201/203 - Chácara Santana, São Paulo<br>CEP.: 05821-030</p>
                    <p>Tel.: 
                    (11) 5894-3528</p>
                    <p>Whatsapp: 95747-6081</p>
                </div></center>
            </div>
            <!-- Single Footer -->


            <!-- Single Footer -->
            <div class="col-sm-4">
                <!--<center><div class="single-footer" style="margin:30px 0">
                    <h4>UNIDADE METRÔ PENHA</h4>
                    <h5>Berçário e Educação Infantil</h5>
                    <hr style="margin:0 10%">
                    <p>R. Júlio Colaço, 310 - Vila Matilde<br>CEP.: 03503-030</p>
                    <p>Tel.: 2091-2501</p>
                </div></center>-->
            </div>
            <!-- Single Footer -->


        </div>
    </div>

</footer>

<!-- Copyright -->
<div class="copyright">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <center><div class="social">
                    <ul>
                        <li><a href="https://www.facebook.com/Col%C3%A9gio-Almeida-Santos-163920423690314" target="_blank"><i class="fa fa-facebook"></i></a></li>
                        <li><a href="https://www.youtube.com/channel/UCj_jLyaPHbhHp_NGne3hbYQ" target="blank"><i class="fa fa-youtube-play"></i></a></li>
                        <li><a href="https://www.instagram.com/colegioalmeidasantos/" target="_blank"><i class="fa fa-instagram"></i></a></li>
                        <li><a href="https://br.linkedin.com/company/colegio-almeida-santos"  target="_blank"><i class="fab fa-linkedin-in"></i></a><li>
                            <li><a href="https://colegioalmeidasantos.blogspot.com/"  target="_blank"><i class="fas fa-blog"></i></a><li>
                            </ul>
                        </div></center>
                        <div class="col-sm-12">
                            <center><a href="#">Política de Privacidade</a></center>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- footer -->

        <!-- footer -->




        <script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
        <script>window.jQuery || document.write('<script src="js/vendor/jquery-1.12.0.min.js"><\/script>')</script>
        <script src="js/plugins.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.mousewheel-3.0.6.pack.js"></script>
        <script src="js/paralax.js"></script>
        <script src="js/jquery.smooth-scroll.js"></script>
        <script src="js/jquery.sticky.js"></script>
        <script src="js/wow.min.js"></script>
        <script src="js/main.js"></script>
        <script src="js/jquery.fancybox.pack.js"></script>
        <script src="js/jquery.mixitup.min.js"></script>


        <script type="text/javascript">
            $(document).ready(function(){
                $('a[href^="#"]').on('click',function (e) {
                    e.preventDefault();

                    var target = this.hash;
                    var $target = $(target);

                    $('html, body').stop().animate({
                        'scrollTop': $target.offset().top
                    }, 900, 'swing');
                });
            });
        </script>

        <script src="js/custom.js"></script>
        <!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-150914724-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-150914724-1');
</script>
    </body>
    </html>

























































<!doctype html>
<html class="no-js" lang="">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Colégio Almeida Santos</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" href="apple-touch-icon.png">
    <!-- Place favicon.ico in the root directory -->

    <!-- Font -->
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,700,600italic,700italic,800,800italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
    <!-- Font -->
    <link rel="stylesheet" href="css/slider.css">

    <link rel="stylesheet" href="css/normalize.css">
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/responsive.css">
    <script src="js/vendor/modernizr-2.8.3.min.js"></script><script src="//code.jivosite.com/widget.js" data-jv-id="WAUdmp1i36" async></script>

    <style type="text/css">
        .logo{
        }
        @media screen and (max-width: 400px) {
            .logo{
                max-width: 65%!important;
                margin-left: 3% !important;
                margin-top: -20% !important;
            }
        }
    </style>
</head>

<body>
    <script type="text/javascript">
        function closePopup(strId){
            var popup = document.getElementById(strId);
            popup.parentNode.removeChild(popup);
        }
    </script>

</head>

<body>

</div>
        <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->

        <!-- Header Start -->




        <header id="home">
            <!-- Main Menu Start -->
            <div class="main-menu">



                <div class="navbar-wrapper">
                    <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
                        <!-- -->
                        <div class="none topmobile" align="right">
                            <span style="font-size:18px;">

                                <a href="https://www.facebook.com/Col%C3%A9gio-Almeida-Santos-163920423690314" target="_blank"><i class="fa fa-facebook fa-1x" style="color: #78b186;"></i></a>&nbsp;&nbsp;
                                <a href="https://www.instagram.com/colegioalmeidasantos/" target="_blank"><i class="fa fa-instagram" style="color: #78b186;"></i></a>&nbsp;&nbsp;
                                <a href="https://www.youtube.com/channel/UCj_jLyaPHbhHp_NGne3hbYQ"  target="blank"><i class="fa fa-youtube-play" style="color: #78b186;"></i></a>&nbsp;&nbsp;
                                <a href="http://www.linkedin.com/in/colegioalmeidasantos"  target="_blank"><i class="fab fa-linkedin-in" style="color: #78b186;"></i></a>&nbsp;&nbsp;
                                <a href="https://colegioalmeidasantos.blogspot.com/"  target="blank"><i class="fas fa-blog" style="color: #78b186"></i></a>&nbsp;&nbsp;
                                
                                <!--<a class="btn btn-theme margintop10 btnmobile" href="#" target="_blank" style="background-color: #78b186">Aluno</a>-->
                                <a class="btn btn-theme margintop10 btnmobile" href="https://mailpro.uol.com.br/colegioalmeidasantos.com.br/" target="_blank" style="
                                background: #78b186;
                                ">Professor</a>
                            </span>


                        </div>

                        <div class="container">
                            <div class="navbar-header">
                                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                    <span class="sr-only">Toggle Navigation</span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                </button>

                                <a href="index.html" class="navbar-brand logomobile"><img src="img/logocas-peq.png"  class="logo" alt="Logo" style="margin-top:-29%; margin-left: -10%;" /></a>	</div>

                            <div class="navbar-collapse collapse">
                                <ul class="nav navbar-nav navbar-right">                                    <li><a href="index.html#home">Home</a></li>
                                    <li><a href="index.html#proposta">Proposta</a></li>
                                    <li><a href="index.html#about">Sobre Nós</a></li>
                                    <li><a href="index.html#features">CASnews</a></li>
                                    <li><a href="index.html#eventos">Eventos</a></li>
                                    <li><a href="index.html#pricing">Time</a></li>
                                    <li><a href="index.html#depoimentos1">Depoimentos</a></li>
                                    <!--                                    <li><a href="#faq">Clube</a></li>-->
                                    <li><a href="index.html#contato1">Fale Conosco</a></li>
                                    <li><a href="index.html#localizacao">Localização</a></li>
                                </ul>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </header>
            <!-- Header End -->

        
        
        
        <section class="blog-single">
            <div class="container">




                
                <!--<div class="row">
                <div class="col-md-2"></div>
                    <div class="col-md-8">
                        <div class="title">
                        
                            <h3>Trabalhe <span>conosco</span></h3>
                            <p>Através deste formulário você pode enviar seu currículo para fazer parte da nossa equipe.</p>
                            </div>
                            <form id="contactform" action="" method="post" class="validateform" name="send-contact">
                            <p align="left">Dados Pessoais:</p>
                            <div class="col-md-6"><input type="text" name="name" placeholder="* Nome" data-rule=""maxlen:4"" /></div>
                            <div class="col-md-3"><input type="text" name="name" placeholder="* Sexo" data-rule=""maxlen:4"" /></div>
                            <div class="col-md-3">
<input type="text" name="name" placeholder="* Idade" data-rule=""maxlen:4"" /></div>
                            <div class="col-md-4"><input type="text" name="name" placeholder="* Estado civil" data-rule=""maxlen:4"" /></div>
 
<div class="col-md-4">
<input type="text" name="name" placeholder="* Data de nascimento" data-rule=""maxlen:4"" /></div>
<div class="col-md-8">
<input type="text" name="name" placeholder="* Endereço" data-rule=""maxlen:4"" /></div>
<div class="col-md-4">
<input type="text" name="name" placeholder="* Bairro" data-rule=""maxlen:4"" /></div>
<div class="col-md-6"><input type="text" name="name" placeholder="* Cidade" data-rule=""maxlen:4"" /></div>
<div class="col-md-3"><input type="text" name="name" placeholder="* Estado" data-rule=""maxlen:4"" /></div>
<div class="col-md-3"><input type="text" name="name" placeholder="* CEP" data-rule=""maxlen:4"" /></div>
<div class="col-md-6"><input type="text" name="name" placeholder="* Email" data-rule=""maxlen:4"" /></div>
<div class="col-md-6"><input type="text" name="name" placeholder="* Telefone" data-rule=""maxlen:4"" /></div>
<div class="clearfix"></div>
<p align="left">Dados profissionais:</p>
<div class="col-md-6"><input type="text" name="name" placeholder="* Formação" data-rule=""maxlen:4"" /></div>
<div class="col-md-6"><input type="text" name="name" placeholder="* Cursos complementares" data-rule=""maxlen:4"" /></div>
<div class="col-md-6">
  <textarea name="name" placeholder="* Objetivo" data-rule="" maxlen:4="maxlen:4"></textarea>
</div><div class="clearfix"></div>
<p align="left">Experiências profissionais</p>

<div class="col-md-8"><input type="text" name="name" placeholder="* Nome da empresa" data-rule=""maxlen:4"" /></div>
<div class="col-md-4"><input type="text" name="name" placeholder="* Tempo " data-rule=""maxlen:4"" /></div>
<div class="col-md-8"><input type="text" name="name" placeholder="* Segmento" data-rule=""maxlen:4"" /></div>
<div class="col-md-4"><input type="text" name="name" placeholder="* Remuneração" data-rule=""maxlen:4"" /></div>
<div class="col-md-12"><input type="text" name="name" placeholder="* Benefícios" data-rule=""maxlen:4"" /></div>
<div class="col-md-6">
  <textarea name="name" placeholder="* Breve resumo da rotina" data-rule=""></textarea>
</div>
<div class="col-md-6">
  <textarea name="name" placeholder="* Observação" data-rule="" maxlen:4="maxlen:4"></textarea>
</div>


                                
                                        <p>
                                            <button class="btn btn-theme margintop10 pull-left" type="submit">Enviar</button>
                                            
                                        </p>
                                    
                            </form>
                            </div>
                        <div class="single-blog"></div>
                        

                        
    
                        
          
                   
                   <div class="col-md-2"></div>

                </div>-->
            </div>
          </section>
        
        
        
    <div class="clearfix"></div>

                <footer>
    <div class="container">
        <div class="row">

            <!-- Single Footer -->
            <div class="col-sm-4">
                <!--<center><div class="single-footer" style="margin:30px 0">
                    <h4>UNIDADE VILA FORMOSA</h4>

                    <h5>Berçário e Educação Infantil</h5>
                    <hr style="margin:0 10%">
                    <p>Rua Cristóvão Girão, 255 - Vila Formosa<br>
                    CEP.: 03362-030</p>
                    <p>Tel.: 2674-3296</p>
                </div></center>-->
            </div>
            <!-- Single Footer -->


            <!-- Single Footer -->
            <div class="col-sm-4">
                <center><div class="single-footer" style="margin:30px 0">
                    <h4>Colégio Almeida Santos</h4>
                    <h5>Ed. Infantil, Fundamental I, II e Vestibulinho</h5>
                    <hr style="margin:0 10%">
                    <p>Rua Bartolomeu dos Santos 19 - 201/203 - Chácara Santana, São Paulo<br>CEP.: 05821-030</p>
                    <p>Tel.: 
                    (11) 5894-3528</p>
                    <p>Whatsapp: 95747-6081</p>
                </div></center>
            </div>
            <!-- Single Footer -->


            <!-- Single Footer -->
            <div class="col-sm-4">
                <!--<center><div class="single-footer" style="margin:30px 0">
                    <h4>UNIDADE METRÔ PENHA</h4>
                    <h5>Berçário e Educação Infantil</h5>
                    <hr style="margin:0 10%">
                    <p>R. Júlio Colaço, 310 - Vila Matilde<br>CEP.: 03503-030</p>
                    <p>Tel.: 2091-2501</p>
                </div></center>-->
            </div>
            <!-- Single Footer -->


        </div>
    </div>

</footer>

<!-- Copyright -->
<div class="copyright">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <center><div class="social">
                    <ul>
                        <li><a href="https://www.facebook.com/Col%C3%A9gio-Almeida-Santos-163920423690314" target="_blank"><i class="fa fa-facebook"></i></a></li>
                        <li><a href="https://www.youtube.com/channel/UCj_jLyaPHbhHp_NGne3hbYQ" target="blank"><i class="fa fa-youtube-play"></i></a></li>
                        <li><a href="https://www.instagram.com/colegioalmeidasantos/" target="_blank"><i class="fa fa-instagram"></i></a></li>
                        <li><a href="https://br.linkedin.com/company/colegio-almeida-santos"  target="_blank"><i class="fab fa-linkedin-in"></i></a><li>
                            <li><a href="https://colegioalmeidasantos.blogspot.com/"  target="_blank"><i class="fas fa-blog"></i></a><li>
                            </ul>
                        </div></center>
                        <div class="col-sm-12">
                            <center><a href="#">Política de Privacidade</a></center>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- footer -->

        <!-- footer -->




        <script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
        <script>window.jQuery || document.write('<script src="js/vendor/jquery-1.12.0.min.js"><\/script>')</script>
        <script src="js/plugins.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.mousewheel-3.0.6.pack.js"></script>
        <script src="js/paralax.js"></script>
        <script src="js/jquery.smooth-scroll.js"></script>
        <script src="js/jquery.sticky.js"></script>
        <script src="js/wow.min.js"></script>
        <script src="js/main.js"></script>
        <script src="js/jquery.fancybox.pack.js"></script>
        <script src="js/jquery.mixitup.min.js"></script>


        <script type="text/javascript">
            $(document).ready(function(){
                $('a[href^="#"]').on('click',function (e) {
                    e.preventDefault();

                    var target = this.hash;
                    var $target = $(target);

                    $('html, body').stop().animate({
                        'scrollTop': $target.offset().top
                    }, 900, 'swing');
                });
            });
        </script>

        <script src="js/custom.js"></script>
        <!-- Google Analytics: change UA-XXXXX-X to be your site's ID. -->
        <script>
            (function(b,o,i,l,e,r){b.GoogleAnalyticsObject=l;b[l]||(b[l]=
                function(){(b[l].q=b[l].q||[]).push(arguments)});b[l].l=+new Date;
            e=o.createElement(i);r=o.getElementsByTagName(i)[0];
            e.src='https://www.google-analytics.com/analytics.js';
            r.parentNode.insertBefore(e,r)}(window,document,'script','ga'));
            ga('create','UA-XXXXX-X','auto');ga('send','pageview');
        </script>
    </body>
    </html>
