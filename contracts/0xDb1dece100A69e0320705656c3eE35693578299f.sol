contract main {


// =======================  Init code  ======================


array of uint256 stor0;
uint256 stor1;
array of uint256 stor2;
address stor3;
uint256 stor4;
mapping of uint256 stor5;
array of uint256 stor7;
uint256 stor8;
address stor9;
address stor10;
address stor11;

function _fallback() payable {
    stor8 = 0
    stor9 = 0
    stor10 = 0
    require not msg.value
    mem[96 len -3103] = code.data[4021 len -3103]
    mem[64] = -3007
    stor3 = msg.sender
    require mem[96] > 10
    require uint255(mem[128]) == mem[128]
    require 10000 > 2 * mem[128]
    if mem[128] <= 0:
        require not mem[128]
    else:
        if not mem[268 len 20]:
            require not mem[128]
    require mem[332 len 20]
    stor11 = mem[332 len 20]
    require ext_code.size(mem[332 len 20])
    call mem[332 len 20].0x8da5cb5b with:
         gas gas_remaining wei
    require ext_call.success
    require msg.sender == ext_call.return_data[12 len 20]
    stor1 = 18
    stor0[] = Array(len=mem[mem[160] + 96], data=mem[mem[160] + 128 len mem[mem[160] + 96]])
    stor2[] = Array(len=mem[mem[192] + 96], data=mem[mem[192] + 128 len mem[mem[192] + 96]])
    stor7[] = Array(len=mem[mem[224] + 96], data=mem[mem[224] + 128 len mem[mem[224] + 96]])
    require 10^18 * mem[96] / 10^18 == mem[96]
    stor4 = 10^18 * mem[96]
    stor9 = mem[268 len 20]
    stor10 = mem[300 len 20]
    stor3 = msg.sender
    if mem[128] > 0:
        stor8 = mem[128]
    stor5[stor3] = stor4
    return code.data[918 len 3103]
}



// =====================  Runtime code  =====================


array of uint256 symbol;
uint256 decimals;
array of uint256 name;
address owner;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of uint256 localityCode;
uint256 taxRateNumerator;
address govtAccount;
address pmtAccount;
address universalTokenAddress;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function localityCode() {
    return localityCode[0 len localityCode.length]
}

function decimals() {
    return decimals
}

function taxRateNumerator() {
    return taxRateNumerator
}

function govtAccount() {
    return govtAccount
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function pmtAccount() {
    return pmtAccount
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function universalToken() {
    return universalTokenAddress
}

function _fallback() payable {
    revert
}

function modifyPMTAccount(address arg1) {
    if this.address != msg.sender:
        require owner == msg.sender
    pmtAccount = arg1
}

function setOwner(address arg1) {
    if this.address != msg.sender:
        require owner == msg.sender
    owner = arg1
    emit LogSetOwner(arg1);
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function modifyTaxRate(uint256 arg1) {
    if this.address != msg.sender:
        require owner == msg.sender
    require 10000 > 2 * arg1
    taxRateNumerator = arg1
}

function modifyLocality(string arg1) {
    if this.address != msg.sender:
        require owner == msg.sender
    localityCode[] = Array(len=arg1.length, data=arg1[all])
}

function mint(uint256 arg1) {
    if this.address != msg.sender:
        require owner == msg.sender
    require balanceOf[address(msg.sender)] + arg1 >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += arg1
    require totalSupply + arg1 >= totalSupply
    totalSupply += arg1
}

function modifyGovtAccount(address arg1) {
    if this.address != msg.sender:
        require owner == msg.sender
    if taxRateNumerator <= 0:
        require not taxRateNumerator
        require not arg1
    else:
        if not arg1:
            require not taxRateNumerator
            require not arg1
    govtAccount = arg1
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(msg.sender)] - arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[arg1] + arg2 >= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require balanceOf[address(arg1)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] - arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require balanceOf[address(arg1)] - arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[arg2] + arg3 >= balanceOf[arg2]
    balanceOf[address(arg2)] = balanceOf[arg2] + arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
