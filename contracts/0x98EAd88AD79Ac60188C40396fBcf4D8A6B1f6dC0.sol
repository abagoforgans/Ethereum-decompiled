contract main {


// =======================  Init code  ======================


const _fallback = code.data[28 len 428]




// =====================  Runtime code  =====================


uint256 buyPrice;
uint256 issuePrice;
uint256 cPT;
uint256 premium;

function issuePrice() {
    return issuePrice
}

function buyPrice() {
    return buyPrice
}

function cPT() {
    return cPT
}

function premium() {
    return premium
}

function _fallback() payable {
    revert
}

function setPrices(uint256 arg1, uint256 arg2, uint256 arg3) {
    buyPrice = arg1
    issuePrice = arg2
    cPT = arg3
    premium = (98 * issuePrice) - (98 * cPT) / 100
}



}
