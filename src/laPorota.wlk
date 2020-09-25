object laPorota { // pyme
	var dinero = 0
	const precio = 200
	method dinero() = dinero
	method vender(cant){
		dinero = dinero + cant * precio
		brian.pagar(cant * precio)
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
		saldo = saldo - cuanto			
		
	}
}

object tarjCreditoBlack { //ilimitada!
	var deuda = 0
	method descontar(cuanto){
		deuda = deuda + cuanto
	}
}

