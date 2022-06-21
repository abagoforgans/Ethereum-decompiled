contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function isTokenTransferOK(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return 0
}

function createToken(bytes32 arg1) {
    require calldata.size - 4 >= 32
    create contract with 0 wei
                    code: code.data[945 len 1070], arg1
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    return address(create.new_address)
}

function changeName(address arg1, bytes32 arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(arg1)
    call arg1.changeName(bytes32 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
