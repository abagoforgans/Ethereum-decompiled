contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;

function isVerified(address arg1) {
    return bool(stor0[address(arg1)])
}

function _fallback() payable {
    revert
}

function sub_a9f10433(?) {
    create contract with 0 wei
                    code: code.data[1052 len 3110], address(arg1), address(arg2), address(arg3), msg.sender, arg4, arg5, arg6, arg7
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    if not arg8:
        emit 0x1fe1b02b: arg6, arg7, address(create.new_address)
    else:
        emit 0x7c78cc7c: arg6, arg7, address(create.new_address)
    stor0[address(create.new_address)] = 1
}



}
