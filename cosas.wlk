import wollok.game.*

object personaje {
    var property position = game.at(4,0)

    method text() = "Jack" + position

}

/*  Opcion 1
Para saber qué pared se esta tocando se podrian hacer 4 clases, pared: derecha-izquierda-arriba-abajo y que cada una tenga su propio noPasa(X) donde se le dice a qué dirección   debe emepujar al personaje.

*/

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


/* Opcion dos
    Hacer que el personaje no puede pasar de X direccion, pero eso implicaria tener muchas restricciones sobre a que altura puede o no moverse el personaje.
    Se podria hacer con objetos invisibles, que cuando los pasa/pisa se cambia el valor de las rescciones de coordenadas.
    Mucho quilombo
*/
