// SPDX-License-Identifier: MIT
pragma solidity >0.8.0 <=0.9.0;

contract SistemaDeRecompensas{
    //definimos variables
    uint UmbralParaRecompensa;


    // EStablecemos el uumbral de puntos necesarios para canjar por recompensas
    constructor(uint256 _UmbralParaRecompensa){
        UmbralParaRecompensa = _UmbralParaRecompensa;
    }

      function AcumularPuntos() public  {
        /*cumularPuntos: Permite a los usuarios sumar
         puntos a su saldo total por compras, participación en eventos o cualquier otra actividad elegible dentro del programa*/
      } 

      function ConsultarEstadoDeRecompensa() public{
        /*ConsultarEstadoDeRecompensa: Ofrece a los usuarios la posibilidad de consultar el umbral establecido para las recompensas,
         cuántos puntos han acumulado y si han alcanzado el umbral para obtener una recompensa
        */
        
      }
}