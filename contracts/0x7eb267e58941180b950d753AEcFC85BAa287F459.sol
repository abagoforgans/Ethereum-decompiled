contract main {


// =======================  Init code  ======================


const _fallback = code.data[129 len 2165]




// =====================  Runtime code  =====================


function _fallback() payable {
    emit ReceiveEther(msg.sender, msg.value);
}

function tokenFallback(address arg1, uint256 arg2, bytes arg3) {
    emit 0x54150900: address(arg1), arg2, Array(len=arg3.length, data=arg3[all])
}

function sweep(address arg1, address arg2, uint256 arg3) {
    if not arg1:
        emit 0xb92e0d07 
        emit 0xf5ea6f7b: address(arg1), address(arg2), arg3
        if arg3 > eth.balance(this.address):
            return 0
        call arg2 with:
           value arg3 wei
             gas 2300 * is_zero(value) wei
        emit TransferTo(address(arg1), arg3, arg2);
        return bool(ext_call.success)
    emit 0x8f3b2a32 
    emit 0xe30359df: address(arg1), address(arg2), arg3
    require ext_code.size(arg1)
    call arg1.0x18160ddd with:
         gas gas_remaining wei
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    require ext_call.success
    emit 0xecd0bf28: ext_call.return_data[0], ext_call.return_data[0]
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
    emit TransferTo(address(arg1), arg3, arg2);
    return bool(ext_call.return_data[0])
}



}
