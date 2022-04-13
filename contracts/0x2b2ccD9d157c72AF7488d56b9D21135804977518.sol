contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
uint8 stor3; offset 152
address stor3;
address stor3;
uint256 stor4;
address stor6;
uint256 stor8;
uint8 stor9;
uint256 stor10;
uint256 stor12;
uint256 stor13;
address stor14;

function _fallback() payable {
    stor9 = 0
    require not msg.value
    require 4169310 >= block.number
    create contract with 0 wei
                    code: code.data[11377 len 3319]
    require create.new_address
    stor0 = address(create.new_address)
    stor1 = 4169310
    stor2 = 4202097
    stor4 = 12083
    Mask(152, 0, stor3.field_0) = 0xfb8369677b3065de5821a86bc9551d5e5eab9
    uint8(stor3.field_152) = 0
    stor6 = msg.sender
    stor8 = 86206 * 10^18
    stor12 = 12083
    stor13 = 7250
    stor10 = 12083
    create contract with 0 wei
                    code: code.data[14696 len 2712], stor4, address(stor3.field_0), stor0
    require create.new_address
    stor14 = address(create.new_address)
    require ext_code.size(stor0)
    call stor0.0x8456cb59 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return code.data[662 len 10715]
}



// =====================  Runtime code  =====================


const FOUNDATION_SHARE = 60

const TOTAL_SHARE = 100

const CROWDSALE_SHARE = 40


address tokenAddress;
uint256 startBlock;
uint256 endBlock;
address walletAddress;
uint256 rate;
uint256 weiRaised;
address owner;
mapping of uint8 stor7;
uint256 cap;
uint8 stor9;
uint256 preferentialRate;
mapping of uint256 buyerRate;
uint256 initialRate;
uint256 endRate;
address continuousSaleAddress;

function endBlock() {
    return endBlock
}

function rate() {
    return rate
}

function cap() {
    return cap
}

function isWhitelisted(address arg1) {
    return bool(stor7[address(arg1)])
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

function preferentialRate() {
    return preferentialRate
}

function continuousSale() {
    return continuousSaleAddress
}

function buyerRate(address arg1) {
    return buyerRate[arg1]
}

function isFinalized() {
    return bool(stor9)
}

function owner() {
    return owner
}

function whitelist(address arg1) {
    return bool(stor7[arg1])
}

function initialRate() {
    return initialRate
}

function endRate() {
    return endRate
}

function token() {
    return tokenAddress
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function addToWhitelist(address arg1) {
    require owner == msg.sender
    require arg1
    stor7[address(arg1)] = 1
}

function hasEnded() {
    if block.number > endBlock:
        return (block.number > endBlock)
    return weiRaised >= cap
}

function setEndRate(uint256 arg1) {
    require owner == msg.sender
    require arg1
    require block.number < startBlock
    endRate = arg1
    emit EndRateChange(arg1);
}

function setInitialRate(uint256 arg1) {
    require owner == msg.sender
    require arg1
    require block.number < startBlock
    initialRate = arg1
    emit InitialRateChange(arg1);
}

function pauseToken() {
    require owner == msg.sender
    require stor9
    require ext_code.size(tokenAddress)
    call tokenAddress.0x8456cb59 with:
         gas gas_remaining - 710 wei
    require ext_call.success
}

function unpauseToken() {
    require owner == msg.sender
    require stor9
    require ext_code.size(tokenAddress)
    call tokenAddress.0x3f4ba83a with:
         gas gas_remaining - 710 wei
    require ext_call.success
}

function setBuyerRate(address arg1, uint256 arg2) {
    require owner == msg.sender
    require arg2
    require stor7[address(arg1)]
    require block.number < startBlock
    buyerRate[address(arg1)] = arg2
    emit PreferentialRateChange(arg2, arg1);
}

function setWallet(address arg1) {
    require owner == msg.sender
    require arg1
    walletAddress = arg1
    require ext_code.size(continuousSaleAddress)
    call continuousSaleAddress.0xdeaa59df with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    emit WalletChange(arg1);
}

function beginContinuousSale() {
    require owner == msg.sender
    require stor9
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf2fde38b with:
         gas gas_remaining - 710 wei
        args continuousSaleAddress
    require ext_call.success
    require ext_code.size(continuousSaleAddress)
    call continuousSaleAddress.0xbe9a6555 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(continuousSaleAddress)
    call continuousSaleAddress.0xf2fde38b with:
         gas gas_remaining - 710 wei
        args owner
    require ext_call.success
}

function finalize() {
    require owner == msg.sender
    require not stor9
    if block.number <= endBlock:
        require weiRaised >= cap
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require 100 * ext_call.return_data[0] / 100 == ext_call.return_data[0]
    require 60 * 100 * ext_call.return_data[0] / 40 / 60 == 100 * ext_call.return_data[0] / 40
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args walletAddress, 60 * 100 * ext_call.return_data[0] / 40 / 100
    require ext_call.success
    emit Finalized()
    stor9 = 1
}

function buyTokens(address arg1) payable {
    require arg1
    require msg.value + weiRaised >= weiRaised
    require block.number <= endBlock
    if block.number < startBlock:
        require weiRaised < cap
        require stor7[address(msg.sender)]
    else:
        if not msg.value:
            require block.number <= endBlock
            require weiRaised < cap
            require stor7[address(msg.sender)]
    require msg.value + weiRaised <= cap
    require msg.value + weiRaised >= weiRaised
    if buyerRate[address(msg.sender)]:
        if msg.value:
            require msg.value
            require buyerRate[address(msg.sender)] * msg.value / msg.value == buyerRate[address(msg.sender)]
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args address(arg1), buyerRate[address(msg.sender)] * msg.value
        require ext_call.success
        emit TokenPurchase(msg.value, buyerRate[address(msg.sender)] * msg.value, msg.sender, arg1);
    else:
        if stor7[address(msg.sender)]:
            if msg.value:
                require msg.value
                require preferentialRate * msg.value / msg.value == preferentialRate
            weiRaised += msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args address(arg1), preferentialRate * msg.value
            require ext_call.success
            emit TokenPurchase(msg.value, preferentialRate * msg.value, msg.sender, arg1);
        else:
            if initialRate - endRate:
                require initialRate - endRate
                require (initialRate * block.number) - (endRate * block.number) - (initialRate * startBlock) + (endRate * startBlock) / initialRate - endRate == block.number - startBlock
            require endBlock - startBlock
            require (initialRate * block.number) - (endRate * block.number) - (initialRate * startBlock) + (endRate * startBlock) / endBlock - startBlock <= initialRate
            if msg.value:
                require msg.value
                require (initialRate * msg.value) - ((initialRate * block.number) - (endRate * block.number) - (initialRate * startBlock) + (endRate * startBlock) / endBlock - startBlock * msg.value) / msg.value == initialRate - ((initialRate * block.number) - (endRate * block.number) - (initialRate * startBlock) + (endRate * startBlock) / endBlock - startBlock)
            weiRaised += msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args address(arg1), (initialRate * msg.value) - ((initialRate * block.number) - (endRate * block.number) - (initialRate * startBlock) + (endRate * startBlock) / endBlock - startBlock * msg.value)
            require ext_call.success
            emit TokenPurchase(msg.value, (initialRate * msg.value) - ((initialRate * block.number) - (endRate * block.number) - (initialRate * startBlock) + (endRate * startBlock) / endBlock - startBlock * msg.value), msg.sender, arg1);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}

function _fallback() payable {
    require msg.sender
    require msg.value + weiRaised >= weiRaised
    require block.number <= endBlock
    if block.number < startBlock:
        require weiRaised < cap
        require stor7[address(msg.sender)]
    else:
        if not msg.value:
            require block.number <= endBlock
            require weiRaised < cap
            require stor7[address(msg.sender)]
    require msg.value + weiRaised <= cap
    require msg.value + weiRaised >= weiRaised
    if buyerRate[address(msg.sender)]:
        if msg.value:
            require msg.value
            require buyerRate[address(msg.sender)] * msg.value / msg.value == buyerRate[address(msg.sender)]
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args msg.sender, buyerRate[address(msg.sender)] * msg.value
        require ext_call.success
        emit TokenPurchase(msg.value, buyerRate[address(msg.sender)] * msg.value, msg.sender, msg.sender);
    else:
        if stor7[address(msg.sender)]:
            if msg.value:
                require msg.value
                require preferentialRate * msg.value / msg.value == preferentialRate
            weiRaised += msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args msg.sender, preferentialRate * msg.value
            require ext_call.success
            emit TokenPurchase(msg.value, preferentialRate * msg.value, msg.sender, msg.sender);
        else:
            if initialRate - endRate:
                require initialRate - endRate
                require (initialRate * block.number) - (endRate * block.number) - (initialRate * startBlock) + (endRate * startBlock) / initialRate - endRate == block.number - startBlock
            require endBlock - startBlock
            require (initialRate * block.number) - (endRate * block.number) - (initialRate * startBlock) + (endRate * startBlock) / endBlock - startBlock <= initialRate
            if msg.value:
                require msg.value
                require (initialRate * msg.value) - ((initialRate * block.number) - (endRate * block.number) - (initialRate * startBlock) + (endRate * startBlock) / endBlock - startBlock * msg.value) / msg.value == initialRate - ((initialRate * block.number) - (endRate * block.number) - (initialRate * startBlock) + (endRate * startBlock) / endBlock - startBlock)
            weiRaised += msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args msg.sender, (initialRate * msg.value) - ((initialRate * block.number) - (endRate * block.number) - (initialRate * startBlock) + (endRate * startBlock) / endBlock - startBlock * msg.value)
            require ext_call.success
            emit TokenPurchase(msg.value, (initialRate * msg.value) - ((initialRate * block.number) - (endRate * block.number) - (initialRate * startBlock) + (endRate * startBlock) / endBlock - startBlock * msg.value), msg.sender, msg.sender);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}



}
