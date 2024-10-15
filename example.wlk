object julieta{
  var cansancio = 0
  const property punteria = 20
  var property tickets = 15
  method fuerza() = 80 - cansancio
  method cansancio() = cansancio
  method jugar(juego){
    cansancio += juego.cansa()
    juego.otorgarTickets(self)
  }

}

object tiroAlBlanco{
  const cansa = 3

  method cansa() = cansa

  method otorgarTickets(jugador){
    if(jugador.punteria() % 10 == 0){
      jugador.tickets(jugador.tickets()+jugador.punteria().div(10))
    }else{
      jugador.tickets(jugador.tickets()+jugador.punteria().div(10) + 1)
    }
    
  }

}

object pruebaDeFuerza {
  const cansa = 8

  method cansa() = cansa
}

object ruedaDeLaFortuna {
  const cansa = 1

  method cansa() = cansa
}

