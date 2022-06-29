contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_aa95b440(?) payable {
    create contract with 0 wei
                    code: code.data[147 len 149]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    return address(create.new_address)
}



}
