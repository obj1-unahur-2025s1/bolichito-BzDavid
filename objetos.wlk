import bolichito-BzDavid.atributos.*

object remera {
  method color() = rojo

  method material() = lino

  method peso() = 800
}

object pelota {
  method color() = pardo

  method material() = cuero

  method peso() = 1300
}

object biblioteca {
  method color() = verde

  method material() = madera

  method peso() = 8000
}

object muneco {
  var peso = 0

  method color() = celeste

  method material() = vidrio

  method peso() = peso

  method cambiarPeso(nuevoPeso){
    peso = nuevoPeso
  }
}

object placa {
  var color = celeste

  var peso = 0

  method color() = color

  method material() = cobre

  method peso() = peso

  method cambiarPeso(nuevoPeso){
    peso = nuevoPeso
  }

  method cambiarColor(nuevoColor){
    color = nuevoColor
  }
}

object arito {
  method color() = celeste

  method material() = cobre

  method peso() = 180
}

object banquito {
  var color = naranja
  
  method color() = color

  method material() = madera

  method peso() = 8000

  method cambiarColor(nuevoColor){
    color = nuevoColor
  }
}

object cajita {
  var objetoDentro = arito

  method color() = rojo

  method material() = cobre

  method peso() = 400 + objetoDentro.peso()

  method objetoDentro() = objetoDentro

  method cambiarObjetoDentroPor_(nuevoObjeto){
    objetoDentro = nuevoObjeto
  }
}