contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
uint256 stor3;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint16 stor10;

function _fallback() payable {
    stor10 = 0
    require not msg.value
    stor0 = msg.sender
    stor3 = 10^18 * code.data[3410 len 32]
    stor5 = code.data[3570 len 32]
    stor6 = 10^18 * code.data[3570 len 32] * code.data[3602 len 32]
    stor1 = code.data[3550 len 20]
    stor2 = code.data[3646 len 20]
    stor7 = code.data[3442 len 32]
    stor8 = code.data[3474 len 32]
    stor9 = code.data[3506 len 32]
    return code.data[235 len 3175]
}



// =====================  Runtime code  =====================


const MINT_LOCK_DURATION_IN_WEEKS = 26


address owner;
address tokenAddress;
address beneficiaryAddress;
uint256 cap;
uint256 collected;
uint256 price;
uint256 purchaseLimit;
uint256 whitelistStartBlock;
uint256 startBlock;
uint256 endBlock;
uint8 capReached;
uint8 isFinalized; offset 8
mapping of uint256 stor11;
mapping of uint8 stor12;

function endBlock() {
    return endBlock
}

function purchaseLimit() {
    return purchaseLimit
}

function cap() {
    return cap
}

function beneficiary() {
    return beneficiaryAddress
}

function startBlock() {
    return startBlock
}

function capReached() {
    return bool(capReached)
}

function collected() {
    return collected
}

function isFinalized() {
    return bool(isFinalized)
}

function owner() {
    return owner
}

function price() {
    return price
}

function whitelistStartBlock() {
    return whitelistStartBlock
}

function token() {
    return tokenAddress
}

function isOwner(address arg1) {
    return (owner == arg1)
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function addToWhitelist(address arg1) {
    require owner == msg.sender
    stor12[address(arg1)] = 1
}

function startBlock(address arg1) {
    if not stor12[address(arg1)]:
        return startBlock
    return whitelistStartBlock
}

function tokenTransferOwnership(address arg1) {
    require isFinalized
    require capReached
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf2fde38b with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}

function finalize() {
    if block.number < endBlock:
        require capReached
    require owner == msg.sender
    require not isFinalized
    isFinalized = 1
    if True and not capReached:
    call beneficiaryAddress with:
       value collected wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0x72bff5ad with:
         gas gas_remaining - 710 wei
        args 26
    require ext_call.success
}

function refund() {
    require isFinalized
    require not capReached
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0]
    require price > 0
    require price
    require ext_call.return_data[0] == (price * ext_call.return_data[0] / price) + (ext_call.return_data[0] % price)
    require ext_code.size(tokenAddress)
    call tokenAddress.0x9dc29fac with:
         gas gas_remaining - 710 wei
        args msg.sender, ext_call.return_data[0]
    require ext_call.success
    stor11[address(msg.sender)] = 0
    if ext_call.return_data[0] / price <= eth.balance(this.address):
        call msg.sender with:
           value ext_call.return_data[0] / price wei
             gas 2300 * is_zero(value) wei
        emit Refunded((ext_call.return_data[0] / price), msg.sender);
    else:
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        emit Refunded(eth.balance(this.address), msg.sender);
}

function _fallback() payable {
    if not stor12[address(msg.sender)]:
        require block.number >= startBlock
    else:
        require block.number >= whitelistStartBlock
    require block.number <= endBlock
    require msg.value > 0
    require collected < cap
    require msg.value + collected >= collected
    if msg.value + collected <= cap:
        if msg.value:
            require msg.value
            require price * msg.value / msg.value == price
        require ext_code.size(tokenAddress)
        call tokenAddress.0x70a08231 with:
             gas gas_remaining - 710 wei
            args msg.sender
        require ext_call.success
        require ext_call.return_data[0] + (price * msg.value) <= purchaseLimit
        require msg.value + collected >= collected
        collected += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args msg.sender, price * msg.value
        require ext_call.success
        emit NewContribution(price * msg.value, msg.value, msg.sender);
    else:
        require collected <= cap
        require cap - collected <= msg.value
        call msg.sender with:
           value msg.value - cap + collected wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        if cap - collected:
            require cap - collected
            require (cap * price) - (collected * price) / cap - collected == price
        require ext_code.size(tokenAddress)
        call tokenAddress.0x70a08231 with:
             gas gas_remaining - 710 wei
            args msg.sender
        require ext_call.success
        require ext_call.return_data[0] + (cap * price) - (collected * price) <= purchaseLimit
        require cap >= collected
        collected = cap
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args msg.sender, (cap * price) - (collected * price)
        require ext_call.success
        emit NewContribution((cap * price) - (collected * price), cap - collected, msg.sender);
    if collected == cap:
        emit GoalReached(collected);
        capReached = 1
}



}
