contract main {




// =====================  Runtime code  =====================


address tokenContractAddress;

function tokenContract() payable {
    return tokenContractAddress
}

function _fallback() payable {
    revert
}

function sub_be9b41ee(?) payable {
    require calldata.size - 4 >= 224
    require arg7 <= 4294967296
    require arg7 + 36 <= calldata.size
    require arg7.length <= 4294967296 and arg7 + arg7.length + 36 <= calldata.size
    mem[9974 len arg7.length] = arg7[all]
    mem[arg7.length + 9974] = 0
    create contract with 0 wei
                    code: code.data[1258 len 9622], tokenContractAddress, address(arg1), arg3, arg4, arg5, arg6, 224, arg7.length, arg7[all], mem[arg7.length + 9974 len ceil32(arg7.length) - arg7.length]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(create.new_address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    code.data[10880 len 46],
                    code.data[1372 len 18]
    emit 0x3d50c519: address(create.new_address)
    return address(create.new_address)
}



}
