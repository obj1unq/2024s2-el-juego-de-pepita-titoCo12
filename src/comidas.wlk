import wollok.game.*

object manzana {
	const base= 5
	var madurez = 1
	var property position = game.at(6,2)

	method energiaQueOtorga() {
		return base * madurez	
	}
	
	method madurar() {
		madurez = madurez + 1
		//madurez += 1
	}

	method image() = "manzana.png"

}

object alpiste {

	var property position = game.at(1,8)

	method energiaQueOtorga() {
		return 20
	} 

	method image() = "alpiste.png"

}

