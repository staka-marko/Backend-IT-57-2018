package rva.ctrls;

import java.util.Collection;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import rva.jpa.Klijent;
import rva.jpa.Racun;
import rva.repository.KlijentRepository;
import rva.repository.RacunRepository;

@CrossOrigin
@RestController
@Api(tags = {"Račun CRUD operacije"})

public class RacunRestController {
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	@Autowired
	private RacunRepository racunRepository;
	
	@Autowired
	private KlijentRepository klijentRepository;
	
	@GetMapping("racun")
	@ApiOperation(value = "Vraća kolekciju svih računa iz baze podataka")
	public Collection<Racun> getRacuni() {
		return racunRepository.findAll();
	}
	
	@GetMapping("racun/{id}")	
	@ApiOperation(value = "Vraća račun iz baze podataka čija je id vrijednost proslijeđena kao path varijabla")
	public Racun getRacun(@PathVariable("id") Integer id) {
		return racunRepository.getOne(id);
	}
	
	@GetMapping("racuni_za_klijentaId/{id}")
	@ApiOperation(value = "Vraća kolekciju svih račune za klijente iz baze podataka koji imaju id vrijednost kao proslijeđena path varijabla")
	public Collection<Racun> racuniPoKlijentuId(@PathVariable("id") Integer id){
		Klijent k = klijentRepository.getOne(id);
		return racunRepository.findByKlijent(k);
	}
	
	// Less than sam iskoristio kod klijenta
	
	@PostMapping("racun")
	@ApiOperation(value = "Upisuje račun u bazu podataka")
	public ResponseEntity<Racun> insertRacun(@RequestBody Racun racun){
		if(!racunRepository.existsById(racun.getId())) {
			racunRepository.save(racun);
			return new ResponseEntity<Racun>(HttpStatus.OK);
		}
		return new ResponseEntity<Racun>(HttpStatus.CONFLICT);
	}
	
	@PutMapping("racun")
	@ApiOperation(value = "Modifikuje postojeći račun u bazi podataka")
	public ResponseEntity<Racun> updateRacun(@RequestBody Racun racun){
		if(!racunRepository.existsById(racun.getId())) {
			return new ResponseEntity<Racun>(HttpStatus.NO_CONTENT);
		}
		racunRepository.save(racun);
		return new ResponseEntity<Racun>(HttpStatus.OK);
	}
	
	@Transactional
	@DeleteMapping("racun/{id}")
	@ApiOperation(value = "Briše račun iz baze podataka čija je id vrijednost proslijeđena kao path varijabla")
	public ResponseEntity<Racun> deleteRacun(@PathVariable("id") Integer id){
		if(!racunRepository.existsById(id)) {
			return new ResponseEntity<Racun>(HttpStatus.NO_CONTENT);
		}
		racunRepository.deleteById(id);
		if(id == -100) {
			jdbcTemplate.execute(
					"INSERT INTO \"racun\"(\"id\", \"naziv\", \"oznaka\", \"opis\", \"tip_racuna\", \"klijent\" )"
					+ "VALUES (-100, 'TNaziv', 'TOznaka', 'TOpis', 1, 1)"
					);
		}
		return new ResponseEntity<Racun>(HttpStatus.OK);
	}

}
