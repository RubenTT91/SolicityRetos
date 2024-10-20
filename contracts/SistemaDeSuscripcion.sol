// SPDX-License-Identifier: MIT
pragma solidity >0.8.0 <=0.9.0;

contract SistemaDeSuscripcion{

    uint256 costoSuscripcion;
    uint256 descuentoAplicado;
    uint256 costoMensual;
    uint256 tasaDescuento;

constructor(uint256 _tasaDescuento) {
    tasaDescuento = _tasaDescuento;
}

    event ObtenerCostos(uint256 costoSuscripcion, uint256 descuentoAplicado, uint256 costoMensual);

    function establecerSuscripcionYCalcularCosto() public {
        
        emit ObtenerCostos(costoSuscripcion,descuentoAplicado,costoMensual);
    }

    
}