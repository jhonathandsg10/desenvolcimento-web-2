package br.com.anpede.services;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import br.com.anpede.dto.AssociadoDTO;
import br.com.anpede.entities.Associado;
import br.com.anpede.repositories.AssociadoRepository;
import br.com.anpede.services.exceptions.ResourceEntityNotFoundException;
import jakarta.persistence.EntityNotFoundException;

@Service
public class AssociadoService {
	
	@Autowired
	private AssociadoRepository repository;
	
	@Transactional(readOnly = true)
	public List<AssociadoDTO>	 findAll() {
		List<Associado> lista = repository.findAll();
		List<AssociadoDTO> listaDTO = new ArrayList<>();
		for(Associado a: lista) {
			listaDTO.add(new AssociadoDTO(a));	
			}
		return listaDTO;
	}
	
	@Transactional(readOnly = true)
	public AssociadoDTO findById(Long id) {
		Optional<Associado> obj =  repository.findById(id);
		Associado entity = obj.orElseThrow(
				() -> new ResourceEntityNotFoundException("O Registro solicitado nao foi localizado.")
				);
		return new AssociadoDTO(entity);
	}
	@Transactional
	public AssociadoDTO insert(AssociadoDTO dto) {
		Associado entity = new Associado();
		entity.setNome(dto.getNome());
		entity.setCPF(dto.getCPF());
		entity.setDataNascimento(dto.getDataNascimento());
		entity.setTelefone(dto.getTelefone());
		entity.setEmail(dto.getEmail());
		entity.setEndereco(dto.getEndereco());
		
		entity = repository.save(entity);
		return new AssociadoDTO(entity);
	}
	@Transactional
	public AssociadoDTO update(Long id, AssociadoDTO dto) {
		try {
			
		Associado entity = repository.getReferenceById(id) ;
		entity.setNome(dto.getNome());
		entity.setCPF(dto.getCPF());
		entity.setDataNascimento(dto.getDataNascimento());
		entity.setTelefone(dto.getTelefone());
		entity.setEmail(dto.getEmail());
		entity.setEndereco(dto.getEndereco());
		
		entity = repository.save(entity);
		return new AssociadoDTO(entity);
		}catch(EntityNotFoundException e) {
			throw new ResourceEntityNotFoundException("O Recurso com ID "+id+" nao foi localizado");
		}
	
	}

	public void delete(Long id) {
		try {
		repository.deleteById(id);
		}catch(EmptyResultDataAccessException e) {
			throw new ResourceEntityNotFoundException("O Recurso com ID "+id+" nao foi localizado");
		}
		
	}
	
}
