contract main {


// =======================  Init code  ======================


uint128 stor0; offset 168
uint128 stor0; offset 160
address stor0;
uint256 stor1;
mapping of uint256 stor2;
uint8 stor5;

function _fallback() payable {
    Mask(96, 0, stor0.field_160) = 0
    Mask(88, 0, stor0.field_168) = 0
    stor1 = 10^11
    stor5 = 0
    require not msg.value
    address(stor0.field_0) = msg.sender
    address(stor0.field_0) = msg.sender
    stor2[address(msg.sender)] = stor1
    return code.data[316 len 7636]
}



// =====================  Runtime code  =====================


const name = 'ACT Curation Engine'

const decimals = 4

const isTokenContract = 1

const version = 'v1.0.0'

const symbol = 'CE7'


uint8 stor0; offset 160
uint8 stor0; offset 168
uint128 stor0; offset 168
uint128 stor0; offset 160
address owner;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalMigrated;
uint8 stor5;
address migrationAgentAddress; offset 8
uint256 stor5;

function totalSupply() {
    return totalSupply
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

function Paused() {
    return bool(uint8(stor0.field_160))
}

function upgradingEnabled() {
    return bool(uint8(stor5.field_0))
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    owner = arg1
}

function tweakState() {
    require msg.sender == owner
    Mask(96, 0, stor0.field_160) = Mask(96, 0, not bool(uint8(stor0.field_160)))
    emit Pause(bool(uint8(stor0.field_160)));
}

function approve(address arg1, uint256 arg2) {
    require not uint8(stor0.field_160)
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function tweakUpgrading() {
    require msg.sender == owner
    uint256(stor5.field_0) = not bool(uint8(stor5.field_0)) or Mask(248, 8, uint256(stor5.field_0))
    emit Upgrading(bool(uint8(stor5.field_0)));
}

function increaseApproval(address arg1, uint256 arg2) {
    require not uint8(stor0.field_160)
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    require not uint8(stor0.field_160)
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor0.field_160)
    require calldata.size == 68
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not uint8(stor0.field_160)
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

function setMigrationAgent(address arg1) {
    require uint8(stor5.field_0)
    require msg.sender == owner
    require arg1
    migrationAgentAddress = arg1
    require ext_code.size(migrationAgentAddress)
    call migrationAgentAddress.isMigrationAgent() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(migrationAgentAddress)
    call migrationAgentAddress.originalSupply() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] == totalSupply
}

function migrate(uint256 arg1) {
    require not uint8(stor0.field_168)
    Mask(88, 0, stor0.field_168) = 1
    require uint8(stor5.field_0)
    require arg1 > 0
    require arg1 <= balanceOf[address(msg.sender)]
    require ext_code.size(migrationAgentAddress)
    call migrationAgentAddress.isMigrationAgent() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0]
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    require totalMigrated + arg1 >= totalMigrated
    totalMigrated += arg1
    require ext_code.size(migrationAgentAddress)
    call migrationAgentAddress.migrateFrom(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args msg.sender, arg1
    require ext_call.success
    require ext_call.return_data[0]
    emit Migrate(arg1, msg.sender, migrationAgentAddress);
    Mask(88, 0, stor0.field_168) = 0
}



}
