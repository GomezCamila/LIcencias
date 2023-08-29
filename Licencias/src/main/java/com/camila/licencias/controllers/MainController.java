package com.camila.licencias.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.camila.licencias.models.Licencia;
import com.camila.licencias.models.Persona;
import com.camila.licencias.services.MainService;

import jakarta.validation.Valid;


@Controller
public class MainController {

	@Autowired
	private MainService mainService;
	
	
	@GetMapping("/")
public String raiz(Model viewModel) {
		List<Persona> todosUsuarios= mainService.todasPersonas();
		viewModel.addAttribute("todos", todosUsuarios);
		return "showinfo.jsp";
	}
	
	
	
	@GetMapping("/persons/new")
	public String formularioPersona(@ModelAttribute("persona")Persona persona){
		return "newperson.jsp";
	}
	
	
	@PostMapping("/persons/new")
	public String createPersona(@Valid @ModelAttribute("persona")Persona persona, BindingResult result){
		if(result.hasErrors()) {
			return "newperson.jsp";
		}
		mainService.createdPersona(persona);
		return "redirect:/";
	}
	
	
	
	@GetMapping("/licencias/new")
	public String formularioLicencia(@ModelAttribute("licencia")Licencia licencia, Model viewModel){
		List<Persona> todosUsuarios = mainService.todasPersonas();
	viewModel.addAttribute("personas", todosUsuarios);
	return "newlic.jsp";
		
	}

	@PostMapping("/licencias/new")
	public String createLicencia(@Valid @ModelAttribute("licencia")Licencia licencia, BindingResult result, Model viewModel){
		if(result.hasErrors()) {
			viewModel.addAttribute("persona",mainService.obtenerPersonaSinLic());
			return "newlic.jsp";
		}
		mainService.crearLicencia(licencia);
		return "redirect:/";
	}
	
	@GetMapping("/licencias/{id}")
	public String mostrarPersona(@PathVariable("id")Long id,Model viewModel) {
		Persona personaBuscada = mainService.buscarPersonaPorId(id);
	
	if(personaBuscada != null) {
		viewModel.addAttribute("personaBuscada", personaBuscada);
	}else {
		viewModel.addAttribute("mensajeError", "persona no encontrada");
	}
	return "show.jsp";
	}
	
	
	//CONSTRUCTOR
	public MainController() {
	
	}

}
