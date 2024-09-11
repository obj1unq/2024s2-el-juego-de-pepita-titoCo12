import wollok.game.*
import posiciones.*
import extras.*

object pepita {
	var energia = 100
	var property position = game.at(3,5)
	const destino = nido 
	const cazador = silvestre

	method comer(comida) {
		energia = energia + comida.energiaQueOtorga()
	}

	method mover(dir) {
		position = dir.sigPosicion(self.position())
		energia -= 9
	}

	method volar(kms) {
		energia = energia - 10 - kms 
	}
	
	method energia() {
		return energia
	}

	method estado() {
		return if (self.estaEnDestino()) {
			"-grande"
		} 
		else if (self.estaAtrapada() or self.estaCansada()) {
			"-gris"
		}
		else {
			""
		}
			
	}

	method estaCansada() {
		return (energia <= 0)
	}

	method image() {
		return "pepita" + self.estado() + ".png"
	}

	method estaEnDestino() {
		return (position == destino.position())
	}

	method estaAtrapada() {
		return (position == cazador.position())
	}

}

