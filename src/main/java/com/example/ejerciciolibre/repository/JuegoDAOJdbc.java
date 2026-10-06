package com.example.ejerciciolibre.repository;


import com.example.ejerciciolibre.model.Juego;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@Repository
@Qualifier("JuegoDAOJdbc")
public class JuegoDAOJdbc implements JuegoDAO {

    private Connection getConnection() throws SQLException {

        Connection connection = Conexion.getInstancia().getConnection();
        if (connection == null || connection.isClosed()) {
            throw new SQLException("No se pudo establecer la conexion con la base de datos.");
        }
        return connection;
    }

    @Override
    public void guardar(Juego juego) {
        String sql = "INSERT INTO juegos (titulo, genero, plataforma, fecha_lanzamiento, precio) values (?, ?, ?, ?, ?)";
        try (PreparedStatement pstmt = getConnection().prepareStatement(sql)) {
            pstmt.setString(1, juego.getTitulo());
            pstmt.setString(2, juego.getGenero());
            pstmt.setString(3, juego.getPlataforma());
            pstmt.setInt(4, juego.getFecha_lanzamiento());
            pstmt.setDouble(5, juego.getPrecio());
            pstmt.executeUpdate();
            System.out.println("Juego guardado correctamente.");
        } catch (SQLException e) {
            throw new IllegalStateException("Error al guardar el juego: " + e.getMessage(), e);
        }
    }

    @Override
    public void actualizar(Juego juego) {
        String sql = "UPDATE juegos set titulo = ?, genero = ?, plataforma = ?, fecha_lanzamiento = ?, precio = ? where id = ?";
        try (PreparedStatement pstmt = getConnection().prepareStatement(sql)) {
            pstmt.setString(1, juego.getTitulo());
            pstmt.setString(2, juego.getGenero());
            pstmt.setString(3, juego.getPlataforma());
            pstmt.setInt(4, juego.getFecha_lanzamiento());
            pstmt.setDouble(5, juego.getPrecio());
            pstmt.setInt(6, juego.getId());
            pstmt.executeUpdate();
            System.out.println("Juego actualizado correctamente.");
        } catch (SQLException e) {
            throw new IllegalStateException("Error al actualizar el juego: " + e.getMessage(), e);
        }

    }

    @Override
    public void eliminar(int id) {
        String sql = "DELETE FROM juegos WHERE id = ?";
        try (PreparedStatement pstmt = getConnection().prepareStatement(sql)) {
            pstmt.setInt(1, id);
            pstmt.executeUpdate();
            System.out.println("Juego eliminado correctamente.");
        } catch (SQLException e) {
            throw new IllegalStateException("Error al eliminar el juego: " + e.getMessage(), e);
        }
    }

    @Override
    public Juego obtenerPorId(int id) {
        String sql = "SELECT * FROM juegos WHERE id = ?";
        Juego juego = null;
        try (PreparedStatement pstmt = getConnection().prepareStatement(sql)) {
            pstmt.setInt(1, id);
            try (ResultSet rs = pstmt.executeQuery()) {
                if (rs.next()) {
                    juego = mapearJuego(rs);
                }
            }
        } catch (SQLException e) {
            throw new IllegalStateException("Error al obtener el juego: " + e.getMessage(), e);
        }
        return juego;
    }

    @Override
    public List<Juego> obtenerTodos() {
        List<Juego> juegos = new ArrayList<>();
        String sql = "SELECT * FROM juegos";
        try (PreparedStatement pstmt = getConnection().prepareStatement(sql);
             ResultSet rs = pstmt.executeQuery()) {
            while (rs.next()) {
                Juego juego = mapearJuego(rs);
                juegos.add(juego);
            }
        } catch (SQLException e) {
            throw new IllegalStateException("Error al listar los juegos: " + e.getMessage(), e);
        }
        return juegos;
    }


    private Juego mapearJuego(ResultSet rs) throws SQLException{
        Juego juego = new Juego();
        juego.setId(rs.getInt("id"));
        juego.setTitulo(rs.getString("titulo"));
        juego.setGenero(rs.getString("genero"));
        juego.setPlataforma(rs.getString("plataforma"));
        juego.setFecha_lanzamiento(rs.getInt("fecha_lanzamiento"));
        juego.setPrecio(rs.getDouble("precio"));
        return juego;
    }
}
