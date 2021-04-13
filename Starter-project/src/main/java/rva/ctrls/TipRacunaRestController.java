package rva.ctrls;

import java.util.Collection;

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

import rva.jpa.TipRacuna;
import rva.repository.TipRacunaRepository;

@CrossOrigin
@RestController
public class TipRacunaRestController {
	
	@Autowired
	private JdbcTemplate jdbcTemplate;

	@Autowired
	private TipRacunaRepository tipRacunaRepository;
	
	@GetMapping("tip_racuna")
	public Collection<TipRacuna> getTipoviRacuna() {
		return tipRacunaRepository.findAll();
	}
	
	@GetMapping("tip_racuna/{id}")
	public TipRacuna getTipRacuna(@PathVariable("id") Integer id) {
		return tipRacunaRepository.getOne(id);
	}
	
	@GetMapping("tip_racuna_naziv/{naziv}")
	public Collection<TipRacuna> getTipRacunaByNaziv(@PathVariable("naziv") String naziv){
		return tipRacunaRepository.findByNazivContainingIgnoreCase(naziv);
	}
	
	@PostMapping("tip_racuna")
	public ResponseEntity<TipRacuna> insertTipRacuna(@RequestBody TipRacuna tipRacuna){
		if(!tipRacunaRepository.existsById(tipRacuna.getId())) {
			tipRacunaRepository.save(tipRacuna);
			return new ResponseEntity<TipRacuna>(HttpStatus.OK);
		}
		return new ResponseEntity<TipRacuna>(HttpStatus.CONFLICT);
	}
	
	@PutMapping("tip_racuna")
	public ResponseEntity<TipRacuna> updateTipRacuna(@RequestBody TipRacuna tipRacuna){
		if(!tipRacunaRepository.existsById(tipRacuna.getId())) {
			return new ResponseEntity<TipRacuna>(HttpStatus.NO_CONTENT);
		}
		tipRacunaRepository.save(tipRacuna);
		return new ResponseEntity<TipRacuna>(HttpStatus.OK);
	}
	
	@DeleteMapping("tip_racuna/{id}")
		public ResponseEntity<TipRacuna> deleteTipRacuna(@PathVariable Integer id){
			if(!tipRacunaRepository.existsById(id)) {
				return new ResponseEntity<TipRacuna>(HttpStatus.NO_CONTENT);
			}	
			tipRacunaRepository.deleteById(id);
			if(id == -100) {
				jdbcTemplate.execute(
						"INSERT INTO \"tip_racuna\"(\"id\", \"naziv\", \"oznaka\", \"opis\")"
						+ "VALUES (-100, 'TestNaziv', 'TestOznaka', 'TestOpis')"
						);
			}
			return new ResponseEntity<TipRacuna>(HttpStatus.OK);
		}
	}
