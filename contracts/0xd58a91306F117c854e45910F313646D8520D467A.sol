contract main {




// =====================  Runtime code  =====================


uint8 decimals; offset 160
address owner;
array of uint256 name;
array of uint256 symbol;
uint256 totalSupply;
uint8 stor5;
address multisigAddress; offset 8
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint256 stor8;
address migrationAgentAddress;
uint256 totalMigrated;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function multisig() {
    return multisigAddress
}

function tradable() {
    return bool(stor5)
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function migrationAgent() {
    return migrationAgentAddress
}

function owner() {
    return owner
}

function totalMigrated() {
    return totalMigrated
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function setTradable(bool arg1) {
    require msg.sender == owner
    stor5 = uint8(arg1)
}

function timeLock(address arg1, uint256 arg2) {
    require msg.sender == owner
    stor8[address(arg1)] = arg2
    return 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setMigrationAgent(address arg1) {
    require msg.sender == owner
    require not migrationAgentAddress
    require not totalMigrated
    migrationAgentAddress = arg1
}

function isLocked(address arg1) {
    if stor8[address(arg1)]:
        if stor8[address(arg1)] > block.timestamp:
            return 1
        else:
            return 0
    else:
        return 0
}

function approve(address arg1, uint256 arg2) {
    require stor5
    require arg2 >= 0
    require allowance[address(msg.sender)][address(arg1)] >= 0
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
}

function transfer(address arg1, uint256 arg2) {
    require stor5
    if stor8[address(msg.sender)]:
        require stor8[address(msg.sender)] <= block.timestamp
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 > 0
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require stor5
    require arg2
    if stor8[address(arg1)]:
        require stor8[address(arg1)] <= block.timestamp
    require arg3 > 0
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
}

function migrate(uint256 arg1) {
    require migrationAgentAddress
    require arg1 >= 0
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    require totalMigrated + arg1 >= totalMigrated
    totalMigrated += arg1
    require ext_code.size(migrationAgentAddress)
    call migrationAgentAddress.migrateFrom(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Migrate(arg1, msg.sender, migrationAgentAddress);
}



}
