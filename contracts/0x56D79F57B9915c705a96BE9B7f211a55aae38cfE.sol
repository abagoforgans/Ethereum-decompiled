contract main {




// =====================  Runtime code  =====================


address whiteListAddress;

function whiteListAddress() {
    return whiteListAddress
}

function _fallback() payable {
    revert
}

function sub_fc46338b(?) {
    require calldata.size - 4 >= 160
    require ext_code.size(whiteListAddress)
    staticcall whiteListAddress.0x28df6bda with:
            gas gas_remaining wei
           args address(arg1), address(arg4), arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 != arg1:
        if ext_call.return_data[0]:
            require ext_code.size(whiteListAddress)
            staticcall whiteListAddress.0x28df6bda with:
                    gas gas_remaining wei
                   args address(arg2), address(arg4), arg5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
    if arg3 != arg1:
        if ext_call.return_data[0]:
            require ext_code.size(whiteListAddress)
            staticcall whiteListAddress.0x28df6bda with:
                    gas gas_remaining wei
                   args address(arg3), address(arg4), arg5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
    return bool(ext_call.return_data[0])
}



}
