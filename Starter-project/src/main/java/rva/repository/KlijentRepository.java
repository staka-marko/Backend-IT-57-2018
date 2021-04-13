package rva.repository;

import java.util.Collection;

import org.springframework.data.jpa.repository.JpaRepository;

import rva.jpa.Klijent;

public interface KlijentRepository extends JpaRepository<Klijent, Integer>{

	Collection<Klijent> findByBrojLk(Integer broj_lk);
	
	/*s obzirom da kod mene nema numeric obiljezja u racunu
	 iskoristio sam da jedino numeric obiljezje koje imam
	 a to je broj lk primjenim na ono sto smo radili sa poredjenjem
	 cijene stavke narudzbe. Nije bas mnogo logicno porediti brojeve lk,
	 ali to mi je jedina numeric vrijednost :D */
	Collection<Klijent> findByBrojLkLessThanOrderById(Integer broj_lk);
	
}
