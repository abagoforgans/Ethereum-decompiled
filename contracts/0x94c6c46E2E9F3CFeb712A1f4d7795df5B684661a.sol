contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160
address stor0;

function _fallback() payable {
    uint8(stor0.field_160) = 0
    address(stor0.field_0) = msg.sender
    return code.data[65 len 2036]
}



// =====================  Runtime code  =====================


uint8 stor0; offset 160
address owner;
address walletAddress;
uint256 start;
uint256 total;
uint16 period;
mapping of uint256 balanceOf;
mapping of uint8 stor6;
array of address investors;

function totalInvestors() {
    return investors.length
}

function total() {
    return total
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
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function start() {
    return start
}

function period() {
    return period
}

function setStart(uint256 arg1) {
    require owner == msg.sender
    start = arg1
}

function setPeriod(uint16 arg1) {
    require owner == msg.sender
    period = arg1
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

function invest() payable {
    require block.timestamp > start
    require block.timestamp < (24 * 3600 * period % 16777216) + start
    require not stor0
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require msg.value + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += msg.value
    if not stor6[address(msg.sender)]:
        investors.length++
        if not investors.length <= investors.length + 1:
            idx = investors.length + 1
            while investors.length > idx:
                uint256(investors[idx]) = 0
                idx = idx + 1
                continue 
        address(investors[investors.length]) = msg.sender
        stor6[address(msg.sender)] = 1
    require msg.value + total >= total
    total += msg.value
    emit Invest(msg.sender, msg.value);
}

function _fallback() payable {
    require block.timestamp > start
    require block.timestamp < (24 * 3600 * period % 16777216) + start
    require not stor0
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require msg.value + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += msg.value
    if not stor6[address(msg.sender)]:
        investors.length++
        if not investors.length <= investors.length + 1:
            idx = investors.length + 1
            while investors.length > idx:
                uint256(investors[idx]) = 0
                idx = idx + 1
                continue 
        address(investors[investors.length]) = msg.sender
        stor6[address(msg.sender)] = 1
    require msg.value + total >= total
    total += msg.value
    emit Invest(msg.sender, msg.value);
}



}
