contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
address stor3;
uint256 stor4;
address stor6;
uint256 stor7;
uint8 stor8;

function _fallback() payable {
    stor8 = 0
    require not msg.value
    require code.data[12883 len 32] >= block.number
    require code.data[12915 len 32] >= code.data[12883 len 32]
    require code.data[12947 len 32] > 0
    require code.data[12991 len 20]
    create contract with 0 wei
                    code: code.data[8112 len 4739]
    require create.new_address
    stor0 = address(create.new_address)
    stor1 = code.data[12883 len 32]
    stor2 = code.data[12915 len 32]
    stor4 = code.data[12947 len 32]
    stor3 = code.data[12991 len 20]
    stor6 = msg.sender
    stor7 = code.data[12851 len 32]
    return code.data[530 len 7582]
}



// =====================  Runtime code  =====================


address tokenAddress;
uint256 startBlock;
uint256 endBlock;
address walletAddress;
uint256 rate;
uint256 weiRaised;
address owner;
uint256 cap;
uint8 mintingFinished;

function mintingFinished() {
    return bool(mintingFinished)
}

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

function owner() {
    return owner
}

function token() {
    return tokenAddress
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

function finishMinting() {
    require msg.sender == owner
    mintingFinished = 1
    emit CrowdsaleMintFinished()
    return 1
}

function mint(address arg1, uint256 arg2) {
    require msg.sender == owner
    require not mintingFinished
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function _fallback() payable {
    require msg.sender
    require weiRaised + msg.value >= weiRaised
    require block.number >= startBlock
    require block.number <= endBlock
    require msg.value
    require weiRaised + msg.value <= cap
    require weiRaised + msg.value >= weiRaised
    if msg.value:
        require msg.value
        require msg.value * rate / msg.value == rate
    weiRaised += msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value * rate
    require ext_call.success
    emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}

function buyTokens(address arg1) payable {
    require arg1
    require weiRaised + msg.value >= weiRaised
    require block.number >= startBlock
    require block.number <= endBlock
    require msg.value
    require weiRaised + msg.value <= cap
    require weiRaised + msg.value >= weiRaised
    if msg.value:
        require msg.value
        require msg.value * rate / msg.value == rate
    weiRaised += msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args address(arg1), msg.value * rate
    require ext_call.success
    emit TokenPurchase(msg.value, msg.value * rate, msg.sender, arg1);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}



}
