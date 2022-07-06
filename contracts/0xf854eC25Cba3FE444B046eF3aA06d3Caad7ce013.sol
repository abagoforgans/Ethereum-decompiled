contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function unwrapAll() payable {
    require ext_code.size(0xd0a1e359811322d97991e03f863a0c30c2cf029c)
    staticcall 0xd0a1e359811322d97991e03f863a0c30c2cf029c.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xd0a1e359811322d97991e03f863a0c30c2cf029c)
    call 0xd0a1e359811322d97991e03f863a0c30c2cf029c.withdraw(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call msg.sender with:
       value ext_call.return_data[0] wei
         gas 2300 * is_zero(value) wei
}



}
