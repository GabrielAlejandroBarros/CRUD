document.addEventListener("DOMContentLoaded", function() {
    const modoOscuroBtn = document.getElementById("modoOscuroBtn");
    const contenido = document.getElementById("contenido");

    // Verificar si hay un tema almacenado localmente
    const temaGuardado = localStorage.getItem("tema");

    // Aplicar el tema guardado, si existe
    if (temaGuardado) {
        contenido.classList.add(temaGuardado);
    }

    // Manejar el clic en el botón
    modoOscuroBtn.addEventListener("click", function() {
        contenido.classList.toggle("modo-oscuro");

        // Guardar el tema seleccionado localmente
        if (contenido.classList.contains("modo-oscuro")) {
            localStorage.setItem("tema", "modo-oscuro");
        } else {
            localStorage.setItem("tema", "modo-claro");
        }
    });
});
