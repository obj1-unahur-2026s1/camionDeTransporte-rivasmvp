object knightRider {
    const property peso = 500
    const property peligrosidad = 10
}

object bumblebee{
    const property peso = 800
    var property estaEnAuto = true

    method peligrosidad() {
        if (estaEnAuto){
            return 15
        }
        else{
            return 30
        }
    }}

object paqueteDeLadrillos{
    var property cantLadrillos = 1

    method peso() = cantLadrillos * 2
    var property peligrosidad = 2 

}
object arenaAGranel{
    var peligrosidad = 1
    var peso = 0

}
object bateriaAntiaerea{
    var property tieneMisiles = true

    method peligrosidad() = if (tieneMisiles) 100 else 0

    method peso() = if (self.tieneMisiles()) 300 else 200
    
    }

object contenedorPortuario{
    const property cosasDentro = [bumblebee , bateriaAntiaerea] 
    method peso() = cosasDentro.sum({c => c.peso()}) + 100

    method añadirCosa(unaCosa) = cosasDentro.add(unaCosa)
    method quitarCosa(unaCosa) = cosasDentro.remove(unaCosa)

    method cosasDentroPeligrosidad() = cosasDentro.map({c => c.peligrosidad()})

    
    method peligrosidad() {
        if (!cosasDentro.isEmpty()){
            return self.cosasDentroPeligrosidad().max()}
        else{
            return 0
    }}
}

object residuos{
    var property peso = 900
    const property peligrosidad = 1
}

object embalaje{

    var cosaEnvuelta = 0

    method peso(){
        var peso = 0

        if (cosaEnvuelta == 0){
            peso = 0}

        else{
            peso = cosaEnvuelta.peso()
        }

        return peso
    }

    method envolver(unaCosa){
        cosaEnvuelta = unaCosa}

    
  
}