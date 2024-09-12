import wollok.game.*
import pepita.*

object arriba {
    method sigPosicion(position) {
        return position.up(1)
    }

    method sigEsBorde() {
        return pepita.position() == game.at(pepita.position.x(),game.height() - 1)
    }
}

object izquierda {
    method sigPosicion(position) {
        return position.left(1)
    }

    method sigEsBorde() {
        return pepita.position() == game.at(0, pepita.position.y())
    }
}

object abajo {
    method sigPosicion(position) {
        return position.down(1)
    }

    method sigEsBorde() {
        return pepita.position() == game.at(pepita.position.x(), 0)
    }
}

object derecha {
    method sigPosicion(position) {
        return position.right(1)
    }

    method sigEsBorde() {
        return pepita.position() == game.at(game.width() - 1, pepita.position.y())
    }
}