import wollok.game.*
import posiciones.*
import extras.*
import comidas.*


object pepita {
	var property image = "pepita.png"
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
		if (not(self.estaCansada()) and not(dir.sigEsBorde(self.position()))) {
			position = dir.sigPosicion(self.position()) 
			self.bajarEnergia()
		}
	}

	method bajarEnergia() {
		energia -= 9
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

	method otraImagen() {
		return if (self.image() == "pepita.png") {"pepita-grande.png"}
		else "pepita.png"
	}


	method iniciarAnimacion() {
		game.onTick(1, "refrescarImagen" , {self.image(self.otraImagen())})
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

