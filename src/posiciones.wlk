import wollok.game.*

object arriba {
    method sigPosicion(position) {
        return position.up(1)
    }

    method sigEsBorde(pos) {
        return pos == game.at(pos.x(),game.height() - 1)
    }
}

object izquierda {
    method sigPosicion(position) {
        return position.left(1)
    }

    method sigEsBorde(pos) {
        return pos == game.at(0,pos.y())
    }
}

object abajo {
    method sigPosicion(position) {
        return position.down(1)
    }

    method sigEsBorde(pos) {
        return pos == game.at(pos.x(),0)
    }
}

object derecha {
    method sigPosicion(position) {
        return position.right(1)
    }

    method sigEsBorde(pos) {
        return pos == game.at(game.width() - 1,pos.y())
    }
}