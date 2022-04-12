contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
address stor3;
uint8 stor6;
uint128 stor6; offset 160
address stor6; offset 8
address stor6;

function _fallback() payable {
    uint8(stor6.field_0) = 177
    Mask(152, 0, stor6.field_8) = 0
    Mask(96, 0, stor6.field_160) = 1
    require not msg.value
    stor3 = msg.sender
    stor0 = 220000000 * 10^18
    stor1[address(this.address)] = stor0
    if stor1[address(this.address)] >= 110000000 * 10^18:
        require stor1[address(this.address)] - 110000000 * 10^18 <= stor1[address(this.address)]
        stor1[address(this.address)] -= 110000000 * 10^18
        require stor1[address(stor6.field_0)] + 110000000 * 10^18 >= stor1[address(stor6.field_0)]
        stor1[address(stor6.field_0)] += 110000000 * 10^18
        emit Transfer(110000000 * 10^18, this.address, address(stor6.field_0));
    return code.data[965 len 7710]
}



// =====================  Runtime code  =====================


const name = 'Prospectors Gold'

const presale_allocation = (1250 * 10^18 * 3600)

const crowdfunding_allocation = 60000000 * 10^18

const bounty_allocation = 500000 * 10^18

const decimals = 18

const dev_allocation = (12500 * 10^18 * 3600)

const symbol = 'PGL'

const game_allocation = 110000000 * 10^18


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;
address migrationAgentAddress;
uint256 totalMigrated;
uint8 locked; offset 160
uint128 stor6; offset 160
address stor6;
address bountyAddress;
address prospectors_dev_allocationAddress;
address crowdsaleAddress;

function totalSupply() {
    return totalSupply
}

function prospectors_dev_allocation() {
    return prospectors_dev_allocationAddress
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

function bounty() {
    return bountyAddress
}

function totalMigrated() {
    return totalMigrated
}

function crowdsale() {
    return crowdsaleAddress
}

function locked() {
    return bool(locked)
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function setMigrationAgent(address arg1) {
    require msg.sender == owner
    require not migrationAgentAddress
    migrationAgentAddress = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function unlock() {
    if bool(locked) != 1:
        return 0
    require ext_code.size(crowdsaleAddress)
    call crowdsaleAddress.is_success() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if bool(ext_call.return_data[0]) != 1:
        return 0
    Mask(96, 0, stor6.field_160) = 0
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if bool(locked) == 1:
        require msg.sender == crowdsaleAddress
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(msg.sender)] - arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function init_bounty_program(address arg1) {
    require msg.sender == owner
    require 0 == bountyAddress
    bountyAddress = arg1
    if balanceOf[address(this.address)] >= 500000 * 10^18:
        require balanceOf[address(this.address)] - 500000 * 10^18 <= balanceOf[address(this.address)]
        balanceOf[address(this.address)] -= 500000 * 10^18
        require balanceOf[stor7] + 500000 * 10^18 >= balanceOf[stor7]
        balanceOf[stor7] += 500000 * 10^18
        emit Transfer(500000 * 10^18, this.address, bountyAddress);
}

function init_crowdsale(address arg1) {
    require msg.sender == owner
    require 0 == crowdsaleAddress
    crowdsaleAddress = arg1
    if balanceOf[address(this.address)] >= 60000000 * 10^18:
        require balanceOf[address(this.address)] - 60000000 * 10^18 <= balanceOf[address(this.address)]
        balanceOf[address(this.address)] -= 60000000 * 10^18
        require balanceOf[stor9] + 60000000 * 10^18 >= balanceOf[stor9]
        balanceOf[stor9] += 60000000 * 10^18
        emit Transfer(60000000 * 10^18, this.address, crowdsaleAddress);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require bool(locked) != 1
    require balanceOf[address(arg1)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] - arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require balanceOf[address(arg1)] - arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function migrate() {
    require migrationAgentAddress
    require balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] = 0
    require totalSupply - balanceOf[address(msg.sender)] <= totalSupply
    totalSupply -= balanceOf[address(msg.sender)]
    require totalMigrated + balanceOf[address(msg.sender)] >= totalMigrated
    totalMigrated += balanceOf[address(msg.sender)]
    require ext_code.size(migrationAgentAddress)
    call migrationAgentAddress.migrateFrom(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args msg.sender, balanceOf[address(msg.sender)]
    require ext_call.success
    emit Migrate(balanceOf[address(msg.sender)], msg.sender, migrationAgentAddress);
}

function migrate_game_balance() {
    require msg.sender == owner
    require migrationAgentAddress
    require balanceOf[address(stor6.field_0)]
    balanceOf[address(stor6.field_0)] = 0
    require totalSupply - balanceOf[address(stor6.field_0)] <= totalSupply
    totalSupply -= balanceOf[address(stor6.field_0)]
    require totalMigrated + balanceOf[address(stor6.field_0)] >= totalMigrated
    totalMigrated += balanceOf[address(stor6.field_0)]
    require ext_code.size(migrationAgentAddress)
    call migrationAgentAddress.migrateFrom(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args address(stor6.field_0), balanceOf[address(stor6.field_0)]
    require ext_call.success
    emit Migrate(balanceOf[address(stor6.field_0)], address(stor6.field_0), migrationAgentAddress);
}

function init_dev_and_presale_allocation(address arg1, address arg2) {
    require msg.sender == owner
    require 0 == prospectors_dev_allocationAddress
    prospectors_dev_allocationAddress = arg2
    if balanceOf[address(this.address)] >= 12500 * 10^18 * 3600:
        require balanceOf[address(this.address)] - (12500 * 10^18 * 3600) <= balanceOf[address(this.address)]
        balanceOf[address(this.address)] -= 12500 * 10^18 * 3600
        require balanceOf[stor8] + (12500 * 10^18 * 3600) >= balanceOf[stor8]
        balanceOf[stor8] += 12500 * 10^18 * 3600
        emit Transfer((12500 * 10^18 * 3600), this.address, prospectors_dev_allocationAddress);
    if balanceOf[address(this.address)] >= 1250 * 10^18 * 3600:
        require balanceOf[address(this.address)] - (1250 * 10^18 * 3600) <= balanceOf[address(this.address)]
        balanceOf[address(this.address)] -= 1250 * 10^18 * 3600
        require balanceOf[address(arg1)] + (1250 * 10^18 * 3600) >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += 1250 * 10^18 * 3600
        emit Transfer((1250 * 10^18 * 3600), this.address, arg1);
}



}
