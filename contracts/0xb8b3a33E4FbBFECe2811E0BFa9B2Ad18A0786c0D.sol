contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor2;
address stor3;

function _fallback() {
    stor0 = code.data[968 len 20]
    stor2 = code.data[988 len 32]
    stor3 = code.data[1032 len 20]
    return code.data[216 len 740]
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

function retrieve() payable {
    call beneficiaryAddress with:
       value amountRaised wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    amountRaised = 0
}

function _fallback() payable {
    amountRaised += msg.value
    require price
    require ext_code.size(stor3)
    call stor3.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value / price
    require ext_call.success
}



}
