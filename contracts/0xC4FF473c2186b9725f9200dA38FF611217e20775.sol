contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
address stor3;
uint8 stor5; offset 160
uint8 stor7;
address stor9;
array of uint256 stor12;
array of uint256 stor13;
uint8 stor14;

function _fallback() payable {
    stor5 = 0
    stor7 = 0
    require not msg.value
    mem[96 len -7084] = code.data[7690 len -7084]
    mem[64] = -6988
    stor3 = msg.sender
    stor9 = msg.sender
    stor3 = msg.sender
    stor12[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor13[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor0 = mem[160]
    stor14 = mem[223 len 1]
    stor1[stor3] = mem[160]
    if mem[160] > 0:
        emit Minted(stor3, stor0);
    if not mem[224]:
        stor7 = 1
        require stor0
    return code.data[606 len 7084]
}



// =====================  Runtime code  =====================


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;
address newOwner;
uint8 stor5; offset 160
address releaseAgentAddress;
mapping of uint8 stor6;
uint8 stor7;
mapping of uint8 stor8;
address upgradeMasterAddress;
address upgradeAgentAddress;
uint256 totalUpgraded;
array of struct name;
array of struct symbol;
uint8 decimals;
uint256 stor15;
uint8 stor16;
uint256 stor17;
uint256 stor18;
mapping of uint8 stor19;

function mintingFinished() {
    return bool(stor7)
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

function hasFetchedProfit(address arg1) {
    return bool(stor19[arg1])
}

function mintAgents(address arg1) {
    return bool(stor8[arg1])
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
    return bool(stor6[arg1])
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length].field_0
}

function released() {
    return bool(stor5)
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

function canUpgrade() {
    if not stor5:
        return bool(stor5)
    return 1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    newOwner = arg1
}

function safeSub(uint256 arg1, uint256 arg2) {
    require arg2 <= arg1
    return (arg1 - arg2)
}

function safeAdd(uint256 arg1, uint256 arg2) {
    require arg2 + arg1 >= arg1
    return (arg2 + arg1)
}

function releaseTokenTransfer() {
    require releaseAgentAddress == msg.sender
    stor7 = 1
    stor5 = 1
}

function setReleaseAgent(address arg1) {
    require owner == msg.sender
    require not stor5
    releaseAgentAddress = arg1
}

function acceptOwnership() {
    require newOwner == msg.sender
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner
}

function setUpgradeMaster(address arg1) {
    require arg1
    require upgradeMasterAddress == msg.sender
    upgradeMasterAddress = arg1
}

function setTransferAgent(address arg1, bool arg2) {
    require owner == msg.sender
    require not stor5
    stor6[address(arg1)] = uint8(arg2)
}

function getUpgradeState() {
    if not stor5:
        return 1
    if not upgradeAgentAddress:
        return 2
    if totalUpgraded:
        return 4
    return 3
}

function safeMul(uint256 arg1, uint256 arg2) {
    if not arg1:
        return (arg2 * arg1)
    require arg1
    require arg2 * arg1 / arg1 == arg2
    return (arg2 * arg1)
}

function setMintAgent(address arg1, bool arg2) {
    require owner == msg.sender
    require not stor7
    stor8[address(arg1)] = uint8(arg2)
    emit MintingAgentChanged(address(arg1), arg2);
}

function loadProfit() payable {
    require owner == msg.sender
    require stor5
    require not stor16
    require msg.value
    stor15 = msg.value
    stor18 = msg.value
    stor16 = 1
    emit ProfitLoaded(msg.sender, msg.value);
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function fetchUndistributedProfit() {
    require owner == msg.sender
    require stor18
    call msg.sender with:
       value stor18 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    stor18 = 0
    stor16 = 0
    stor15 = 0
}

function mint(address arg1, uint256 arg2) {
    require stor8[address(msg.sender)]
    require not stor7
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
}

function transfer(address arg1, uint256 arg2) {
    if not stor5:
        require stor6[address(msg.sender)]
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
        return 0
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function upgrade(uint256 arg1) {
    require stor5
    require upgradeAgentAddress
    require arg1
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    require arg1 + totalUpgraded >= totalUpgraded
    totalUpgraded += arg1
    require ext_code.size(upgradeAgentAddress)
    call upgradeAgentAddress.upgradeFrom(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args msg.sender, arg1
    require ext_call.success
    emit Upgrade(arg1, msg.sender, upgradeAgentAddress);
}

function setUpgradeAgent(address arg1) {
    require stor5
    require arg1
    require upgradeMasterAddress == msg.sender
    if stor5:
        if upgradeAgentAddress:
            require not totalUpgraded
    upgradeAgentAddress = arg1
    require ext_code.size(arg1)
    call arg1.isUpgradeAgent() with:
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

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if not stor5:
        require stor6[address(arg1)]
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
        return 0
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[arg1] - arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function fetchProfit() {
    require stor16
    require not stor19[address(msg.sender)]
    require balanceOf[address(msg.sender)]
    if stor15:
        require stor15
        require balanceOf[address(msg.sender)] * stor15 / stor15 == balanceOf[address(msg.sender)]
    require totalSupply
    require balanceOf[address(msg.sender)] * stor15 / totalSupply >= gas_remaining
    require balanceOf[address(msg.sender)] * stor15 / totalSupply <= stor18
    stor18 -= balanceOf[address(msg.sender)] * stor15 / totalSupply
    stor19[address(msg.sender)] = 1
    require (balanceOf[address(msg.sender)] * stor15 / totalSupply) + stor17 >= stor17
    stor17 += balanceOf[address(msg.sender)] * stor15 / totalSupply
    if stor18 <= 0:
        stor16 = 0
        stor15 = 0
    call msg.sender with:
       value balanceOf[address(msg.sender)] * stor15 / totalSupply wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit ProfitDelivered(msg.sender, balanceOf[address(msg.sender)] * stor15 / totalSupply);
    return 0
}

function setTokenInformation(string arg1, string arg2) {
    require owner == msg.sender
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
