contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint8 stor2;
address stor2; offset 8
address stor3;
address stor4;

function _fallback() payable {
    uint8(stor2.field_0) = 1
    require not msg.value
    require code.data[8226 len 20]
    require code.data[8258 len 20]
    require code.data[8278 len 32] > block.number
    require code.data[8310 len 32] > code.data[8278 len 32]
    create contract with 0 wei
                    code: code.data[5224 len 2990], code.data[8226 len 20]
    require create.new_address
    stor4 = address(create.new_address)
    stor3 = code.data[8258 len 20]
    address(stor2.field_8) = code.data[8226 len 20]
    stor0 = code.data[8278 len 32]
    stor1 = code.data[8310 len 32]
    return code.data[542 len 4682]
}



// =====================  Runtime code  =====================


const name = 'Prospectors Obligation Token'

const decimals = 18

const tokenCreationCap = 100000 * 10^18

const symbol = 'OBG'

const tokenCreationMin = 10000 * 10^18

const tokenCreationRate = 1000


uint256 fundingStartBlock;
uint256 fundingEndBlock;
uint8 stor2;
address prospectors_teamAddress; offset 8
address migrationMasterAddress;
address stor4;
uint256 totalSupply;
mapping of uint256 balanceOf;
address migrationAgentAddress;
uint256 totalMigrated;

function totalSupply() {
    return totalSupply
}

function migrationMaster() {
    return migrationMasterAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function prospectors_team() {
    return prospectors_teamAddress
}

function migrationAgent() {
    return migrationAgentAddress
}

function fundingEndBlock() {
    return fundingEndBlock
}

function totalMigrated() {
    return totalMigrated
}

function funding() {
    return bool(stor2)
}

function fundingStartBlock() {
    return fundingStartBlock
}

function setMigrationMaster(address arg1) {
    require msg.sender == migrationMasterAddress
    require arg1
    migrationMasterAddress = arg1
}

function setMigrationAgent(address arg1) {
    require not stor2
    require not migrationAgentAddress
    require msg.sender == migrationMasterAddress
    migrationAgentAddress = arg1
}

function transfer(address arg1, uint256 arg2) {
    require not stor2
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function _fallback() payable {
    require stor2
    require block.number >= fundingStartBlock
    require block.number <= fundingEndBlock
    require msg.value
    require msg.value <= -totalSupply + 100000 * 10^18 / 1000
    totalSupply += 1000 * msg.value
    balanceOf[address(msg.sender)] += 1000 * msg.value
    emit Transfer((1000 * msg.value), 0, msg.sender);
}

function refund() {
    require stor2
    require block.number > fundingEndBlock
    require totalSupply < 10000 * 10^18
    require balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] = 0
    totalSupply -= balanceOf[address(msg.sender)]
    emit Refund((balanceOf[address(msg.sender)] / 1000), msg.sender);
    call msg.sender with:
       value balanceOf[address(msg.sender)] / 1000 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function migrate(uint256 arg1) {
    require not stor2
    require migrationAgentAddress
    require arg1
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    totalSupply -= arg1
    totalMigrated += arg1
    require ext_code.size(migrationAgentAddress)
    call migrationAgentAddress.migrateFrom(address rg1, uint256 rg2) with:
         gas gas_remaining - 50 wei
        args msg.sender, arg1
    require ext_call.success
    emit Migrate(arg1, msg.sender, migrationAgentAddress);
}

function finalize() {
    require stor2
    if block.number <= fundingEndBlock:
        if totalSupply >= 100000 * 10^18:
            stor2 = 0
            totalSupply += 18 * totalSupply / 82
            balanceOf[stor4] += 18 * totalSupply / 82
            emit Transfer((18 * totalSupply / 82), 0, stor4);
            call prospectors_teamAddress with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if ext_call.success:
    else:
        if totalSupply >= 10000 * 10^18:
            stor2 = 0
            totalSupply += 18 * totalSupply / 82
            balanceOf[stor4] += 18 * totalSupply / 82
            emit Transfer((18 * totalSupply / 82), 0, stor4);
            call prospectors_teamAddress with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if ext_call.success:
        else:
            if totalSupply >= 100000 * 10^18:
                stor2 = 0
                totalSupply += 18 * totalSupply / 82
                balanceOf[stor4] += 18 * totalSupply / 82
                emit Transfer((18 * totalSupply / 82), 0, stor4);
                call prospectors_teamAddress with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                if ext_call.success:
    revert 
}



}
