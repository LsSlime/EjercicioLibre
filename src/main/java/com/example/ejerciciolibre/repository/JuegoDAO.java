package com.example.ejerciciolibre.repository;

import com.example.ejerciciolibre.model.Juego;

import java.util.List;

public interface JuegoDAO {

    void guardar(Juego juego);
    void actualizar(Juego juego);
    void eliminar(int id);
    Juego obtenerPorId(int id);
    List<Juego> obtenerTodos();

}
