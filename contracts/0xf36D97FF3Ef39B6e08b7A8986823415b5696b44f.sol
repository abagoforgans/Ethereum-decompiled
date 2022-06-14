contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_8f0196d6(?) {
    create contract with 0 wei
                    code: code.data[256 len 9617], address(arg1), msg.sender
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    return address(create.new_address)
}



}
