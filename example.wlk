object julieta{
  var cansancio = 0
  const fuerza = 80 - cansancio
  const property punteria = 20
  var property tickets = 15
  method fuerza() = fuerza
  method cansancio() = cansancio
  method jugar(juego){
    cansancio += juego.cansa()
    tickets += juego.otorgarTickets(self)
  }

}

object tiroAlBlanco{
  const cansa = 3

  method cansa() = cansa

  method otorgarTickets(jugador) = if(jugador.punteria() % 10 == 0) return jugador.punteria().div(10) else return jugador.punteria().div(10) + 1
}

object pruebaDeFuerza {
  const cansa = 8

  method cansa() = cansa

  method otorgarTickets(jugador) = if(jugador.fuerza() >= 75) return 20 else return 0
}

object ruedaDeLaFortuna {
  const cansa = 1

  const ruleta = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]

  method cansa() = cansa

  method otorgarTickets(jugador) = ruleta.anyOne()

}

