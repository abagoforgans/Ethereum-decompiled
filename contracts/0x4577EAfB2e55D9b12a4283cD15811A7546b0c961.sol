contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor2;
address stor3;

function _fallback() payable {
    stor0 = 0x3d156173e4188acb7623bfbbb762ab58a9d835ac
    stor2 = 10000
    stor3 = 0x8ea9f106fc3a400f1bce14ef97b7f8d09429a38
    require not msg.value
    return code.data[208 len 777]
}



// =====================  Runtime code  =====================


address beneficiaryAddress;
uint256 amountRaised;
uint256 price;
address stor3;

function beneficiary() {
    return beneficiaryAddress
}

function amountRaised() {
    return amountRaised
}

function price() {
    return price
}

function retrieve() {
    require amountRaised > 0
    call beneficiaryAddress with:
       value amountRaised wei
         gas 2300 * is_zero(value) wei
    amountRaised = 0
}

function _fallback() {
    amountRaised += msg.value
    require ext_code.size(stor3)
    call stor3.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value * price
    require ext_call.success
}



}
