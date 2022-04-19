contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160
address stor0;
address stor1;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;
uint256 stor18;
uint256 stor19;
uint256 stor20;

function _fallback() payable {
    uint8(stor0.field_160) = 0
    stor12 = 296845635298687358666 * 3600
    stor13 = 1068644
    stor14 = 94040672 * 10^15
    stor15 = 748 * 10^14
    stor16 = 22 * 10^12 * 3600
    stor17 = 836 * 10^14
    stor18 = 5 * stor14 / 100
    stor19 = 10 * stor14 / 100
    stor20 = 20 * stor14 / 100
    require not msg.value
    address(stor0.field_0) = msg.sender
    require code.data[4959 len 20]
    require code.data[4979 len 32] > 0
    require code.data[5011 len 32] > code.data[4979 len 32]
    stor7 = code.data[4979 len 32]
    stor8 = code.data[5011 len 32]
    stor1 = code.data[4959 len 20]
    stor6 = 10^18
    return code.data[350 len 4597]
}



// =====================  Runtime code  =====================


const BASE_PRICE_IN_WEI = 88 * 10^15

const TOKENS_ALLOCATED_TO_PROOF = 1181031 * 10^18

const PROOF_TOKEN_WALLET = 0x11e3de1bda2650fa6bc74e7cea6a39559e59b103

const TOTAL_PRESALE_TOKENS = 112386712924725508802400

const PROOF_MULTISIG = 0x11e3de1bda2650fa6bc74e7cea6a39559e59b103

const PUBLIC_TOKENS = 1181031 * 10^18


uint8 stor0; offset 160
address owner;
address proofTokenAddress;
uint256 totalWeiRaised;
uint256 tokensMinted;
uint256 contributors;
uint256 decimalsMultiplier;
uint256 startTime;
uint256 endTime;
uint256 remainingTokens;
uint256 allocatedTokens;
uint8 stor11;
uint256 tokenCap;
uint256 cap;
uint256 weiCap;
uint256 firstCheckpointPrice;
uint256 secondCheckpointPrice;
uint256 thirdCheckpointPrice;
uint256 firstCheckpoint;
uint256 secondCheckpoint;
uint256 thirdCheckpoint;

function allocatedTokens() {
    return allocatedTokens
}

function proofToken() {
    return proofTokenAddress
}

function thirdCheckpointPrice() {
    return thirdCheckpointPrice
}

function endTime() {
    return endTime
}

function cap() {
    return cap
}

function firstCheckpoint() {
    return firstCheckpoint
}

function totalWeiRaised() {
    return totalWeiRaised
}

function paused() {
    return bool(stor0)
}

function secondCheckpoint() {
    return secondCheckpoint
}

function tokensMinted() {
    return tokensMinted
}

function contributors() {
    return contributors
}

function startTime() {
    return startTime
}

function weiCap() {
    return weiCap
}

function owner() {
    return owner
}

function thirdCheckpoint() {
    return thirdCheckpoint
}

function finalized() {
    return bool(stor11)
}

function decimalsMultiplier() {
    return decimalsMultiplier
}

function firstCheckpointPrice() {
    return firstCheckpointPrice
}

function remainingTokens() {
    return remainingTokens
}

function secondCheckpointPrice() {
    return secondCheckpointPrice
}

function tokenCap() {
    return tokenCap
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function unpause() {
    require owner == msg.sender
    require stor0
    stor0 = 0
    emit Unpause()
    return 1
}

function pause() {
    require owner == msg.sender
    require not stor0
    stor0 = 1
    emit Pause()
    return 1
}

function onApprove(address arg1, address arg2, uint256 arg3) {
    emit OnApprove(address(arg1), address(arg2), arg3);
    return 1
}

function onTransfer(address arg1, address arg2, uint256 arg3) {
    emit OnTransfer(address(arg1), address(arg2), arg3);
    return 1
}

function totalSupply() {
    require ext_code.size(proofTokenAddress)
    call proofTokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return ext_call.return_data[0]
}

function balanceOf(address arg1) {
    require ext_code.size(proofTokenAddress)
    call proofTokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0]
}

function enableTransfers(bool arg1) {
    require owner == msg.sender
    require ext_code.size(proofTokenAddress)
    call proofTokenAddress.0xf41e60c5 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}

function changeController(address arg1) {
    require owner == msg.sender
    require ext_code.size(proofTokenAddress)
    call proofTokenAddress.0x6d16fa41 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}

function getPriceInWei() {
    if totalWeiRaised < firstCheckpoint:
        return firstCheckpointPrice
    if totalWeiRaised < secondCheckpoint:
        return secondCheckpointPrice
    if totalWeiRaised >= thirdCheckpoint:
        return 88 * 10^15
    return thirdCheckpointPrice
}

function allocateProofTokens(uint256 arg1) {
    require owner == msg.sender
    require not stor0
    require ext_code.size(proofTokenAddress)
    call proofTokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args 0x11e3de1bda2650fa6bc74e7cea6a39559e59b103, arg1
    require ext_call.success
}

function finalize() {
    require owner == msg.sender
    require stor0
    require ext_code.size(proofTokenAddress)
    call proofTokenAddress.0x7d64bcb4 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(proofTokenAddress)
    call proofTokenAddress.0xf41e60c5 with:
         gas gas_remaining - 710 wei
        args 1
    require ext_call.success
    emit Finalized()
    stor11 = 1
}

function buyTokens(address arg1) payable {
    require not stor0
    require arg1
    require msg.value
    if block.timestamp < startTime:
        require block.timestamp >= startTime
    else:
        require block.timestamp <= endTime
    require msg.value + totalWeiRaised >= totalWeiRaised
    totalWeiRaised += msg.value
    if msg.value:
        require msg.value
        require decimalsMultiplier * msg.value / msg.value == decimalsMultiplier
    if totalWeiRaised < firstCheckpoint:
        require firstCheckpointPrice
        require (decimalsMultiplier * msg.value / firstCheckpointPrice) + tokensMinted >= tokensMinted
        tokensMinted += decimalsMultiplier * msg.value / firstCheckpointPrice
        require (decimalsMultiplier * msg.value / firstCheckpointPrice) + tokensMinted < tokenCap
        require contributors + 1 >= contributors
        contributors++
        require ext_code.size(proofTokenAddress)
        call proofTokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args address(arg1), decimalsMultiplier * msg.value / firstCheckpointPrice
        require ext_call.success
        emit TokenPurchase(msg.value, decimalsMultiplier * msg.value / firstCheckpointPrice, msg.sender, arg1);
    else:
        if totalWeiRaised < secondCheckpoint:
            require secondCheckpointPrice
            require (decimalsMultiplier * msg.value / secondCheckpointPrice) + tokensMinted >= tokensMinted
            tokensMinted += decimalsMultiplier * msg.value / secondCheckpointPrice
            require (decimalsMultiplier * msg.value / secondCheckpointPrice) + tokensMinted < tokenCap
            require contributors + 1 >= contributors
            contributors++
            require ext_code.size(proofTokenAddress)
            call proofTokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args address(arg1), decimalsMultiplier * msg.value / secondCheckpointPrice
            require ext_call.success
            emit TokenPurchase(msg.value, decimalsMultiplier * msg.value / secondCheckpointPrice, msg.sender, arg1);
        else:
            if totalWeiRaised >= thirdCheckpoint:
                require (decimalsMultiplier * msg.value / 88 * 10^15) + tokensMinted >= tokensMinted
                tokensMinted += decimalsMultiplier * msg.value / 88 * 10^15
                require (decimalsMultiplier * msg.value / 88 * 10^15) + tokensMinted < tokenCap
                require contributors + 1 >= contributors
                contributors++
                require ext_code.size(proofTokenAddress)
                call proofTokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args address(arg1), decimalsMultiplier * msg.value / 88 * 10^15
                require ext_call.success
                emit TokenPurchase(msg.value, decimalsMultiplier * msg.value / 88 * 10^15, msg.sender, arg1);
            else:
                require thirdCheckpointPrice
                require (decimalsMultiplier * msg.value / thirdCheckpointPrice) + tokensMinted >= tokensMinted
                tokensMinted += decimalsMultiplier * msg.value / thirdCheckpointPrice
                require (decimalsMultiplier * msg.value / thirdCheckpointPrice) + tokensMinted < tokenCap
                require contributors + 1 >= contributors
                contributors++
                require ext_code.size(proofTokenAddress)
                call proofTokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args address(arg1), decimalsMultiplier * msg.value / thirdCheckpointPrice
                require ext_call.success
                emit TokenPurchase(msg.value, decimalsMultiplier * msg.value / thirdCheckpointPrice, msg.sender, arg1);
    call 0x11e3de1bda2650fa6bc74e7cea6a39559e59b103 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}

function _fallback() payable {
    require not stor0
    require msg.sender
    require msg.value
    if block.timestamp < startTime:
        require block.timestamp >= startTime
    else:
        require block.timestamp <= endTime
    require msg.value + totalWeiRaised >= totalWeiRaised
    totalWeiRaised += msg.value
    if msg.value:
        require msg.value
        require decimalsMultiplier * msg.value / msg.value == decimalsMultiplier
    if totalWeiRaised < firstCheckpoint:
        require firstCheckpointPrice
        require (decimalsMultiplier * msg.value / firstCheckpointPrice) + tokensMinted >= tokensMinted
        tokensMinted += decimalsMultiplier * msg.value / firstCheckpointPrice
        require (decimalsMultiplier * msg.value / firstCheckpointPrice) + tokensMinted < tokenCap
        require contributors + 1 >= contributors
        contributors++
        require ext_code.size(proofTokenAddress)
        call proofTokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args msg.sender, decimalsMultiplier * msg.value / firstCheckpointPrice
        require ext_call.success
        emit TokenPurchase(msg.value, decimalsMultiplier * msg.value / firstCheckpointPrice, msg.sender, msg.sender);
    else:
        if totalWeiRaised < secondCheckpoint:
            require secondCheckpointPrice
            require (decimalsMultiplier * msg.value / secondCheckpointPrice) + tokensMinted >= tokensMinted
            tokensMinted += decimalsMultiplier * msg.value / secondCheckpointPrice
            require (decimalsMultiplier * msg.value / secondCheckpointPrice) + tokensMinted < tokenCap
            require contributors + 1 >= contributors
            contributors++
            require ext_code.size(proofTokenAddress)
            call proofTokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args msg.sender, decimalsMultiplier * msg.value / secondCheckpointPrice
            require ext_call.success
            emit TokenPurchase(msg.value, decimalsMultiplier * msg.value / secondCheckpointPrice, msg.sender, msg.sender);
        else:
            if totalWeiRaised >= thirdCheckpoint:
                require (decimalsMultiplier * msg.value / 88 * 10^15) + tokensMinted >= tokensMinted
                tokensMinted += decimalsMultiplier * msg.value / 88 * 10^15
                require (decimalsMultiplier * msg.value / 88 * 10^15) + tokensMinted < tokenCap
                require contributors + 1 >= contributors
                contributors++
                require ext_code.size(proofTokenAddress)
                call proofTokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, decimalsMultiplier * msg.value / 88 * 10^15
                require ext_call.success
                emit TokenPurchase(msg.value, decimalsMultiplier * msg.value / 88 * 10^15, msg.sender, msg.sender);
            else:
                require thirdCheckpointPrice
                require (decimalsMultiplier * msg.value / thirdCheckpointPrice) + tokensMinted >= tokensMinted
                tokensMinted += decimalsMultiplier * msg.value / thirdCheckpointPrice
                require (decimalsMultiplier * msg.value / thirdCheckpointPrice) + tokensMinted < tokenCap
                require contributors + 1 >= contributors
                contributors++
                require ext_code.size(proofTokenAddress)
                call proofTokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, decimalsMultiplier * msg.value / thirdCheckpointPrice
                require ext_call.success
                emit TokenPurchase(msg.value, decimalsMultiplier * msg.value / thirdCheckpointPrice, msg.sender, msg.sender);
    call 0x11e3de1bda2650fa6bc74e7cea6a39559e59b103 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}



}
