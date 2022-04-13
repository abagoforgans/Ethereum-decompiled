contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
uint256 stor3;
uint8 stor12;
uint8 stor14; offset 160
address stor16;
address stor17;

function _fallback() payable {
    stor3 = 120000000000 * 10^18
    stor12 = 1
    stor14 = 0
    require not msg.value
    stor1 = code.data[9049 len 20]
    stor2 = code.data[9081 len 20]
    stor0 = code.data[9113 len 20]
    stor16 = code.data[9145 len 20]
    if code.data[9177 len 20]:
        stor17 = code.data[9177 len 20]
    return code.data[231 len 8806]
}



// =====================  Runtime code  =====================


const name = ''

const decimals = 18

const symbol = ''


address sub_c8acd05fAddress;
address redeemerAddress;
address upgraderAddress;
uint256 totalSupply;
mapping of uint32 balanceOf;
mapping of uint256 verifyAccount;
mapping of uint256 lockTime;
mapping of uint8 stor7;
mapping of address sub_2a8093cc;
mapping of uint8 stor9;
mapping of uint8 stor10;
mapping of uint256 allowance;
uint8 stor12;
uint8 stor12; offset 8
uint8 stor12; offset 16
uint256 sub_6d125c19;
uint8 stor14; offset 160
address sub_e00757b5Address;
address sub_35a8f60fAddress;
address sub_cbbff2d5Address;
address sub_ff0526a8Address;

function totalSupply() {
    return totalSupply
}

function callerList(address arg1) {
    return bool(stor7[arg1])
}

function sub_2a8093cc(?) {
    return sub_2a8093cc[arg1]
}

function redeemer() {
    return redeemerAddress
}

function sub_35a8f60f(?) {
    return sub_35a8f60fAddress
}

function sub_42c1775b(?) {
    return bool(uint8(stor12.field_16))
}

function isTradable() {
    return bool(uint8(stor12.field_0))
}

function isUpgradable() {
    return bool(uint8(stor12.field_8))
}

function sub_6d125c19(?) {
    return sub_6d125c19
}

function balanceOf(address arg1) {
    return uint256(balanceOf[arg1])
}

function lockTime(address arg1) {
    return lockTime[arg1]
}

function upgrader() {
    return upgraderAddress
}

function sub_c8acd05f(?) {
    return sub_c8acd05fAddress
}

function sub_c91c2fdf(?) {
    return bool(stor10[arg1])
}

function sub_cbbff2d5(?) {
    return sub_cbbff2d5Address
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function sub_e00757b5(?) {
    return sub_e00757b5Address
}

function sub_e07bb9ba(?) {
    return bool(stor9[arg1])
}

function verifyAccount(address arg1) {
    return verifyAccount[address(arg1)]
}

function sub_ff0526a8(?) {
    return sub_ff0526a8Address
}

function _fallback() payable {
    revert
}

function sub_2ebb046d(?) {
    require sub_c8acd05fAddress == msg.sender
    sub_cbbff2d5Address = arg1
}

function sub_30a20dba(?) {
    require sub_c8acd05fAddress == msg.sender
    sub_c8acd05fAddress = arg1
}

function sub_611f2597(?) {
    require sub_c8acd05fAddress == msg.sender
    sub_35a8f60fAddress = arg1
}

function sub_7635dcaa(?) {
    require sub_c8acd05fAddress == msg.sender
    sub_e00757b5Address = arg1
}

function sub_7c8b43f4(?) {
    require sub_c8acd05fAddress == msg.sender
    sub_ff0526a8Address = arg1
}

function changeUpgrader(address arg1) {
    require sub_c8acd05fAddress == msg.sender
    upgraderAddress = arg1
}

function changeRedeemer(address arg1) {
    require sub_c8acd05fAddress == msg.sender
    redeemerAddress = arg1
}

function sub_28016f9a(?) {
    require sub_c8acd05fAddress == msg.sender
    uint8(stor12.field_8) = 1
    emit 0x45e55891: 1
}

function sub_67fc9138(?) {
    require sub_c8acd05fAddress == msg.sender
    uint8(stor12.field_8) = 0
    emit 0x45e55891: 0
}

function sub_76faf2cf(?) {
    require sub_c8acd05fAddress == msg.sender
    uint8(stor12.field_16) = 0
    emit 0x915887ff: 0
}

function freezeTransfer() {
    require sub_c8acd05fAddress == msg.sender
    uint8(stor12.field_0) = 0
    emit 0xae6332bb: 0
}

function sub_95308dfb(?) {
    require sub_c8acd05fAddress == msg.sender
    uint8(stor12.field_16) = 1
    emit 0x915887ff: 1
}

function unfreezeTransfer() {
    require sub_c8acd05fAddress == msg.sender
    uint8(stor12.field_0) = 1
    emit 0xae6332bb: 1
}

function sub_a1876f8e(?) {
    require sub_c8acd05fAddress == msg.sender
    stor9[address(arg1)] = 1
    emit 0xef0d3ad1: 1, arg1
}

function sub_a6900845(?) {
    require sub_c8acd05fAddress == msg.sender
    stor9[address(arg1)] = 0
    emit 0xef0d3ad1: 0, arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function removeAffiliate(address arg1) {
    require sub_c8acd05fAddress == msg.sender
    emit 0x33c9d54f: arg1, sub_2a8093cc[address(arg1)]
    sub_2a8093cc[address(arg1)] = 0
}

function isLock(address arg1) {
    if lockTime[address(arg1)] > block.timestamp:
        return (lockTime[address(arg1)] > block.timestamp)
    return bool(stor9[stor8[address(arg1)]])
}

function addCaller(address arg1) {
    require sub_c8acd05fAddress == msg.sender
    require verifyAccount[address(arg1)]
    if stor7[address(arg1)]:
        return 0
    stor7[address(arg1)] = 1
    emit 0x7ae1a475: arg1
    return 1
}

function sub_a2e67158(?) {
    require sub_c8acd05fAddress == msg.sender
    idx = 0
    while idx < ('cd', 4).length:
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 5
        if 0 == verifyAccount[address(cd[((32 * idx) + cd[4] + 36)])]:
            require idx < ('cd', 4).length
            mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
            mem[32] = 5
            verifyAccount[address(cd[((32 * idx) + cd[4] + 36)])] = cd[36]
            mem[96] = cd[36]
            emit 0x3b44350f: cd[36], address(cd[((32 * idx) + cd[4] + 36)])
        idx = idx + 1
        continue 
    return 1
}

function transferAndLock(address arg1, uint256 arg2) {
    require uint8(stor12.field_0)
    require stor7[address(msg.sender)]
    require verifyAccount[address(arg1)]
    if uint256(balanceOf[address(msg.sender)]) < arg2:
        return 0
    if arg2 <= 0:
        return 0
    uint256(balanceOf[address(msg.sender)]) -= arg2
    require arg2 + uint256(balanceOf[arg1]) >= uint256(balanceOf[arg1])
    require arg2 + uint256(balanceOf[arg1]) >= arg2
    uint256(balanceOf[address(arg1)]) = arg2 + uint256(balanceOf[arg1])
    sub_2a8093cc[address(arg1)] = msg.sender
    emit 0x678aa85f: arg2, msg.sender, arg1
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require uint8(stor12.field_0)
    require lockTime[address(msg.sender)] <= block.timestamp
    require not stor9[stor8[address(msg.sender)]]
    require verifyAccount[address(arg1)]
    if uint256(balanceOf[address(msg.sender)]) < arg2:
        return 0
    if arg2 <= 0:
        return 0
    uint256(balanceOf[address(msg.sender)]) -= arg2
    require arg2 + uint256(balanceOf[arg1]) >= uint256(balanceOf[arg1])
    require arg2 + uint256(balanceOf[arg1]) >= arg2
    uint256(balanceOf[address(arg1)]) = arg2 + uint256(balanceOf[arg1])
    emit 0xeeddf252: arg2, msg.sender, arg1
    return 1
}

function sub_8c86b1d8(?) {
    require uint8(stor12.field_0)
    require uint8(stor12.field_16)
    require lockTime[address(msg.sender)] <= block.timestamp
    require not stor9[stor8[address(msg.sender)]]
    if uint256(balanceOf[address(msg.sender)]) < arg1:
        return 0
    if arg1 <= 0:
        return 0
    require ext_code.size(sub_35a8f60fAddress)
    call sub_35a8f60fAddress.0x48c7ea0c with:
         gas gas_remaining - 710 wei
        args msg.sender, arg1
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    uint256(balanceOf[address(msg.sender)]) -= arg1
    emit 0x17a7fe80: arg1, msg.sender
    return 1
}

function sub_7c4eee86(?) {
    require uint8(stor12.field_0)
    require uint8(stor12.field_16)
    require lockTime[address(msg.sender)] <= block.timestamp
    require not stor9[stor8[address(msg.sender)]]
    if arg1 <= 0:
        return 0
    require ext_code.size(sub_35a8f60fAddress)
    call sub_35a8f60fAddress.0x8bce03e9 with:
         gas gas_remaining - 710 wei
        args msg.sender, arg1
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    require arg1 + uint256(balanceOf[address(msg.sender)]) >= uint256(balanceOf[address(msg.sender)])
    require arg1 + uint256(balanceOf[address(msg.sender)]) >= arg1
    uint256(balanceOf[address(msg.sender)]) += arg1
    emit 0xb8629092: arg1, msg.sender
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require uint8(stor12.field_0)
    require lockTime[address(arg1)] <= block.timestamp
    require not stor9[stor8[address(arg1)]]
    require verifyAccount[address(arg2)]
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if uint256(balanceOf[address(arg1)]) < arg3:
        return 0
    if arg3 <= 0:
        return 0
    uint256(balanceOf[address(arg1)]) -= arg3
    require arg3 + uint256(balanceOf[arg2]) >= uint256(balanceOf[arg2])
    require arg3 + uint256(balanceOf[arg2]) >= arg3
    uint256(balanceOf[address(arg2)]) = arg3 + uint256(balanceOf[arg2])
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit 0xeeddf252: arg3, arg1, arg2
    return 1
}

function sub_dacc6c7c(?) {
    require uint8(stor12.field_8)
    require not uint8(stor12.field_0)
    require upgraderAddress == msg.sender
    require verifyAccount[address(arg1)]
    if stor10[address(arg1)]:
        return 0
    require ext_code.size(sub_ff0526a8Address)
    call sub_ff0526a8Address.0x463ed8c5 with:
         gas gas_remaining - 710 wei
        args 0, 0, uint32(balanceOf[address(arg1)]), verifyAccount[address(arg1)], lockTime[address(arg1)], bool(stor7[address(arg1)]), sub_2a8093cc[address(arg1)], bool(stor9[address(arg1)])
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    emit 0x161f5c77: uint256(balanceOf[address(arg1)]), 0, lockTime[address(arg1)], bool(stor7[address(arg1)]), sub_2a8093cc[address(arg1)], bool(stor9[address(arg1)]), arg1
    stor10[address(arg1)] = 1
    return 1
}

function redeem(address arg1) {
    require uint8(stor12.field_0)
    require redeemerAddress == msg.sender
    require verifyAccount[address(arg1)]
    require ext_code.size(sub_cbbff2d5Address)
    call sub_cbbff2d5Address.0x70a08231 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    if not 10^18 * ext_call.return_data[0]:
        return 0
    if sub_6d125c19 < 10^18 * ext_call.return_data[0]:
        return 0
    require ext_code.size(sub_cbbff2d5Address)
    call sub_cbbff2d5Address.burnToken(address rg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_call.return_data[0]
    sub_6d125c19 += -1 * 10^18 * ext_call.return_data[0]
    require (10^18 * ext_call.return_data[0]) + uint256(balanceOf[address(arg1)]) >= uint256(balanceOf[address(arg1)])
    require (10^18 * ext_call.return_data[0]) + uint256(balanceOf[address(arg1)]) >= 10^18 * ext_call.return_data[0]
    uint256(balanceOf[address(arg1)]) += 10^18 * ext_call.return_data[0]
    emit Redeem((10^18 * ext_call.return_data[0]), arg1);
    return 1
}

function forceRedeem(address arg1) {
    require uint8(stor12.field_0)
    require redeemerAddress == msg.sender
    require verifyAccount[address(arg1)]
    require ext_code.size(sub_cbbff2d5Address)
    call sub_cbbff2d5Address.0x70a08231 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    if not 10^18 * ext_call.return_data[0]:
        return 0
    if sub_6d125c19 < 10^18 * ext_call.return_data[0]:
        return 0
    require ext_code.size(sub_cbbff2d5Address)
    call sub_cbbff2d5Address.burnToken(address rg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_call.return_data[0]
    sub_6d125c19 += -1 * 10^18 * ext_call.return_data[0]
    require (10^18 * ext_call.return_data[0]) + uint256(balanceOf[address(stor14.field_0)]) >= uint256(balanceOf[address(stor14.field_0)])
    require (10^18 * ext_call.return_data[0]) + uint256(balanceOf[address(stor14.field_0)]) >= 10^18 * ext_call.return_data[0]
    uint256(balanceOf[address(stor14.field_0)]) += 10^18 * ext_call.return_data[0]
    emit Redeem((10^18 * ext_call.return_data[0]), arg1);
    return 1
}

function init(address arg1, address arg2, address arg3, address arg4, address arg5, address arg6, address arg7, address arg8, address arg9, address arg10) {
    require sub_c8acd05fAddress == msg.sender
    require not uint8(stor14.field_160)
    sub_6d125c19 = 11434221590 * 10^18
    uint256(balanceOf[address(arg1)]) = 28585553975 * 10^16
    uint256(balanceOf[arg2]) = 480000000 * 10^18
    uint256(balanceOf[arg3]) = 267992287025 * 10^16
    uint256(balanceOf[arg4]) = 3120000000 * 10^18
    uint256(balanceOf[arg5]) = 30000000000 * 10^18
    uint256(balanceOf[arg6]) = 1000000 * 10^18 * 3600
    uint256(balanceOf[arg7]) = 3000000 * 10^18 * 24 * 3600
    uint256(balanceOf[arg8]) = 1000000 * 10^18 * 3600
    uint256(balanceOf[arg9]) = 1000000 * 10^18 * 3600
    uint256(balanceOf[arg10]) = 14000000 * 10^18 * 3600
    verifyAccount[address(arg1)] = 1
    verifyAccount[arg2] = 1
    verifyAccount[arg3] = 1
    verifyAccount[arg4] = 1
    verifyAccount[arg5] = 1
    verifyAccount[arg6] = 1
    verifyAccount[arg7] = 1
    verifyAccount[arg8] = 1
    verifyAccount[arg9] = 1
    verifyAccount[arg10] = 1
    lockTime[address(arg4)] = block.timestamp + (8640 * 24 * 3600)
    lockTime[arg5] = block.timestamp + (6 * 3600 * 24 * 3600)
    stor7[address(arg7)] = 1
    stor7[arg9] = 1
    stor9[address(arg7)] = 1
    stor9[arg9] = 1
    uint8(stor14.field_160) = 1
}



}
