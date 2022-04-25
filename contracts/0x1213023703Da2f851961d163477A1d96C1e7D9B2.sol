contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor3;
uint256 stor4;
uint256 stor5;

function _fallback() {
    stor0 = code.data[1317 len 20]
    stor1 = code.data[1349 len 20]
    stor3 = 25
    stor4 = 200 * 10^6
    stor5 = 100 * 10^6
    return code.data[127 len 1178]
}



// =====================  Runtime code  =====================


address tokenAddress;
address walletAddress;
uint256 amountRaised;
uint256 bonus;
uint256 price;
uint256 minSaleAmount;

function walletAddress() {
    return walletAddress
}

function bonus() {
    return bonus
}

function amountRaised() {
    return amountRaised
}

function price() {
    return price
}

function token() {
    return tokenAddress
}

function minSaleAmount() {
    return minSaleAmount
}

function ChangeBonus(uint256 arg1) {
    require walletAddress == msg.sender
    bonus = arg1
}

function ChangePrice(uint256 arg1) {
    require walletAddress == msg.sender
    price = arg1
}

function ChangeWallet(address arg1) {
    require walletAddress == msg.sender
    walletAddress = arg1
}

function ChangeMinSaleAmount(uint256 arg1) {
    require walletAddress == msg.sender
    minSaleAmount = arg1
}

function TransferETH(address arg1, uint256 arg2) {
    require walletAddress == msg.sender
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function TransferTokens(address arg1, uint256 arg2) {
    require walletAddress == msg.sender
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
}

function _fallback() payable {
    require price
    require msg.value / price >= minSaleAmount
    amountRaised += msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, (100 * msg.value / price) + (bonus * msg.value / price) / 100
    require ext_call.success
}



}
