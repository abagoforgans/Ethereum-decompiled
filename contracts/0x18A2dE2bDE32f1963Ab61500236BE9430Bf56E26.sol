contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function createContract(address arg1, address arg2) {
    create contract with 0 wei
                    code: code.data[404 len 10161], address(arg1), arg2
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    return address(create.new_address)
}



}
