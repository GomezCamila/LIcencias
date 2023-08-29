package com.camila.licencias.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import com.camila.licencias.models.Persona;

@Repository
public interface PersonaRepo extends CrudRepository<Persona, Long>{

	List<Persona> findAll();

	List<Persona> findByLicenciaIdIsNull();

	
}
