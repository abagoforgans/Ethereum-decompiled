contract main {




// =====================  Runtime code  =====================


address stor0;

function killContract() {
    require msg.sender == stor0
    selfdestruct(0xeff8670ff8b9a6b31586f0b6d491a3800edb2d88)
}

function _fallback() payable {
    call 0x010589b7c33034b802f7dba2c88cc9cec0f46673 with:
       funct Mask(32, 224, sha3('mint()')) >> 224
         gas gas_remaining wei
}

function withdraw() {
    require msg.sender == stor0
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawForeignTokens(address arg1) {
    require msg.sender == stor0
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args stor0, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}



}
