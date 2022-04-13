contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint256 stor3;
address stor4;
uint256 stor5;
uint256 stor7;
uint256 stor8;
uint256 stor9;

function _fallback() payable {
    stor9 = 0
    require not msg.value
    stor0 = msg.sender
    stor2 = 4188600
    stor3 = 4189450
    stor5 = 500
    stor4 = 0x9cd5db1ed3113f8cbea874facfef35a98f3beb04
    create contract with 0 wei
                    code: code.data[2072 len 3279]
    require create.new_address
    stor1 = address(create.new_address)
    stor7 = 0
    stor8 = 100000 * 10^18
    require stor2 >= block.number
    require stor3 >= stor2
    return code.data[259 len 1813]
}



// =====================  Runtime code  =====================


address owner;
address tokenAddress;
uint256 startBlock;
uint256 endBlock;
address multiSigWalletAddress;
uint256 rate;
uint256 weiRaised;
uint256 minContribution;
uint256 hardcap;
uint256 numberOfPurchasers;

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

function multiSigWallet() {
    return multiSigWalletAddress
}

function numberOfPurchasers() {
    return numberOfPurchasers
}

function owner() {
    return owner
}

function minContribution() {
    return minContribution
}

function hardcap() {
    return hardcap
}

function token() {
    return tokenAddress
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function hasEnded() {
    if block.number > endBlock:
        return (block.number > endBlock)
    return weiRaised >= hardcap
}

function finishPresale() {
    require owner == msg.sender
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf2fde38b with:
         gas gas_remaining - 710 wei
        args owner
    require ext_call.success
    emit PreSaleClosed()
}

function buyTokens(address arg1) payable {
    require arg1
    require msg.value + weiRaised >= weiRaised
    if block.number < startBlock:
        require block.number >= startBlock
    else:
        require block.number <= endBlock
    require msg.value >= minContribution
    require msg.value + weiRaised <= hardcap
    if msg.value:
        require msg.value
        require rate * msg.value / msg.value == rate
    if numberOfPurchasers >= 500:
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require numberOfPurchasers + 1 >= numberOfPurchasers
        numberOfPurchasers++
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args address(arg1), (rate * msg.value) + (rate * msg.value / 4)
        require ext_call.success
        emit TokenPurchase(msg.value, (rate * msg.value) + (rate * msg.value / 4), msg.sender, arg1);
    else:
        if rate * msg.value:
            require rate * msg.value
            require 3 * rate * msg.value / rate * msg.value == 3
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require numberOfPurchasers + 1 >= numberOfPurchasers
        numberOfPurchasers++
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args address(arg1), (rate * msg.value) + (3 * rate * msg.value / 10)
        require ext_call.success
        emit TokenPurchase(msg.value, (rate * msg.value) + (3 * rate * msg.value / 10), msg.sender, arg1);
    call multiSigWalletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}

function _fallback() payable {
    require msg.sender
    require msg.value + weiRaised >= weiRaised
    if block.number < startBlock:
        require block.number >= startBlock
    else:
        require block.number <= endBlock
    require msg.value >= minContribution
    require msg.value + weiRaised <= hardcap
    if msg.value:
        require msg.value
        require rate * msg.value / msg.value == rate
    if numberOfPurchasers >= 500:
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require numberOfPurchasers + 1 >= numberOfPurchasers
        numberOfPurchasers++
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args msg.sender, (rate * msg.value) + (rate * msg.value / 4)
        require ext_call.success
        emit TokenPurchase(msg.value, (rate * msg.value) + (rate * msg.value / 4), msg.sender, msg.sender);
    else:
        if rate * msg.value:
            require rate * msg.value
            require 3 * rate * msg.value / rate * msg.value == 3
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require numberOfPurchasers + 1 >= numberOfPurchasers
        numberOfPurchasers++
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args msg.sender, (rate * msg.value) + (3 * rate * msg.value / 10)
        require ext_call.success
        emit TokenPurchase(msg.value, (rate * msg.value) + (3 * rate * msg.value / 10), msg.sender, msg.sender);
    call multiSigWalletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}



}
