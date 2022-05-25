contract main {




// =====================  Runtime code  =====================


const canUpgrade = 1


mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
address owner;
address dividendsAddress;
address upgradeMasterAddress;
address upgradeAgentAddress;
uint256 totalUpgraded;
array of uint256 name;
array of uint256 symbol;
bool stor11; offset 256
uint8 decimals;
uint8 stor11; offset 8
uint8 stor11; offset 176
uint128 stor11; offset 176
address saleAddress; offset 16

function frozen() {
    return bool(uint8(stor11.field_176))
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

function dividends() {
    return dividendsAddress
}

function paused() {
    return bool(uint8(stor11.field_8))
}

function upgradeAgent() {
    return upgradeAgentAddress
}

function upgradeMaster() {
    return upgradeMasterAddress
}

function sale() {
    return saleAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
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

function thaw() {
    require saleAddress == msg.sender
    uint8(stor11.field_176) = 0
}

function setDividends(address arg1) {
    require owner == msg.sender
    dividendsAddress = arg1
}

function renounceOwnership() {
    require owner == msg.sender
    emit OwnershipRenounced(owner);
    owner = 0
}

function getUpgradeState() {
    if not upgradeAgentAddress:
        return 2
    if totalUpgraded:
        return 4
    return 3
}

function unpause() {
    require owner == msg.sender
    require uint8(stor11.field_8)
    uint8(stor11.field_8) = 0
    emit Unpause()
}

function pause() {
    require owner == msg.sender
    require not uint8(stor11.field_8)
    uint8(stor11.field_8) = 1
    emit Pause()
}

function setUpgradeMaster(address arg1) {
    require arg1
    require upgradeMasterAddress == msg.sender
    upgradeMasterAddress = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setSale(address arg1) {
    require owner == msg.sender
    saleAddress = arg1
    uint8(stor11.field_176) = 1
    Mask(80, 0, stor11.field_176) = 0
    stor11.field_256 % 1 = 0
}

function burn(uint256 arg1) {
    require arg1 <= balanceOf[address(msg.sender)]
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    emit Transfer(arg1, msg.sender, 0);
}

function increaseApproval(address arg1, uint256 arg2) {
    require arg2 + allowance[address(msg.sender)][address(arg1)] >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function upgrade(uint256 arg1) {
    require arg1 > 0
    require arg1 <= balanceOf[address(msg.sender)]
    require upgradeAgentAddress
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
    require arg1
    require upgradeMasterAddress == msg.sender
    if upgradeAgentAddress:
        require not totalUpgraded
    upgradeAgentAddress = arg1
    require ext_code.size(arg1)
    call arg1.isUpgradeAgent() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(upgradeAgentAddress)
    call upgradeAgentAddress.originalSupply() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == totalSupply
    emit UpgradeAgentSet(upgradeAgentAddress);
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor11.field_8)
    if uint8(stor11.field_176):
        if saleAddress != msg.sender:
            require owner == msg.sender
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    if dividendsAddress:
        require ext_code.size(dividendsAddress)
        call dividendsAddress.0x1dc9bb48 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require ext_code.size(dividendsAddress)
            call dividendsAddress.0x233bdd69 with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(dividendsAddress)
            call dividendsAddress.0x233bdd69 with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 0
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not uint8(stor11.field_8)
    if uint8(stor11.field_176):
        if saleAddress != msg.sender:
            require owner == msg.sender
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    if dividendsAddress:
        require ext_code.size(dividendsAddress)
        call dividendsAddress.0x1dc9bb48 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require ext_code.size(dividendsAddress)
            call dividendsAddress.0x233bdd69 with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(dividendsAddress)
            call dividendsAddress.0x233bdd69 with:
                 gas gas_remaining wei
                args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 0
}



}
