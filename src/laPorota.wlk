object laPorota { // pyme
	var dinero = 0
	const precio = 200
	method dinero() = dinero
	method vender(cant){
		brian.pagar(cant * precio)
		dinero = dinero + cant * precio
	}
}

object brian {
	var medioDePago = cuentaDebito
	method pagar(cuanto) {
		medioDePago.descontar(cuanto)
	}
	method medioDePago(medio){
		medioDePago = medio
	}
}

object cuentaDebito {
	var saldo = 700
	method saldo()= saldo
	method descontar(cuanto){
		if (saldo < cuanto){
			throw new DomainException(message="Saldo insuficiente")	
		} 
		saldo = saldo - cuanto			
		
	}
}

object tarjCreditoBlack { //ilimitada!
	var deuda = 0
	method descontar(cuanto){
		deuda = deuda + cuanto
	}
}

