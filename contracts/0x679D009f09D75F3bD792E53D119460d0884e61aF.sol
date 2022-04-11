contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
address stor2;

function _fallback() payable {
    stor0 = 0x3d156173e4188acb7623bfbbb762ab58a9d835ac
    stor2 = 0x7c53153d4477c1a45d39ce16bed40dd2d8ce8e72
    require not msg.value
    stor1 = 0
    return code.data[210 len 708]
}



// =====================  Runtime code  =====================


address beneficiaryAddress;
uint256 amountRaised;
address stor2;

function beneficiary() {
    return beneficiaryAddress
}

function amountRaised() {
    return amountRaised
}

function get() {
    require amountRaised > 0
    call beneficiaryAddress with:
       value amountRaised wei
         gas 2300 * is_zero(value) wei
    amountRaised = 0
}

function _fallback() payable {
    amountRaised += msg.value
    require ext_code.size(stor2)
    call stor2.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, 10000 * msg.value
    require ext_call.success
}



}
