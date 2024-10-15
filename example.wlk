object julieta{
  var cansancio = 0
  var property tickets = 15
  method fuerza() = 80 - cansancio
  method punteria() = 20
  method cansancio() = cansancio
  method jugar(juego){
    tickets += juego.otorgarTickets(self)
    cansancio += juego.cansa()
  }
  method puedeCanjear(premio) = tickets >= premio.precio() 
}

object gerundio {
  method jugar(juego){}
  method puedeCanjear(premio) = true
}


object tiroAlBlanco{

  method cansa() = 3

  method otorgarTickets(jugador) = jugador.punteria().div(10).roundUp()
}

object pruebaDeFuerza {
  method cansa() = 8

  method otorgarTickets(jugador) = if(jugador.fuerza() >= 75) 20 else 0
}

object ruedaDeLaFortuna {
  var property estaAceitada = false
  method cansa() = if (estaAceitada) 0 else 1
  method otorgarTickets(jugador) = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20].anyOne()

}

object ositoDePeluche{
  method precio() = 45
}

object taladroRotopercutor{
  var property precio = 1000
}

