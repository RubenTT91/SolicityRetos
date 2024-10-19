// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

contract MyToken{
    string public nombre = "CriptoRaquira";
    string public simbolo= "CRS";
    uint8 public decimal = 18;
    uint256 public totalSuministrado; 

    mapping (address => uint256) public balance;

    event Transferencia(address indexed from, address indexed to, uint256 valor);

    constructor(uint256 _suministroInicial){
    totalSuministrado = _suministroInicial * 10 ** uint256(decimal);
    balance[msg.sender] = totalSuministrado;
    }
}