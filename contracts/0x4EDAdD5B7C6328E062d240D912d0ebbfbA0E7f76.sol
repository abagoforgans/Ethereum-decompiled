contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
address stor3;
uint8 stor4; offset 160
uint8 stor6;
address stor8;
array of uint256 stor11;
array of uint256 stor12;
uint256 stor13;

function _fallback() payable {
    stor4 = 0
    stor6 = 0
    require not msg.value
    mem[96 len -5807] = code.data[6527 len -5807]
    mem[64] = -5711
    stor3 = msg.sender
    stor8 = msg.sender
    stor3 = msg.sender
    stor11.length = (2 * mem[mem[96] + 96]) + 1
    s = 0x175b7a638427703f0dbe7bb9bbf987a2551717b34e79f33b5b1008d1fa01db9
    idx = mem[96] + 128
    while mem[96] + mem[mem[96] + 96] + 128 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = (Mask(251, 0, mem[mem[96] + 96] + 31) >> 5) + 0x175b7a638427703f0dbe7bb9bbf987a2551717b34e79f33b5b1008d1fa01db9
    while (stor11.length + 31 / 32) + 0x175b7a638427703f0dbe7bb9bbf987a2551717b34e79f33b5b1008d1fa01db9 > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    stor12.length = (2 * mem[mem[128] + 96]) + 1
    s = 0
    idx = mem[128] + 128
    while mem[128] + mem[mem[128] + 96] + 128 > idx:
        stor12[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    if stor12.length + 31 / 32 > Mask(251, 0, mem[mem[128] + 96] + 31) >> 5:
        stor12[Mask(251, 0, mem[mem[128] + 96] + 31) >> 5] = 0
        idx = (Mask(251, 0, mem[mem[128] + 96] + 31) >> 5) + 1
        while stor12.length + 31 / 32 > idx:
            stor12[idx] = 0
            idx = idx + 1
            continue 
    stor0 = mem[160]
    stor13 = mem[192]
    stor1[stor3] = mem[160]
    if mem[160] > 0:
        emit Minted(stor3, stor0);
    if mem[224]:
        return code.data[720 len 5807]
    stor6 = 1
    if stor0:
        return code.data[720 len 5807]
    revert 
}



// =====================  Runtime code  =====================


const isToken = 1


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;
uint8 released; offset 160
address releaseAgentAddress;
mapping of uint8 stor5;
uint8 mintingFinished;
mapping of uint8 stor7;
address upgradeMasterAddress;
address upgradeAgentAddress;
uint256 totalUpgraded;
array of struct name;
array of struct symbol;
uint256 decimals;

function mintingFinished() {
    return bool(mintingFinished)
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
    return bool(released)
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

function canUpgrade() {
    if not released:
        return bool(released)
    return 1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function releaseTokenTransfer() {
    require releaseAgentAddress == msg.sender
    mintingFinished = 1
    released = 1
}

function setReleaseAgent(address arg1) {
    require owner == msg.sender
    require not released
    releaseAgentAddress = arg1
}

function setUpgradeMaster(address arg1) {
    require arg1
    require upgradeMasterAddress == msg.sender
    upgradeMasterAddress = arg1
}

function setTransferAgent(address arg1, bool arg2) {
    require owner == msg.sender
    require not released
    stor5[address(arg1)] = uint8(arg2)
}

function getUpgradeState() {
    if not released:
        return 1
    if not upgradeAgentAddress:
        return 2
    if totalUpgraded:
        return 4
    return 3
}

function setMintAgent(address arg1, bool arg2) {
    require owner == msg.sender
    require not mintingFinished
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

function transfer(address arg1, uint256 arg2) {
    if not released:
        require stor5[address(msg.sender)]
    require calldata.size >= 68
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    require arg2 + balanceOf[arg1] >= arg2
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if not released:
        require stor5[address(arg1)]
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
    require released
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
    require released
    require arg1
    require upgradeMasterAddress == msg.sender
    if released:
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

function mint(address arg1, uint256 arg2) {
    require stor7[address(msg.sender)]
    require not mintingFinished
    require ext_code.size(0x838c848c7f801bbd6ae481bb164b40889aaca7d3)
    delegate 0x838c848c7f801bbd6ae481bb164b40889aaca7d3.0x66098d4f with:
         gas gas_remaining - 50 wei
        args totalSupply, arg2
    require delegate.return_code
    totalSupply = delegate.return_data[0]
    require ext_code.size(0x838c848c7f801bbd6ae481bb164b40889aaca7d3)
    delegate 0x838c848c7f801bbd6ae481bb164b40889aaca7d3.0x66098d4f with:
         gas gas_remaining - 50 wei
        args balanceOf[address(arg1)], arg2
    require delegate.return_code
    balanceOf[address(arg1)] = delegate.return_data[0]
    emit Transfer(arg2, 0, arg1);
}

function setTokenInformation(string arg1, string arg2) {
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    require owner == msg.sender
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
