package com.example.ejerciciolibre.service;

import com.example.ejerciciolibre.model.Juego;
import com.example.ejerciciolibre.repository.JuegoDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class JuegoService {

    private final JuegoDAO juegoDAO;

    @Autowired
    public JuegoService(JuegoDAO juegoDAO) {
        this.juegoDAO = juegoDAO;
    }

    public void guardar(Juego juego) {
        if (juego.getTitulo() == null || juego.getTitulo().trim().isEmpty()) {
            throw new IllegalArgumentException("El título del juego no puede estar vacío");
        }
        if (juego.getPrecio() < 0) {
            throw new IllegalArgumentException("El precio no puede ser negativo");
        }
        juegoDAO.guardar(juego);
    }

    public void actualizar(Juego juego) {
        if (juego.getTitulo() == null || juego.getTitulo().trim().isEmpty()) {
            throw new IllegalArgumentException("El título del juego no puede estar vacío");
        }
        if (juego.getPrecio() < 0) {
            throw new IllegalArgumentException("El precio no puede ser negativo");
        }
        juegoDAO.actualizar(juego);
    }

    public void eliminar(int id) {
        juegoDAO.eliminar(id);
    }

    public Juego obtenerPorId(int id) {
        return juegoDAO.obtenerPorId(id);
    }

    public List<Juego> obtenerTodos() {
        return juegoDAO.obtenerTodos();
    }

    public List<Juego> listarTodos() {
        return juegoDAO.obtenerTodos();
    }
}
