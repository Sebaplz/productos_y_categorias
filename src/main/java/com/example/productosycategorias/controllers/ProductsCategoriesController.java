package com.example.productosycategorias.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.productosycategorias.models.ProductosCategorias;
import com.example.productosycategorias.services.MainService;

@Controller
public class ProductsCategoriesController {

    @Autowired
    private MainService mainService;

    @PostMapping("/products/{idProduct}")
    public String asociarCategoriaProducto(@PathVariable("idProduct") Long idProduct,
                                           @ModelAttribute("asociacion") ProductosCategorias productoscategorias,
                                           Model viewModel, BindingResult resultado) {
        if (resultado.hasErrors()) {
            return "mostrarproducto.jsp";
        }
        mainService.crearVinculo(productoscategorias);
        return "redirect:/products/" + idProduct;
    }

    @PostMapping("/categories/{idCategories}")
    public String asociarProductoCategoria(@PathVariable("idCategories") Long idCategories, @ModelAttribute("enlace") ProductosCategorias productosCategorias, BindingResult result, Model model){
        if (result.hasErrors()){
            return "mostrarCategoria.jsp";
        }else{
            mainService.crearVinculo(productosCategorias);
            return "redirect:/categories/" + idCategories;
        }
    }


}
