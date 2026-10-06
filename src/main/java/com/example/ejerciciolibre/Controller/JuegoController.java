package com.example.ejerciciolibre.Controller;

import com.example.ejerciciolibre.model.Juego;
import com.example.ejerciciolibre.service.JuegoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.List;

@Controller
public class JuegoController {

    private final JuegoService juegoService;

    @Autowired
    public JuegoController(JuegoService juegoService) {
        this.juegoService = juegoService;
    }

    @GetMapping({"/", "/juegos"})
    public String listarJuegos(Model model) {
        List<Juego> juegos = juegoService.obtenerTodos();
        model.addAttribute("juegos", juegos);
        return "Lista-juegos";
    }

    @GetMapping("/juegos/nuevo")
    public String mostrarFormularioNuevo(Model model) {
        model.addAttribute("juego", new Juego());
        return "formulario-juego";
    }

    @PostMapping("/juegos/guardar")
    public String guardarJuego(@ModelAttribute("juego") Juego juego) {
        if (juego.getId() > 0) {
            juegoService.actualizar(juego);
        } else {
            juegoService.guardar(juego);
        }
        return "redirect:/juegos";
    }

    @GetMapping("/juegos/editar/{id}")
    public String mostrarFormularioEditar(@PathVariable("id") int id, Model model) {
        Juego juego = juegoService.obtenerPorId(id);
        if (juego != null) {
            model.addAttribute("juego", juego);
            return "formulario-juego";
        }
        return "redirect:/juegos";
    }

    @GetMapping("/juegos/eliminar/{id}")
    public String eliminarJuego(@PathVariable("id") int id) {
        juegoService.eliminar(id);
        return "redirect:/juegos";
    }
}
