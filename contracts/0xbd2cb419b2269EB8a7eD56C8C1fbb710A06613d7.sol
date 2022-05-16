contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = code.data[1724 len 20]
    return code.data[123 len 1589]
}



// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    emit ReceiveEther(msg.sender, msg.value);
}

function tokenFallback(address arg1, uint256 arg2, bytes arg3) {
    emit 0x54150900: address(arg1), arg2, Array(len=arg3.length, data=arg3[all])
}

function sweep(address arg1, address arg2, uint256 arg3) {
    require ext_code.size(stor0)
    call stor0.0x7bd163f3 with:
         gas gas_remaining wei
        args msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        emit 0x9690f306: msg.sender
        return 0
    if not arg1:
        if arg3 > eth.balance(this.address):
            return 0
        call arg2 with:
           value arg3 wei
             gas 2300 * is_zero(value) wei
        return bool(ext_call.success)
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    require ext_call.success
    if arg3 > ext_call.return_data[0]:
        return 0
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    require ext_call.success
    return bool(ext_call.return_data[0])
}



}
