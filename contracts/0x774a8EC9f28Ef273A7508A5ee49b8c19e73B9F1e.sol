contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 411]




// =====================  Runtime code  =====================


function withdrawTokens(address arg1, uint256 arg2) {
    call arg1.0xa9059cbb with:
         gas gas_remaining - 25710 wei
        args 0x4c2065dace4d6790a32ff88e56e3265583810d63, arg2
    require ext_call.success
}

function _fallback() payable {
    call 0x4c2065dace4d6790a32ff88e56e3265583810d63 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call 0xedbb62c063485266514feb0103d42b4568785d12.emitEvent() with:
         gas gas_remaining - 25710 wei
}



}
