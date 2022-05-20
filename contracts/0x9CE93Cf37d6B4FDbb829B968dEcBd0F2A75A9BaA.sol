contract main {




// =====================  Runtime code  =====================


address owner;
address sub_04fc2a66Address;

function sub_04fc2a66(?) {
    return sub_04fc2a66Address
}

function owner() {
    return owner
}

function flush() {
    require msg.sender == owner
    call sub_04fc2a66Address with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    require ext_call.success
}

function _fallback() payable {
    call sub_04fc2a66Address with:
       funct call.data[0 len 4]
       value msg.value wei
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    require ext_call.success
    emit 0x765d9fcc: address(msg.sender), msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size])
}

function flushTokens(address arg1) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args sub_04fc2a66Address, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        emit TokensFlushed(address(arg1), ext_call.return_data[0]);
}



}
