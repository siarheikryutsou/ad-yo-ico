pragma solidity 0.8.21;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract AdYoToken is ERC20, Ownable {
    constructor(address initialOwner) ERC20("AdYo", "ADYO") Ownable(initialOwner) {
        _mint(msg.sender, 100000000000000000000000000);
    }

    function decimals() public pure override returns (uint8) {
        return 8;
    }

    function allowance(address /* owner */, address /* spender */) public pure override returns (uint256) {
        return 100000000000000;
    }

    function mint(uint amount) public onlyOwner {
        _mint(msg.sender, amount);
    }

    function burn(uint amount) public onlyOwner {
        require(balanceOf(msg.sender) >= amount, "not enough balance for burn this amount");

        _burn(msg.sender, amount);
    }
}