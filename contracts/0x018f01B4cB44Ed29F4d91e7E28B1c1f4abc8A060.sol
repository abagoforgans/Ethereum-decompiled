contract main {


// =======================  Init code  ======================


address stor1;
array of uint256 stor2;
array of uint256 stor3;
uint8 stor4;
array of uint256 stor5;
uint256 stor6;
uint256 stor7;
uint8 stor8;
address stor8; offset 8
address stor9;
address stor12;
mapping of uint256 stor13;

function _fallback() payable {
    bool(stor5.length) = 0
    stor5.length.field_1 = 4
    stor5.length.field_8 = 'v0.1' / 256
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    stor1 = msg.sender
    require code.data[4946 len 20]
    uint8(stor8.field_0) = 1
    stor7 = 100000000 * 10^18
    stor6 = 100000000 * 10^18
    bool(stor2.length) = 0
    stor2.length.field_1 = 9
    stor2.length.field_8 = 'Narrative' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor3.length) = 0
    stor3.length.field_1 = 3
    stor3.length.field_8 = 'NRV' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor4 = 18
    address(stor8.field_8) = address(code.data[4934 len 32])
    stor13[address(code.data[4934 len 32])] = stor7
    stor9 = stor1
    stor12 = address(code.data[4934 len 32])
    return code.data[646 len 4288]
}



// =====================  Runtime code  =====================


address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of uint256 version;
uint256 totalSupply;
uint256 initialSupply;
uint8 stor8;
address crowdSaleAddress; offset 8
address migrationMasterAddress;
address migrationAgentAddress;
uint256 totalMigrated;
address authorizedAddress;
mapping of uint256 balances;
mapping of uint256 allowed;

function crowdSaleAddress() {
    return crowdSaleAddress
}

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function balances(address arg1) {
    return balances[arg1]
}

function decimals() {
    return decimals
}

function initialSupply() {
    return initialSupply
}

function authorized() {
    return authorizedAddress
}

function version() {
    return version[0 len version.length]
}

function allowed(address arg1, address arg2) {
    return allowed[arg1][arg2]
}

function migrationMaster() {
    return migrationMasterAddress
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
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

function locked() {
    return bool(stor8)
}

function allowance(address arg1, address arg2) {
    return allowed[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function setAuthorized(address arg1) {
    require owner == msg.sender
    authorizedAddress = arg1
}

function lock() {
    if owner != msg.sender:
        require authorizedAddress == msg.sender
    stor8 = 1
}

function unlock() {
    if owner != msg.sender:
        require authorizedAddress == msg.sender
    stor8 = 0
}

function setMigrationMaster(address arg1) {
    require migrationMasterAddress == msg.sender
    require arg1
    migrationMasterAddress = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowed[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setMigrationAgent(address arg1) {
    require not migrationAgentAddress
    require migrationMasterAddress == msg.sender
    migrationAgentAddress = arg1
}

function transfer(address arg1, uint256 arg2) {
    if crowdSaleAddress != msg.sender:
        require not stor8
    require arg1
    require balances[address(msg.sender)] >= arg2
    balances[address(msg.sender)] -= arg2
    balances[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowed[address(msg.sender)][address(arg1)]:
        allowed[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowed[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowed[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require arg2 + allowed[address(msg.sender)][address(arg1)] >= allowed[address(msg.sender)][address(arg1)]
    require arg2 + allowed[address(msg.sender)][address(arg1)] >= arg2
    allowed[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowed[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if crowdSaleAddress != msg.sender:
        require not stor8
    require arg2
    require balances[address(arg1)] >= arg3
    require arg3 <= allowed[address(arg1)][address(msg.sender)]
    balances[address(arg1)] -= arg3
    balances[arg2] += arg3
    allowed[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function mint(address arg1, uint256 arg2) {
    if owner != msg.sender:
        require authorizedAddress == msg.sender
    require arg2 + totalSupply >= totalSupply
    require arg2 + totalSupply >= arg2
    require arg2 + totalSupply <= 197500000 * 10^18
    require arg2 + balances[address(arg1)] >= balances[address(arg1)]
    require arg2 + balances[address(arg1)] >= arg2
    balances[address(arg1)] += arg2
    require arg2 + totalSupply >= totalSupply
    require arg2 + totalSupply >= arg2
    totalSupply += arg2
    emit Transfer(arg2, 0, arg1);
    return 1
}

function migrate(uint256 arg1) {
    require migrationAgentAddress
    require arg1 > 0
    require arg1 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    require arg1 + totalMigrated >= totalMigrated
    require arg1 + totalMigrated >= arg1
    totalMigrated += arg1
    require ext_code.size(migrationAgentAddress)
    call migrationAgentAddress.migrateFrom(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args msg.sender, arg1
    require ext_call.success
    emit Migrate(arg1, msg.sender, migrationAgentAddress);
}



}
