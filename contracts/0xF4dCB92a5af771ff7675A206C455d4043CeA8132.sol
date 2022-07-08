contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function safeTransfer(address arg1, address arg2, uint256 arg3) payable {
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not return_data.size:
        require ext_code.size(arg1)
        call arg1.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require arg3 <= ext_call.return_data[0]
        if ext_call.return_data[0] != ext_call.return_data[0] - arg3:
            revert with 0, 'Invalid balance'
        else:
            return 0
    require return_data.size == 32
    if ext_call.return_data[0] != 1:
        require ext_code.size(arg1)
        call arg1.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require arg3 <= ext_call.return_data[0]
        if ext_call.return_data[0] != ext_call.return_data[0] - arg3:
            revert with 0, 'Invalid balance'
    return (1 == ext_call.return_data[0])
}



}
