contract main {




// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)


uint8 stor0; offset 160
address stor0;

function ran() {
    return bool(uint8(stor0.field_160))
}

function withdraw() {
    call address(stor0.field_0) with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    call 0x4a8d3a662e0fd6a8bd39ed0f91e4c1b729c81a38 with:
       funct Mask(32, 224, sha3('withdrawFor(address,uint256)')) >> 224
         gas gas_remaining wei
        args 0x2d4c3df75358873fdfa05d843f9d127239206185, 2 * 10^15
}



}
