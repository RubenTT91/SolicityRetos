// SPDX-License-Identifier: MIT
pragma solidity >0.8.0 <=0.9.0;

contract ObjetivoDeAhorro {    
    constructor(uint256 _ObjetivoAhorro) {
        objetivoAhorro = _ObjetivoAhorro;
    }

    uint256 cantidad;
    uint256 saldoAcumulado=0;
    uint256 objetivoAhorro;
    

    function ingresarCantidad (uint256 _cantidad) public {
        require(_cantidad>0, "La cantidad debe ser positiva");
        saldoAcumulado += _cantidad;
    }

    function consultarObjetivoEstadoYSaldo() public view returns(uint, uint, bool){
     
        bool haAlcanzadoObjetivo = saldoAcumulado>=objetivoAhorro;
        return  (objetivoAhorro,saldoAcumulado,haAlcanzadoObjetivo);
     
    }   
}