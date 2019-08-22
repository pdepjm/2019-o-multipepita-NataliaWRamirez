object pepita {
	var energia = 100

	method estaCansada() {
		return energia < 50
	}

	method vola(kms) {
		energia -= 10 + kms
	}

	method come(comida) {
		energia = energia + comida.energiaQueOtorga()
	}
	
	
}

object alpiste {
	var gramos = 10
	
	method energiaQueOtorga() { 
		return 4 * gramos
	}
	
	method gramos(nuevosGramos) {
		gramos = nuevosGramos
	}	
}

object manzana {
	method energiaQueOtorga() { 
		return 50
	}	
}

object mijo{
	var energia = 0
	method mojarse(){
		energia += 15
	}
	method secarse(){
		energia += 20
	}
}

object canelones {
	var energia = 20
	
	method conSalsa() {
		energia += 5
	}
	method conQueso() {
		energia +=7
	}
	method conSalsayQueso() {
		energia +=  5 + 7
	}
	
	
}