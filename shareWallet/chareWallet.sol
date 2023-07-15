pragma solidity ^0.8.18;

//  import from official openzepelin github code
import './Ownable.sol';
import './SafeMath';

//allowance contract inherit !!!!!!!!!!!!!!!!!!!!!!!
contract Allowance is Ownable {

    using SafeMath for uint;

    event AllowanceChanged(address indexed _forWho, address indexed _fromWhom, uint _oldAmount, uint _newAmount);

    mapping(address => uint) public allowance;

    function addAllowance(address _who, uint _amount) public onlyOwner {
        emit AllowanceChanged(_hwo, msg.sender, allowance[_who], _amount);
        allowance[_who] = _amount;
    }
    modifier allowOneMoreOwner(uint _amount) {
        require(isOnwer() || allowance[msg.sender] >= _amount, "you are not allow");
    }
    function reduceAllowance(address _who, uint _amount) internal {
        emit AllowanceChanged(_who, msg.sender, allowance[_who], allowance[_who].sub(_amount));
        allowance[_who] = allowance[_who].sub(_amount);
    }
}


contract shareWallet is Allowance {

    event MoneySent (address indexed _beneficiary, uint _amount);
    event MoneyReceived(address indexed _from, uint _amount);

    function withdraw(address payable _to, uint _amount) public allowOneMoreOwner(_amount) {
        require(_amount <= address(this).balance, "there are not such enough money or amount -_- " );
        if(!isOwner()) {
            reduceAllowance(msg.sender, _amount);
        }
        emit MoneySent(_to, _amount);
        _to.transfer(_amount);
    }

    function renounceOwnership() public onlyOwner {
        revert("can't renounce ownership contract");
    }
    function () external payable {
        emit MoneyReceived(msg.sender, msg.value);
    }

}