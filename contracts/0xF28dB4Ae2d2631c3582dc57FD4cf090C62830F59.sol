contract main {


// =======================  Init code  ======================


address stor0;
uint8 stor1; offset 160
address stor3;
array of uint256 stor6;
array of uint256 stor7;
uint8 stor8;
uint256 stor9;
mapping of uint256 stor10;

function _fallback() payable {
    stor1 = 0
    stor8 = 18
    require not msg.value
    mem[96 len -4558] = code.data[4990 len -4558]
    mem[64] = -4462
    stor0 = msg.sender
    stor9 = mem[96] * 10^stor8
    stor10[address(msg.sender)] = mem[96] * 10^stor8
    stor6[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor7[] = Array(len=mem[mem[160] + 96], data=mem[mem[160] + 128 len mem[mem[160] + 96]])
    stor3 = msg.sender
    return code.data[432 len 4558]
}



// =====================  Runtime code  =====================


const approveAndCall(address arg1, uint256 arg2, bytes arg3) = 0


address owner;
uint8 stor1; offset 160
address releaseAgentAddress;
mapping of uint8 stor2;
address upgradeMasterAddress;
address upgradeAgentAddress;
uint256 totalUpgraded;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function name() {
    return name[0 len name.length]
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
    return balanceOf[arg1]
}

function transferAgents(address arg1) {
    return bool(stor2[arg1])
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function released() {
    return bool(stor1)
}

function canUpgrade() {
    return bool(stor1)
}

function totalUpgraded() {
    return totalUpgraded
}

function releaseAgent() {
    return releaseAgentAddress
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function _fallback() payable {
    revert
}

function releaseTokenTransfer() {
    require releaseAgentAddress == msg.sender
    stor1 = 1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function setReleaseAgent(address arg1) {
    require owner == msg.sender
    require not stor1
    releaseAgentAddress = arg1
}

function setUpgradeMaster(address arg1) {
    require arg1
    require upgradeMasterAddress == msg.sender
    upgradeMasterAddress = arg1
}

function setTransferAgent(address arg1, bool arg2) {
    require owner == msg.sender
    require not stor1
    stor2[address(arg1)] = uint8(arg2)
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getUpgradeState() {
    if not stor1:
        return 1
    if not upgradeAgentAddress:
        return 2
    if totalUpgraded:
        return 4
    return 3
}

function transfer(address arg1, uint256 arg2) {
    if not stor1:
        require stor2[address(msg.sender)]
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    balanceOf[msg.sender] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    require balanceOf[address(arg1)] + balanceOf[msg.sender] == balanceOf[msg.sender] + balanceOf[address(arg1)]
    return 0
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if not stor1:
        require stor2[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require stor1
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg2
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    balanceOf[arg1] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    require balanceOf[address(arg2)] + balanceOf[arg1] == balanceOf[arg1] + balanceOf[address(arg2)]
    return 1
}

function setUpgradeAgent(address arg1) {
    require stor1
    require arg1
    require upgradeMasterAddress == msg.sender
    if stor1:
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

function upgrade(uint256 arg1) {
    require stor1
    require upgradeAgentAddress
    require ext_code.size(0x8daacedf91395b3c5857d15d21bc338ded393411)
    delegate 0x8daacedf91395b3c5857d15d21bc338ded393411.0xf4f3bdc1 with:
         gas gas_remaining - 710 wei
        args balanceOf[address(msg.sender)], arg1
    require delegate.return_code
    balanceOf[address(msg.sender)] = delegate.return_data[0]
    require ext_code.size(0x8daacedf91395b3c5857d15d21bc338ded393411)
    delegate 0x8daacedf91395b3c5857d15d21bc338ded393411.0xf4f3bdc1 with:
         gas gas_remaining - 710 wei
        args totalSupply, arg1
    require delegate.return_code
    totalSupply = delegate.return_data[0]
    require ext_code.size(0x8daacedf91395b3c5857d15d21bc338ded393411)
    delegate 0x8daacedf91395b3c5857d15d21bc338ded393411.0x66098d4f with:
         gas gas_remaining - 710 wei
        args totalUpgraded, arg1
    require delegate.return_code
    totalUpgraded = delegate.return_data[0]
    require ext_code.size(upgradeAgentAddress)
    call upgradeAgentAddress.0xb09ec9c2 with:
         gas gas_remaining - 710 wei
        args msg.sender, arg1
    require ext_call.success
    emit Upgrade(arg1, msg.sender, upgradeAgentAddress);
}



}
