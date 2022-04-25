contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = code.data[480 len 20]
    return code.data[84 len 384]
}



// =====================  Runtime code  =====================


address beneficiaryAddress;
uint256 highestBid;

function beneficiary() {
    return beneficiaryAddress
}

function highestBid() {
    return highestBid
}

function _fallback() payable {
    revert
}

function bid() payable {
    highestBid = msg.value
}

function auctionEnd() {
    call beneficiaryAddress with:
       value highestBid wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
