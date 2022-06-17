contract main {




// =====================  Runtime code  =====================


address whiteListAddress;

function whiteListAddress() {
    return whiteListAddress
}

function _fallback() payable {
    revert
}

function sub_bcaba46b(?) {
    require calldata.size - 4 >= 160
    require ext_code.size(whiteListAddress)
    staticcall whiteListAddress.0x8ceeb8df with:
            gas gas_remaining wei
           args address(arg1), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    else:
        require return_data.size >= 32
        require ext_code.size(whiteListAddress)
        staticcall whiteListAddress.0x8ceeb8df with:
                gas gas_remaining wei
               args address(arg2), arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        else:
            require return_data.size >= 32
            require ext_code.size(whiteListAddress)
            staticcall whiteListAddress.0x8ceeb8df with:
                    gas gas_remaining wei
                   args address(arg3), arg4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            else:
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    return bool(ext_call.return_data[0])
                else:
                    if not ext_call.return_data[0]:
                        return bool(ext_call.return_data[0])
                    else:
                        return bool(ext_call.return_data[0])
}



}
