contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint8 stor2;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1 = 0
    stor2 = 0
    return code.data[99 len 447]
}



// =====================  Runtime code  =====================


const getBalance = 0


address managerAddress;
uint256 balance;

function manager() payable {
    return managerAddress
}

function balance() payable {
    return balance
}

function refund(address arg1) payable {
    if managerAddress != msg.sender:
    selfdestruct(arg1)
}

function _fallback() payable {
    balance += msg.value
}



}
