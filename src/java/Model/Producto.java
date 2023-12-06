/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author USER
 */
public class Producto {
    private String codCarrito;
    private String codDulceria;
    private int cantidad;

    public Producto() {
    }

    public Producto(String codCarrito, String codDulceria, int cantidad) {
        this.codCarrito = codCarrito;
        this.codDulceria = codDulceria;
        this.cantidad = cantidad;
    }

    public String getCodCarrito() {
        return codCarrito;
    }

    public void setCodCarrito(String codCarrito) {
        this.codCarrito = codCarrito;
    }

    public String getCodDulceria() {
        return codDulceria;
    }

    public void setCodDulceria(String codDulceria) {
        this.codDulceria = codDulceria;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }
    
}
