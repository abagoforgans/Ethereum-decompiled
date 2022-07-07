contract main {




// =====================  Runtime code  =====================


address parentAddress;

function parentAddress() {
    return parentAddress
}

function _fallback() payable {
    revert
}

function sweep(address arg1) {
    require parentAddress == msg.sender
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args parentAddress, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        emit 0x9609a668: address(msg.sender), ext_call.return_data[0], Array(len=calldata.size, data=call.data[0 len calldata.size])
}



}
