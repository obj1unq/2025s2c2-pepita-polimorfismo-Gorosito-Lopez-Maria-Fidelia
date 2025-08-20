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


/*Agregar a Pepón: Pepón es otra ave que puede comer el alpiste y la manzana y sigue las siguientes 
reglas:

La energía inicial de pepón es 30.
Sabe decir su energía.
Cuando come, solo puede aprovechar la mitad de la energía que aporta el alimento
Cuando vuela gasta 20 fijos más 2 joules por km,
Ejemplos:

si tiene 30 de energía y come alpiste su nueva energía es 30 + 20/2 = 40
si tiene 30 de energía y vuela 3 km su nueva energía es: 30(energiaInicial) - 20(gastoFijo) 
		- 2(jules por km) *3 =  4    */

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




