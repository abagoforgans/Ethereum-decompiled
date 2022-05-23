contract main {




// =====================  Runtime code  =====================


address adminAddress;

function admin() {
    return adminAddress
}

function _fallback() payable {
    revert
}

function withdraw_eth() {
    call adminAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function create_a_new_market(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    create contract with 0 wei
                    code: code.data[963 len 6896], address(arg1), arg2, arg3, arg4
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdraw_token(address arg1, uint256 arg2) {
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args adminAddress, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}



}
