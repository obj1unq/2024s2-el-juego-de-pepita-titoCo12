import wollok.game.*

object pepita {
	var energia = 100
	var property position = game.at(3,5)

	method comer(comida) {
		energia = energia + comida.energiaQueOtorga()
	}

	method volar(kms) {
		energia = energia - 10 - kms 
	}
	
	method energia() {
		return energia
	}

	method image() = "pepita.png"
}

