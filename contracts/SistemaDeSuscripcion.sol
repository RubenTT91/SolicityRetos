// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SistemaDeSuscripcion {
    uint256 public tasaDescuento;
    uint256 public costoMensual;
    address public administrador;

    event CostosDeSuscripcion(uint256 costoMensual, uint256 costoConDescuento);

    constructor(uint256 _tasaDescuento) {
        tasaDescuento = _tasaDescuento;
        administrador = msg.sender;
    }

    modifier soloAdministrador() {
        require(msg.sender == administrador, "Solo el administrador puede ejecutar esta funcion");
        _;
    }

    function establecerSuscripcionYCalcularCosto(uint256 _costoMensual) public soloAdministrador {
        costoMensual = _costoMensual;
        uint256 costoConDescuento = calcularCostoConDescuento(_costoMensual);
        emit CostosDeSuscripcion(_costoMensual, costoConDescuento);
    }

    function calcularCostoConDescuento(uint256 _costoMensual) internal view returns (uint256) {
        return _costoMensual - (_costoMensual * tasaDescuento / 100);
    }

    function obtenerCostos() public view returns (uint256, uint256) {
        uint256 costoConDescuento = calcularCostoConDescuento(costoMensual);
        return (costoMensual, costoConDescuento);
    }
}