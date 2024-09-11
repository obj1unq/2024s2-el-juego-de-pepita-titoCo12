import wollok.game.*
import pepita.*

object nido {
    var property position = game.at(8,8)

    method image() = "nido.png"
    
}


object silvestre {
    var property presa = pepita

 method position(){
        return game.at(presa.position().x().max(3),0)
    }

    method image() {
        return "silvestre.png"
    } 
}

