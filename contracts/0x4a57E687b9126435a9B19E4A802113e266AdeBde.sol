contract main {




// =====================  Runtime code  =====================


const name = 'Flexacoin'

const decimals = 18

const symbol = 'FXC'

const INITIAL_SUPPLY = 100000000000 * 10^18


mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
uint8 stor3; offset 160
address owner;
address pendingOwner;
address upgradeAgentAddress;
uint256 totalUpgraded;

function totalSupply() {
    return totalSupply
}

function paused() {
    return bool(stor3)
}

function upgradeAgent() {
    return upgradeAgentAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function totalUpgraded() {
    return totalUpgraded
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function pendingOwner() {
    return pendingOwner
}

function _fallback() payable {
    revert
}

function canUpgrade() {
    return not bool(stor3)
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    pendingOwner = arg1
}

function unpause() {
    require owner == msg.sender
    require stor3
    stor3 = 0
    emit Unpause()
}

function pause() {
    require owner == msg.sender
    require not stor3
    stor3 = 1
    emit Pause()
}

function getUpgradeState() {
    if stor3:
        return 1
    if not upgradeAgentAddress:
        return 2
    if totalUpgraded:
        return 4
    return 3
}

function claimOwnership() {
    require pendingOwner == msg.sender
    emit OwnershipTransferred(owner, pendingOwner);
    owner = pendingOwner
    pendingOwner = 0
}

function approve(address arg1, uint256 arg2) {
    require not stor3
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function reclaimEther() {
    require owner == msg.sender
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function increaseApproval(address arg1, uint256 arg2) {
    require not stor3
    require arg2 + allowance[address(msg.sender)][address(arg1)] >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    require not stor3
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not stor3
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not stor3
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function reclaimToken(address arg1) {
    require owner == msg.sender
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function upgrade(uint256 arg1) {
    if stor3:
        revert with 0x8c379a0000000000000000000000000000000000000000000000000000000, 'State must be correct for upgrade'
    if not upgradeAgentAddress:
        revert with 0x8c379a0000000000000000000000000000000000000000000000000000000, 'State must be correct for upgrade'
    if arg1 <= 0:
        revert with 0x8c379a0000000000000000000000000000000000000000000000000000000, 'Upgrade value must be greater than zero'
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    require arg1 + totalUpgraded >= totalUpgraded
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
    require owner == msg.sender
    if stor3:
        revert with 0x8c379a0000000000000000000000000000000000000000000000000000000, 'Ensure the token is upgradeable in the first place'
    if not arg1:
        revert with 0x8c379a0000000000000000000000000000000000000000000000000000000, 'Ensure upgrade agent address is not blank'
    if not stor3:
        if upgradeAgentAddress:
            if totalUpgraded:
                revert with 0, 'Ensure upgrade has not started'
    upgradeAgentAddress = arg1
    require ext_code.size(arg1)
    call arg1.isUpgradeAgent() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a0000000000000000000000000000000000000000000000000000000, 'New upgradeAgent must be UpgradeAgent'
    require ext_code.size(upgradeAgentAddress)
    call upgradeAgentAddress.originalSupply() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != totalSupply:
        revert with 0x8c379a0000000000000000000000000000000000000000000000000000000, 
                    'Make sure that token supplies match in source and target token contracts'
    emit UpgradeAgentSet(upgradeAgentAddress);
}



}
