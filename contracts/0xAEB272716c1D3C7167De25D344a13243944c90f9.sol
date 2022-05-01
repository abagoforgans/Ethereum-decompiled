contract main {


// =======================  Init code  ======================


mapping of uint256 stor2;
address stor4;
address stor7;
uint128 stor9; offset 160
array of uint256 stor11;
array of uint256 stor12;
uint256 stor13;
uint256 stor14;

function _fallback() payable {
    stor9 = 1
    bool(stor11.length) = 0
    stor11.length.field_1 = 10
    stor11.length.field_8 = 'Raychsmark' / 256
    idx = 0
    while stor11.length + 31 / 32 > idx:
        stor11[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor12.length) = 0
    stor12.length.field_1 = 5
    stor12.length.field_8 = 'RAYCH' / 256
    idx = 0
    while stor12.length + 31 / 32 > idx:
        stor12[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor13 = 18
    stor14 = 2 * 10^9 * 10^stor13
    require not msg.value
    stor4 = msg.sender
    stor7 = msg.sender
    stor2[address(msg.sender)] = stor14
    return code.data[618 len 10366]
}



// =====================  Runtime code  =====================


const canUpgrade = 1


uint256 stor0;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address upgradeMasterAddress;
address upgradeAgentAddress;
uint256 totalUpgraded;
address owner;
address newOwner;
uint8 stor9; offset 160
uint128 stor9; offset 160
address releaseAgentAddress;
mapping of uint8 stor10;
array of struct name;
array of struct symbol;
uint256 decimals;
uint256 totalSupply;

function name() {
    return name[0 len name.length].field_0
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function upgradeAgent() {
    return upgradeAgentAddress
}

function upgradeMaster() {
    return upgradeMasterAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function transferAgents(address arg1) {
    return bool(stor10[arg1])
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length].field_0
}

function released() {
    return bool(uint8(stor9.field_160))
}

function totalUpgraded() {
    return totalUpgraded
}

function releaseAgent() {
    return releaseAgentAddress
}

function newOwner() {
    return newOwner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function safeSub(uint256 arg1, uint256 arg2) {
    require arg2 <= arg1
    return (arg1 - arg2)
}

function safeAdd(uint256 arg1, uint256 arg2) {
    require arg1 + arg2 >= arg1
    return (arg1 + arg2)
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    newOwner = arg1
}

function releaseTokenTransfer() {
    require msg.sender == releaseAgentAddress
    Mask(96, 0, stor9.field_160) = 1
}

function getUpgradeState() {
    if not upgradeAgentAddress:
        return 2
    if totalUpgraded:
        return 4
    return 3
}

function setUpgradeMaster(address arg1) {
    require arg1
    require msg.sender == upgradeMasterAddress
    upgradeMasterAddress = arg1
}

function setReleaseAgent(address arg1) {
    require msg.sender == owner
    require 0 == bool(uint8(stor9.field_160))
    releaseAgentAddress = arg1
}

function setTransferAgent(address arg1, bool arg2) {
    require msg.sender == owner
    require 0 == bool(uint8(stor9.field_160))
    stor10[address(arg1)] = uint8(arg2)
}

function safeMul(uint256 arg1, uint256 arg2) {
    if not arg1:
        return (arg1 * arg2)
    require arg1
    require arg1 * arg2 / arg1 == arg2
    return (arg1 * arg2)
}

function acceptOwnership() {
    balanceOf[stor8] = balanceOf[stor7]
    balanceOf[stor7] = 0
    require msg.sender == newOwner
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if not uint8(stor9.field_160):
        require stor10[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if not uint8(stor9.field_160):
        require stor10[address(arg1)]
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function upgrade(uint256 arg1) {
    require upgradeAgentAddress
    require arg1
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= stor0
    stor0 -= arg1
    require totalUpgraded + arg1 >= totalUpgraded
    totalUpgraded += arg1
    require ext_code.size(upgradeAgentAddress)
    call upgradeAgentAddress.upgradeFrom(address arg1, uint256 arg2) with:
         gas gas_remaining - 710 wei
        args msg.sender, arg1
    require ext_call.success
    emit Upgrade(arg1, msg.sender, upgradeAgentAddress);
}

function sub_c1cb9869(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require balanceOf[mem[(32 * idx) + 140 len 20]] + arg2 >= balanceOf[mem[(32 * idx) + 140 len 20]]
        require idx < arg1.length
        balanceOf[mem[(32 * idx) + 140 len 20]] += arg2
        require arg2 <= balanceOf[address(msg.sender)]
        mem[0] = msg.sender
        mem[32] = 2
        balanceOf[address(msg.sender)] -= arg2
        idx = idx + 1
        continue 
    return 1
}

function setUpgradeAgent(address arg1) {
    require arg1
    require msg.sender == upgradeMasterAddress
    if upgradeAgentAddress:
        require not totalUpgraded
    upgradeAgentAddress = arg1
    require ext_code.size(upgradeAgentAddress)
    call upgradeAgentAddress.isUpgradeAgent() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(upgradeAgentAddress)
    call upgradeAgentAddress.originalSupply() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] == stor0
    emit UpgradeAgentSet(upgradeAgentAddress);
}

function sub_5ecc5a78(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    if balanceOf[address(msg.sender)]:
        require balanceOf[address(msg.sender)]
        require balanceOf[address(msg.sender)] * arg2 / balanceOf[address(msg.sender)] == arg2
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require balanceOf[mem[(32 * idx) + 140 len 20]] + (balanceOf[address(msg.sender)] * arg2 / 100) >= balanceOf[mem[(32 * idx) + 140 len 20]]
        require idx < arg1.length
        balanceOf[mem[(32 * idx) + 140 len 20]] += balanceOf[address(msg.sender)] * arg2 / 100
        require balanceOf[address(msg.sender)] * arg2 / 100 <= balanceOf[address(msg.sender)]
        mem[0] = msg.sender
        mem[32] = 2
        balanceOf[address(msg.sender)] -= balanceOf[address(msg.sender)] * arg2 / 100
        idx = idx + 1
        continue 
    return 1
}

function updateTokenInformation(string arg1, string arg2) {
    require msg.sender == owner
    name[].field_0 = Array(len=arg1.length, data=arg1[all])
    symbol[].field_0 = Array(len=arg2.length, data=arg2[all])
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 256] = uint256(name.field_0)
    idx = ceil32(arg1.length) + ceil32(arg2.length) + 256
    s = 0
    while ceil32(arg1.length) + ceil32(arg2.length) + name.length + 256 > idx + 32:
        mem[idx + 32] = name[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(arg1.length) + ceil32(arg2.length) + name.length + (floor32(name.length - 1) + -name.length + 32 % 32) + 256] = symbol.length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + name.length + (floor32(name.length - 1) + -name.length + 32 % 32) + 288] = uint256(symbol.field_0)
    idx = ceil32(arg1.length) + ceil32(arg2.length) + name.length + (floor32(name.length - 1) + -name.length + 32 % 32) + 288
    s = 0
    while ceil32(arg1.length) + ceil32(arg2.length) + name.length + (floor32(name.length - 1) + -name.length + 32 % 32) + symbol.length + 288 > idx + 32:
        mem[idx + 32] = symbol[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    emit UpdatedTokenInformation(Array(len=name.length, data=mem[ceil32(arg1.length) + ceil32(arg2.length) + 256 len name.length + (floor32(name.length - 1) + -name.length + 32 % 32) + symbol.length + (floor32(symbol.length - 1) + -symbol.length + 32 % 32) + 32]), name.length + (floor32(name.length - 1) + -name.length + 32 % 32) + 96);
}



}
