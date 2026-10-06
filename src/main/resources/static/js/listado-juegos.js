// El script se carga con defer: la tabla ya existe cuando se ejecuta.
const listado = document.getElementById("listado-juegos");
if (listado) {
    iniciarListado(listado);
}

function iniciarListado(contenedor) {
    const filas = Array.from(contenedor.querySelectorAll("tbody tr"));
    const controles = contenedor.querySelector("[data-paginacion]");
    if (filas.length === 0) return;

    const selector = contenedor.querySelector("[data-tamano-pagina]");
    const resumen = contenedor.querySelector("[data-resumen]");
    const paginas = contenedor.querySelector("[data-paginas]");
    const anterior = contenedor.querySelector("[data-anterior]");
    const siguiente = contenedor.querySelector("[data-siguiente]");
    let paginaActual = 1;
    let juegosPorPagina = Number(selector.value);

    function totalPaginas() {
        return Math.ceil(filas.length / juegosPorPagina);
    }

    function mostrarFilas() {
        // Los indices empiezan en 0: la pagina 2 de 10 juegos empieza en el indice 10.
        const inicio = (paginaActual - 1) * juegosPorPagina;
        const fin = Math.min(inicio + juegosPorPagina, filas.length);
        filas.forEach((fila, indice) => {
            fila.hidden = indice < inicio || indice >= fin;
        });
        resumen.textContent = `Mostrando ${inicio + 1}–${fin} de ${filas.length} videojuegos`;
    }

    function actualizarControles() {
        anterior.disabled = paginaActual === 1;
        siguiente.disabled = paginaActual === totalPaginas();

        // Reutilizamos los botones para conservar el foco al cambiar de pagina.
        if (paginas.children.length !== totalPaginas()) {
            paginas.replaceChildren();
            for (let numero = 1; numero <= totalPaginas(); numero++) {
                const boton = document.createElement("button");
                boton.type = "button";
                boton.className = "btn btn-outline-primary btn-sm";
                boton.textContent = numero;
                boton.setAttribute("aria-label", "Página " + numero);
                boton.addEventListener("click", () => cambiarPagina(numero));
                paginas.appendChild(boton);
            }
        }
        Array.from(paginas.children).forEach((boton, indice) => {
            const activa = indice + 1 === paginaActual;
            boton.classList.toggle("active", activa);
            if (activa) boton.setAttribute("aria-current", "page");
            else boton.removeAttribute("aria-current");
        });
    }

    function cambiarPagina(numero) {
        // Limitamos la pagina al intervalo valido.
        paginaActual = Math.max(1, Math.min(numero, totalPaginas()));
        mostrarFilas();
        actualizarControles();
    }

    anterior.addEventListener("click", () => cambiarPagina(paginaActual - 1));
    siguiente.addEventListener("click", () => cambiarPagina(paginaActual + 1));
    selector.addEventListener("change", () => {
        juegosPorPagina = Number(selector.value);
        cambiarPagina(1);
    });

    cambiarPagina(1);
    controles.hidden = false;
}
