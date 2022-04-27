contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
address stor3;
address stor4;
uint256 stor5;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint8 stor11;
uint32 stor11; offset 16
uint256 stor11; offset 8

function _fallback() payable {
    stor4 = 0x936647c1291abb1c179ccfb7e5abe9c10b9c3ee3
    uint32(stor11.field_16) = 0
    require not msg.value
    stor0 = msg.sender
    stor1 = 0xdea8d67f27ff4254ef765e04d9294c6a6b005d64
    stor7 = 25 * 3600
    stor3 = msg.sender
    stor5 = 100
    stor2 = 0x2cbc84abf8b1c0b76b03d78f2e6a69bbe08d637c
    stor8 = 0
    stor9 = 3000000 * 10^18
    emit 0x4af69f9a: Array(len=15, data='crowdsale inits')
    uint8(stor11.field_0) = 0
    Mask(248, 0, stor11.field_8) = 0
    return code.data[650 len 5650]
}



// =====================  Runtime code  =====================


address owner;
address sub_e66beb66Address;
address sub_d47964f6Address;
address stor3;
address stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 totalPurchased;
uint256 stor9;
uint256 stor10;
uint8 pause;
uint8 end; offset 8
uint32 bonusPercent; offset 16
uint256 stor11; offset 8

function pause() {
    return bool(pause)
}

function owner() {
    return owner
}

function bonusPercent() {
    return bonusPercent
}

function sub_d47964f6(?) {
    return sub_d47964f6Address
}

function totalPurchased() {
    return totalPurchased
}

function sub_e66beb66(?) {
    return sub_e66beb66Address
}

function end() {
    return bool(end)
}

function sub_70c66778(?) {
    require msg.sender == owner
    stor3 = arg1
}

function sub_daf358bd(?) {
    require msg.sender == owner
    stor7 = arg1
}

function sub_dcb0e778(?) {
    require msg.sender == owner
    stor10 = 10^18 * arg1
}

function sub_322d7516(?) {
    require msg.sender == owner
    sub_d47964f6Address = arg1
}

function sub_9296cc6f(?) {
    require msg.sender == owner
    sub_e66beb66Address = arg1
}

function setMaxPurchase(uint256 arg1) {
    require msg.sender == owner
    stor9 = 10^18 * arg1
}

function sub_6731e504(?) {
    require msg.sender == owner
    require arg1 <= 40
    bonusPercent = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    owner = arg1
}

function sub_65460424(?) {
    require msg.sender == owner
    require bool(pause) == 1
    pause = 0
    emit 0x2facc123: block.timestamp
}

function sub_65a40966(?) {
    require msg.sender == owner
    require totalPurchased <= stor9
    require not pause
    require not end
    pause = 1
    emit 0x1f56865e: block.timestamp
}

function withdrawTokens(uint256 arg1) {
    require msg.sender == owner
    require ext_code.size(stor4)
    call stor4.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args stor3, 10^18 * arg1
    require ext_call.success
}

function endCrowdsale(uint256 arg1) {
    require msg.sender == owner
    require 1234561 == arg1
    stor11 = 1
    emit 0x3d863305: block.timestamp
    require ext_code.size(stor4)
    call stor4.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(stor4)
    call stor4.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args owner, ext_call.return_data[0]
    require ext_call.success
}

function _fallback() payable {
    require totalPurchased <= stor9
    require not pause
    require not end
    require ext_code.size(sub_d47964f6Address)
    call sub_d47964f6Address.0xd8a4be2c with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(sub_e66beb66Address)
    call sub_e66beb66Address.0x6d90164e with:
         gas gas_remaining - 710 wei
    require ext_call.success
    stor6 = ext_call.return_data[0]
    require stor6 <= stor7
    if msg.value:
        require msg.value
        require msg.value * stor6 / msg.value == stor6
    require stor5
    if msg.value * stor6 / stor5:
        require msg.value * stor6 / stor5
        require msg.value * stor6 / stor5 * bonusPercent / msg.value * stor6 / stor5 == bonusPercent
    require (msg.value * stor6 / stor5) + (msg.value * stor6 / stor5 * bonusPercent / 100) >= msg.value * stor6 / stor5
    require (msg.value * stor6 / stor5) + (msg.value * stor6 / stor5 * bonusPercent / 100) >= stor10
    require ext_code.size(stor4)
    call stor4.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] >= (msg.value * stor6 / stor5) + (msg.value * stor6 / stor5 * bonusPercent / 100)
    require stor9 >= totalPurchased + (msg.value * stor6 / stor5) + (msg.value * stor6 / stor5 * bonusPercent / 100)
    emit TokenPurchased(msg.sender, msg.value, (msg.value * stor6 / stor5) + (msg.value * stor6 / stor5 * bonusPercent / 100));
    require totalPurchased + (msg.value * stor6 / stor5) + (msg.value * stor6 / stor5 * bonusPercent / 100) >= totalPurchased
    totalPurchased = totalPurchased + (msg.value * stor6 / stor5) + (msg.value * stor6 / stor5 * bonusPercent / 100)
    call stor3 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require ext_code.size(stor4)
    call stor4.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, (msg.value * stor6 / stor5) + (msg.value * stor6 / stor5 * bonusPercent / 100)
    require ext_call.success
}

function createTokens() payable {
    require totalPurchased <= stor9
    require not pause
    require not end
    require ext_code.size(sub_d47964f6Address)
    call sub_d47964f6Address.0xd8a4be2c with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(sub_e66beb66Address)
    call sub_e66beb66Address.0x6d90164e with:
         gas gas_remaining - 710 wei
    require ext_call.success
    stor6 = ext_call.return_data[0]
    require stor6 <= stor7
    if msg.value:
        require msg.value
        require msg.value * stor6 / msg.value == stor6
    require stor5
    if msg.value * stor6 / stor5:
        require msg.value * stor6 / stor5
        require msg.value * stor6 / stor5 * bonusPercent / msg.value * stor6 / stor5 == bonusPercent
    require (msg.value * stor6 / stor5) + (msg.value * stor6 / stor5 * bonusPercent / 100) >= msg.value * stor6 / stor5
    require (msg.value * stor6 / stor5) + (msg.value * stor6 / stor5 * bonusPercent / 100) >= stor10
    require ext_code.size(stor4)
    call stor4.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] >= (msg.value * stor6 / stor5) + (msg.value * stor6 / stor5 * bonusPercent / 100)
    require stor9 >= totalPurchased + (msg.value * stor6 / stor5) + (msg.value * stor6 / stor5 * bonusPercent / 100)
    emit TokenPurchased(msg.sender, msg.value, (msg.value * stor6 / stor5) + (msg.value * stor6 / stor5 * bonusPercent / 100));
    require totalPurchased + (msg.value * stor6 / stor5) + (msg.value * stor6 / stor5 * bonusPercent / 100) >= totalPurchased
    totalPurchased = totalPurchased + (msg.value * stor6 / stor5) + (msg.value * stor6 / stor5 * bonusPercent / 100)
    call stor3 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require ext_code.size(stor4)
    call stor4.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, (msg.value * stor6 / stor5) + (msg.value * stor6 / stor5 * bonusPercent / 100)
    require ext_call.success
}



}
