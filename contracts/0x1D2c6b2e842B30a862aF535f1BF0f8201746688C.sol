contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[63 len 286]
}



// =====================  Runtime code  =====================


address creatorAddress;

function Creator() {
    return creatorAddress
}

function _fallback() {
    if msg.value <= 0:
    call creatorAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
