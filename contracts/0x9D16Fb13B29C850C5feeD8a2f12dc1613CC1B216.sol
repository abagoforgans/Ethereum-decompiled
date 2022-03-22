contract main {


// =======================  Init code  ======================


uint256 stor1;

function _fallback() payable {
    stor1 = msg.sender or Mask(96, 160, stor1)
    return code.data[36 len 670]
}



// =====================  Runtime code  =====================


mapping of uint256 balance;
address stor1;

function getBalance() payable {
    return balance[address(msg.sender)]
}

function _fallback() payable {
  stop
}

function addBalance() payable {
    balance[address(msg.sender)] += msg.value
}

function withdrawOwner() payable {
    if stor1 == msg.sender:
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 0 wei
}

function sub_2f364213(?) payable {
    if balance[address(msg.sender)] > 0:
        emit 0x79941d9e: Array(len=25, data='Withdraw Called With Send')
        call msg.sender with:
           value balance[address(msg.sender)] wei
             gas 0 wei
        balance[address(msg.sender)] = 0
}

function sub_cd3228eb(?) payable {
    if balance[address(msg.sender)] > 0:
        emit 0x79941d9e: Array(len=26, data='Withdraw Called Using Call')
        call msg.sender with:
           value balance[address(msg.sender)] wei
             gas gas_remaining - 34050 wei
        balance[address(msg.sender)] = 0
}



}
