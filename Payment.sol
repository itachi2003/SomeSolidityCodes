pragma solidity ^0.8.17;

contract gadiModiMoney {
    uint public comeOnBalace;
    
    function comeOnMoney() public payable {
        comeOnBalace += msg.value;
    }
    function getMeBalance() public view returns(uint){
        return address(this).balance;
    }

    function withdraw() public {
        address payable whereTo = msg.sender;
        whereTo.transfer(this.getMeBalance());
    }
    function widthdrawSomewehere(address payable _whereTo) public {
        _whereTo.transfer(this.getMeBalance());
    }
//lll
}