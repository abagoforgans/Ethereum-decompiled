contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor3;
uint256 stor4;
uint8 stor5;
address stor6;
uint256 stor7;
address stor8; offset 8
mapping of uint256 stor9;
mapping of uint256 stor10;

function _fallback() {
    stor3 = block.number
    stor0 = 4000000 * 10^18
    stor6 = 0xb44dd0456ca2eb42506549aacff6724826c89599
    stor5 = 1
    stor8 = msg.sender
    stor9[address(msg.sender)] = 1000
    stor10[address(msg.sender)] = block.number
    stor7 += 1000
    stor1 += stor7
    stor9[0x4f70dc5da5acf5e71905c3a8473a6d8a7e7ba4c5] = 0
    stor10[0x4f70dc5da5acf5e71905c3a8473a6d8a7e7ba4c5] = block.number
    stor1 += stor7
    stor9[0x393c82c7ae55b48775f4eccd2523450d291f2418] = 0
    stor10[0x393c82c7ae55b48775f4eccd2523450d291f2418] = block.number
    stor1 += stor7
    stor4 = 5000 * 3600
    return code.data[589 len 3767]
}



// =====================  Runtime code  =====================


uint256 maxMintable;
uint256 totalMinted;
uint256 endBlock;
uint256 startBlock;
uint256 exchangeRate;
uint8 stor5;
address tokenAddress; offset 8
address eTHWalletAddress;
uint256 heldTotal;
uint8 stor8;
address creatorAddress; offset 8
mapping of uint256 heldTokens;
mapping of uint256 heldTimeline;

function creator() {
    return creatorAddress
}

function heldTimeline(address arg1) {
    return heldTimeline[arg1]
}

function endBlock() {
    return endBlock
}

function isFunding() {
    return bool(stor5)
}

function ETHWallet() {
    return eTHWalletAddress
}

function maxMintable() {
    return maxMintable
}

function exchangeRate() {
    return exchangeRate
}

function startBlock() {
    return startBlock
}

function totalMinted() {
    return totalMinted
}

function heldTotal() {
    return heldTotal
}

function Token() {
    return tokenAddress
}

function heldTokens(address arg1) {
    return heldTokens[arg1]
}

function _fallback() payable {
    revert
}

function closeSale() {
    require msg.sender == creatorAddress
    stor5 = 0
}

function changeCreator(address arg1) {
    require msg.sender == creatorAddress
    creatorAddress = arg1
}

function updateRate(uint256 arg1) {
    require msg.sender == creatorAddress
    require stor5
    exchangeRate = arg1
}

function setup(address arg1, uint256 arg2) {
    require not stor8
    tokenAddress = arg1
    endBlock = arg2
    stor8 = 1
}

function changeTransferStats(bool arg1) {
    require msg.sender == creatorAddress
    require ext_code.size(tokenAddress)
    call tokenAddress.changeTransfer(bool arg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}

function releaseHeldCoins() {
    require not stor5
    require heldTokens[address(msg.sender)] >= 0
    require block.number >= heldTimeline[address(msg.sender)]
    heldTokens[address(msg.sender)] = 0
    heldTimeline[address(msg.sender)] = 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0x79c65068 with:
         gas gas_remaining - 710 wei
        args msg.sender, heldTokens[address(msg.sender)]
    require ext_call.success
    emit ReleaseTokens(msg.sender, heldTokens[address(msg.sender)]);
}

function contribute() payable {
    require msg.value > 0
    require stor5
    require block.number <= endBlock
    require totalMinted + (msg.value * exchangeRate) <= maxMintable
    totalMinted = (2 * totalMinted) + (msg.value * exchangeRate)
    call eTHWalletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0x79c65068 with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value * exchangeRate
    require ext_call.success
    emit Contribution(msg.sender, msg.value * exchangeRate);
}



}
