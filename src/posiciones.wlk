import wollok.game.*

object arriba {
    method sigPosicion(position) {
        return position.up(1)
    }
}

object izquierda {
    method sigPosicion(position) {
        return position.left(1)
    }
}

object abajo {
    method sigPosicion(position) {
        return position.down(1)
    }
}

object derecha {
    method sigPosicion(position) {
        return position.right(1)
    }
}