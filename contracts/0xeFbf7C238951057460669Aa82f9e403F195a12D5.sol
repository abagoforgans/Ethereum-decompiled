contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor8;
uint8 stor9;
address stor9; offset 8
uint256 stor11;

function _fallback() payable {
    uint8(stor9.field_0) = 0
    require not msg.value
    stor0 = msg.sender
    address(stor9.field_8) = code.data[3886 len 20]
    stor11 = code.data[3906 len 32]
    stor8 = code.data[3938 len 32]
    stor0 = msg.sender
    return code.data[189 len 3685]
}



// =====================  Runtime code  =====================


const name = 'Pre Zeus Token'

const decimals = 8

const symbol = 'ZET'


address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
address migrationAgentAddress;
uint256 totalMigrated;
mapping of uint256 deposits;
uint256 sub_eaf931ae;
uint256 sub_6a18dd10;
uint8 crowdsaleState;
address beneficiaryAddress; offset 8
uint256 etherPriceUSDWEI;
uint256 tokenPriceUSDWEI;

function totalSupply() {
    return totalSupply
}

function tokenPriceUSDWEI() {
    return tokenPriceUSDWEI
}

function beneficiary() {
    return beneficiaryAddress
}

function sub_6a18dd10(?) {
    return sub_6a18dd10
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

function etherPriceUSDWEI() {
    return etherPriceUSDWEI
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function crowdsaleState() {
    require crowdsaleState <= 3
    return crowdsaleState
}

function sub_eaf931ae(?) {
    return sub_eaf931ae
}

function deposits(address arg1) {
    return deposits[arg1]
}

function changeOwner(address arg1) {
    require owner == msg.sender
    require arg1
    owner = arg1
}

function setMigrationAgent(address arg1) {
    require owner == msg.sender
    migrationAgentAddress = arg1
}

function startCrowdsale(uint256 arg1) {
    require owner == msg.sender
    etherPriceUSDWEI = arg1
    crowdsaleState = 1
}

function sub_f466c7ee(?) {
    require owner == msg.sender
    require crowdsaleState <= 3
    require crowdsaleState == 1
    crowdsaleState = 3
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function sub_d84a782a(?) {
    require owner == msg.sender
    require crowdsaleState <= 3
    require crowdsaleState == 1
    crowdsaleState = 2
    call beneficiaryAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function depositUSD(address arg1, uint256 arg2) {
    require owner == msg.sender
    require crowdsaleState <= 3
    require crowdsaleState == 1
    require tokenPriceUSDWEI
    balanceOf[address(arg1)] += 100 * 10^6 * arg2 / tokenPriceUSDWEI
    totalSupply += 100 * 10^6 * arg2 / tokenPriceUSDWEI
    sub_eaf931ae += arg2
}

function refund() {
    require crowdsaleState <= 3
    require crowdsaleState == 3
    require deposits[address(msg.sender)] > 0
    deposits[address(msg.sender)] = 0
    balanceOf[address(msg.sender)] = 0
    totalSupply -= balanceOf[address(msg.sender)]
    call msg.sender with:
       value deposits[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    balanceOf[address(arg2)] += arg3
    balanceOf[arg1] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function _fallback() payable {
    require crowdsaleState <= 3
    require crowdsaleState == 1
    require sub_eaf931ae < sub_6a18dd10
    require 10^18 * tokenPriceUSDWEI
    balanceOf[address(msg.sender)] += 100 * 10^6 * msg.value * etherPriceUSDWEI / 10^18 * tokenPriceUSDWEI
    totalSupply += 100 * 10^6 * msg.value * etherPriceUSDWEI / 10^18 * tokenPriceUSDWEI
    deposits[address(msg.sender)] += msg.value
    sub_eaf931ae += msg.value * etherPriceUSDWEI / 10^18
}

function migrate(uint256 arg1) {
    require migrationAgentAddress
    require arg1
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    totalSupply -= arg1
    totalMigrated += arg1
    require ext_code.size(migrationAgentAddress)
    call migrationAgentAddress.migrateFrom(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args msg.sender, arg1
    require ext_call.success
    emit Migrate(arg1, msg.sender, migrationAgentAddress);
}



}
