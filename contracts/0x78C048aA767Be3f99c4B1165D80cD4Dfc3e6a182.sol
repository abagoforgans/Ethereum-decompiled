contract main {




// =====================  Runtime code  =====================


const TOKENS_FOR_OPERATIONS = 400000000 * 10^18

const RATE = 17500

const TOKENS_FOR_PRESALE = (87500 * 10^18 * 3600)

const TOKENS_FOR_SALE = 600000000 * 10^18

const TOKEN_SALE_LIMIT = 25000 * 10^18


address tokenAddress;
uint256 startTime;
uint256 endTime;
address walletAddress;
uint256 weiRaised;
uint8 stor5; offset 160
uint8 stor5; offset 168
uint128 stor5; offset 168
uint128 stor5; offset 160
address owner;
uint256 BONUS_PERCENTAGE;
uint8 currentPhase;

function currentPhase() {
    require currentPhase <= 2
    return currentPhase
}

function endTime() {
    return endTime
}

function BONUS_PERCENTAGE() {
    return BONUS_PERCENTAGE
}

function weiCapReached() {
    return bool(uint8(stor5.field_168))
}

function weiRaised() {
    return weiRaised
}

function wallet() {
    return walletAddress
}

function startTime() {
    return startTime
}

function isFinalized() {
    return bool(uint8(stor5.field_160))
}

function owner() {
    return owner
}

function token() {
    return tokenAddress
}

function hasEnded() {
    return (block.timestamp > endTime)
}

function setNewBonusScheme(uint256 arg1) {
    BONUS_PERCENTAGE = arg1
}

function sub_7ad59431(?) {
    require msg.sender == owner
    require arg1 <= 2
    currentPhase = arg1
    emit LogPhaseSwitch(arg1);
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function transferTokenOwnership(address arg1) {
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf2fde38b with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function mintRawTokens(address arg1, uint256 arg2) {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function finalize() {
    require msg.sender == owner
    require not uint8(stor5.field_160)
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args walletAddress, 400000000 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.finishMinting() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf2fde38b with:
         gas gas_remaining wei
        args walletAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Finalized()
    Mask(96, 0, stor5.field_160) = 1
}

function _fallback() payable {
    require currentPhase <= 2
    require currentPhase == 1
    require msg.sender
    require msg.value > 0
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value
    require msg.value
    require 17500 * msg.value / msg.value == 17500
    require weiRaised + msg.value >= weiRaised
    require weiRaised + msg.value <= 25000 * 10^18
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 17500 * msg.value:
        require 17500 * msg.value
        require 17500 * msg.value * BONUS_PERCENTAGE / 17500 * msg.value == BONUS_PERCENTAGE
    require (17500 * msg.value) + (17500 * msg.value * BONUS_PERCENTAGE / 100) >= 17500 * msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= 0
    require (17500 * msg.value) + (17500 * msg.value * BONUS_PERCENTAGE / 100) + ext_call.return_data[0] <= 600000000 * 10^18
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args msg.sender, (17500 * msg.value) + (17500 * msg.value * BONUS_PERCENTAGE / 100)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit TokenPurchase(msg.value, (17500 * msg.value) + (17500 * msg.value * BONUS_PERCENTAGE / 100), msg.sender, msg.sender);
    weiRaised += msg.value
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if weiRaised == 600000000 * 10^18:
        Mask(88, 0, stor5.field_168) = 1
}

function buyTokens(address arg1) payable {
    require currentPhase <= 2
    require currentPhase == 1
    require arg1
    require msg.value > 0
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value
    require msg.value
    require 17500 * msg.value / msg.value == 17500
    require weiRaised + msg.value >= weiRaised
    require weiRaised + msg.value <= 25000 * 10^18
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 17500 * msg.value:
        require 17500 * msg.value
        require 17500 * msg.value * BONUS_PERCENTAGE / 17500 * msg.value == BONUS_PERCENTAGE
    require (17500 * msg.value) + (17500 * msg.value * BONUS_PERCENTAGE / 100) >= 17500 * msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= 0
    require (17500 * msg.value) + (17500 * msg.value * BONUS_PERCENTAGE / 100) + ext_call.return_data[0] <= 600000000 * 10^18
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args address(arg1), (17500 * msg.value) + (17500 * msg.value * BONUS_PERCENTAGE / 100)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit TokenPurchase(msg.value, (17500 * msg.value) + (17500 * msg.value * BONUS_PERCENTAGE / 100), msg.sender, arg1);
    weiRaised += msg.value
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if weiRaised == 600000000 * 10^18:
        Mask(88, 0, stor5.field_168) = 1
}



}
