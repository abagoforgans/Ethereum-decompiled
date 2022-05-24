contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;

function _fallback() payable {
    stor1 = 0x4fe214cfe388a6a534b1e3361d17347b1745f1af
    require not msg.value
    stor2 = 0x3999eae2de89af72492efa487155d26c44a8c5fe
    stor0 = stor2
    return code.data[301 len 546]
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
