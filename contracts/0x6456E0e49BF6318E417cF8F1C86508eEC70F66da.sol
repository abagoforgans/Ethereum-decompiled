contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint256 stor3;

function _fallback() {
    stor0 = msg.sender
    stor1 = code.data[1464 len 20]
    stor2 = code.data[1484 len 32]
    stor3 = code.data[1516 len 32]
    return code.data[121 len 1331]
}



// =====================  Runtime code  =====================


address creatorAddress;
address exitAddress;
uint256 start;
uint256 limitVIP;
address legendsTokenAddress;
mapping of uint256 recipientETH;
mapping of uint256 recipientVIP;
uint256 totalETH;
uint256 totalVIP;

function creator() {
    return creatorAddress
}

function totalETH() {
    return totalETH
}

function totalVIP() {
    return totalVIP
}

function limitVIP() {
    return limitVIP
}

function recipientETH(address arg1) {
    return recipientETH[arg1]
}

function exitAddress() {
    return exitAddress
}

function start() {
    return start
}

function legendsToken() {
    return legendsTokenAddress
}

function recipientVIP(address arg1) {
    return recipientVIP[arg1]
}

function _fallback() payable {
    revert
}

function setTokenContract(address arg1) {
    require creatorAddress == msg.sender
    require not legendsTokenAddress
    legendsTokenAddress = arg1
}

function purchaseMembership(address arg1, address arg2) payable {
    require legendsTokenAddress
    require block.timestamp >= start
    require msg.value
    require arg2
    require arg2 != this.address
    require legendsTokenAddress == msg.sender
    call exitAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    recipientETH[address(arg2)] += msg.value
    totalETH += msg.value
    if block.timestamp - start >= 336 * 24 * 3600:
        recipientVIP[address(arg2)] += 12 * msg.value
        totalVIP += 12 * msg.value
        require (12 * msg.value) + totalVIP <= limitVIP
        require ext_code.size(legendsTokenAddress)
        call legendsTokenAddress.addTokens(address rg1, uint256 rg2) with:
             gas gas_remaining - 50 wei
            args address(arg2), 12 * msg.value
        require ext_call.success
        emit VIPPurchase(msg.value, 12 * msg.value, arg1, arg2);
    else:
        recipientVIP[address(arg2)] += 120 * msg.value / 9
        totalVIP += 120 * msg.value / 9
        require (120 * msg.value / 9) + totalVIP <= limitVIP
        require ext_code.size(legendsTokenAddress)
        call legendsTokenAddress.addTokens(address rg1, uint256 rg2) with:
             gas gas_remaining - 50 wei
            args address(arg2), 120 * msg.value / 9
        require ext_call.success
        emit VIPPurchase(msg.value, 120 * msg.value / 9, arg1, arg2);
}



}
