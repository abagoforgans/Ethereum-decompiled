contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
address stor6;
uint256 stor7;
uint8 stor10;
uint256 stor10; offset 16
uint256 stor10; offset 8

function _fallback() payable {
    stor1 = 1
    stor2 = 1
    uint8(stor10.field_0) = 0
    Mask(248, 0, stor10.field_8) = 0
    Mask(240, 0, stor10.field_16) = 0
    require not msg.value
    stor0 = msg.sender
    require code.data[8975 len 20]
    require code.data[8899 len 32] > block.timestamp - 60
    require code.data[8931 len 32] > stor4
    require code.data[8995 len 32] > stor4
    stor7 = code.data[8995 len 32]
    require stor7 + (2160 * 24 * 3600) >= stor7
    stor3 = stor7 + (2160 * 24 * 3600)
    stor4 = code.data[8899 len 32]
    stor5 = code.data[8931 len 32]
    stor6 = code.data[8975 len 20]
    return code.data[530 len 8369]
}



// =====================  Runtime code  =====================


const VESTING_TIME = (2160 * 24 * 3600)

const HARD_CAP = 70000000 * 10^18


address owner;
uint256 weiUsdRate;
uint256 btcUsdRate;
uint256 vestingEnds;
uint256 startTime;
uint256 endTime;
address walletAddress;
uint256 vestingStarts;
uint256 soldTokens;
uint256 raised;
uint8 stor10;
uint8 stor10; offset 8
uint8 stor10; offset 16
address tokenAddress; offset 24
uint256 stor10; offset 8
address vestingAddress;

function activated() {
    return bool(uint8(stor10.field_0))
}

function endTime() {
    return endTime
}

function vestingStarts() {
    return vestingStarts
}

function btcUsdRate() {
    return btcUsdRate
}

function isStopped() {
    return bool(uint8(stor10.field_8))
}

function weiUsdRate() {
    return weiUsdRate
}

function vesting() {
    return vestingAddress
}

function wallet() {
    return walletAddress
}

function soldTokens() {
    return soldTokens
}

function startTime() {
    return startTime
}

function vestingEnds() {
    return vestingEnds
}

function isFinalized() {
    return bool(uint8(stor10.field_16))
}

function owner() {
    return owner
}

function raised() {
    return raised
}

function token() {
    return tokenAddress
}

function setBtcUsdRate(uint256 arg1) {
    require msg.sender == owner
    require arg1 > 0
    btcUsdRate = arg1
}

function setWeiUsdRate(uint256 arg1) {
    require msg.sender == owner
    require arg1 > 0
    weiUsdRate = arg1
}

function resume() {
    require msg.sender == owner
    require uint8(stor10.field_8)
    Mask(248, 0, stor10.field_8) = 0
    return 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function computeTokens(uint256 arg1) {
    if not arg1:
        return 0
    require arg1
    require 100 * 10^18 * arg1 / arg1 == 100 * 10^18
    return (100 * 10^18 * arg1 / 14)
}

function stop() {
    require msg.sender == owner
    require uint8(stor10.field_0)
    require not uint8(stor10.field_8)
    require not uint8(stor10.field_16)
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    Mask(248, 0, stor10.field_8) = 1
    return 1
}

function claimTokens(address arg1) {
    require msg.sender == owner
    require arg1 != tokenAddress
    if not arg1:
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    else:
        require ext_code.size(arg1)
        call arg1.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args owner, ext_call.return_data[0]
        require ext_call.success
        emit ClaimedTokens(ext_call.return_data[0], arg1, owner);
}

function btcPurchase(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg1
    require btcUsdRate
    require uint8(stor10.field_0)
    require not uint8(stor10.field_8)
    require not uint8(stor10.field_16)
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require arg2 / btcUsdRate >= 10
    if not arg2 / btcUsdRate:
        require raised + (arg2 / btcUsdRate) >= raised
        raised += arg2 / btcUsdRate
        require soldTokens >= soldTokens
        require soldTokens <= 70000000 * 10^18
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args vestingAddress, 0
        require ext_call.success
        require ext_code.size(vestingAddress)
        call vestingAddress.grantVestedTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining - 710 wei
            args 0, 0, 0, vestingStarts, vestingEnds
        require ext_call.success
        emit NewBuyer(0, arg2 / btcUsdRate, 0, arg2, arg1);
    else:
        require arg2 / btcUsdRate
        require 100 * 10^18 * arg2 / btcUsdRate / arg2 / btcUsdRate == 100 * 10^18
        require raised + (arg2 / btcUsdRate) >= raised
        raised += arg2 / btcUsdRate
        require soldTokens + (100 * 10^18 * arg2 / btcUsdRate / 14) >= soldTokens
        soldTokens += 100 * 10^18 * arg2 / btcUsdRate / 14
        require soldTokens <= 70000000 * 10^18
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args vestingAddress, 100 * 10^18 * arg2 / btcUsdRate / 14
        require ext_call.success
        require ext_code.size(vestingAddress)
        call vestingAddress.grantVestedTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining - 710 wei
            args 0, 0, 100 * 10^18 * arg2 / btcUsdRate / 14, vestingStarts, vestingEnds
        require ext_call.success
        emit NewBuyer(100 * 10^18 * arg2 / btcUsdRate / 14, arg2 / btcUsdRate, 0, arg2, arg1);
}

function _fallback() payable {
    require weiUsdRate
    require uint8(stor10.field_0)
    require not uint8(stor10.field_8)
    require not uint8(stor10.field_16)
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value / weiUsdRate >= 10
    if not msg.value / weiUsdRate:
        require raised + (msg.value / weiUsdRate) >= raised
        raised += msg.value / weiUsdRate
        require soldTokens >= soldTokens
        require soldTokens <= 70000000 * 10^18
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args vestingAddress, 0
        require ext_call.success
        require ext_code.size(vestingAddress)
        call vestingAddress.grantVestedTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining - 710 wei
            args 0, uint32(msg.sender), 0, vestingStarts, vestingEnds
        require ext_call.success
        emit NewBuyer(0, msg.value / weiUsdRate, msg.value, 0, msg.sender);
    else:
        require msg.value / weiUsdRate
        require 100 * 10^18 * msg.value / weiUsdRate / msg.value / weiUsdRate == 100 * 10^18
        require raised + (msg.value / weiUsdRate) >= raised
        raised += msg.value / weiUsdRate
        require soldTokens + (100 * 10^18 * msg.value / weiUsdRate / 14) >= soldTokens
        soldTokens += 100 * 10^18 * msg.value / weiUsdRate / 14
        require soldTokens <= 70000000 * 10^18
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args vestingAddress, 100 * 10^18 * msg.value / weiUsdRate / 14
        require ext_call.success
        require ext_code.size(vestingAddress)
        call vestingAddress.grantVestedTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining - 710 wei
            args 0, uint32(msg.sender), 100 * 10^18 * msg.value / weiUsdRate / 14, vestingStarts, vestingEnds
        require ext_call.success
        emit NewBuyer(100 * 10^18 * msg.value / weiUsdRate / 14, msg.value / weiUsdRate, msg.value, 0, msg.sender);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}

function finalize(address arg1, address arg2, address arg3, address arg4) {
    require arg1
    require arg2
    require arg3
    require arg4
    require msg.sender == owner
    require vestingStarts + (61320 * 24 * 3600) >= vestingStarts
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args vestingAddress, 175000000 * 10^18
    require ext_call.success
    require ext_code.size(vestingAddress)
    call vestingAddress.grantVestedTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) with:
         gas gas_remaining - 710 wei
        args 0, 0, 175000000 * 10^18, vestingStarts, vestingStarts + (61320 * 24 * 3600)
    require ext_call.success
    require vestingStarts + (61320 * 24 * 3600) >= vestingStarts
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args vestingAddress, 168000000 * 10^18
    require ext_call.success
    require ext_code.size(vestingAddress)
    call vestingAddress.grantVestedTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) with:
         gas gas_remaining - 710 wei
        args 0, 0, 168000000 * 10^18, vestingStarts, vestingStarts + (61320 * 24 * 3600)
    require ext_call.success
    require vestingStarts + (61320 * 24 * 3600) >= vestingStarts
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args vestingAddress, 70000000 * 10^18
    require ext_call.success
    require ext_code.size(vestingAddress)
    call vestingAddress.grantVestedTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) with:
         gas gas_remaining - 710 wei
        args 0, 0, 70000000 * 10^18, vestingStarts, vestingStarts + (61320 * 24 * 3600)
    require ext_call.success
    require vestingStarts + (35040 * 24 * 3600) >= vestingStarts
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args vestingAddress, 48999990 * 10^18
    require ext_call.success
    require ext_code.size(vestingAddress)
    call vestingAddress.grantVestedTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) with:
         gas gas_remaining - 710 wei
        args 0, 0, 48999990 * 10^18, vestingStarts, vestingStarts + (35040 * 24 * 3600)
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0x42966c68 with:
         gas gas_remaining - 710 wei
        args ext_call.return_data[0]
    require ext_call.success
}

function initialize(address arg1, address arg2, address arg3, address arg4) {
    require arg1
    require arg2
    require msg.sender == owner
    require not uint8(stor10.field_0)
    uint8(stor10.field_0) = 1
    tokenAddress = arg1
    vestingAddress = arg2
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg3), 7000000 * 10^18
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg4), 161000000 * 10^18
    require ext_call.success
    require vestingStarts + (2160 * 24 * 3600) >= vestingStarts
    require vestingStarts + (17520 * 24 * 3600) >= vestingStarts
    require raised + 1016000 >= raised
    raised += 1016000
    require soldTokens + 17310000 * 10^18 >= soldTokens
    soldTokens += 17310000 * 10^18
    require soldTokens <= 70000000 * 10^18
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args vestingAddress, 860000 * 10^18
    require ext_call.success
    require ext_code.size(vestingAddress)
    call vestingAddress.grantVestedTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) with:
         gas gas_remaining - 710 wei
        args 0, 449393931, 860000 * 10^18, vestingStarts, vestingStarts + (2160 * 24 * 3600)
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args vestingAddress, 100000 * 10^18
    require ext_call.success
    require ext_code.size(vestingAddress)
    call vestingAddress.grantVestedTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) with:
         gas gas_remaining - 710 wei
        args 0, 2988083827, 100000 * 10^18, vestingStarts, vestingStarts + (2160 * 24 * 3600)
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args vestingAddress, 100000 * 10^18
    require ext_call.success
    require ext_code.size(vestingAddress)
    call vestingAddress.grantVestedTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) with:
         gas gas_remaining - 710 wei
        args 0, 107416629, 100000 * 10^18, vestingStarts, vestingStarts + (2160 * 24 * 3600)
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args vestingAddress, 50 * 10^18 * 3600
    require ext_call.success
    require ext_code.size(vestingAddress)
    call vestingAddress.grantVestedTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) with:
         gas gas_remaining - 710 wei
        args 0, 167641130, 50 * 10^18 * 3600, vestingStarts, vestingStarts + (2160 * 24 * 3600)
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args vestingAddress, 100000 * 10^18
    require ext_call.success
    require ext_code.size(vestingAddress)
    call vestingAddress.grantVestedTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) with:
         gas gas_remaining - 710 wei
        args 0, 1765600084, 100000 * 10^18, vestingStarts, vestingStarts + (2160 * 24 * 3600)
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args vestingAddress, 100000 * 10^18
    require ext_call.success
    require ext_code.size(vestingAddress)
    call vestingAddress.grantVestedTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) with:
         gas gas_remaining - 710 wei
        args 0, 2574124764, 100000 * 10^18, vestingStarts, vestingStarts + (2160 * 24 * 3600)
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args vestingAddress, 100000 * 10^18
    require ext_call.success
    require ext_code.size(vestingAddress)
    call vestingAddress.grantVestedTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) with:
         gas gas_remaining - 710 wei
        args 0, 2746794400, 100000 * 10^18, vestingStarts, vestingStarts + (2160 * 24 * 3600)
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args vestingAddress, 100000 * 10^18
    require ext_call.success
    require ext_code.size(vestingAddress)
    call vestingAddress.grantVestedTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) with:
         gas gas_remaining - 710 wei
        args 0, 4106467924, 100000 * 10^18, vestingStarts, vestingStarts + (2160 * 24 * 3600)
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args vestingAddress, 150000 * 10^18
    require ext_call.success
    require ext_code.size(vestingAddress)
    call vestingAddress.grantVestedTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) with:
         gas gas_remaining - 710 wei
        args 0, 118234793, 150000 * 10^18, vestingStarts, vestingStarts + (2160 * 24 * 3600)
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args vestingAddress, 200000 * 10^18
    require ext_call.success
    require ext_code.size(vestingAddress)
    call vestingAddress.grantVestedTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) with:
         gas gas_remaining - 710 wei
        args 0, 209893221, 200000 * 10^18, vestingStarts, vestingStarts + (2160 * 24 * 3600)
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args vestingAddress, 860000 * 10^18
    require ext_call.success
    require ext_code.size(vestingAddress)
    call vestingAddress.grantVestedTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) with:
         gas gas_remaining - 710 wei
        args 0, 1418258866, 860000 * 10^18, vestingStarts, vestingStarts + (2160 * 24 * 3600)
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args vestingAddress, 200000 * 10^18
    require ext_call.success
    require ext_code.size(vestingAddress)
    call vestingAddress.grantVestedTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) with:
         gas gas_remaining - 710 wei
        args 0, 610803168, 200000 * 10^18, vestingStarts, vestingStarts + (2160 * 24 * 3600)
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args vestingAddress, 400000 * 10^18
    require ext_call.success
    require ext_code.size(vestingAddress)
    call vestingAddress.grantVestedTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) with:
         gas gas_remaining - 710 wei
        args 0, 3266668778, 400000 * 10^18, vestingStarts, vestingStarts + (2160 * 24 * 3600)
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args vestingAddress, 400000 * 10^18
    require ext_call.success
    require ext_code.size(vestingAddress)
    call vestingAddress.grantVestedTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) with:
         gas gas_remaining - 710 wei
        args 0, 3810755322, 400000 * 10^18, vestingStarts, vestingStarts + (2160 * 24 * 3600)
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args vestingAddress, 600000 * 10^18
    require ext_call.success
    require ext_code.size(vestingAddress)
    call vestingAddress.grantVestedTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) with:
         gas gas_remaining - 710 wei
        args 0, 565199072, 600000 * 10^18, vestingStarts, vestingStarts + (2160 * 24 * 3600)
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args vestingAddress, 750 * 10^18 * 24 * 3600
    require ext_call.success
    require ext_code.size(vestingAddress)
    call vestingAddress.grantVestedTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) with:
         gas gas_remaining - 710 wei
        args 0, 2895238102, 750 * 10^18 * 24 * 3600, vestingStarts, vestingStarts + (2160 * 24 * 3600)
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args vestingAddress, 2360000 * 10^18
    require ext_call.success
    require ext_code.size(vestingAddress)
    call vestingAddress.grantVestedTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) with:
         gas gas_remaining - 710 wei
        args 0, 373840226, 2360000 * 10^18, vestingStarts, vestingStarts + (2160 * 24 * 3600)
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args vestingAddress, 1950000 * 10^18
    require ext_call.success
    require ext_code.size(vestingAddress)
    call vestingAddress.grantVestedTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) with:
         gas gas_remaining - 710 wei
        args 0, 635068443, 1950000 * 10^18, vestingStarts, vestingStarts + (2160 * 24 * 3600)
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args vestingAddress, 1950000 * 10^18
    require ext_call.success
    require ext_code.size(vestingAddress)
    call vestingAddress.grantVestedTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) with:
         gas gas_remaining - 710 wei
        args 0, 1367257275, 1950000 * 10^18, vestingStarts, vestingStarts + (2160 * 24 * 3600)
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args vestingAddress, 1950000 * 10^18
    require ext_call.success
    require ext_code.size(vestingAddress)
    call vestingAddress.grantVestedTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) with:
         gas gas_remaining - 710 wei
        args 0, 2442518164, 1950000 * 10^18, vestingStarts, vestingStarts + (17520 * 24 * 3600)
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args vestingAddress, 1950000 * 10^18
    require ext_call.success
    require ext_code.size(vestingAddress)
    call vestingAddress.grantVestedTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) with:
         gas gas_remaining - 710 wei
        args 0, 3756536725, 1950000 * 10^18, vestingStarts, vestingStarts + (17520 * 24 * 3600)
    require ext_call.success
}



}
