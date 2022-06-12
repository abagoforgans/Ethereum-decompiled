contract main {




// =====================  Runtime code  =====================


address tokenAddress;
address walletAddress;
uint256 rate;
uint256 weiRaised;
uint256 cap;
uint256 openingTime;
uint256 closingTime;
address owner;
mapping of uint8 stor8;
mapping of uint256 contributions;
uint256 sub_c70642c3;
uint256 sub_9d7d3313;
uint8 stage;
uint256 sub_46daa242;
address foundersFundAddress;
address sub_a3a3382bAddress;
address partnersFundAddress;
uint256 releaseTime;
address foundersTimelockAddress;
address foundationTimelockAddress;
address sub_b63e53e0Address;

function rate() {
    return rate
}

function cap() {
    return cap
}

function weiRaised() {
    return weiRaised
}

function contributions(address arg1) {
    return contributions[arg1]
}

function sub_46daa242(?) {
    return sub_46daa242
}

function closingTime() {
    return closingTime
}

function wallet() {
    return walletAddress
}

function foundersTimelock() {
    return foundersTimelockAddress
}

function owner() {
    return owner
}

function partnersFund() {
    return partnersFundAddress
}

function whitelist(address arg1) {
    return bool(stor8[arg1])
}

function sub_9d7d3313(?) {
    return sub_9d7d3313
}

function sub_a3a3382b(?) {
    return sub_a3a3382bAddress
}

function sub_b63e53e0(?) {
    return sub_b63e53e0Address
}

function openingTime() {
    return openingTime
}

function releaseTime() {
    return releaseTime
}

function getUserContribution(address arg1) {
    return contributions[address(arg1)]
}

function stage() {
    require stage <= 1
    return stage
}

function foundersFund() {
    return foundersFundAddress
}

function sub_c70642c3(?) {
    return sub_c70642c3
}

function foundationTimelock() {
    return foundationTimelockAddress
}

function token() {
    return tokenAddress
}

function capReached() {
    return weiRaised >= cap
}

function hasClosed() {
    return (block.timestamp > closingTime)
}

function addToWhitelist(address arg1) {
    require msg.sender == owner
    stor8[address(arg1)] = 1
}

function removeFromWhitelist(address arg1) {
    require msg.sender == owner
    stor8[address(arg1)] = 0
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function addManyToWhitelist(address[] arg1) {
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 8
        stor8[address(cd[((32 * idx) + arg1 + 36)])] = 1
        idx = idx + 1
        continue 
}

function setCrowdsaleStage(uint256 arg1) {
    require msg.sender == owner
    if 0 == arg1:
        stage = 0
    else:
        if 1 == arg1:
            stage = 1
    require stage <= 1
    if not stage:
        rate = sub_c70642c3
    else:
        require stage <= 1
        if stage == 1:
            rate = sub_9d7d3313
}

function buyTokens(address arg1) payable {
    require block.timestamp >= openingTime
    require block.timestamp <= closingTime
    require stor8[address(arg1)]
    require arg1
    require msg.value
    require weiRaised + msg.value >= weiRaised
    require weiRaised + msg.value <= cap
    require contributions[address(arg1)] + msg.value >= contributions[address(arg1)]
    contributions[address(arg1)] += msg.value
    if not msg.value:
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining wei
            args address(arg1), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        emit TokenPurchase(msg.value, 0, msg.sender, arg1);
    else:
        require msg.value
        require msg.value * rate / msg.value == rate
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining wei
            args address(arg1), msg.value * rate
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        emit TokenPurchase(msg.value, msg.value * rate, msg.sender, arg1);
    require stage <= 1
    if not stage:
        call walletAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require stage <= 1
        if stage == 1:
            call walletAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    require block.timestamp >= openingTime
    require block.timestamp <= closingTime
    require stor8[address(msg.sender)]
    require msg.sender
    require msg.value
    require weiRaised + msg.value >= weiRaised
    require weiRaised + msg.value <= cap
    require contributions[address(msg.sender)] + msg.value >= contributions[address(msg.sender)]
    contributions[address(msg.sender)] += msg.value
    if not msg.value:
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
    else:
        require msg.value
        require msg.value * rate / msg.value == rate
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, msg.value * rate
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
    require stage <= 1
    if not stage:
        call walletAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require stage <= 1
        if stage == 1:
            call walletAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}



}
