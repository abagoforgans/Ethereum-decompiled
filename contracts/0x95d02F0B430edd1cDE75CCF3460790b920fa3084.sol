contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() payable {
    stor1 = 0xc96d7e0a9a800576cc9ad42931e9f24a05ae6fdb
    require not msg.value
    stor0 = code.data[554 len 20]
    return code.data[121 len 421]
}



// =====================  Runtime code  =====================


address tokenRewardAddress;
address stor1;

function tokenReward() {
    return tokenRewardAddress
}

function _fallback() payable {
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0x7a144196 with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value
    require ext_call.success
    call stor1 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}



}
