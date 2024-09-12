import wollok.game.*
import posiciones.*
import extras.*
import comidas.*


object pepita {
	var energia = 100
	var property position = game.at(3,5)
	const destino = nido 
	const cazador = silvestre
	const comidas = #{manzana,alpiste}

	method comidas() {
		return comidas
	}

	method comer(comida) {
		energia = energia + comida.energiaQueOtorga()
	}

	method mover(dir) {
		if (not(self.estaCansada())) {
			position = dir.sigPosicion(self.position()) 
			self.bajarEnergia()
		}
	}

	method bajarEnergia() {
		energia -= 9
	}

	method subirEnergia() {

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

	method estaSobreComida() {
		return comidas.any({comida => comida == game.uniqueCollider(self)})
	}

	method accionComer() {
		if (self.estaSobreComida()) {
			self.comer(game.uniqueCollider(self))
			game.removeVisual(game.uniqueCollider(self))
		}
	}

	

}

