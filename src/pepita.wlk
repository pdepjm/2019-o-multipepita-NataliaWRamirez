object pepita {
	var energia = 100

	method estaCansada() {
		return energia < 50
	}

	method vola(kms) {
		energia -= kms + 10
	}

	method come(comida) {
		energia = energia + comida.energiaQueOtorga()
	}
	
	 method estasFeliz() {
    return energia.between(500,1000)
    }
   method cuantoQuiereVolar() {
     var km = 0
     km += (energia / 5)
     if(energia > 300 and energia < 400)
       km += 10
     if(energia % 20 == 0)
       km += 15
     
   }
   method salirAComer() {
     self.vola(5)
     self.come(alpiste)
     self.vola(5)
   }
   
   method haceLoQueQuieras() {
   if(self.estaCansada())
   self.come(alpiste)
   if(self.estasFeliz())
      self.vola(8)
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
object mijo {
    var energia = 0
    method mojarse() {
      energia = 15
    }
    method secarse() {
      energia = 20
    }
    method energia() {
      return energia
    }
}
object canelones {
    var energia = 20 
    method ponerSalsa() {
      energia += 5
    }
    method ponerQueso() {
      energia += 7
    }
    method ponerSalsaYQueso() {
      self.ponerSalsa()
      self.ponerQueso()
    }
    method sacarSalsa() {
      energia -= 5
    }
    method sacarQueso() {
      energia -= 7
    }
}
object roque {
    method entrenar() {
    pepita.vola(10)
    pepita.come(alpiste)
    pepita.vola(5)
    pepita.haceLoQueQuieras()
    }
}