contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = code.data[635 len 20]
    stor1 = msg.sender
    emit 0xa15ca114: code.data[635 len 20]
    return code.data[164 len 459]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;

function _fallback() payable {
    if msg.value > 0:
        call stor0 with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function transferERC20(address arg1, address arg2, uint256 arg3) {
    require stor1 == msg.sender
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg2), arg3
    require ext_call.success
    require ext_call.return_data[0]
}



}
