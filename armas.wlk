object ballesta {
  const potencia = 4
  var flechas = 10

  method fueUsada() {
    flechas = flechas - 1
  }
  method estaCargada() {
    return flechas >= 1
  }
}
object jabalina {
  const potencia = 30
  var estaCargada = true

  method fueUsada() {
    estaCargada = false
  }
}