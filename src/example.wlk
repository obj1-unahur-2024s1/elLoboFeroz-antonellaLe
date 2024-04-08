//El lobo feroz//


object  loboFeroz{
	var peso = 10
	
	method estaSaludable() {
		return peso >20 && peso <150
	}
	
	method aumentaDePeso (kilogramos){
		peso += kilogramos
	}
	method bajaDePeso (kilogramos){
		peso -= kilogramos
	}
	method crisis(){
		peso = 10
	}
	method estaMuerto(){
		return peso <= 10
	}
	
	method sopla(tipoDeCasa){
		peso -= tipoDeCasa.resistencia() + chanchito.pesoDeChanchitos()
	}

	
//Caperucita Roja//

	method comeAlgo(pesoDelAlimento){
		peso +=  pesoDelAlimento * 0.10
	}
	method correA(){
		peso -= 1
	}
	
}

object caperucita{
	var canasta = 6 //* pesoDemanzanas()// 
	method peso(){
		return 60
	}
	method pesoDeManzanas(){
		return 0.20
	}
	method aumentaManzanas(cantidadDeManzanas){
		canasta += cantidadDeManzanas
	}
	method pierdeManzanas(cantidadDeManzanas){
		canasta -= cantidadDeManzanas
	}
	method pesoDeLaCanasta(){
		return canasta * 0.20
	}
	method manzanasConCaperucita(){
		return self.peso() + self.pesoDeLaCanasta()
	}
}

object cazador {
	
	method envenenarAlLobo(){
		loboFeroz.comeAlgo(self.veneno())
	}
	
	method veneno(){
		return -100
	}
	method pesoDelCazador(){
		return 90
	}
}

object chanchito{
	var cantidad = 1
	const peso = 40
	method pesoDeChanchitos(){
		return cantidad * peso
	}
	
	method sumarChanchito(){
		cantidad += 1
	}
	
	method numeroDeChanchitos(){
		return cantidad
	}
}

object casaDePaja {
	method resistencia(){
		return 0
	}
}

object casaDeMadera {
	method resistencia(){
		return 5
	}
}

object casaDeLadrillos {
	var cantidadDeLadrillos = 20
	method resistencia(){
		return 2 * cantidadDeLadrillos
	}
	
	method darCantidadDeLadrillos(cantidad){
		cantidadDeLadrillos = cantidad
	}
}

object abuelita {
	method peso() {return 50}
}

