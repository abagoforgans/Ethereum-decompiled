contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[34 len 200]
}



// =====================  Runtime code  =====================


address stor0;

function kill() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
    if gas_remaining <= 50000:
        emit Received(msg.value, tx.origin);
    else:
        emit 0x19ba3958: gas_remaining, tx.origin
}



}
