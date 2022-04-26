contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
array of uint256 stor2;
uint8 stor3;
uint256 stor4;
uint256 stor8;
uint8 stor9;
uint256 stor10;
uint8 stor11;

function _fallback() payable {
    bool(stor1.length) = 0
    stor1.length.field_1 = 10
    stor1.length.field_8 = 'BITFINCOIN' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor2.length) = 0
    stor2.length.field_1 = 3
    stor2.length.field_8 = 'BIC' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor3 = 18
    stor4 = 0
    stor8 = 125
    stor9 = 0
    stor10 = 10^14
    stor11 = 0
    require not msg.value
    stor0 = msg.sender
    return code.data[535 len 10160]
}



// =====================  Runtime code  =====================


address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint256 totalSold;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 rate;
uint8 stor9;
uint256 minAcceptEther;
uint8 stor11;
mapping of uint8 stor12;

function name() {
    return name[0 len name.length]
}

function isContractFrozen() {
    return bool(stor9)
}

function totalSupply() {
    return totalSupply
}

function rate() {
    return rate
}

function decimals() {
    return decimals
}

function isOpenForSale() {
    return bool(stor11)
}

function minAcceptEther() {
    return minAcceptEther
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function totalSold() {
    return totalSold
}

function symbol() {
    return symbol[0 len symbol.length]
}

function frozenAccount(address arg1) {
    return bool(stor12[arg1])
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function setRate(uint256 arg1) {
    require msg.sender == owner
    rate = arg1
}

function setOpenForSale(bool arg1) {
    require msg.sender == owner
    stor11 = uint8(arg1)
}

function setMinAcceptEther(uint256 arg1) {
    require msg.sender == owner
    minAcceptEther = arg1
}

function setName(string arg1) {
    require msg.sender == owner
    name[] = Array(len=arg1.length, data=arg1[all])
}

function setSymbol(string arg1) {
    require msg.sender == owner
    symbol[] = Array(len=arg1.length, data=arg1[all])
}

function setContractFrozen(bool arg1) {
    require msg.sender == owner
    stor9 = uint8(arg1)
    emit ContractFrozen(arg1);
}

function freezeAccount(address arg1, bool arg2) {
    require msg.sender == owner
    stor12[address(arg1)] = uint8(arg2)
    emit FrozenFunds(address(arg1), arg2);
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setTotalSupply(uint256 arg1) {
    require msg.sender == owner
    totalSupply = arg1 * 10^decimals
    balanceOf[stor0] = totalSupply
    emit Transfer(totalSupply, 0, this.address);
    emit Transfer(totalSupply, this.address, owner);
}

function burn(uint256 arg1) {
    require balanceOf[address(msg.sender)] >= arg1
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    require owner != arg1
    require balanceOf[address(arg1)] + balanceOf[stor0] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += balanceOf[stor0]
    emit Transfer(balanceOf[stor0], owner, arg1);
    balanceOf[stor0] = 0
    owner = arg1
}

function mintToken(address arg1, uint256 arg2) {
    require msg.sender == owner
    require balanceOf[address(arg1)] + (arg2 * 10^decimals) >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2 * 10^decimals
    require totalSupply + (arg2 * 10^decimals) >= totalSupply
    totalSupply += arg2 * 10^decimals
    emit Transfer((arg2 * 10^decimals), 0, this.address);
    emit Transfer((arg2 * 10^decimals), this.address, arg1);
}

function burnFrom(address arg1, uint256 arg2) {
    require balanceOf[address(arg1)] >= arg2
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg2
    require arg2 <= totalSupply
    totalSupply -= arg2
    emit Burn(arg2, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require not stor12[address(msg.sender)]
    require not stor12[address(arg1)]
    require not stor9
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    require ext_code.size(arg1)
    call arg1.receiveApproval(address rg1, uint256 rg2, address rg3, bytes rg4) with:
         gas gas_remaining - 710 wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg2
    require balanceOf[address(arg1)] >= arg3
    require not stor12[address(arg1)]
    require not stor12[address(arg2)]
    require not stor9
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    return 1
}

function _fallback() payable {
    require stor11
    require not stor9
    require msg.value >= minAcceptEther
    require totalSupply > 0
    if not msg.value:
        require 0 <= totalSupply
        require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        require 0 <= balanceOf[stor0]
        require 0 <= totalSupply
        require totalSold >= totalSold
        call owner with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit Transfer(0, owner, msg.sender);
    else:
        require msg.value
        require msg.value * rate / msg.value == rate
        require msg.value * rate <= totalSupply
        require balanceOf[address(msg.sender)] + (msg.value * rate) >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += msg.value * rate
        require msg.value * rate <= balanceOf[stor0]
        balanceOf[stor0] += -1 * msg.value * rate
        require msg.value * rate <= totalSupply
        totalSupply += -1 * msg.value * rate
        require totalSold + (msg.value * rate) >= totalSold
        totalSold += msg.value * rate
        call owner with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit Transfer((msg.value * rate), owner, msg.sender);
}



}
