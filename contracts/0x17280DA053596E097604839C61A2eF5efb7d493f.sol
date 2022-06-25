contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
uint256 stor1;
mapping of uint256 allowance;
address owner;
uint8 stor4; offset 160
uint128 stor4; offset 160
address releaseAgentAddress;
mapping of uint8 stor5;
uint8 stor6;
address upgradeMasterAddress; offset 8
address upgradeAgentAddress;
uint256 totalUpgraded;
uint8 stor9;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address verificationNodesWalletAddress; offset 8
address launchIncentiveWalletAddress;
address capitalReserveWalletAddress;
address ecosystemdevelopmentWalletAddress;
address initialFundingWalletAddress;

function LaunchIncentiveWallet() {
    return launchIncentiveWalletAddress
}

function mintingFinished() {
    return bool(stor6)
}

function name() {
    return name[0 len name.length]
}

function VerificationNodesWallet() {
    return verificationNodesWalletAddress
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
    return bool(stor5[arg1])
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function released() {
    return bool(uint8(stor4.field_160))
}

function ecosystemdevelopmentWallet() {
    return ecosystemdevelopmentWalletAddress
}

function capitalReserveWallet() {
    return capitalReserveWalletAddress
}

function InitialFundingWallet() {
    return initialFundingWalletAddress
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

function totalSupply() {
    require balanceOf <= stor1
    return (stor1 - balanceOf)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function canUpgrade() {
    if not uint8(stor4.field_160):
        return bool(uint8(stor4.field_160))
    return bool(stor9)
}

function finishMinting() {
    require msg.sender == owner
    require not stor6
    stor6 = 1
    emit MintFinished()
    return 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function getUpgradeState() {
    if not uint8(stor4.field_160):
        return 1
    if not stor9:
        return 1
    if upgradeAgentAddress:
        return 3
    return 2
}

function releaseTokenTransfer() {
    if releaseAgentAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Message sender is required to be a release agent.'
    stor6 = 1
    Mask(96, 0, stor4.field_160) = 1
}

function setReleaseAgent(address arg1) {
    require msg.sender == owner
    if bool(uint8(stor4.field_160)) != 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'It's required that the state to check aligns with the released flag.'
    releaseAgentAddress = arg1
}

function increaseApproval(address arg1, uint256 arg2) {
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require msg.sender == owner
    require not stor6
    require stor1 + arg2 >= stor1
    stor1 += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    emit Transfer(arg2, 0, arg1);
    return 1
}

function setTransferAgent(address arg1, bool arg2) {
    require msg.sender == owner
    if bool(uint8(stor4.field_160)) != 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'It's required that the state to check aligns with the released flag.'
    stor5[address(arg1)] = uint8(arg2)
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 >= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] = 0
    else:
        require arg2 <= allowance[address(msg.sender)][address(arg1)]
        allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function setUpgradeMaster(address arg1) {
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'The provided upgradeMaster is required to be a non-empty address when setting upgrade master.'
    if upgradeMasterAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Message sender is required to be the original upgradeMaster when setting (new) upgrade master.'
    upgradeMasterAddress = arg1
}

function transfer(address arg1, uint256 arg2) {
    if not uint8(stor4.field_160):
        if not stor5[address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'For the token to be able to transfer: it's required that the crowdsale is in released state; or the sender is a transfer agent.'
    require arg2 <= balanceOf[address(msg.sender)]
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if not uint8(stor4.field_160):
        if not stor5[address(arg1)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'For the token to be able to transfer: it's required that the crowdsale is in released state; or the sender is a transfer agent.'
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function upgrade(uint256 arg1) {
    if not uint8(stor4.field_160):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'It's required that the upgrade state is ready.'
    if not stor9:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'It's required that the upgrade state is ready.'
    if not upgradeAgentAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'It's required that the upgrade state is ready.'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The upgrade value is required to be above 0.'
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= stor1
    stor1 -= arg1
    require totalUpgraded + arg1 >= totalUpgraded
    totalUpgraded += arg1
    require ext_code.size(upgradeAgentAddress)
    call upgradeAgentAddress.upgradeFrom(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Upgrade(arg1, msg.sender, upgradeAgentAddress);
}

function setUpgradeAgent(address arg1) {
    if not uint8(stor4.field_160):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'It's required to be in canUpgrade() condition when setting upgrade agent.'
    if not stor9:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'It's required to be in canUpgrade() condition when setting upgrade agent.'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Agent is required to be an non-empty address when setting upgrade agent.'
    if upgradeMasterAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Message sender is required to be the upgradeMaster when setting upgrade agent.'
    if uint8(stor4.field_160):
        if stor9:
            if upgradeAgentAddress:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            'Upgrade state is required to not be upgrading when setting upgrade agent.'
    if upgradeAgentAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'upgradeAgent once set, cannot be reset'
    upgradeAgentAddress = arg1
    require ext_code.size(upgradeAgentAddress)
    call upgradeAgentAddress.isUpgradeAgent() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'The provided updateAgent contract is required to be compliant to the UpgradeAgent interface method when setting upgrade agent.'
    require ext_code.size(upgradeAgentAddress)
    call upgradeAgentAddress.originalSupply() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != stor1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    144,
                    0x5468652070726f766964656420757067726164654167656e7420636f6e74726163742773206f726967696e616c537570706c7920697320726571756972656420746f206265206571756976616c656e7420746f206578697374696e6720636f6e7472616374277320746f74616c537570706c795f207768656e2073657474696e672075706772616465206167656e7400,
                    mem[308 len 16]
    emit UpgradeAgentSet(upgradeAgentAddress);
}



}
