contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
address stor2;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1 = 0x26a4773b810da78b6c2ed9487257eda412234ebb
    stor2 = 0x815a74cbd8b56039fb75b966332bec8c3c46aeaf
    return code.data[99 len 174]
}



// =====================  Runtime code  =====================


address owner;
address stor1;
address stor2;

function owner() payable {
    return owner
}

function kill() payable {
    if owner != msg.sender:
    selfdestruct(owner)
}

function _fallback() payable {
    call stor1 with:
       value msg.value / 2 wei
         gas 0 wei
    call stor2 with:
       value msg.value / 2 wei
         gas 0 wei
}



}
