contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = 0x790625b17c72c87a310f1d783bab9d3e8ab4bc1a
    return code.data[55 len 183]
}



// =====================  Runtime code  =====================


address stor0;
uint256 stor0;

function changeOwner(address arg1) payable {
    require msg.sender == address(stor0)
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function _fallback() payable {
    require msg.value >= 2
    call msg.sender with:
       value msg.value / 2 wei
         gas 0 wei
    call address(stor0) with:
       value msg.value - (msg.value / 2) wei
         gas 0 wei
}



}
