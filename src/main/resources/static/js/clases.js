// Obtener el nombre de usuario almacenado en sessionStorage
const storedUsername = sessionStorage.getItem('username');
console.log('Nombre de usuario almacenado:', storedUsername);


fetch('/clases/api')
  .then(response => response.json())
  .then(data => {
    const container = document.getElementById('contenedorClases');

    data.forEach(clase => {

      const card = document.createElement('div');
      card.classList.add('card');
      card.style.width = '20%';
      card.style.margin = '10px'
      card.innerHTML = `
        <img src="${clase.imagenUrl}" class="card-img-top" alt="${clase.nombre}">
        <div class="card-body">
          <h5 class="card-title">${clase.nombre}</h5>
          <p class="card-text">${clase.descripcion}</p>
        </div>
      `;


      const button = document.createElement('input');
      button.type = 'checkbox';
      button.id = `opcion${clase.id}`;
      button.name = 'opcion';
      button.value = clase.id;


      card.appendChild(button);


      container.appendChild(card);
    });


    const checkboxes = document.querySelectorAll('input[type="checkbox"]');

    const buttonModal = document.getElementById('modalButton');
    buttonModal.disabled = true;

    checkboxes.forEach(checkbox => {
      checkbox.addEventListener('change', function() {

        checkboxes.forEach(cb => {
          if (cb !== checkbox) {
            cb.disabled = true;
            buttonModal.disabled = false;
          }
        });


         if (checkbox.checked) {
           checkboxes.forEach(cb => {
             if (cb !== checkbox) {
               cb.disabled = true;
               buttonModal.disabled = false;
             }
           });

           valorSeleccionado = checkbox.value;
         } else {
           checkboxes.forEach(cb => {
             cb.disabled = false;
             buttonModal.disabled = true;
           });

           valorSeleccionado = null;
         }


        console.log('Valor seleccionado:', valorSeleccionado);
      });
    });
  })
  .catch(error => console.error('Error al obtener datos de la API:', error));

// Ahora obtenos los datos del endpoint 7horarios/api para llenar el ddl del modal
fetch('/horarios/api')
  .then(response => {
    if (!response.ok) {
      throw new Error('Error al obtener los horarios');
    }
    return response.json();
  })
  .then(data => {
    const horarioSelect = document.getElementById('horario-select');
    const checkboxes = document.querySelectorAll('input[type="checkbox"]');
    let valorSeleccionado = null;

    checkboxes.forEach(checkbox => {
      checkbox.addEventListener('change', function() {
        valorSeleccionado = checkbox.checked ? checkbox.value : null;
        filterHorarios(data, valorSeleccionado);
      });
    });
  })
  .catch(error => {
    console.error('Error al obtener los horarios:', error);
  });

function filterHorarios(data, valorSeleccionado) {
  const horarioSelect = document.getElementById('horario-select');
  horarioSelect.innerHTML = ''; // Limpiar opciones anteriores

  if (valorSeleccionado) {
    const filteredData = data.filter(horario => horario.clase.id === parseInt(valorSeleccionado));
    filteredData.forEach(horario => {
      const optionText = `${horario.clase.nombre} - ${horario.diaSemana} - ${horario.horaInicio} a ${horario.horaFinalizacion}`;
      const optionValue = horario.id;
      const option = new Option(optionText, optionValue);
      horarioSelect.appendChild(option);
    });
  }
}

// Ahora agregamos un event cuando el usuario quiera registrase en un horario y de esta manera se hace solitud al sevrido que recibe y guarda en la db
document.addEventListener('DOMContentLoaded', function () {
    // Agrega un evento de clic al botón de inscripción
    document.getElementById('btnInscribirse').addEventListener('click', function () {
        // Obtiene el ID del horario seleccionado
        var horarioId = document.getElementById('horario-select').value;
        // Obtiene el nombre del usuario
        var nombreUsuario = document.getElementById('nombreUsuario').value;

        // Verifica que se haya seleccionado un horario
        if (horarioId) {
            // Crea un objeto con los datos a enviar al servidor
            var data = {
                usuario: nombreUsuario, // Aquí asumo que el ID del usuario es el nombre de usuario
                horario: horarioId
            };

            // Realiza una solicitud Fetch al servidor
            fetch('/guardarInscripcion', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify(data)
            })
            .then(function (response) {
                // Verifica si la solicitud fue exitosa
                if (response.ok) {
                    // Si la respuesta fue exitosa, muestra un mensaje de éxito
                    alert('Inscripción completada exitosamente.');
                } else {
                    // Si hubo un error, muestra un mensaje de error
                    alert('Error al completar la inscripción. Usuario o horario no encontrados.');
                }
            })
            .catch(function (error) {
                // Muestra un mensaje si ocurrió un error en la solicitud Fetch
                console.error('Error al realizar la solicitud Fetch:', error);
            });
        } else {
            // Muestra un mensaje si no se ha seleccionado ningún horario
            alert('Por favor, selecciona un horario.');
        }
    });
});
