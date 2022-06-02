contract main {




// =====================  Runtime code  =====================


address owner;
address tokenAddress;
address walletAddress;
uint256 rate;
uint256 bonus;
uint256 weiRaised;
uint256 lockPeriod;

function rate() {
    return rate
}

function lockPeriod() {
    return lockPeriod
}

function weiRaised() {
    return weiRaised
}

function wallet() {
    return walletAddress
}

function bonus() {
    return bonus
}

function owner() {
    return owner
}

function token() {
    return tokenAddress
}

function setRate(uint256 arg1) {
    require msg.sender == owner
    rate = arg1
}

function setBonus(uint256 arg1) {
    require msg.sender == owner
    bonus = arg1
}

function setWallet(address arg1) {
    require msg.sender == owner
    walletAddress = arg1
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

function reclaimToken(address arg1) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function buyTokens(address arg1) payable {
    require arg1
    require msg.value
    require msg.value
    require msg.value * rate / msg.value == rate
    if not msg.value * rate:
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        if lockPeriod <= 0:
            require ext_code.size(tokenAddress)
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args walletAddress, 0, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit 0xc988e74e: msg.value, 0, block.timestamp, msg.sender, arg1, 0
        else:
            create contract with 0 wei
                            code: code.data[3900 len 1341], tokenAddress, address(arg1), block.timestamp + (24 * 3600 * lockPeriod)
            if not create.new_address:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(tokenAddress)
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args walletAddress, address(create.new_address), 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit 0xc988e74e: msg.value, 0, block.timestamp + (24 * 3600 * lockPeriod), msg.sender, arg1, address(create.new_address)
    else:
        require msg.value * rate
        require (100 * msg.value * rate) + (bonus * msg.value * rate) / msg.value * rate == bonus + 100
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        if lockPeriod <= 0:
            require ext_code.size(tokenAddress)
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args walletAddress, 0, (100 * msg.value * rate) + (bonus * msg.value * rate) / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit 0xc988e74e: msg.value, (100 * msg.value * rate) + (bonus * msg.value * rate) / 100, block.timestamp, msg.sender, arg1, 0
        else:
            create contract with 0 wei
                            code: code.data[3900 len 1341], tokenAddress, address(arg1), block.timestamp + (24 * 3600 * lockPeriod)
            if not create.new_address:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(tokenAddress)
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args walletAddress, address(create.new_address), (100 * msg.value * rate) + (bonus * msg.value * rate) / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit 0xc988e74e: msg.value, (100 * msg.value * rate) + (bonus * msg.value * rate) / 100, block.timestamp + (24 * 3600 * lockPeriod), msg.sender, arg1, address(create.new_address)
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    require msg.sender
    require msg.value
    require msg.value
    require msg.value * rate / msg.value == rate
    if not msg.value * rate:
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        if lockPeriod <= 0:
            require ext_code.size(tokenAddress)
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args walletAddress, 0, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit 0xc988e74e: msg.value, 0, block.timestamp, msg.sender, msg.sender, 0
        else:
            create contract with 0 wei
                            code: code.data[3900 len 1341], tokenAddress, msg.sender, block.timestamp + (24 * 3600 * lockPeriod)
            if not create.new_address:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(tokenAddress)
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args walletAddress, address(create.new_address), 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit 0xc988e74e: msg.value, 0, block.timestamp + (24 * 3600 * lockPeriod), msg.sender, msg.sender, address(create.new_address)
    else:
        require msg.value * rate
        require (100 * msg.value * rate) + (bonus * msg.value * rate) / msg.value * rate == bonus + 100
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        if lockPeriod <= 0:
            require ext_code.size(tokenAddress)
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args walletAddress, 0, (100 * msg.value * rate) + (bonus * msg.value * rate) / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit 0xc988e74e: msg.value, (100 * msg.value * rate) + (bonus * msg.value * rate) / 100, block.timestamp, msg.sender, msg.sender, 0
        else:
            create contract with 0 wei
                            code: code.data[3900 len 1341], tokenAddress, msg.sender, block.timestamp + (24 * 3600 * lockPeriod)
            if not create.new_address:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(tokenAddress)
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args walletAddress, address(create.new_address), (100 * msg.value * rate) + (bonus * msg.value * rate) / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit 0xc988e74e: msg.value, (100 * msg.value * rate) + (bonus * msg.value * rate) / 100, block.timestamp + (24 * 3600 * lockPeriod), msg.sender, msg.sender, address(create.new_address)
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
