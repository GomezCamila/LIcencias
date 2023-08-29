package com.camila.licencias.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.camila.licencias.models.Licencia;
import com.camila.licencias.models.Persona;

import com.camila.licencias.models.Licencia;
import com.camila.licencias.repositories.LicenciaRepo;
import com.camila.licencias.repositories.PersonaRepo;


@SuppressWarnings("unused")
@Service
public class MainService {

	
	//INYECCION DE DEPENDENCIAS

	@Autowired
	private LicenciaRepo licenciaRepo;
	
	
	@Autowired
	private PersonaRepo personaRepo;
	
	
	//CREAR PERSONA
	public Persona createdPersona(Persona persona) {
		return personaRepo.save(persona);
	}
	
	/*public Licencia createdLicencia(Licencia licencia) {
		return licenciaRepo.save(licencia);
	}*/
	
	public List<Persona> todasPersonas(){
		return personaRepo.findAll();
	}
	
	//CREAR LICENCIA
	
	
	public Licencia crearLicencia(Licencia licencia){
		licencia.setNumber(this.generarNumerLic());
		return licenciaRepo.save(licencia);
	}
	

	public List<Persona> obtenerPersonaSinLic(){
		return personaRepo.findByLicenciaIdIsNull();
		
	}
	
	//Metodo para generar numero de licencia
	public int generarNumerLic() {
		Licencia lice = licenciaRepo.findTopByOrderByNumberDesc();
		if(lice ==null) {
			return 1;
			
		}
		int numeroMayorLicencia =lice.getNumber();
		numeroMayorLicencia++;
		return numeroMayorLicencia;
	}
	
	public MainService() {
		// TODO Auto-generated constructor stub
	}

	public Persona buscarPersonaPorId(Long id) {
		// TODO Auto-generated method stub
		return null;
	}

}
