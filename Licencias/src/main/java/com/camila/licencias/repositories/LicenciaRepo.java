package com.camila.licencias.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import com.camila.licencias.models.Licencia;
import com.camila.licencias.services.MainService;

@SuppressWarnings("unused")
@Repository
public interface LicenciaRepo extends CrudRepository<Licencia, Long> {

	Licencia findTopByOrderByNumberDesc();



}
