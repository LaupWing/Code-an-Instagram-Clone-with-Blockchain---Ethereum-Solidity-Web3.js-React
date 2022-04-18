// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Decentragram {
   string public name = "Decentragram";
   mapping(uint => Image) public images;
   uint public imageCount = 0;

   struct Image{
      uint id;
      string hash;
      string description;
      uint tipAmount;
      address payable author;
   }

   function uploadImage() public{
      imageCount++;

      images[imageCount] = Image(
         1,
         "abs123",
         "Hello World",
         10,
         payable(address(0x0))
      );
   }
}