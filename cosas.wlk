import wollok.game.*

object personaje {
  var property position = game.center()

  method text() = "Jack"
}



object paredIzq1{

    method position() = game.at(5,4)
    method text() = "pared"

    method noPasa(entidad){
        entidad.position( entidad.position().left(1))
    }
}
object paredIzq2{

    method position() = game.at(5,3)
    method text() = "pared"

    method noPasa(entidad){
        entidad.position( entidad.position().left(1))
    }
}
object paredDer1{

    method position() = game.at(3,4)
    method text() = "pared"

    method noPasa(entidad){
        entidad.position( entidad.position().right(1))
    }
}
object paredDer2{

    method position() = game.at(3,3)
    method text() = "pared"

    method noPasa(entidad){
        entidad.position( entidad.position().right(1))
    }
}