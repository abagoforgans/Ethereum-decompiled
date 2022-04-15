contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160
address stor0;

function _fallback() payable {
    uint8(stor0.field_160) = 0
    address(stor0.field_0) = msg.sender
    return code.data[65 len 2345]
}



// =====================  Runtime code  =====================


uint8 stor0; offset 160
address owner;
address walletAddress;
uint256 start;
uint256 min;
uint256 hardcap;
uint256 invested;
uint16 stor6;
uint256 stor6; offset 16
uint256 period;
mapping of uint256 balances;
array of address investors;

function balances(address arg1) {
    return balances[arg1]
}

function totalInvestors() {
    return investors.length
}

function investors(uint256 arg1) {
    require arg1 < investors.length
    return address(investors[arg1])
}

function wallet() {
    return walletAddress
}

function paused() {
    return bool(stor0)
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function owner() {
    return owner
}

function hardcap() {
    return hardcap
}

function start() {
    return start
}

function invested() {
    return invested
}

function period() {
    return period
}

function min() {
    return min
}

function setMin(uint256 arg1) {
    require owner == msg.sender
    min = arg1
}

function setStart(uint256 arg1) {
    require owner == msg.sender
    start = arg1
}

function setHardcap(uint256 arg1) {
    require owner == msg.sender
    hardcap = arg1
}

function unpause() {
    require owner == msg.sender
    require stor0
    stor0 = 0
    emit Unpause()
}

function pause() {
    require owner == msg.sender
    require not stor0
    stor0 = 1
    emit Pause()
}

function setWallet(address arg1) {
    require owner == msg.sender
    require arg1
    walletAddress = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    owner = arg1
}

function setPeriod(uint16 arg1) {
    require owner == msg.sender
    uint16(stor6.field_0) = arg1
    Mask(240, 0, stor6.field_16) = 0
}

function invest() payable {
    require block.timestamp > start
    require block.timestamp < start + (24 * 3600 * period)
    require invested < hardcap
    require not stor0
    require msg.value >= min
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    if not balances[address(msg.sender)]:
        investors.length++
        if not investors.length <= investors.length + 1:
            idx = investors.length + 1
            while investors.length > idx:
                uint256(investors[idx]) = 0
                idx = idx + 1
                continue 
        address(investors[investors.length]) = msg.sender
    require msg.value + balances[address(msg.sender)] >= balances[address(msg.sender)]
    balances[address(msg.sender)] += msg.value
    require msg.value + invested >= invested
    invested += msg.value
    emit Invest(msg.sender, msg.value);
}

function _fallback() payable {
    require block.timestamp > start
    require block.timestamp < start + (24 * 3600 * period)
    require invested < hardcap
    require not stor0
    require msg.value >= min
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    if not balances[address(msg.sender)]:
        investors.length++
        if not investors.length <= investors.length + 1:
            idx = investors.length + 1
            while investors.length > idx:
                uint256(investors[idx]) = 0
                idx = idx + 1
                continue 
        address(investors[investors.length]) = msg.sender
    require msg.value + balances[address(msg.sender)] >= balances[address(msg.sender)]
    balances[address(msg.sender)] += msg.value
    require msg.value + invested >= invested
    invested += msg.value
    emit Invest(msg.sender, msg.value);
}



}
