contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function create(uint256 arg1) {
    create contract with 0 wei
                    code: code.data[287 len 577], arg1
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    emit New(address(create.new_address), arg1);
    return address(create.new_address)
}



}
