contract main {




// =====================  Runtime code  =====================


function test() {
    require ext_code.size(0xd20af1c603e514d002d12168eb1a38400674fd4e)
    call 0xd20af1c603e514d002d12168eb1a38400674fd4e.0x2e1a7d4d with:
         gas gas_remaining wei
        args 10^13
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    require ext_code.size(0xd20af1c603e514d002d12168eb1a38400674fd4e)
    call 0xd20af1c603e514d002d12168eb1a38400674fd4e.0x2e1a7d4d with:
         gas gas_remaining wei
        args 10^13
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
