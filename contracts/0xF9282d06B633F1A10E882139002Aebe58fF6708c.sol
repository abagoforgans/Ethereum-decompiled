contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 267]
}



// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    require msg.value <= 0
}

function transferToken(address arg1, address arg2, uint256 arg3) payable {
    if stor0 == msg.sender:
        require msg.value <= 0
        call arg1.0xa9059cbb with:
             gas gas_remaining - 25050 wei
            args address(arg2), arg3
        require ext_call.success
        emit TokenTransfer(arg3, arg1, arg2);
}



}
