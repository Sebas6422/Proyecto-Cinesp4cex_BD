/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author USER
 */
public class DetalleCompra {
    private String codDetComp;
    private String codCompra;
    private String carPelicula;
    private String carDulceria;
    private String carPromocion;
    private int cantidad;

    public DetalleCompra() {
    }

    public DetalleCompra(String codDetComp, String codCompra, String carPelicula, String carDulceria, String carPromocion, int cantidad) {
        this.codDetComp = codDetComp;
        this.codCompra = codCompra;
        this.carPelicula = carPelicula;
        this.carDulceria = carDulceria;
        this.carPromocion = carPromocion;
        this.cantidad = cantidad;
    }

    public String getCodDetComp() {
        return codDetComp;
    }

    public void setCodDetComp(String codDetComp) {
        this.codDetComp = codDetComp;
    }

    public String getCodCompra() {
        return codCompra;
    }

    public void setCodCompra(String codCompra) {
        this.codCompra = codCompra;
    }

    public String getCarPelicula() {
        return carPelicula;
    }

    public void setCarPelicula(String carPelicula) {
        this.carPelicula = carPelicula;
    }

    public String getCarDulceria() {
        return carDulceria;
    }

    public void setCarDulceria(String carDulceria) {
        this.carDulceria = carDulceria;
    }

    public String getCarPromocion() {
        return carPromocion;
    }

    public void setCarPromocion(String carPromocion) {
        this.carPromocion = carPromocion;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

   
    
}
