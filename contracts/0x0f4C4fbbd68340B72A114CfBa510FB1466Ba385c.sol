contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    require 0xd48b633045af65ff636f3c6edd744748351e020d == msg.sender
}

function sub_5ae08c04(?) {
    call 0x20c945800de43394f70d789874a4dac9cfa57451 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function go() payable {
    require ext_code.size(0xd48b633045af65ff636f3c6edd744748351e020d)
    call 0xd48b633045af65ff636f3c6edd744748351e020d.buyAndSetDivPercentage(address arg1, uint8 arg2, string arg3) with:
         gas gas_remaining wei
        args 0, 3483726929, 33, 96, 0, mem[228]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xd48b633045af65ff636f3c6edd744748351e020d)
    call 0xd48b633045af65ff636f3c6edd744748351e020d.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xd48b633045af65ff636f3c6edd744748351e020d)
    call 0xd48b633045af65ff636f3c6edd744748351e020d.0xa9059cbb with:
         gas gas_remaining wei
        args 0x20c945800de43394f70d789874a4dac9cfa57451, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
