// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract LHA is ERC20 {
    
    address public owner;

    constructor(uint256 initialSupply) ERC20("LHAToken", "LHA"){
        owner = msg.sender;
        _mint(msg.sender, initialSupply);
    }

    modifier onlyOwner(){
        require(msg.sender == owner, "Only the owner of this contract can call this function");
        _;
    }
    function mint(address to, uint amount) public onlyOwner{
        _mint(to, amount);
    }

    function decimals() public view virtual override returns (uint8){
        // 토큰의 양을 나눌 수 있는 소수 자릿수
        return 18; 
    }
}