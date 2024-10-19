// SPDX-License-Identifier: MIT
pragma solidity >0.8.0 <=0.9.0;

contract SistemaDePrestamo{

    uint256 public tasaInteres;
    uint256 public montoPrestamo;
    uint256 public cuota;
    uint256[3] public cuotas;

    
    function EstablecerPrestamoYCalcularCuotas(uint _montoPrestamo) public {
        require(_montoPrestamo>0, "El valor debe ser positivo.");        
        montoPrestamo = _montoPrestamo;
        montoPrestamo += montoPrestamo*( tasaInteres/100);
        cuota = montoPrestamo/3;

       


    }
    function ObtenerCuotas() public returns(uint256[3] memory){
        cuotas[0]=cuota;
        cuotas[1]=cuota;
        cuotas[2]=cuota;

    }


    constructor(uint256 _tasaInteres) {
        tasaInteres = _tasaInteres;
    }
}