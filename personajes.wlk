import armas.*
object luisa {
   
}
object floki {
  var arma = ballesta

  method setArma(armaElegida) {
    arma = armaElegida
  }
  method encontrar(elemento) {
    if(elemento == castillo){
      elemento.setDefensa(arma.potencia())
    }
    if(elemento == aurora){
      elemento.fueAtacada(arma)
    }
    arma.fueUsada()
  }
}
object mario {
  method encontrar(elemento) {
    
  }
}
//elementos
object castillo {
  const altura = 20
  var nivelDeDefensa = 150

  method setDefensa(potencia) {
    nivelDeDefensa = nivelDeDefensa - potencia
  }
}
object aurora {
  const altura = 1
  var estaViva = true

  method fueAtacada(arma) {
    if(arma.potencia() >= 10){
      estaViva = false
    }
  }
}
object tipa {
  var altura = 8
}