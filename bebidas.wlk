object whisky {
  method rendimientoQueOtorga(dosisConsumida) = 0.9 ** dosisConsumida
}

object terere {
  method rendimientoQueOtorga(dosisConsumida) = 1.max(0.1 * dosisConsumida)
}

object cianuro {
  method rendimientoQueOtorga(dosisConsumida) = 0
}
object licuadoDeFrutas{
  const frutas=[banana, manzana,naranja]

  method rendimientoQueOtorga(dosisConsumida)= dosisConsumida*
  frutas.sum({frutas=>frutas.nutrientes()})
}

object aguaSaborisada {
  var compBebida=terere
  method rendimientoQueOtorga(dosisConsumida)= 1 + compBebida.rendimientoQueOtorga(dosisConsumida)

  method cambiarBebida(unaBebida) {
    compBebida=unaBebida
  }
  
}
object coctel {
  const bebidas=[]
  method rendimientoQueOtorga(dosisConsumida)= 
  self.cantidadDeBebidad().rendimientoQueOtorga(dosisConsumida) * bebidas.rendimientoQueOtorga(dosisConsumida)

method cantidadDeBebidad() = bebidas.size() 
}
object banana{
  method nutrientes()=12
}
object manzana{
   method nutrientes()=5
}
object naranja{
   method nutrientes()=13
}
