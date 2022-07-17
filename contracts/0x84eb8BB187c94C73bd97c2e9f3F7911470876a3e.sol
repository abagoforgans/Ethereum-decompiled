contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
  stop
}

function sub_e97848b0(?) payable {
    require calldata.size - 4 >= 32
    create contract with 0 wei
                    code: code.data[1532 len 3058]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    create contract with 0 wei
                    code: code.data[4590 len 3387]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).ethToToken(address arg1, uint256 arg2) with:
       value msg.value wei
         gas gas_remaining wei
        args address(arg1), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(create.new_address), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xc7f790a2 with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0], 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if eth.balance(this.address) > msg.value:
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
    else:
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call 0x4d37f28d2db99e8d35a6c725a5f1749a085850a3 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}



}
