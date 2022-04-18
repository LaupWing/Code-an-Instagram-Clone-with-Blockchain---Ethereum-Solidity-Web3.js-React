// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Decentragram {
   string public name = "Decentragram";
   mapping(uint => Image) public images;


   struct Image{
      uint id;
      string hash;
      string description;
      uint tipAmount;
      address payable author;
   }
}