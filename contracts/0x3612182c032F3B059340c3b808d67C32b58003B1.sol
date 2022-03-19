contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[63 len 569]
}



// =====================  Runtime code  =====================


address stor0;

function kill() payable {
    require msg.sender == stor0
    selfdestruct(stor0)
}

function _fallback() payable {
    require msg.value
    emit 0x1a94a36e: tx.origin, msg.sender, msg.value
}

function withdraw(address arg1, uint256 arg2) payable {
    require msg.sender == stor0
    call arg1 with:
       value 10^18 * arg2 wei
         gas 0 wei
}



}
