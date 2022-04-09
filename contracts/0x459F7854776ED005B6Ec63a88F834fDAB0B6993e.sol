contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;

function _fallback() payable {
    stor0 = 0x12826eacf16678a6ab9772fb0751bca32f1f0f53
    stor2 = 3 * 10^12
    require not msg.value
    stor1 = msg.sender
    return code.data[105 len 1304]
}



// =====================  Runtime code  =====================


address latpTokenAddress;
address founderAddress;
uint256 baseTokenPrice;
mapping of uint256 investments;

function baseTokenPrice() {
    return baseTokenPrice
}

function founder() {
    return founderAddress
}

function latpToken() {
    return latpTokenAddress
}

function investments(address arg1) {
    return investments[arg1]
}

function setTokenAddress(address arg1) {
    require founderAddress == msg.sender
    latpTokenAddress = arg1
    return 1
}

function changeBaseTokenPrice(uint256 arg1) {
    require founderAddress == msg.sender
    baseTokenPrice = arg1
    return 1
}

function fundManually(address arg1, uint256 arg2) {
    require founderAddress == msg.sender
    investments[address(arg1)] += arg2 * baseTokenPrice
    require ext_code.size(latpTokenAddress)
    call latpTokenAddress.issueTokens(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    require ext_call.return_data[0]
    return arg2
}

function _fallback() payable {
    require msg.value >= baseTokenPrice
    require baseTokenPrice
    if msg.value <= msg.value / baseTokenPrice * baseTokenPrice:
        investments[address(msg.sender)] += msg.value / baseTokenPrice * baseTokenPrice
        call founderAddress with:
           value msg.value / baseTokenPrice * baseTokenPrice wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    else:
        call msg.sender with:
           value msg.value - (msg.value / baseTokenPrice * baseTokenPrice) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        investments[address(msg.sender)] += msg.value / baseTokenPrice * baseTokenPrice
        call founderAddress with:
           value msg.value / baseTokenPrice * baseTokenPrice wei
             gas 2300 * is_zero(value) wei
    s = 0
    idx = 0
    s = 0
    while idx < 32:
        require -idx + 35 < calldata.size
        s = Mask(8, 248, cd[(-idx + 35)]) >> 248
        idx = idx + 1
        s = s + (Mask(8, 248, cd[(-idx + 35)]) >> 248 * 256^idx)
        continue 
    emit LATPTransaction((msg.value / baseTokenPrice * baseTokenPrice), 0, block.timestamp);
}

function fund() payable {
    require msg.value >= baseTokenPrice
    require baseTokenPrice
    if msg.value <= msg.value / baseTokenPrice * baseTokenPrice:
        investments[address(msg.sender)] += msg.value / baseTokenPrice * baseTokenPrice
        call founderAddress with:
           value msg.value / baseTokenPrice * baseTokenPrice wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    else:
        call msg.sender with:
           value msg.value - (msg.value / baseTokenPrice * baseTokenPrice) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        investments[address(msg.sender)] += msg.value / baseTokenPrice * baseTokenPrice
        call founderAddress with:
           value msg.value / baseTokenPrice * baseTokenPrice wei
             gas 2300 * is_zero(value) wei
    s = 0
    idx = 0
    s = 0
    while idx < 32:
        require -idx + 35 < calldata.size
        s = Mask(8, 248, cd[(-idx + 35)]) >> 248
        idx = idx + 1
        s = s + (Mask(8, 248, cd[(-idx + 35)]) >> 248 * 256^idx)
        continue 
    emit LATPTransaction((msg.value / baseTokenPrice * baseTokenPrice), 0, block.timestamp);
    return (msg.value / baseTokenPrice)
}



}
