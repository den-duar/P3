package br.edu.iesp.api.resource;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import br.edu.iesp.api.entity.Pessoa;

@RestController
@RequestMapping("/pessoa")
public class PessoaResource {
	
	@GetMapping("/consultar")
	public Pessoa getPessoa() {
		Pessoa p = new Pessoa();
		p.setNome("Dennis");
		p.setIdade(29);
		return p;
	}
	
}