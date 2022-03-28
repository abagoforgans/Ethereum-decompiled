contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor8;
uint256 stor9;
uint256 stor10;
mapping of uint8 stor11;
address stor12;
address stor13;

function _fallback() {
    stor13 = msg.sender
    stor0 = code.data[4171 len 32]
    stor1 = code.data[4203 len 32]
    stor8 = code.data[4235 len 32]
    stor9 = code.data[4267 len 32]
    stor10 = code.data[4299 len 32]
    stor11[code.data[4375 len 20]] = 1
    stor11[address(code.data[4395 len 32])] = 1
    stor11[address(code.data[4427 len 32])] = 1
    stor12 = code.data[4343 len 20]
    return code.data[569 len 3602]
}



// =====================  Runtime code  =====================


uint256 start;
uint256 end;
mapping of uint256 senderETH;
mapping of uint256 senderMIT;
mapping of uint256 recipientETH;
mapping of uint256 recipientMIT;
mapping of uint256 recipientExtraMIT;
uint256 totalETH;
uint256 limitETH;
uint256 bonus1StartETH;
uint256 bonus2StartETH;
mapping of uint8 stor11;
address exitAddress;
address creatorAddress;
address mainstreetTokenAddress;

function creator() {
    return creatorAddress
}

function whitelistedAddresses(address arg1) {
    return bool(stor11[arg1])
}

function totalETH() {
    return totalETH
}

function recipientExtraMIT(address arg1) {
    return recipientExtraMIT[arg1]
}

function recipientETH(address arg1) {
    return recipientETH[arg1]
}

function exitAddress() {
    return exitAddress
}

function senderETH(address arg1) {
    return senderETH[arg1]
}

function mainstreetToken() {
    return mainstreetTokenAddress
}

function bonus1StartETH() {
    return bonus1StartETH
}

function start() {
    return start
}

function limitETH() {
    return limitETH
}

function senderMIT(address arg1) {
    return senderMIT[arg1]
}

function recipientMIT(address arg1) {
    return recipientMIT[arg1]
}

function bonus2StartETH() {
    return bonus2StartETH
}

function end() {
    return end
}

function _fallback() payable {
    revert
}

function setTokenContract(address arg1) {
    require msg.sender == creatorAddress
    require not mainstreetTokenAddress
    mainstreetTokenAddress = arg1
}

function purchaseMIT(address arg1) payable {
    require bool(stor11[address(msg.sender)]) == 1
    require mainstreetTokenAddress
    require block.timestamp >= start
    require block.timestamp < end
    require totalETH + msg.value <= limitETH
    require msg.value
    require arg1
    require arg1 != this.address
    call exitAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    senderETH[address(msg.sender)] += msg.value
    recipientETH[address(arg1)] += msg.value
    totalETH += msg.value
    if block.timestamp - start < 168 * 24 * 3600:
        senderMIT[address(msg.sender)] = senderMIT[address(msg.sender)] + (10 * msg.value) + (10 * msg.value / 10)
        recipientMIT[address(arg1)] = recipientMIT[address(arg1)] + (10 * msg.value) + (10 * msg.value / 10)
        if recipientETH[address(arg1)] >= bonus2StartETH:
            recipientExtraMIT[address(arg1)] = 8 * recipientMIT[address(arg1)] / 100
        else:
            if recipientETH[address(arg1)] >= bonus1StartETH:
                recipientExtraMIT[address(arg1)] = 4 * recipientMIT[address(arg1)] / 100
        require ext_code.size(mainstreetTokenAddress)
        call mainstreetTokenAddress.addTokens(address rg1, uint256 rg2) with:
             gas gas_remaining - 50 wei
            args address(arg1), (10 * msg.value) + (10 * msg.value / 10)
        require ext_call.success
        emit MITPurchase(msg.value, (10 * msg.value) + (10 * msg.value / 10), msg.sender, arg1);
        return ((10 * msg.value) + (10 * msg.value / 10))
    if block.timestamp - start >= 840 * 24 * 3600:
        senderMIT[address(msg.sender)] += 10 * msg.value
        recipientMIT[address(arg1)] += 10 * msg.value
        if recipientETH[address(arg1)] >= bonus2StartETH:
            recipientExtraMIT[address(arg1)] = 8 * recipientMIT[address(arg1)] / 100
        else:
            if recipientETH[address(arg1)] >= bonus1StartETH:
                recipientExtraMIT[address(arg1)] = 4 * recipientMIT[address(arg1)] / 100
        require ext_code.size(mainstreetTokenAddress)
        call mainstreetTokenAddress.addTokens(address rg1, uint256 rg2) with:
             gas gas_remaining - 50 wei
            args address(arg1), 10 * msg.value
        require ext_call.success
        emit MITPurchase(msg.value, 10 * msg.value, msg.sender, arg1);
        return (10 * msg.value)
    senderMIT[address(msg.sender)] = senderMIT[address(msg.sender)] + (10 * msg.value) + (10 * msg.value / 20)
    recipientMIT[address(arg1)] = recipientMIT[address(arg1)] + (10 * msg.value) + (10 * msg.value / 20)
    if recipientETH[address(arg1)] >= bonus2StartETH:
        recipientExtraMIT[address(arg1)] = 8 * recipientMIT[address(arg1)] / 100
    else:
        if recipientETH[address(arg1)] >= bonus1StartETH:
            recipientExtraMIT[address(arg1)] = 4 * recipientMIT[address(arg1)] / 100
    require ext_code.size(mainstreetTokenAddress)
    call mainstreetTokenAddress.addTokens(address rg1, uint256 rg2) with:
         gas gas_remaining - 50 wei
        args address(arg1), (10 * msg.value) + (10 * msg.value / 20)
    require ext_call.success
    emit MITPurchase(msg.value, (10 * msg.value) + (10 * msg.value / 20), msg.sender, arg1);
    return ((10 * msg.value) + (10 * msg.value / 20))
}



}
