contract main {




// =====================  Runtime code  =====================


const name = 'zjaiyx'

const decimals = 18

const symbol = 'zjaiyx'


uint8 stor0;
mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
uint8 stor4; offset 160
uint128 stor4; offset 160
address owner;
address lawEnforcementRoleAddress;
mapping of uint8 stor6;
address supplyControllerAddress;

function totalSupply() {
    return totalSupply
}

function paused() {
    return bool(uint8(stor4.field_160))
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function lawEnforcementRole() {
    return lawEnforcementRoleAddress
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function isFrozen(address arg1) {
    return bool(stor6[address(arg1)])
}

function supplyController() {
    return supplyControllerAddress
}

function _fallback() payable {
    revert
}

function pause() {
    if owner != msg.sender:
        revert with 0, 'onlyOwner'
    if uint8(stor4.field_160):
        revert with 0, 'already paused'
    Mask(96, 0, stor4.field_160) = 1
    emit Pause()
}

function initialize() {
    if stor0:
        revert with 0, 'already initialized'
    owner = msg.sender
    lawEnforcementRoleAddress = 0
    totalSupply = 0
    supplyControllerAddress = msg.sender
    stor0 = 1
}

function unpause() {
    if owner != msg.sender:
        revert with 0, 'onlyOwner'
    if not uint8(stor4.field_160):
        revert with 0, 'already unpaused'
    Mask(96, 0, stor4.field_160) = 0
    emit Unpause()
}

function freeze(address arg1) {
    if lawEnforcementRoleAddress != msg.sender:
        revert with 0, 'onlyLawEnforcementRole'
    if stor6[address(arg1)]:
        revert with 0, 'address already frozen'
    stor6[address(arg1)] = 1
    emit AddressFrozen(arg1);
}

function unfreeze(address arg1) {
    if lawEnforcementRoleAddress != msg.sender:
        revert with 0, 'onlyLawEnforcementRole'
    if not stor6[address(arg1)]:
        revert with 0, 'address already unfrozen'
    stor6[address(arg1)] = 0
    emit AddressUnfrozen(arg1);
}

function setLawEnforcementRole(address arg1) {
    if lawEnforcementRoleAddress != msg.sender:
        if owner != msg.sender:
            revert with 0, 'only lawEnforcementRole or Owner'
    emit LawEnforcementRoleSet(lawEnforcementRoleAddress, arg1);
    lawEnforcementRoleAddress = arg1
}

function transferOwnership(address arg1) {
    if owner != msg.sender:
        revert with 0, 'onlyOwner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'cannot transfer ownership to address zero'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    if uint8(stor4.field_160):
        revert with 0, 'whenNotPaused'
    if stor6[address(arg1)]:
        revert with 0, 'address frozen'
    if stor6[address(msg.sender)]:
        revert with 0, 'address frozen'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseSupply(uint256 arg1) {
    if supplyControllerAddress != msg.sender:
        revert with 0, 'onlySupplyController'
    require totalSupply + arg1 >= totalSupply
    totalSupply += arg1
    require balanceOf[stor7] + arg1 >= balanceOf[stor7]
    balanceOf[stor7] += arg1
    emit SupplyIncreased(arg1, supplyControllerAddress);
    emit Transfer(arg1, 0, supplyControllerAddress);
    return 1
}

function setSupplyController(address arg1) {
    if supplyControllerAddress != msg.sender:
        if owner != msg.sender:
            revert with 0, 'only SupplyController or Owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'cannot set supply controller to address zero'
    emit SupplyControllerSet(supplyControllerAddress, arg1);
    supplyControllerAddress = arg1
}

function decreaseSupply(uint256 arg1) {
    if supplyControllerAddress != msg.sender:
        revert with 0, 'onlySupplyController'
    if arg1 > balanceOf[stor7]:
        revert with 0, 'not enough supply'
    require arg1 <= balanceOf[stor7]
    balanceOf[stor7] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit SupplyDecreased(arg1, supplyControllerAddress);
    emit Transfer(arg1, supplyControllerAddress, 0);
    return 1
}

function wipeFrozenAddress(address arg1) {
    if lawEnforcementRoleAddress != msg.sender:
        revert with 0, 'onlyLawEnforcementRole'
    if not stor6[address(arg1)]:
        revert with 0, 'address is not frozen'
    balanceOf[address(arg1)] = 0
    require balanceOf[address(arg1)] <= totalSupply
    totalSupply -= balanceOf[address(arg1)]
    emit FrozenAddressWiped(arg1);
    emit SupplyDecreased(balanceOf[address(arg1)], arg1);
    emit Transfer(balanceOf[address(arg1)], arg1, 0);
}

function transfer(address arg1, uint256 arg2) {
    if uint8(stor4.field_160):
        revert with 0, 'whenNotPaused'
    if not arg1:
        revert with 0, 'cannot transfer to address zero'
    if stor6[address(arg1)]:
        revert with 0, 'address frozen'
    if stor6[address(msg.sender)]:
        revert with 0, 'address frozen'
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 'insufficient funds'
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if uint8(stor4.field_160):
        revert with 0, 'whenNotPaused'
    if not arg2:
        revert with 0, 'cannot transfer to address zero'
    if stor6[address(arg2)]:
        revert with 0, 'address frozen'
    if stor6[address(arg1)]:
        revert with 0, 'address frozen'
    if stor6[address(msg.sender)]:
        revert with 0, 'address frozen'
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 'insufficient funds'
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 'insufficient allowance'
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
