contract main {




// =====================  Runtime code  =====================


array of address contracts;

function contracts(uint256 arg1) {
    require arg1 < contracts.length
    return contracts[arg1]
}

function getContractCount() {
    return contracts.length
}

function _fallback() payable {
    revert
}

function newCookie() {
    create contract with 0 wei
                    code: code.data[573 len 351]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    contracts.length++
    contracts[contracts.length] = address(create.new_address)
    return address(create.new_address)
}



}
