object pepita {
	var energia = 100
	
	method comer(comida) {
		energia = energia + comida.energiaQueAporta()
	}
	
	method volar(distancia) {
		energia = energia - 10 - distancia
	}
	
	method energia() {
		return energia
	}
}

object alpiste {
	method energiaQueAporta() {
		return 20
	}
}

object manzana {
	var madurez = 1
	const base = 5
	
	method madurez() {
		return madurez
	}
	
	method madurez(_madurez) {
		madurez = _madurez
	}
	
	method madurar() {
		madurez = madurez + self.energiaQueAporta() * 0.1
	}
	
	method energiaQueAporta() {
		return base * madurez
	}
	
}


object pepon{
	var energia = 30
	method volar(_distancia){
		energia = energia - 20 - (2 * _distancia) 
	}
	method comer(_comida){
		energia = energia + (_comida.energiaQueAporta() / 2)
	}
	method energiaActual(){
		return(energia)
	}
}

object roque {
  var ave = pepita
  method alimentar(_ave){
	return (_ave.comer(alpiste))
  }
}




