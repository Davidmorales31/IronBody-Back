<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <link rel="shortcut-icon" href="../multimedia/img/icono.ico">
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
  <link href="/css/clases.css" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css2?family=Concert+One&family=Dekko&family=Dosis:wght@200&family=Edu+NSW+ACT+Foundation:wght@400;500&family=Exo:ital,wght@1,100;1,200&family=Patrick+Hand&family=Pixelify+Sans&family=Red+Hat+Display:wght@300&family=Source+Sans+3:wght@200;300&display=swap" rel="stylesheet">
</head>
<body>
    <header>
        <%@ include file="común/header.jsp" %>
    </header>
    <main>
        <div class="content">
          <div class="parrafo">
            <h1 id=nombre-usuario>Bienvenido, <%= request.getAttribute("username") %>!</h1>
            <span>CLASES</span>
          </div>
        </div>

        <section class="section1">
          <div class="contenido1">
            <div class="sercicio">
              <div id="contenedorClases" class="contenedorClasesAPI"></div>
            </div>
            <!-- Button trigger modal -->
            <button id="modalButton" type="button" class="btn btn-warning" data-bs-toggle="modal" data-bs-target="#exampleModal">
              Inscríbete
            </button>
            <!-- Modal -->
            <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
              <div class="modal-dialog">
                <div class="modal-content">
                  <div class="modal-header">
                    <h1 class="modal-title fs-5" id="exampleModalLabel">Modal title</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                  </div>
                  <div class="modal-body">
             <div class="form-group">
                    <label>Usuario</label>
                   <input id="nombreUsuario" type="text" class="form-control" value="<%= request.getAttribute("username") %>" disabled>
            </div>
                        <div class="form-group">
                            <label>Horario</label>
                            <select id="horario-select" class="form-control">
                                <option value="">Selecciona un horario</option>
                            </select>
                        </div>

                  <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button id="btnInscribirse" type="button" class="btn btn-primary">Inscribirse</button>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </section>

        <section class="separador">
          <span>No eres lo que logras, eres lo que superas.</span>
        </section>

        <section class="section2">
          <div class="arribahr"><span>HORARIOS</span>
          <hr width="60%"></div>
          <div class="contenido2">
            <table>
              <tr>
                <th>Hora</th>
                <th>Lunes</th>
                <th>Martes</th>
                <th>Miércoles</th>
                <th>Jueves</th>
                <th>Viernes</th>
                <th>Sábado</th>
                <th>Domingo</th>
              </tr>
              <tr>
                <td>7pm</td>
                <td>Bailes</td>
                <td>Bailes</td>
                <td>Bailes</td>
                <td>Bailes</td>
                <td>Bailes</td>
                <td>Bailes</td>
                <td></td>
              </tr>
              <tr>
                <td>8am</td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
              </tr>
              <tr>
                <td>9am</td>
                <td>Stretching</td>
                <td>Stretching</td>
                <td>Stretching</td>
                <td>Stretching</td>
                <td>Stretching</td>
                <td>Stretching</td>
                <td></td>
              </tr>
              <tr>
                <td>10am</td>
                <td>Stretching</td>
                <td>Stretching</td>
                <td>Stretching</td>
                <td>Stretching</td>
                <td>Stretching</td>
                <td>Stretching</td>
                <td></td>
              </tr>
              <tr>
                <td>11am</td>
                <td>Natación</td>
                <td>Natación</td>
                <td>Natación</td>
                <td>Natación</td>
                <td>Natación</td>
                <td>Natación</td>
                <td></td>
              </tr>
              <tr>
                <td>12pm</td>
                <td>Natación</td>
                <td>Natación</td>
                <td>Natación</td>
                <td>Natación</td>
                <td>Natación</td>
                <td>Natación</td>
                <td></td>
              </tr>
              <tr>
                <td>1pm</td>
                <td>Aeróbicos</td>
                <td>Aeróbicos</td>
                <td>Aeróbicos</td>
                <td>Aeróbicos</td>
                <td>Aeróbicos</td>
                <td>Aeróbicos</td>
                <td></td>
              </tr>
              <tr>
                <td>2pm</td>
                <td>Aeróbicos</td>
                <td>Aeróbicos</td>
                <td>Aeróbicos</td>
                <td>Aeróbicos</td>
                <td>Aeróbicos</td>
                <td>Aeróbicos</td>
                <td></td>
              </tr>
              <tr>
                <td>3pm</td>
                <td>Stretching</td>
                <td>Stretching</td>
                <td>Stretching</td>
                <td>Stretching</td>
                <td>Stretching</td>
                <td>Stretching</td>
                <td></td>
              </tr>
              <tr>
                <td>4pm</td>
                <td>Stretching</td>
                <td>Stretching</td>
                <td>Stretching</td>
                <td>Stretching</td>
                <td>Stretching</td>
                <td>Stretching</td>
                <td></td>
              </tr>
              <tr>
                <td>5pm</td>
                <td>Bailes</td>
                <td>Bailes</td>
                <td>Bailes</td>
                <td>Bailes</td>
                <td>Bailes</td>
                <td>Bailes</td>
                <td></td>
              </tr>
            </table>
          </div>
        </section>
    </main>
    <footer>
        <%@ include file="común/footer.jsp" %>
    </footer>
    <script src="/js/clases.js"></script>
</body>
</html>
