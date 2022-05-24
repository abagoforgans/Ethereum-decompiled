contract main {




// =====================  Runtime code  =====================


address rightAndRolesAddress;

function rightAndRoles() {
    return rightAndRolesAddress
}

function _fallback() payable {
    revert
}

function createFinancialStrategy() {
    create contract with 0 wei
                    code: code.data[2268 len 5372], rightAndRolesAddress
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    return address(create.new_address)
}

function createAllocation(address arg1, uint256 arg2, uint256 arg3) {
    create contract with 0 wei
                    code: code.data[607 len 1661], rightAndRolesAddress, address(arg1), arg2, arg3
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    return address(create.new_address)
}

function getRightAndRoles() {
    require ext_code.size(rightAndRolesAddress)
    call rightAndRolesAddress.changeWallet(address arg1, uint8 arg2) with:
         gas gas_remaining wei
        args msg.sender, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return rightAndRolesAddress
}



}
