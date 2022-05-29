contract main {




// =====================  Runtime code  =====================


const startDate = (426665 * 3600)

const endDate = (428849 * 3600)


address owner;
address tokenAddress;
uint256 rate;
address walletAddress;
address holderAddress;
uint256 weiRaised;
uint256 tokenPurchased;
uint256 minimumAmount;
uint256 sub_2769657c;
uint256 sub_1a055131;
mapping of uint256 contributionAmounts;
mapping of uint8 stor11;
mapping of uint8 stor12;

function whitelistA(address arg1) {
    return bool(stor11[arg1])
}

function sub_1a055131(?) {
    return sub_1a055131
}

function sub_2769657c(?) {
    return sub_2769657c
}

function rate() {
    return rate
}

function weiRaised() {
    return weiRaised
}

function wallet() {
    return walletAddress
}

function owner() {
    return owner
}

function contributionAmounts(address arg1) {
    return contributionAmounts[arg1]
}

function whitelistB(address arg1) {
    return bool(stor12[arg1])
}

function tokenPurchased() {
    return tokenPurchased
}

function minimumAmount() {
    return minimumAmount
}

function holder() {
    return holderAddress
}

function token() {
    return tokenAddress
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

function sub_52dd79b3(?) {
    require msg.sender == owner
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Maximum amount must be a positive integer'
    sub_2769657c = arg1
    emit 0x32061469: arg1
}

function sub_851b8eca(?) {
    require msg.sender == owner
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Maximum amount must be a positive integer'
    sub_1a055131 = arg1
    emit 0x602da3bc: arg1
}

function sub_5a970c3a(?) {
    require msg.sender == owner
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Whitelisted address must be valid'
    stor12[address(arg1)] = uint8(arg2)
    emit 0xff49f813: arg1, arg2
}

function updateConversionRate(uint256 arg1) {
    require msg.sender == owner
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Conversion rate must be a positive integer'
    rate = arg1
    emit ChangeRate(arg1);
}

function sub_fe551b09(?) {
    require msg.sender == owner
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Whitelisted address must be valid'
    stor11[address(arg1)] = uint8(arg2)
    emit 0x26d2ecc8: arg1, arg2
}

function updateMinimumAmount(uint256 arg1) {
    require msg.sender == owner
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Minimum amount must be a positive integer'
    minimumAmount = arg1
    emit 0xca4a9b02: arg1
}

function _fallback() payable {
    if block.timestamp < 426665 * 3600:
        revert with 0, 'Presale has not started yet'
    if block.timestamp > 428849 * 3600:
        revert with 0, 'Presale has finished'
    if not stor11[address(msg.sender)]:
        if not stor12[address(msg.sender)]:
            revert with 0, 'Your address is not whitelisted'
    require msg.value + contributionAmounts[address(msg.sender)] >= contributionAmounts[address(msg.sender)]
    if msg.value < minimumAmount:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot contribute less than the minimum amount'
    if not stor11[address(msg.sender)]:
        if msg.value + contributionAmounts[address(msg.sender)] >= sub_1a055131:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot contribute more than the maximum amount'
    else:
        if msg.value + contributionAmounts[address(msg.sender)] >= sub_2769657c:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot contribute more than the maximum amount'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Beneficiary Address cannot be a null address'
    if msg.value <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Wei amount must be a positive integer'
    if not rate:
        if msg.value:
            require not 0 / msg.value
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require tokenPurchased >= tokenPurchased
        require msg.value + contributionAmounts[address(msg.sender)] >= contributionAmounts[address(msg.sender)]
        contributionAmounts[address(msg.sender)] += msg.value
        call walletAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args holderAddress, msg.sender, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit Purchase(msg.value, 0, msg.sender, msg.sender);
    else:
        require 130 * rate / rate == 130
        if not msg.value:
            require msg.value + weiRaised >= weiRaised
            weiRaised += msg.value
            require tokenPurchased >= tokenPurchased
            require msg.value + contributionAmounts[address(msg.sender)] >= contributionAmounts[address(msg.sender)]
            contributionAmounts[address(msg.sender)] += msg.value
            call walletAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(tokenAddress)
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args holderAddress, msg.sender, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit Purchase(msg.value, 0, msg.sender, msg.sender);
        else:
            require 130 * rate / 100 * msg.value / msg.value == 130 * rate / 100
            require msg.value + weiRaised >= weiRaised
            weiRaised += msg.value
            require (130 * rate / 100 * msg.value) + tokenPurchased >= tokenPurchased
            tokenPurchased += 130 * rate / 100 * msg.value
            require msg.value + contributionAmounts[address(msg.sender)] >= contributionAmounts[address(msg.sender)]
            contributionAmounts[address(msg.sender)] += msg.value
            call walletAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(tokenAddress)
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args holderAddress, msg.sender, 130 * rate / 100 * msg.value
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit Purchase(msg.value, 130 * rate / 100 * msg.value, msg.sender, msg.sender);
}



}
