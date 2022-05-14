contract main {




// =====================  Runtime code  =====================


address stor0;

function sub_30ef2206(?) payable {
    require ext_code.size(0x8d32b0da63e2c3bcf8019c9c5d849d7a9d791e6)
    call 0x08d32b0da63e2c3bcf8019c9c5d849d7a9d791e6.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x8d32b0da63e2c3bcf8019c9c5d849d7a9d791e6)
    call 0x08d32b0da63e2c3bcf8019c9c5d849d7a9d791e6.0xa9059cbb with:
         gas gas_remaining wei
        args stor0, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function sub_0a9d6fbf(?) payable {
    create contract with 0 wei
                    code: code.data[1622 len 1944]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    create contract with 0 wei
                    code: code.data[1622 len 1944]
    require ext_code.size(0x8d32b0da63e2c3bcf8019c9c5d849d7a9d791e6)
    call 0x08d32b0da63e2c3bcf8019c9c5d849d7a9d791e6.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x8d32b0da63e2c3bcf8019c9c5d849d7a9d791e6)
    call 0x08d32b0da63e2c3bcf8019c9c5d849d7a9d791e6.0xa9059cbb with:
         gas gas_remaining wei
        args address(create.new_address), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xaab54015 with:
         gas gas_remaining wei
        args arg1, address(create.new_address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require eth.balance(this.address) > eth.balance(this.address)
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
