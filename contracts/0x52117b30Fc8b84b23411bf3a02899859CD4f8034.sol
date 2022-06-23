contract main {


// =======================  Init code  ======================


address stor1;
address stor2;
array of uint256 stor3;
array of uint256 stor4;
uint256 stor5;
array of uint256 stor6;
uint256 stor7;
uint256 stor8;
bool stor9; offset 256
uint8 stor9;
uint8 stor9; offset 8
uint128 stor9; offset 176
address stor9; offset 16
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
mapping of uint256 stor14;

function _fallback() {
    mem[96 len -4209] = code.data[4745 len -4209]
    mem[64] = -4113
    stor1 = msg.sender
    stor2 = 0
    stor7 = mem[96] * 10^mem[160]
    stor3[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor4[] = Array(len=mem[mem[192] + 96], data=mem[mem[192] + 128 len mem[mem[192] + 96]])
    stor5 = mem[160]
    stor6[] = Array(len=mem[mem[224] + 96], data=mem[mem[224] + 128 len mem[mem[224] + 96]])
    stor8 = mem[256]
    stor14[stor1] = stor7
    stor10 = 25 * 10^17
    stor11 = 15 * 10^17
    stor12 = 15 * 10^17
    stor13 = 10 * 10^18
    uint8(stor9.field_0) = 1
    uint8(stor9.field_8) = 0
    uint8(stor9.field_8) = 1
    address(stor9.field_16) = 0x80efc17ccdc8fe6a625cc4ed1fdaf71fd81a2c99
    Mask(80, 0, stor9.field_176) = 0
    stor9.field_256 % 1 = 0
    stor9.field_256 % 1 = 0
    return code.data[536 len 4209]
}



// =====================  Runtime code  =====================


address owner;
address newOwner;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
array of uint256 version;
uint256 totalSupply;
uint256 tokenPrice;
uint8 exchangeEnabled;
uint8 codeExportEnabled; offset 8
address commissionAddress; offset 16
uint256 deploymentCost;
uint256 tokenOnlyDeploymentCost;
uint256 exchangeEnableCost;
uint256 codeExportCost;
mapping of uint256 balances;
mapping of uint256 allowed;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function codeExportCost() {
    return codeExportCost
}

function balances(address arg1) {
    return balances[arg1]
}

function decimals() {
    return decimals
}

function version() {
    return version[0 len version.length]
}

function allowed(address arg1, address arg2) {
    return allowed[arg1][arg2]
}

function codeExportEnabled() {
    return bool(codeExportEnabled)
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function exchangeEnableCost() {
    return exchangeEnableCost
}

function tokenPrice() {
    return tokenPrice
}

function owner() {
    return owner
}

function commissionAddress() {
    return commissionAddress
}

function symbol() {
    return symbol[0 len symbol.length]
}

function deploymentCost() {
    return deploymentCost
}

function tokenOnlyDeploymentCost() {
    return tokenOnlyDeploymentCost
}

function newOwner() {
    return newOwner
}

function allowance(address arg1, address arg2) {
    return allowed[address(arg1)][address(arg2)]
}

function exchangeEnabled() {
    return bool(exchangeEnabled)
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    newOwner = arg1
}

function acceptOwnership() {
    require newOwner == msg.sender
    emit OwnershipTransferred(owner, msg.sender);
    owner = msg.sender
    newOwner = 0
}

function approve(address arg1, uint256 arg2) {
    allowed[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function mintToken(address arg1, uint256 arg2) {
    require owner == msg.sender
    balances[address(arg1)] += arg2
    totalSupply += arg2
    emit Transfer(arg2, 0, arg1);
}

function enableCodeExport() payable {
    require not codeExportEnabled
    require msg.value == codeExportCost
    codeExportEnabled = 1
    call 0 or commissionAddress or 0 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit TokenExportEnabled(msg.sender, msg.value);
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowed[address(msg.sender)][address(arg1)]:
        allowed[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowed[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowed[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function enableExchange(uint256 arg1) payable {
    require not exchangeEnabled
    require msg.value == exchangeEnableCost
    exchangeEnabled = 1
    tokenPrice = arg1
    call 0 or commissionAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit TokenExchangeEnabled(msg.sender, arg1);
}

function increaseApproval(address arg1, uint256 arg2) {
    require arg2 + allowed[address(msg.sender)][address(arg1)] >= allowed[address(msg.sender)][address(arg1)]
    require arg2 + allowed[address(msg.sender)][address(arg1)] >= arg2
    allowed[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowed[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balances[address(msg.sender)] >= arg2
    require arg2 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg2
    require arg2 + balances[arg1] >= balances[arg1]
    require arg2 + balances[arg1] >= arg2
    balances[address(arg1)] = arg2 + balances[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require balances[address(arg1)] >= arg3
    require arg3 <= allowed[address(arg1)][address(msg.sender)]
    require arg3 <= balances[address(arg1)]
    balances[address(arg1)] -= arg3
    require arg3 + balances[arg2] >= balances[arg2]
    require arg3 + balances[arg2] >= arg3
    balances[address(arg2)] = arg3 + balances[arg2]
    require arg3 <= allowed[address(arg1)][address(msg.sender)]
    allowed[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function swapTokens() payable {
    require exchangeEnabled
    require tokenPrice
    require balances[stor1] >= msg.value * 10^decimals / tokenPrice
    require (msg.value * 10^decimals / tokenPrice) + balances[address(msg.sender)] >= balances[address(msg.sender)]
    require (msg.value * 10^decimals / tokenPrice) + balances[address(msg.sender)] >= msg.value * 10^decimals / tokenPrice
    balances[address(msg.sender)] += msg.value * 10^decimals / tokenPrice
    require msg.value * 10^decimals / tokenPrice <= balances[stor1]
    balances[stor1] -= msg.value * 10^decimals / tokenPrice
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Transfer((msg.value * 10^decimals / tokenPrice), owner, msg.sender);
    emit TransferSold((msg.value * 10^decimals / tokenPrice), msg.sender);
}



}
