contract main {




// =====================  Runtime code  =====================


address owner;
address tokenAddress;
uint256 startICO;
uint256 hardCap;
uint256 totalSoldTokens;
uint256 rateICO;
address walletAddress;

function wallet() {
    return walletAddress
}

function startICO() {
    return startICO
}

function owner() {
    return owner
}

function rateICO() {
    return rateICO
}

function totalSoldTokens() {
    return totalSoldTokens
}

function hardCap() {
    return hardCap
}

function token() {
    return tokenAddress
}

function setRateICO(uint256 arg1) {
    require msg.sender == owner
    rateICO = arg1
}

function setStartICO(uint256 arg1) {
    require msg.sender == owner
    startICO = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function checkHardCap(uint256 arg1) {
    require totalSoldTokens + arg1 >= arg1
    require totalSoldTokens + arg1 <= hardCap
    require arg1 + totalSoldTokens >= totalSoldTokens
    totalSoldTokens += arg1
}

function _fallback() payable {
    require block.timestamp >= startICO
    require msg.sender
    if not msg.value:
        require totalSoldTokens >= 0
        require totalSoldTokens <= hardCap
        require totalSoldTokens >= totalSoldTokens
        call walletAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit TokenProcurement(msg.value, 0, msg.sender, msg.sender);
    else:
        require rateICO * msg.value / msg.value == rateICO
        require totalSoldTokens + (rateICO * msg.value) >= rateICO * msg.value
        require totalSoldTokens + (rateICO * msg.value) <= hardCap
        require (rateICO * msg.value) + totalSoldTokens >= totalSoldTokens
        totalSoldTokens += rateICO * msg.value
        call walletAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, rateICO * msg.value
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit TokenProcurement(msg.value, rateICO * msg.value, msg.sender, msg.sender);
}

function procureTokens(address arg1) payable {
    require block.timestamp >= startICO
    require arg1
    if not msg.value:
        require totalSoldTokens >= 0
        require totalSoldTokens <= hardCap
        require totalSoldTokens >= totalSoldTokens
        call walletAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining wei
            args address(arg1), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit TokenProcurement(msg.value, 0, msg.sender, arg1);
    else:
        require rateICO * msg.value / msg.value == rateICO
        require totalSoldTokens + (rateICO * msg.value) >= rateICO * msg.value
        require totalSoldTokens + (rateICO * msg.value) <= hardCap
        require (rateICO * msg.value) + totalSoldTokens >= totalSoldTokens
        totalSoldTokens += rateICO * msg.value
        call walletAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining wei
            args address(arg1), rateICO * msg.value
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit TokenProcurement(msg.value, rateICO * msg.value, msg.sender, arg1);
}



}
