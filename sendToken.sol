pragma solidity ^0.8.17;

contract sendToken {
    mapping(address => uint) public tokenBalance;
    event tokenSend(address _from, address _to, uint _amount);
    constructor() public {
        tokenBalance[msg.sender] = 100;
    }

    function sendTokens(address _to, uint _amount) public returns(bool) {
        require(tokenBalance[msg.sender] >= _amount, "not enogh tokens");
        assert(tokenBalance[_to] + _amount >= tokenBalance[_to]);
        assert(tokenBalance[msg.sender - amount <= tokenBalance[msg.sender]);
        tokenBalance[msg.sender] -= _amount;
        tokenBalance[_to] += _amount;
        emit(msg.sender, _to, _amount);
        return true;
    }
}