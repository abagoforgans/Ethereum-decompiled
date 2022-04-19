contract main {


// =======================  Init code  ======================


uint8 stor0;
uint128 stor0; offset 176
uint128 stor0; offset 168
address stor0; offset 8
address stor1;
uint256 stor2;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;

function _fallback() payable {
    uint8(stor0.field_0) = 0
    Mask(88, 0, stor0.field_168) = 0
    Mask(80, 0, stor0.field_176) = 0
    stor6 = 30
    stor7 = 70
    require not msg.value
    address(stor0.field_8) = msg.sender
    uint8(stor0.field_0) = 1
    stor1 = code.data[5322 len 20]
    require ext_code.size(stor1)
    call stor1.isDecentBetToken() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(stor1)
    call stor1.decentBetMultisig() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    stor2 = ext_call.return_data[12 len 20] or Mask(96, 160, stor2)
    require ext_code.size(stor1)
    call stor1.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    stor4 = ext_call.return_data[0]
    if stor4:
        require stor4
        require stor4 * stor6 / stor4 == stor6
    require stor7 > 0
    require stor7
    require stor4 * stor6 == (stor7 * stor4 * stor6 / stor7) + (stor4 * stor6 % stor7)
    stor8 = stor4 * stor6 / stor7
    require stor4 + stor8 >= stor4
    require stor4 + stor8 >= stor8
    stor5 = stor4 + stor8
    return code.data[1297 len 4013]
}



// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 168
uint8 stor0; offset 176
uint128 stor0; offset 176
uint128 stor0; offset 168
address owner; offset 8
address oldTokenAddress;
address decentBetMultisigAddress;
address newTokenAddress;
uint256 originalSupply;
uint256 correctOriginalSupply;
uint256 mintedPercentOfTokens;
uint256 crowdfundPercentOfTokens;
uint256 mintedTokens;

function finalizedUpgrade() {
    return bool(uint8(stor0.field_176))
}

function mintedPercentOfTokens() {
    return mintedPercentOfTokens
}

function originalSupply() {
    return originalSupply
}

function crowdfundPercentOfTokens() {
    return crowdfundPercentOfTokens
}

function isUpgradeAgent() {
    return bool(uint8(stor0.field_0))
}

function correctOriginalSupply() {
    return correctOriginalSupply
}

function upgradeHasBegun() {
    return bool(uint8(stor0.field_168))
}

function mintedTokens() {
    return mintedTokens
}

function owner() {
    return owner
}

function decentBetMultisig() {
    return decentBetMultisigAddress
}

function oldToken() {
    return oldTokenAddress
}

function newToken() {
    return newTokenAddress
}

function _fallback() {
    revert
}

function finalizeUpgrade() {
    require msg.sender == oldTokenAddress
    Mask(80, 0, stor0.field_176) = 1
}

function setOriginalSupply() {
    require msg.sender == oldTokenAddress
    require ext_code.size(oldTokenAddress)
    call oldTokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    originalSupply = ext_call.return_data[0]
}

function setNewToken(address arg1) {
    require msg.sender == owner
    require arg1
    require not uint8(stor0.field_168)
    newTokenAddress = arg1
    require ext_code.size(newTokenAddress)
    call newTokenAddress.isNewToken() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0]
    emit NewTokenSet(newTokenAddress);
}

function safetyInvariantCheck(uint256 arg1) {
    require ext_code.size(newTokenAddress)
    call newTokenAddress.isNewToken() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(oldTokenAddress)
    call oldTokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(newTokenAddress)
    call newTokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require arg1 <= correctOriginalSupply
    require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
    require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
    if 2 * ext_call.return_data[0] == correctOriginalSupply - arg1:
        emit InvariantCheckPassed(ext_call.return_data[0], ext_call.return_data[0], correctOriginalSupply, arg1);
    else:
        emit InvariantCheckFailed(ext_call.return_data[0], ext_call.return_data[0], correctOriginalSupply, arg1);
}

function upgradeFrom(address arg1, uint256 arg2) {
    require not uint8(stor0.field_176)
    require msg.sender == oldTokenAddress
    require arg1 != decentBetMultisigAddress
    require ext_code.size(newTokenAddress)
    call newTokenAddress.isNewToken() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0]
    if not uint8(stor0.field_168):
        Mask(88, 0, stor0.field_168) = 1
        emit UpgradeHasBegun()
    require ext_code.size(newTokenAddress)
    call newTokenAddress.isNewToken() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(oldTokenAddress)
    call oldTokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(newTokenAddress)
    call newTokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require arg2 <= correctOriginalSupply
    require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
    require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
    if 2 * ext_call.return_data[0] == correctOriginalSupply - arg2:
        emit InvariantCheckPassed(ext_call.return_data[0], ext_call.return_data[0], correctOriginalSupply, arg2);
    else:
        emit InvariantCheckFailed(ext_call.return_data[0], ext_call.return_data[0], correctOriginalSupply, arg2);
    require ext_code.size(newTokenAddress)
    call newTokenAddress.createToken(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    require ext_code.size(newTokenAddress)
    call newTokenAddress.isNewToken() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(oldTokenAddress)
    call oldTokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(newTokenAddress)
    call newTokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require 0 <= correctOriginalSupply
    require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
    require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
    if 2 * ext_call.return_data[0] == correctOriginalSupply:
        emit InvariantCheckPassed(ext_call.return_data[0], ext_call.return_data[0], correctOriginalSupply, 0);
    else:
        emit InvariantCheckFailed(ext_call.return_data[0], ext_call.return_data[0], correctOriginalSupply, 0);
}



}
