// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract UmeshToken {
    string public tokenName;
    string public tokenSymbol;
    uint256 public totalTokenSupply;
    mapping(address => uint256) public addressTokenBalance;

    event TokenTransfer(address indexed sender, address indexed receiver, uint256 amount);

    constructor(string memory _tokenName, string memory _tokenSymbol, uint256 _initialTokenSupply) {
        tokenName = _tokenName;
        tokenSymbol = _tokenSymbol;
        totalTokenSupply = _initialTokenSupply;
        addressTokenBalance[msg.sender] = _initialTokenSupply;
    }

    function sendToken(address _receiver, uint256 _amount) external {
        require(addressTokenBalance[msg.sender] >= _amount, "Insufficient balance");

        addressTokenBalance[msg.sender] -= _amount;
        addressTokenBalance[_receiver] += _amount;
        emit TokenTransfer(msg.sender, _receiver, _amount);
    }

    function destroyToken(uint256 _amount) external {
        require(addressTokenBalance[msg.sender] >= _amount, "Insufficient balance");

        addressTokenBalance[msg.sender] -= _amount;
        totalTokenSupply -= _amount;
        emit TokenTransfer(msg.sender, address(0), _amount);
    }

    function generateToken(address _receiver, uint256 _amount) external {
        addressTokenBalance[_receiver] += _amount;
        totalTokenSupply += _amount;
        emit TokenTransfer(address(0), _receiver, _amount);
    }
}
