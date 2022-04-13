contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
address stor3;
uint256 stor4;
uint8 stor6; offset 160
address stor6;

function _fallback() payable {
    uint8(stor6.field_160) = 0
    require not msg.value
    require block.number >= block.number
    require block.number + code.data[7341 len 32] >= block.number
    require code.data[7321 len 20]
    create contract with 0 wei
                    code: code.data[4771 len 2538]
    require create.new_address
    stor0 = address(create.new_address)
    stor1 = block.number
    stor2 = block.number + code.data[7341 len 32]
    stor4 = 300
    stor3 = code.data[7321 len 20]
    address(stor6.field_0) = msg.sender
    return code.data[324 len 4447]
}



// =====================  Runtime code  =====================


address tokenAddress;
uint256 startBlock;
uint256 endBlock;
address walletAddress;
uint256 rate;
uint256 weiRaised;
uint8 stor6; offset 160
address owner;

function endBlock() {
    return endBlock
}

function rate() {
    return rate
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
    return bool(stor6)
}

function owner() {
    return owner
}

function token() {
    return tokenAddress
}

function hasEnded() {
    return (block.number > endBlock)
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function finalize() {
    require owner == msg.sender
    require not stor6
    require block.number > endBlock
    if weiRaised:
        require weiRaised
        require rate * weiRaised / weiRaised == rate
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args walletAddress, rate * weiRaised / 10
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0x7d64bcb4 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    emit Finalized()
    stor6 = 1
}

function _fallback() payable {
    require msg.sender
    require block.number >= startBlock
    require block.number <= endBlock
    require msg.value
    require msg.value
    require rate * msg.value / msg.value == rate
    require msg.value + weiRaised >= weiRaised
    weiRaised += msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args msg.sender, rate * msg.value
    require ext_call.success
    emit TokenPurchase(msg.value, rate * msg.value, msg.sender, msg.sender);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}

function buyTokens(address arg1) payable {
    require arg1
    require block.number >= startBlock
    require block.number <= endBlock
    require msg.value
    require msg.value
    require rate * msg.value / msg.value == rate
    require msg.value + weiRaised >= weiRaised
    weiRaised += msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args address(arg1), rate * msg.value
    require ext_call.success
    emit TokenPurchase(msg.value, rate * msg.value, msg.sender, arg1);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}



}
