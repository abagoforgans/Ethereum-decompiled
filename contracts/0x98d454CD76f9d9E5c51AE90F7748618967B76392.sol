contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
mapping of uint256 stor2;
address stor5;

function _fallback() {
    stor0 = msg.sender
    stor5 = msg.sender
    stor1 = 24 * 10^13
    stor2[address(msg.sender)] = 24 * 10^13
    emit Mint(24 * 10^13, stor5);
    emit Transfer(stor1, 0, stor5);
    emit MintFinished()
    return code.data[273 len 2993]
}



// =====================  Runtime code  =====================


const name = 'OKOIN'

const decimals = 6

const symbol = 'OKO'


address owner;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address migrationAgentAddress;
address allTokenOwnerOnStart;

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

function allTokenOwnerOnStart() {
    return allTokenOwnerOnStart
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function setMigrationAgent(address arg1) {
    require owner == msg.sender
    migrationAgentAddress = arg1
    emit UpgradeAgentSet(arg1);
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

function transfer(address arg1, uint256 arg2) {
    require 68 == calldata.size
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    require arg2 + balanceOf[arg1] >= arg2
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function addApproval(address arg1, uint256 arg2) {
    require 68 == calldata.size
    require arg2 + allowance[address(msg.sender)][address(arg1)] >= allowance[address(msg.sender)][address(arg1)]
    require arg2 + allowance[address(msg.sender)][address(arg1)] >= arg2
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function subApproval(address arg1, uint256 arg2) {
    require 68 == calldata.size
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
        emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
        emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function migrate() {
    require migrationAgentAddress
    require balanceOf[address(msg.sender)] <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] = 0
    require balanceOf[address(msg.sender)] <= totalSupply
    totalSupply -= balanceOf[address(msg.sender)]
    require ext_code.size(migrationAgentAddress)
    call migrationAgentAddress.migrateFrom(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args msg.sender, balanceOf[address(msg.sender)]
    require ext_call.success
    emit Upgrade(balanceOf[address(msg.sender)], msg.sender, migrationAgentAddress);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    require arg3 + balanceOf[address(arg2)] >= arg3
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function _fallback() payable {
    require migrationAgentAddress
    require balanceOf[address(msg.sender)] > 0
    require migrationAgentAddress
    require balanceOf[address(msg.sender)] <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] = 0
    require balanceOf[address(msg.sender)] <= totalSupply
    totalSupply -= balanceOf[address(msg.sender)]
    require ext_code.size(migrationAgentAddress)
    call migrationAgentAddress.migrateFrom(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args msg.sender, balanceOf[address(msg.sender)]
    require ext_call.success
    emit Upgrade(balanceOf[address(msg.sender)], msg.sender, migrationAgentAddress);
    call msg.sender with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}



}
