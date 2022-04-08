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
    mem[96 len -5346] = code.data[5799 len -5346]
    mem[64] = -5250
    stor3 = msg.sender
    stor8 = msg.sender
    stor3 = msg.sender
    stor11[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor12[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor0 = mem[160]
    stor13 = mem[192]
    stor1[stor3] = mem[160]
    return code.data[453 len 5346]
}



// =====================  Runtime code  =====================


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;
uint8 stor4; offset 160
address releaseAgentAddress;
mapping of uint8 stor5;
uint8 stor6;
mapping of uint8 stor7;
address upgradeMasterAddress;
address upgradeAgentAddress;
uint256 totalUpgraded;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;

function mintingFinished() {
    return bool(stor6)
}

function name() {
    return name[0 len name.length]
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
    return symbol[0 len symbol.length]
}

function released() {
    return bool(stor4)
}

function canUpgrade() {
    return bool(stor4)
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

function releaseTokenTransfer() {
    require releaseAgentAddress == msg.sender
    stor6 = 1
    stor4 = 1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function setReleaseAgent(address arg1) {
    require owner == msg.sender
    require not stor4
    releaseAgentAddress = arg1
}

function setUpgradeMaster(address arg1) {
    require arg1
    require upgradeMasterAddress == msg.sender
    upgradeMasterAddress = arg1
}

function setMintAgent(address arg1, bool arg2) {
    require owner == msg.sender
    require not stor6
    stor7[address(arg1)] = uint8(arg2)
}

function setTransferAgent(address arg1, bool arg2) {
    require owner == msg.sender
    require not stor4
    stor5[address(arg1)] = uint8(arg2)
}

function getUpgradeState() {
    if not stor4:
        return 1
    if not upgradeAgentAddress:
        return 2
    if totalUpgraded:
        return 4
    return 3
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function subApproval(address arg1, uint256 arg2) {
    require 68 == calldata.size
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    return 1
}

function addApproval(address arg1, uint256 arg2) {
    require 68 == calldata.size
    require arg2 + allowance[address(msg.sender)][address(arg1)] >= allowance[address(msg.sender)][address(arg1)]
    require arg2 + allowance[address(msg.sender)][address(arg1)] >= arg2
    allowance[address(msg.sender)][address(arg1)] += arg2
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if not stor4:
        require stor5[address(msg.sender)]
    require 68 == calldata.size
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    require arg2 + balanceOf[arg1] >= arg2
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if not stor4:
        require stor5[address(arg1)]
    require 100 == calldata.size
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
    require stor4
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
         gas gas_remaining - 710 wei
        args msg.sender, arg1
    require ext_call.success
    emit Upgrade(arg1, msg.sender, upgradeAgentAddress);
}

function setUpgradeAgent(address arg1) {
    require stor4
    require arg1
    require upgradeMasterAddress == msg.sender
    if stor4:
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

function mint(address arg1, uint256 arg2) {
    require stor7[address(msg.sender)]
    require not stor6
    require ext_code.size(0xde63ee6945e3a795b2959edd9d3e075e5783bbd1)
    delegate 0xde63ee6945e3a795b2959edd9d3e075e5783bbd1.0x66098d4f with:
         gas gas_remaining - 710 wei
        args totalSupply, arg2
    require delegate.return_code
    totalSupply = delegate.return_data[0]
    require ext_code.size(0xde63ee6945e3a795b2959edd9d3e075e5783bbd1)
    delegate 0xde63ee6945e3a795b2959edd9d3e075e5783bbd1.0x66098d4f with:
         gas gas_remaining - 710 wei
        args balanceOf[address(arg1)], arg2
    require delegate.return_code
    balanceOf[address(arg1)] = delegate.return_data[0]
    emit Transfer(arg2, 0, arg1);
}



}
