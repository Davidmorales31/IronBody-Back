<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="/css-bootstrap/bootstrap.min.css" rel="stylesheet">
  <link href="/css/index.css" rel="stylesheet">
  <script src="/js/calcu-imc.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/5.1.3/js/bootstrap.bundle.min.js"></script>
  <link href="https://fonts.googleapis.com/css2?family=Concert+One&family=Dekko&family=Dosis:wght@200&family=Edu+NSW+ACT+Foundation:wght@400;500&family=Exo:ital,wght@1,100;1,200&family=Patrick+Hand&family=Pixelify+Sans&family=Red+Hat+Display:wght@300&family=Source+Sans+3:wght@200;300&display=swap" rel="stylesheet">
  <title>Iron Body</title>
</head>
<body>
    <header>
      <%@ include file="común/header.jsp" %>
    </header>
    <main>

      <div class="content">
        <div class="parrafo">
          <span>TRANSFORMA TU <br>
            CUERPO
          </span>
  
          <a href="./html/clases.html">
            <div>
              <button class="button">Descubre más</button>
            </div>
          </a> 
        </div>
      </div>

      <div class="container-fluid text-center">
          <div class="row">
            <div class="col">
              <span class="fs-2 fw-bold container-fluid d-xxl-flex d-xl-flex d-lg-flex d-none align-items-center justify-content-center">
                LAS EXCUSAS QUEMAN CERO CALORÍAS POR HORA
              </span>
              <span class="fs-4 fw-bold container-fluid d-flex d-lg-none align-items-center justify-content-center">
                LAS EXCUSAS QUEMAN CERO CALORÍAS POR HORA
              </span>
            </div>
          </div>
      </div>

      <section class="container-fluid d-xxl-flex d-xl-flex d-lg-flex d-none flex-row justify-content-center align-items-center bg-body-secondary sec">
        <div class="container-sm d-flex flex-row justify-content-center align-items-center">
            <img src="/multimedia/img/img1.jpg" class="img1 img-fluid">
            <img src="/multimedia/img/img2.jpg" class="img2 img-fluid">
        </div>
        <div class="container-sm">
          <span class="fs-4 fw-bold">CONOCE SOBRE NOSOTROS</span><br>
          <span class="fs-1">¿POR QUÉ ELEGIRNOS?</span><br>
          <span class="fs-5">
            En nuestro gimnasio, te ofrecemos un equipo de entrenadores profesionales y dedicados, una amplia variedad de servicios que van desde clases grupales hasta entrenamientos personalizados, el acceso a equipos de primera calidad y un ambiente amigable que te motivará. Nos enorgullece formar una comunidad de apoyo que te ayudará a alcanzar tus objetivos de salud y bienestar.
          </span>
          <br><br>
          <span class="fs-5">
            Únete aquí con nosotros y descubre por qué somos la elección ideal para tu viaje hacia una vida más saludable.
          </span>
        </div>
      </section>

      <div class="container-lg d-flex d-lg-none flex-column justify-content-center align-items-center bg-body-secondary sec">

        <div class="container-fluid d-none d-sm-flex d-lg-none flex-row align-items-center justify-content-evenly">
            <img src="/multimedia/img/img1.jpg" class="mi-img">
            <img src="/multimedia/img/img2.jpg" class="mi-img">
        </div>

        <div class="container-fluid d-flex d-sm-none flex-column align-items-center justify-content-evenly">
          <img src="/multimedia/img/img1.jpg" class="mi-img">
          <img src="/multimedia/img/img2.jpg" class="mi-img">
        </div>

        <div class="container sec">
          <span class="fs-4 fw-bold container-fluid d-none d-sm-flex d-lg-none">CONOCE SOBRE NOSOTROS</span>
          <span class="fs-6 fw-bold container-fluid d-flex d-sm-none">CONOCE SOBRE NOSOTROS</span>
          <span class="fs-1">¿POR QUÉ ELEGIRNOS?</span><br>
          <span class="fs-5">
            En nuestro gimnasio, te ofrecemos un equipo de entrenadores profesionales y dedicados, una amplia variedad de servicios que van desde clases grupales hasta entrenamientos personalizados, el acceso a equipos de primera calidad y un ambiente amigable que te motivará. Nos enorgullece formar una comunidad de apoyo que te ayudará a alcanzar tus objetivos de salud y bienestar.
          </span>
          <br><br>
          <span class="fs-5">
            Únete aquí con nosotros y descubre por qué somos la elección ideal para tu viaje hacia una vida más saludable.
          </span>
        </div>
      </div>

      <div class="container-fluid text-center mb-2 mt-2">
        <div class="row">
          <div class="col">
            <span class="fs-2 fw-bold container-fluid d-xxl-flex d-xl-flex d-lg-flex d-none align-items-center justify-content-center">
              SERVICIOS DEL GIMNASIO
            </span>
            <span class="fs-4 fw-bold container-fluid d-flex d-lg-none align-items-center justify-content-center">
              SERVICIOS DEL GIMNASIO
            </span>
          </div>
        </div>
      </div>

      <div class="container-fluid mb-2 mt-2">
        <div class="row g-3">
          <!-- Tarjeta 1 -->
          <div class="col-12 col-md-6 col-lg-4 d-flex justify-content-center">
            <div class="card" style="width: 18rem;">
              <img src="/multimedia/img/aoe_medical_services-500x0-c-default.jpg" class="card-img-top" alt="Imagen sobre servicios médicos">
              <div class="card-body">
                <h5 class="card-title fw-bold">
                  Servicios médicos
                </h5>
                <p class="card-text">El servicio está disponible para todos las personas del gimnasio, atendiendo cualquier lecion o herida.</p>
              </div>
            </div>
          </div>
          <!-- Tarjeta 2 -->
          <div class="col-12 col-md-6 col-lg-4 d-flex justify-content-center">
            <div class="card" style="width: 18rem;">
              <img src="/multimedia/img/piscina.jpg" class="card-img-top" alt="Imagen de una piscina">
              <div class="card-body">
                <h5 class="card-title fw-bold">
                  Servicio de piscina
                </h5>
                <p class="card-text">La piscina ofrecerá el servicio de natación y clases acuáticas.</p>
              </div>
            </div>
          </div>
          <!-- Tarjeta 3 -->
          <div class="col-12 col-md-6 col-lg-4 d-flex justify-content-center">
            <div class="card" style="width: 18rem;">
              <img src="/multimedia/img/clasess.jpg" class="card-img-top" alt="Imagen sobre clases">
              <div class="card-body">
                <h5 class="card-title fw-bold">
                  Servicios de clases fitness
                </h5>
                <p class="card-text">Se dispone de una amplia gama de clases como: Yoga, Spinning, Zumba y entrenamiento en grupo.</p>
              </div>
            </div>
          </div>
          <!-- Tarjeta 4 -->
          <div class="col-12 col-md-6 col-lg-4 d-flex justify-content-center">
            <div class="card" style="width: 18rem;">
              <img src="/multimedia/img/tiendaa.jpeg"" class="card-img-top" alt="Imagen sobre la tienda del gimnasio">
              <div class="card-body">
                <h5 class="card-title fw-bold">
                  Servicio de tienda
                </h5>
                <p class="card-text">La tienda dispone de productos para el gimnasio tales como suplementos, ropa deportiva entre otros accesorios.</p>
              </div>
            </div>
          </div>
          <!-- Tarjeta 5 -->
          <div class="col-12 col-md-6 col-lg-4 d-flex justify-content-center">
            <div class="card" style="width: 18rem;">
              <img src="/multimedia/img/cafeteria.jpg" class="card-img-top" alt="Imagen sobre la cafetería">
              <div class="card-body">
                <h5 class="card-title fw-bold">
                  Servicio de cafetería
                </h5>
                <p class="card-text">Ofrecen opciones de alimentos saludables y bebidas post-entrenamiento.</p>
              </div>
            </div>
          </div>
          <!-- Tarjeta 6 -->
          <div class="col-12 col-md-6 col-lg-4 d-flex justify-content-center">
            <div class="card" style="width: 18rem;">
              <img src="/multimedia/img/pesasarea.jpg" class="card-img-top" alt="Imagen sobre el área de pesas">
              <div class="card-body">
                <h5 class="card-title fw-bold">
                  Área de entrenamieto con pesas
                </h5>
                <p class="card-text">Incluye una variedad de máquinas y pesas libres para el entrenamiento de fuerza.</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    
      <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

      
    </main>

    <footer>
      <%@ include file="común/footer.jsp" %>
    </footer>
</body>
</html>