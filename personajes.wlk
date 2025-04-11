import armas.*
object luisa {
  method aparece(elemento) {
    
  }
}
//personajes
object floki {
  var arma = ballesta
  var elementoElegido = castillo

  method setElemento(elemento) {
    elementoElegido = elemento
  }
  method setArma(armaElegida) {
    arma = armaElegida
  }
  method encontrar(elemento) {
    if(elemento == elementoElegido){
      elemento.disminuyeDefensa(arma.potencia())
    }
    if(elemento == elementoElegido){
      elemento.fueAtacada(arma)
    }
    arma.fueUsada()
  }
}
object mario {
  var valor = 0
  var elementoElegido = castillo
    
  method setElemento(elemento) {
    elementoElegido = elemento
  }
  method aumentaValor(elemento) {
    if(elemento == elementoElegido) {
      valor = valor + (elemento.nivelDeDefensa() * 0.2)
      elemento.aumentaDefensa(20)
    }
    if(elemento == elementoElegido) {
      valor = valor +15
    }
    if(elemento == elementoElegido) {
      valor = elemento.altura() * 2
      elemento.aumentaAltura(1)
    }
  }
  method encontrar(elemento) {
    self.aumentaValor(elementoElegido)
  }
  method estaFeliz() {
    return valor >= 50 || elementoElegido.altura() >= 10
  }
}
//elementos
object castillo {
  const altura = 20
  var nivelDeDefensa = 150

  method disminuyeDefensa(valor) {
    nivelDeDefensa = nivelDeDefensa - valor
  }
  method aumentaDefensa(valor) {
    nivelDeDefensa = nivelDeDefensa + valor
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

  method aumentaAltura(valor) {
    altura = altura + valor
  } 
}