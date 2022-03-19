contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 286]
}



// =====================  Runtime code  =====================


address owner;
address senderAddress;
uint256 stor1;
uint256 stor2; offset 1
uint256 balance;

function sender() payable {
    return address(senderAddress)
}

function owner() payable {
    return owner
}

function balance() payable {
    return balance
}

function enter() payable {
    uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
    balance = msg.value
    call msg.sender with:
       value msg.value / 2 wei
         gas 0 wei
    call owner with:
       value stor2 wei
         gas 0 wei
}

function _fallback() payable {
    uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
    balance = msg.value
    call msg.sender with:
       value msg.value / 2 wei
         gas 0 wei
    call owner with:
       value stor2 wei
         gas 0 wei
}



}
