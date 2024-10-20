// SPDX-License-Identifier: MIT
pragma solidity >0.8.0 <=0.9.0;

contract SistemaDeRecompensas{
    //definimos variables
    uint UmbralParaRecompensa;
    uint256 puntosUsuario=0; //puntos del usuario inicializamos en cero.


    // EStablecemos el uumbral/objetivos de puntos necesarios para canjar por recompensas
    constructor(uint256 _UmbralParaRecompensa){
        UmbralParaRecompensa = _UmbralParaRecompensa;
    }


      function AcumularPuntos(uint256 _sumarPuntos ) public  {
        require(_sumarPuntos>0,"Los puntos deben ser superior a cero.");        //Exigimos un valor superior a 0. 
        puntosUsuario += _sumarPuntos;
      } 

      function ConsultarEstadoDeRecompensa() public view returns(uint256, uint256, bool){
        /*ConsultarEstadoDeRecompensa: Ofrece a los usuarios la posibilidad de consultar el umbral establecido para las recompensas,
         cuántos puntos han acumulado y si han alcanzado el umbral para obtener una recompensa
        */
        bool alcanzoMeta = puntosUsuario>=UmbralParaRecompensa; //Validamos si la meta se alcanzo o no. 

        return (UmbralParaRecompensa, puntosUsuario, alcanzoMeta); // retornamos valor. 
      }
}