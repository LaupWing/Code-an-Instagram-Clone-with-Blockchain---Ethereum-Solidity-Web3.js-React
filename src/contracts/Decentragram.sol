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

   function uploadImage(
      string memory _imageHash, 
      string memory _description
   ) public{
      imageCount++;

      images[imageCount] = Image(
         imageCount,
         _imageHash,
         _description,
         0,
         payable(address(msg.sender))
      );
   }
}