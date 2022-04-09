contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[34 len 218]
}



// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
  stop
}

function collect(address arg1, uint256 arg2) payable {
    if stor0 != msg.sender:
        return 0
    call arg1.0xa9059cbb with:
         gas gas_remaining - 25050 wei
        args stor0, arg2
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    return arg2
}



}
