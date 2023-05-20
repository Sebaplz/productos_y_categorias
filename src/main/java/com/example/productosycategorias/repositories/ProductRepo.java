package com.example.productosycategorias.repositories;

import java.util.List;

import com.example.productosycategorias.models.Categoria;
import org.springframework.data.repository.CrudRepository;

import com.example.productosycategorias.models.Producto;

public interface ProductRepo extends CrudRepository<Producto, Long> {
	
	List<Producto> findAll();

	List<Producto> findByCategoriesNotContains(Categoria categoria);
}
