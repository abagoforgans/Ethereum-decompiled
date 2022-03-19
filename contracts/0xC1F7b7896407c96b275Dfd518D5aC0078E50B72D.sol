contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 307]
}



// =====================  Runtime code  =====================


address stor0;
mapping of uint256 balance;

function balance() payable {
    return balance[address(msg.sender)]
}

function remove() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function deposit() payable {
    balance[address(msg.sender)] += msg.value
}

function _fallback() payable {
    balance[address(msg.sender)] += msg.value
}

function withdraw(uint256 arg1) payable {
    if balance[address(msg.sender)] >= arg1:
        if arg1 != 0:
            balance[address(msg.sender)] -= arg1
            call msg.sender with:
               value arg1 wei
                 gas 0 wei
}



}
