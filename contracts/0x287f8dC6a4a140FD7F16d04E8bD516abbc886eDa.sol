contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_4432776f(?) payable {
    create contract with 0 wei
                    code: code.data[580 len 4510], address(arg1), address(arg2), arg3
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x6603f0ae: address(create.new_address)
    return address(create.new_address)
}



}
