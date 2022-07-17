contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
  stop
}

function sub_dd0298b6(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(stor0)
    staticcall stor0.0x2fdd26d0 with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(stor0)
    staticcall stor0.0xe3e2abfc with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] <= 1
    require ext_call.return_data[0] <= 1
    return ext_call.return_data[0] << 248, ext_call.return_data[32], ext_call.return_data[0] << 248, ext_call.return_data[32]
}

function sub_9af25d0a(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor0)
    staticcall stor0.0x2fdd26d0 with:
            gas gas_remaining wei
           args address(arg1), msg.value
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] <= 1
    emit 0x9c91ccf5: ext_call.return_data[32], ext_call.return_data[0]
    require ext_code.size(stor0)
    staticcall stor0.0xe3e2abfc with:
            gas gas_remaining wei
           args address(arg1), msg.value
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] <= 1
    emit 0x78fa620b: ext_call.return_data[32], ext_call.return_data[0]
    create contract with 0 wei
                    code: code.data[2819 len 10782]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_call.return_data[0] <= 1
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0x23599848 with:
       value msg.value wei
         gas gas_remaining wei
        args ext_call.return_data[0] << 248, address(arg1), ext_call.return_data[32]
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
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(create.new_address), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Approve failed'
    require ext_call.return_data[0] <= 1
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xe9d048f8 with:
         gas gas_remaining wei
        args 0, 0, address(arg1), ext_call.return_data[0], 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).close() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call 0x4d37f28d2db99e8d35a6c725a5f1749a085850a3 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}



}
