// SPDX-License-Identifier: MIT
//Developer https://scharss.github.io/
pragma solidity ^0.8.9;

import "@openzeppelin/contracts@4.4.0/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts@4.4.0/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts@4.4.0/access/Ownable.sol";

/// @custom:security-contact scharss@gmail.com
contract MercaBit is ERC20, ERC20Burnable, Ownable {
    constructor() ERC20("MercaBit", "MBT") {
        _mint(msg.sender, 10000000000000 * 10 ** decimals());
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}
