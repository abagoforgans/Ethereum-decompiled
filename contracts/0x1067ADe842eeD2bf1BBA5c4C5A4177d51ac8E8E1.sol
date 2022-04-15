contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor5;
address stor9;

function _fallback() {
    stor0 = msg.sender
    stor1 = code.data[1912 len 32]
    stor2 = code.data[1944 len 32]
    stor3 = code.data[1976 len 32]
    stor9 = code.data[2020 len 20]
    stor5 = 0
    return code.data[134 len 1778]
}



// =====================  Runtime code  =====================


address beneficiaryAddress;
uint256 startline;
uint256 deadline;
uint256 price;
uint256 amountRaised;
uint256 totalTokensSold;
uint256 threshold;
mapping of uint256 actualGotETH;
mapping of uint256 actualGotTokens;
address tokenRewardAddress;

function startline() {
    return startline
}

function deadline() {
    return deadline
}

function actualGotETH(address arg1) {
    return actualGotETH[arg1]
}

function beneficiary() {
    return beneficiaryAddress
}

function threshold() {
    return threshold
}

function totalTokensSold() {
    return totalTokensSold
}

function tokenReward() {
    return tokenRewardAddress
}

function amountRaised() {
    return amountRaised
}

function price() {
    return price
}

function actualGotTokens(address arg1) {
    return actualGotTokens[arg1]
}

function ChangeCost(uint256 arg1) {
    require beneficiaryAddress == msg.sender
    price = arg1
}

function ChangeEnd(uint256 arg1) {
    require beneficiaryAddress == msg.sender
    deadline = arg1
}

function ChangeStart(uint256 arg1) {
    require beneficiaryAddress == msg.sender
    startline = arg1
}

function transferOwnership(address arg1) {
    require beneficiaryAddress == msg.sender
    if arg1:
        beneficiaryAddress = arg1
}

function WithdrawAllETH() {
    require beneficiaryAddress == msg.sender
    call beneficiaryAddress with:
       value amountRaised wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function WithdrawETH(uint256 arg1) {
    require beneficiaryAddress == msg.sender
    call beneficiaryAddress with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function WithdrawTokens(uint256 arg1) {
    require beneficiaryAddress == msg.sender
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args beneficiaryAddress, arg1
    require ext_call.success
}

function _fallback() payable {
    require block.timestamp > startline
    require block.timestamp < deadline
    require msg.value >= price
    amountRaised += msg.value
    require price
    totalTokensSold += msg.value / price
    actualGotETH[address(msg.sender)] += msg.value
    actualGotTokens[address(msg.sender)] += msg.value / price
    call beneficiaryAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value / price
    require ext_call.success
}



}
