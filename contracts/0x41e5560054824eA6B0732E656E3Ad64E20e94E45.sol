contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
address stor3;
array of uint256 stor6;
array of uint256 stor7;
uint256 stor8;

function _fallback() {
    mem[96 len -4160] = code.data[4702 len -4160]
    mem[64] = -4064
    stor3 = mem[108 len 20]
    emit NewUpgradeMaster(mem[108 len 20]);
    stor6[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor7.length = (2 * mem[mem[160] + 96]) + 1
    s = 0
    idx = mem[160] + 128
    while mem[160] + mem[mem[160] + 96] + 128 > idx:
        stor7[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    if stor7.length + 31 / 32 > Mask(251, 0, mem[mem[160] + 96] + 31) >> 5:
        stor7[Mask(251, 0, mem[mem[160] + 96] + 31) >> 5] = 0
        idx = (Mask(251, 0, mem[mem[160] + 96] + 31) >> 5) + 1
        while stor7.length + 31 / 32 > idx:
            stor7[idx] = 0
            idx = idx + 1
            continue 
    stor0 = mem[192]
    stor8 = mem[224]
    stor1[address(mem[96])] = mem[192]
    return code.data[542 len 4160]
}



// =====================  Runtime code  =====================


const canUpgrade = 1

const isToken = 1


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address upgradeMasterAddress;
address upgradeAgentAddress;
uint256 totalUpgraded;
array of struct name;
array of struct symbol;
uint256 decimals;

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

function symbol() {
    return symbol[0 len symbol.length].field_0
}

function totalUpgraded() {
    return totalUpgraded
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert 
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
    require upgradeMasterAddress == msg.sender
    upgradeMasterAddress = arg1
    emit NewUpgradeMaster(arg1);
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    require arg2 + balanceOf[arg1] >= arg2
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    require arg3 + balanceOf[address(arg2)] >= arg3
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[arg1] - arg3
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
    require arg1 <= totalSupply
    totalSupply -= arg1
    require arg1 + totalUpgraded >= totalUpgraded
    require arg1 + totalUpgraded >= arg1
    totalUpgraded += arg1
    require ext_code.size(upgradeAgentAddress)
    call upgradeAgentAddress.upgradeFrom(address rg1, uint256 rg2) with:
         gas gas_remaining - 50 wei
        args msg.sender, arg1
    require ext_call.success
    emit Upgrade(arg1, msg.sender, upgradeAgentAddress);
}

function setUpgradeAgent(address arg1) {
    require arg1
    require upgradeMasterAddress == msg.sender
    if upgradeAgentAddress:
        require not totalUpgraded
    upgradeAgentAddress = arg1
    require ext_code.size(arg1)
    call arg1.isUpgradeAgent() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(upgradeAgentAddress)
    call upgradeAgentAddress.originalSupply() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_call.return_data[0] == totalSupply
    emit UpgradeAgentSet(upgradeAgentAddress);
}

function setTokenInformation(string arg1, string arg2) {
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    require upgradeMasterAddress == msg.sender
    require name.length <= 0
    require symbol.length <= 0
    name[].field_0 = Array(len=arg1.length, data=arg1[all])
    symbol.length = (2 * arg2.length) + 1
    s = 0
    idx = ceil32(arg1.length) + 160
    while ceil32(arg1.length) + arg2.length + 160 > idx:
        symbol[s].field_0 = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    if symbol.length + 31 / 32 > Mask(251, 0, arg2.length + 31) >> 5:
        symbol[Mask(251, 0, arg2.length + 31) >> 5].field_0 = 0
        idx = (Mask(251, 0, arg2.length + 31) >> 5) + 1
        while symbol.length + 31 / 32 > idx:
            symbol[idx].field_0 = 0
            idx = idx + 1
            continue 
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
