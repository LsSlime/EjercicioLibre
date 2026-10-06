package com.example.ejerciciolibre.model;

public class Juego {

    private int id;
    private String titulo;
    private String genero;
    private String plataforma;
    private double precio;
    private int fecha_lanzamiento;

    public Juego() {
    }

    public Juego(int id, String titulo, String genero, String plataforma, double precio, int fecha_lanzamiento) {
        this.id = id;
        this.titulo = titulo;
        this.genero = genero;
        this.plataforma = plataforma;
        this.precio = precio;
        this.fecha_lanzamiento = fecha_lanzamiento;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getGenero() {
        return genero;
    }

    public void setGenero(String genero) {
        this.genero = genero;
    }

    public String getPlataforma() {
        return plataforma;
    }

    public void setPlataforma(String plataforma) {
        this.plataforma = plataforma;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }

    public int getFecha_lanzamiento() {
        return fecha_lanzamiento;
    }

    public void setFecha_lanzamiento(int fecha_lanzamiento) {
        this.fecha_lanzamiento = fecha_lanzamiento;
    }
}