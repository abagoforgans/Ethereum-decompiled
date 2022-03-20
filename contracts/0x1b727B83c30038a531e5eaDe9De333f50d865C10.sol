contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;

function _fallback() payable {
    stor1 = 0
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[39 len 213]
}



// =====================  Runtime code  =====================


#
#  - suicide(address arg1)
#
address stor0;
uint256 stor1;

function _fallback() payable {
    if msg.value > 0:
        stor1 += msg.value
}

function withdraw(address arg1, uint256 arg2) payable {
    require stor0 == msg.sender
    if stor1 >= arg2:
        call arg1 with:
           value arg2 wei
             gas 0 wei
    else:
        call arg1 with:
           value stor1 wei
             gas 0 wei
}



}
