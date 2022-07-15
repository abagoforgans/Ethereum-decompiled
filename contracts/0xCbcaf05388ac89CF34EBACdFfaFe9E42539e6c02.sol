contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_70c9d3e3(?) {
    create contract with 0 wei
                    code: code.data[349 len 6938], address(arg1), arg2
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xd9e62ab9: address(create.new_address), arg1, arg2
    return address(create.new_address)
}



}
