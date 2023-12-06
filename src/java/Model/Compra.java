/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author USER
 */
public class Compra {
    private String codCompra;
    private String codUusario;
    private double total;
    private String fechaCompra;

    public Compra() {
    }

    public Compra(String codCompra, String codUusario, double total, String fechaCompra) {
        this.codCompra = codCompra;
        this.codUusario = codUusario;
        this.total = total;
        this.fechaCompra = fechaCompra;
    }

    public String getFechaCompra() {
        return fechaCompra;
    }

    public void setFechaCompra(String fechaCompra) {
        this.fechaCompra = fechaCompra;
    }

    public String getCodCompra() {
        return codCompra;
    }

    public void setCodCompra(String codCompra) {
        this.codCompra = codCompra;
    }

    public String getCodUusario() {
        return codUusario;
    }

    public void setCodUusario(String codUusario) {
        this.codUusario = codUusario;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }
    
}
