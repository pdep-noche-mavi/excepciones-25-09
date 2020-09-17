object laPorota { // pyme
	var dinero = 0
	const precio = 200
	
	method vender(cant){
		dinero = dinero + cant * precio
		gaby.pagar(cant * precio)
	}
}

object gaby {
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