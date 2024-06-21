// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
 
contract HelloWorld {
  string public value;
 
  constructor() {
    value = "Hello World!";
  }
 
  function setValue(string memory _v) public {
    value = _v;
  }
  
}