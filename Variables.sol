pragma solidity ^0.8.17;

contract Variables {
    uint256 public myUint;

    function setMyUint(uint _myUint) public{
        myUint = _myUint;
    }

    bool public myBool;

    function myBoolean(bool _myBool) public {
        myBool = _myBool;
    }

    uint8 public myNumber;

    function increment() public {
        myNumber ++;
    }
    function decrement() public {
        myNumber --;
    }
    address public myAddress;

    function setAddress(address _address) public {
        myAddress = _address; 
    }
    function getWalletBalance() public view returns(uint) {
        return myAddress.balance;
    }
    string public changeString;

    function setChangeString(string memory _chageString) public {
        changeString = _chageString;
    }
}