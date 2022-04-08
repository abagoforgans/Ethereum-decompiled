contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
address stor3;
uint128 stor4; offset 160
uint8 stor6;
address stor8;
array of uint256 stor11;
array of uint256 stor12;
uint256 stor13;

function _fallback() payable {
    stor4 = 0
    stor6 = 0
    require not msg.value
    mem[96 len -10879] = code.data[11798 len -10879]
    mem[64] = -10783
    stor3 = msg.sender
    stor8 = msg.sender
    stor3 = msg.sender
    stor11[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor12[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor0 = mem[160]
    stor13 = mem[192]
    stor1[stor3] = stor0
    if stor0 > 0:
        emit Minted(stor3, stor0);
    if not mem[224]:
        stor6 = 1
        require stor0
    return code.data[919 len 10879]
}



// =====================  Runtime code  =====================


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;
uint8 stor4; offset 160
uint128 stor4; offset 160
address releaseAgentAddress;
mapping of uint8 stor5;
uint8 stor6;
mapping of uint8 stor7;
address upgradeMasterAddress;
address upgradeAgentAddress;
uint256 totalUpgraded;
array of struct name;
array of struct symbol;
uint256 decimals;

function mintingFinished() {
    return bool(stor6)
}

function name() {
    return name[0 len name.length].field_0
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function mintAgents(address arg1) {
    return bool(stor7[arg1])
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
    return bool(stor5[arg1])
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length].field_0
}

function released() {
    return bool(uint8(stor4.field_160))
}

function totalUpgraded() {
    return totalUpgraded
}

function releaseAgent() {
    return releaseAgentAddress
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
    if arg1:
        owner = arg1
}

function canUpgrade() {
    if not uint8(stor4.field_160):
        return bool(uint8(stor4.field_160))
    return 1
}

function releaseTokenTransfer() {
    require msg.sender == releaseAgentAddress
    stor6 = 1
    Mask(96, 0, stor4.field_160) = 1
}

function setUpgradeMaster(address arg1) {
    require arg1
    require msg.sender == upgradeMasterAddress
    upgradeMasterAddress = arg1
}

function safeMul(uint256 arg1, uint256 arg2) {
    if arg1:
        require arg1
        require arg1 * arg2 / arg1 == arg2
    return (arg1 * arg2)
}

function setReleaseAgent(address arg1) {
    require msg.sender == owner
    require 0 == bool(uint8(stor4.field_160))
    releaseAgentAddress = arg1
}

function setTransferAgent(address arg1, bool arg2) {
    require msg.sender == owner
    require 0 == bool(uint8(stor4.field_160))
    stor5[address(arg1)] = uint8(arg2)
}

function getUpgradeState() {
    if not uint8(stor4.field_160):
        return 1
    if not upgradeAgentAddress:
        return 2
    if totalUpgraded:
        return 4
    return 3
}

function setMintAgent(address arg1, bool arg2) {
    require msg.sender == owner
    require not stor6
    stor7[address(arg1)] = uint8(arg2)
    emit MintingAgentChanged(address(arg1), arg2);
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require stor7[address(msg.sender)]
    require not stor6
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
}

function addApproval(address arg1, uint256 arg2) {
    require calldata.size == 68
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function subApproval(address arg1, uint256 arg2) {
    require calldata.size == 68
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if not uint8(stor4.field_160):
        require stor5[address(msg.sender)]
    require calldata.size == 68
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if not uint8(stor4.field_160):
        require stor5[address(arg1)]
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
    require uint8(stor4.field_160)
    require upgradeAgentAddress
    require arg1
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    require totalUpgraded + arg1 >= totalUpgraded
    totalUpgraded += arg1
    require ext_code.size(upgradeAgentAddress)
    call upgradeAgentAddress.upgradeFrom(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args msg.sender, arg1
    require ext_call.success
    emit Upgrade(arg1, msg.sender, upgradeAgentAddress);
}

function setUpgradeAgent(address arg1) {
    require uint8(stor4.field_160)
    require arg1
    require msg.sender == upgradeMasterAddress
    if uint8(stor4.field_160):
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
    require ext_call.return_data[0] == totalSupply
    emit UpgradeAgentSet(upgradeAgentAddress);
}

function setTokenInformation(string arg1, string arg2) {
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
