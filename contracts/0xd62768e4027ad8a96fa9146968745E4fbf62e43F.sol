contract main {


// =======================  Init code  ======================


#
#  - _fallback()
#


// =====================  Runtime code  =====================


const canUpgrade = 1


array of uint256 standard;
array of struct name;
array of struct symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;
address newOwner;
array of uint256 version;
uint8 transfersEnabled;
uint256 stor10;
uint256 miningRewardPerETHBlock;
uint256 lastBlockRewarded;
address upgradeMasterAddress;
address upgradeAgentAddress;
uint256 totalUpgraded;

function name() {
    return name[0 len name.length].field_0
}

function totalSupply() {
    return totalSupply
}

function MiningRewardPerETHBlock() {
    return miningRewardPerETHBlock
}

function decimals() {
    return decimals
}

function version() {
    return version[0 len version.length]
}

function standard() {
    return standard[0 len standard.length]
}

function upgradeAgent() {
    return upgradeAgentAddress
}

function upgradeMaster() {
    return upgradeMasterAddress
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length].field_0
}

function transfersEnabled() {
    return bool(uint8(transfersEnabled))
}

function totalUpgraded() {
    return totalUpgraded
}

function newOwner() {
    return newOwner
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function lastBlockRewarded() {
    return lastBlockRewarded
}

function _fallback() payable {
    revert
}

function UpgradeableToken(address arg1) {
    require owner == msg.sender
    upgradeMasterAddress = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require owner != arg1
    newOwner = arg1
}

function getUpgradeState() {
    if not upgradeAgentAddress:
        return 2
    if totalUpgraded:
        return 4
    return 3
}

function disableTransfers(bool arg1) {
    require owner == msg.sender
    uint256(stor10) = not arg1 or Mask(248, 8, uint256(stor10))
}

function acceptOwnership() {
    require newOwner == msg.sender
    emit OwnerUpdate(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function ChangeMiningReward(uint256 arg1) {
    require owner == msg.sender
    miningRewardPerETHBlock = arg1
    emit MiningRewardChanged(arg1);
}

function setUpgradeMaster(address arg1) {
    require owner == msg.sender
    require arg1
    require upgradeMasterAddress == msg.sender
    upgradeMasterAddress = arg1
}

function setUpgradeAgent(address arg1) {
    require owner == msg.sender
    require arg1
    require upgradeMasterAddress == msg.sender
    upgradeAgentAddress = arg1
    emit UpgradeAgentSet(arg1);
}

function approve(address arg1, uint256 arg2) {
    require arg1
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function destroy(address arg1, uint256 arg2) {
    require owner == msg.sender
    require balanceOf[address(arg1)] >= arg2
    balanceOf[address(arg1)] -= arg2
    require totalSupply >= arg2
    totalSupply -= arg2
    emit Transfer(arg2, arg1, this.address);
    emit Destruction(arg2);
}

function withdrawTokens(address arg1, address arg2, uint256 arg3) {
    require owner == msg.sender
    require arg1
    require arg2
    require arg2 != this.address
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg2), arg3
    require ext_call.success
    require ext_call.return_data[0]
}

function issue(address arg1, uint256 arg2) {
    require owner == msg.sender
    require arg1
    require arg1 != this.address
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Issuance(arg2);
    emit Transfer(arg2, this.address, arg1);
}

function TransferMinersReward() {
    require lastBlockRewarded < block.number
    lastBlockRewarded = block.number
    require miningRewardPerETHBlock + totalSupply >= totalSupply
    totalSupply += miningRewardPerETHBlock
    require miningRewardPerETHBlock + balanceOf[address(block.coinbase)] >= balanceOf[address(block.coinbase)]
    balanceOf[address(block.coinbase)] += miningRewardPerETHBlock
    emit MiningRewardSent(miningRewardPerETHBlock, this.address, block.coinbase);
}

function transfer(address arg1, uint256 arg2) {
    require uint8(transfersEnabled)
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    if arg1 == this.address:
        balanceOf[address(arg1)] -= arg2
        totalSupply -= arg2
        emit Destruction(arg2);
    return 1
}

function upgrade(uint256 arg1) {
    require upgradeAgentAddress
    require arg1
    require balanceOf[address(msg.sender)] >= arg1
    balanceOf[address(msg.sender)] -= arg1
    require totalSupply >= arg1
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

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require uint8(transfersEnabled)
    require arg1
    require arg2
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require balanceOf[address(arg1)] >= arg3
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
    if arg2 == this.address:
        balanceOf[address(arg2)] -= arg3
        totalSupply -= arg3
        emit Destruction(arg3);
    return 1
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
