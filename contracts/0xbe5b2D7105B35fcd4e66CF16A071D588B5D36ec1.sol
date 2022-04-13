contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
address stor3;
uint256 stor4;

function _fallback() {
    require code.data[7475 len 32] >= code.data[7443 len 32]
    require code.data[7507 len 32] > 0
    require code.data[7551 len 20]
    create contract with 0 wei
                    code: code.data[4399 len 3044]
    require create.new_address
    stor0 = address(create.new_address)
    stor1 = code.data[7443 len 32]
    stor2 = code.data[7475 len 32]
    stor4 = code.data[7507 len 32]
    stor3 = code.data[7551 len 20]
    return code.data[261 len 4138]
}



// =====================  Runtime code  =====================


address tokenAddress;
uint256 startBlock;
uint256 endBlock;
address walletAddress;
uint256 rate;
uint256 weiRaised;

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

function token() {
    return tokenAddress
}

function hasEnded() {
    return (block.number > endBlock)
}

function _fallback() payable {
    require msg.sender
    require block.number >= startBlock
    require block.number <= endBlock
    require msg.value
    require msg.value + weiRaised >= weiRaised
    if msg.value:
        require msg.value
        require rate * msg.value / msg.value == rate
    weiRaised += msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.mint(address rg1, uint256 rg2) with:
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
    require msg.value + weiRaised >= weiRaised
    if msg.value:
        require msg.value
        require rate * msg.value / msg.value == rate
    weiRaised += msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.mint(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args address(arg1), rate * msg.value
    require ext_call.success
    emit TokenPurchase(msg.value, rate * msg.value, msg.sender, arg1);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}



}
