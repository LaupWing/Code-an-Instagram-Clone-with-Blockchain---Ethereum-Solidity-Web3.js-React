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

   event ImageCreated(
      uint id,
      string hash,
      string description,
      uint tipAmount,
      address payable author
   );

   function uploadImage(
      string memory _imageHash, 
      string memory _description
   ) public{
      require(bytes(_imageHash).length > 0);
      require(bytes(_description).length > 0);
      require(msg.sender != address(0x0));
      imageCount++;

      images[imageCount] = Image(
         imageCount,
         _imageHash,
         _description,
         0,
         payable(address(msg.sender))
      );

      emit ImageCreated(
         imageCount, 
         _imageHash, 
         _description, 
         0,
         payable(address(msg.sender))
      );
   }
}