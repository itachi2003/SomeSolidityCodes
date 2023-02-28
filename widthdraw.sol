pragma solidity ^0.8.17;

contract StartStopUpdateSmartContract {
    address owner;

    bool public paused;

    constructor() public {
       owner = msg.sender;
    }



    function sendMoney() public payable {

    }

    function setPaused(bool _paused) public {
        require(msg.sender == owner, "you are not owner, fuck off");
        paused = _paused;
    }

    // შევამოწმო ეს ვერგავიგე !paused როგორაა თუ true ა false ა თუ რაღაც ეგრე ეს 32lesson 9წუთ

    function withdrawallMoney(address payable _to) public {
        require(msg.sender == owner, "you are not owner, stop!");
        require(!paused, "Contract is paused");
        _to.transfer(address(this).balance);
    }

    function destroySmartContract(address payable _to)public {
        require(msg.sender == owner, "you are not owner");
        selfdestruct(_to);
    }











}





