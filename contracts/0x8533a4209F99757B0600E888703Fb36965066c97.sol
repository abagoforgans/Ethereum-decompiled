contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 275]
}



// =====================  Runtime code  =====================


address stor0;
mapping of uint256 stor1;

function remove() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function deposit(address arg1) payable {
    if 0 == msg.value:
        return 0
    stor1[address(arg1)] += msg.value
    return 1
}

function withdraw(address arg1, uint256 arg2) payable {
    if stor1[address(arg1)] < arg2:
        return 0
    if 0 == arg2:
        return 0
    stor1[address(arg1)] -= arg2
    call msg.sender with:
       value arg2 wei
         gas 0 wei
    return 1
}



}
