contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
address stor3;
uint256 stor4;
uint256 stor6;
uint128 stor7; offset 160
address stor7;
uint256 stor8;
address stor9;
uint256 stor10;

function _fallback() payable {
    Mask(96, 0, stor7.field_160) = 0
    require not msg.value
    require code.data[17192 len 32] >= block.number
    require code.data[17224 len 32] >= code.data[17192 len 32]
    require code.data[17288 len 32] > 0
    require code.data[17396 len 20]
    create contract with 0 wei
                    code: code.data[12398 len 4794]
    require create.new_address
    stor0 = address(create.new_address)
    stor1 = code.data[17192 len 32]
    stor2 = code.data[17224 len 32]
    stor4 = code.data[17288 len 32]
    stor3 = code.data[17396 len 20]
    require code.data[17352 len 32] > 0
    stor6 = code.data[17352 len 32]
    address(stor7.field_0) = msg.sender
    require code.data[17320 len 32] > 0
    create contract with 0 wei
                    code: code.data[9871 len 2527], stor3
    require create.new_address
    stor9 = address(create.new_address)
    stor8 = code.data[17320 len 32]
    require code.data[17320 len 32] <= code.data[17352 len 32]
    require code.data[17256 len 32] > 0
    stor10 = code.data[17256 len 32]
    return code.data[843 len 9028]
}



// =====================  Runtime code  =====================


address tokenAddress;
uint256 startBlock;
uint256 endBlock;
address walletAddress;
uint256 rate;
uint256 weiRaised;
uint256 cap;
uint8 stor7; offset 160
uint128 stor7; offset 160
address owner;
uint256 goal;
address vaultAddress;
uint256 sub_16610c0d;

function endBlock() {
    return endBlock
}

function sub_16610c0d(?) {
    return sub_16610c0d
}

function rate() {
    return rate
}

function cap() {
    return cap
}

function goal() {
    return goal
}

function weiRaised() {
    return weiRaised
}

function startBlock() {
    return startBlock
}

function wallet() {
    return walletAddress
}

function isFinalized() {
    return bool(uint8(stor7.field_160))
}

function owner() {
    return owner
}

function vault() {
    return vaultAddress
}

function token() {
    return tokenAddress
}

function goalReached() {
    return weiRaised >= goal
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function hasEnded() {
    if block.number > endBlock:
        return (block.number > endBlock)
    return weiRaised >= cap
}

function updateRate(uint256 arg1) {
    require msg.sender == owner
    require arg1 > 0
    require not uint8(stor7.field_160)
    require block.number <= endBlock
    require weiRaised < cap
    rate = arg1
    emit UpdateRate(arg1);
}

function claimRefund() {
    require uint8(stor7.field_160)
    require weiRaised < goal
    require ext_code.size(vaultAddress)
    call vaultAddress.0xfa89401a with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
}

function finalize() {
    require msg.sender == owner
    require not uint8(stor7.field_160)
    if block.number <= endBlock:
        require weiRaised >= cap
    require ext_code.size(vaultAddress)
    if weiRaised < goal:
        call vaultAddress.enableRefunds() with:
             gas gas_remaining - 710 wei
    else:
        call vaultAddress.close() with:
             gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0x7d64bcb4 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    emit Finalized()
    Mask(96, 0, stor7.field_160) = 1
}

function buyTokens(address arg1) payable {
    require arg1
    require weiRaised + msg.value >= weiRaised
    require block.number >= startBlock
    require block.number <= endBlock
    require msg.value
    require weiRaised + msg.value <= cap
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if msg.value:
        require msg.value
        require msg.value * rate / msg.value == rate
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    require ext_code.size(tokenAddress)
    if ext_call.return_data[0] + (12 * msg.value * rate / 10) < sub_16610c0d:
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args address(arg1), 12 * msg.value * rate / 10
        require ext_call.success
        emit TokenPurchase(msg.value, 12 * msg.value * rate / 10, msg.sender, arg1);
    else:
        if ext_call.return_data[0] >= sub_16610c0d:
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args address(arg1), 11 * msg.value * rate / 10
            require ext_call.success
            emit TokenPurchase(msg.value, 11 * msg.value * rate / 10, msg.sender, arg1);
        else:
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args address(arg1), ((11 * msg.value * rate) - (11 * (10 * sub_16610c0d) - (10 * ext_call.return_data[0]) / 12) / 10) + (12 * (10 * sub_16610c0d) - (10 * ext_call.return_data[0]) / 12 / 10)
            require ext_call.success
            emit TokenPurchase(msg.value, ((11 * msg.value * rate) - (11 * (10 * sub_16610c0d) - (10 * ext_call.return_data[0]) / 12) / 10) + (12 * (10 * sub_16610c0d) - (10 * ext_call.return_data[0]) / 12 / 10), msg.sender, arg1);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}

function _fallback() payable {
    require msg.sender
    require weiRaised + msg.value >= weiRaised
    require block.number >= startBlock
    require block.number <= endBlock
    require msg.value
    require weiRaised + msg.value <= cap
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if msg.value:
        require msg.value
        require msg.value * rate / msg.value == rate
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    require ext_code.size(tokenAddress)
    if ext_call.return_data[0] + (12 * msg.value * rate / 10) < sub_16610c0d:
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args msg.sender, 12 * msg.value * rate / 10
        require ext_call.success
        emit TokenPurchase(msg.value, 12 * msg.value * rate / 10, msg.sender, msg.sender);
    else:
        if ext_call.return_data[0] >= sub_16610c0d:
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args msg.sender, 11 * msg.value * rate / 10
            require ext_call.success
            emit TokenPurchase(msg.value, 11 * msg.value * rate / 10, msg.sender, msg.sender);
        else:
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args msg.sender, ((11 * msg.value * rate) - (11 * (10 * sub_16610c0d) - (10 * ext_call.return_data[0]) / 12) / 10) + (12 * (10 * sub_16610c0d) - (10 * ext_call.return_data[0]) / 12 / 10)
            require ext_call.success
            emit TokenPurchase(msg.value, ((11 * msg.value * rate) - (11 * (10 * sub_16610c0d) - (10 * ext_call.return_data[0]) / 12) / 10) + (12 * (10 * sub_16610c0d) - (10 * ext_call.return_data[0]) / 12 / 10), msg.sender, msg.sender);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}



}
