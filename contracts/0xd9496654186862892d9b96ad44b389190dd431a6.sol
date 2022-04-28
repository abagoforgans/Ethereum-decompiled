contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = code.data[536 len 20]
    return code.data[84 len 440]
}



// =====================  Runtime code  =====================


address beneficiaryAddress;
mapping of uint256 balanceOf;

function beneficiary() {
    return beneficiaryAddress
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function _fallback() payable {
    balanceOf[address(msg.sender)] += msg.value
    emit FundTransfer(beneficiaryAddress, msg.value, 0);
}



}
