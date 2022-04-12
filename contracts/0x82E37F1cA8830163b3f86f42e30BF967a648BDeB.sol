contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
address stor3;
uint256 stor4;
uint256 stor6;
bool stor7; offset 256
uint8 stor7; offset 160
address stor7;

function _fallback() payable {
    stor1 = 4178134
    stor2 = 4207531
    stor3 = 0x7add4ca2d1ec0091a347bf03b9f55254eee90e59
    stor4 = 7500
    stor6 = 34743
    address(stor7.field_0) = 0x6362327c5d8c431e434184cef6c86608bfe289f5
    uint8(stor7.field_160) = 0
    stor7.field_256 % 1 = 0
    require not msg.value
    require code.data[7451 len 32] >= block.number
    require code.data[7483 len 32] >= code.data[7451 len 32]
    require code.data[7515 len 32] > 0
    require code.data[7623 len 20]
    create contract with 0 wei
                    code: code.data[4903 len 2548]
    require create.new_address
    stor0 = address(create.new_address)
    stor1 = code.data[7451 len 32]
    stor2 = code.data[7483 len 32]
    stor4 = code.data[7515 len 32]
    stor3 = code.data[7623 len 20]
    require code.data[7579 len 32] > 0
    stor6 = code.data[7579 len 32]
    address(stor7.field_0) = msg.sender
    require code.data[7547 len 32] <= code.data[7579 len 32]
    return code.data[479 len 4424]
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
address owner;

function endBlock() {
    return endBlock
}

function rate() {
    return rate
}

function cap() {
    return cap
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
    return bool(stor7)
}

function owner() {
    return owner
}

function token() {
    return tokenAddress
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    owner = arg1
}

function hasEnded() {
    if block.number > endBlock:
        return (block.number > endBlock)
    return weiRaised >= cap
}

function finalize() {
    require owner == msg.sender
    require not stor7
    if block.number <= endBlock:
        require weiRaised >= cap
    require ext_code.size(tokenAddress)
    call tokenAddress.0x7d64bcb4 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    emit Finalized()
    stor7 = 1
}

function _fallback() payable {
    require msg.sender
    require msg.value + weiRaised >= weiRaised
    require block.number >= startBlock
    require block.number <= endBlock
    require msg.value
    require msg.value + weiRaised <= cap
    if msg.value:
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
    require msg.value + weiRaised >= weiRaised
    require block.number >= startBlock
    require block.number <= endBlock
    require msg.value
    require msg.value + weiRaised <= cap
    if msg.value:
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
