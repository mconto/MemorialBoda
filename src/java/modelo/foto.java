/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

/**
 *
 * @author Mauricio
 */
public class foto {
    private String autor;
    private String img;

    public foto(String img, String autor) {
        this.img = img;
        this.autor = autor;
    }
    
    public foto() {
        
    }

    public String getAutor() {
        return autor;
    }

    public void setAutor(String autor) {
        this.autor = autor;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }
}
