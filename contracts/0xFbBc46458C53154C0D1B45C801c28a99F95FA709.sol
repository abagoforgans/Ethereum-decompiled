contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160
address stor0;
uint8 stor5;

function _fallback() payable {
    uint8(stor0.field_160) = 0
    stor5 = 0
    require not msg.value
    address(stor0.field_0) = 0
    return code.data[86 len 3468]
}



// =====================  Runtime code  =====================


const name = 'High Reward Coin'

const decimals = 18

const symbol = 'HRC'


uint8 stor0; offset 160
address owner;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor4;
uint8 stor5;
uint256 totalMigrated;
address migrationAgentAddress;

function mintingFinished() {
    return bool(stor5)
}

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

function unpausedWallet(address arg1) {
    return bool(stor4[arg1])
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function setOwner() {
    require not owner
    owner = msg.sender
}

function delUnpausedWallet(address arg1) {
    require owner == msg.sender
    stor4[address(arg1)] = 0
}

function unpause() {
    require owner == msg.sender
    require stor0
    stor0 = 0
    emit Unpause()
}

function pause() {
    require owner == msg.sender
    require not stor0
    stor0 = 1
    emit Pause()
}

function addUnpausedWallet(address arg1) {
    require owner == msg.sender
    stor4[address(arg1)] = 1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    owner = arg1
}

function paused() {
    if not stor0:
        return bool(stor0)
    return not bool(stor4[address(msg.sender)])
}

function setMigrationAgent(address arg1) {
    require owner == msg.sender
    require not migrationAgentAddress
    migrationAgentAddress = arg1
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require owner == msg.sender
    require not stor5
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    emit Transfer(arg2, 0, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if stor0:
        require stor4[address(msg.sender)]
    require arg2 > 0
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if stor0:
        require stor4[address(msg.sender)]
    require arg3 > 0
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function migrate() {
    require balanceOf[address(msg.sender)] > 0
    require balanceOf[address(msg.sender)] <= totalSupply
    totalSupply -= balanceOf[address(msg.sender)]
    require balanceOf[address(msg.sender)] + totalMigrated >= totalMigrated
    totalMigrated += balanceOf[address(msg.sender)]
    require ext_code.size(migrationAgentAddress)
    call migrationAgentAddress.migrateFrom(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args msg.sender, balanceOf[address(msg.sender)]
    require ext_call.success
    emit Migrate(balanceOf[address(msg.sender)], msg.sender, migrationAgentAddress);
    balanceOf[address(msg.sender)] = 0
}



}
