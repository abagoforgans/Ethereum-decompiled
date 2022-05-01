contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
array of uint256 stor2;
uint8 stor3;
uint256 stor4;
mapping of uint256 stor5;
uint256 stor7;
uint256 stor8;
uint8 stor9;
uint256 stor9; offset 8

function _fallback() payable {
    stor3 = 8
    stor7 = 20000
    stor8 = 20000
    uint8(stor9.field_0) = 0
    Mask(248, 0, stor9.field_8) = 0
    require not msg.value
    stor0 = msg.sender
    stor4 = 10^9 * 10^stor3
    stor5[address(msg.sender)] = stor4
    bool(stor1.length) = 0
    stor1.length.field_1 = 11
    stor1.length.field_8 = 'lctst4 coin' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor2.length) = 0
    stor2.length.field_1 = 4
    stor2.length.field_8 = 'lct4' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    return code.data[637 len 7702]
}



// =====================  Runtime code  =====================


address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 sellPrice;
uint256 buyPrice;
uint8 stor9;
uint8 stor9; offset 8
uint256 stor9; offset 8
mapping of uint8 stor10;
array of uint256 mainnetAccountDict;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function mainnetLocked() {
    return bool(uint8(stor9.field_8))
}

function sellPrice() {
    return sellPrice
}

function enableSell() {
    return bool(uint8(stor9.field_0))
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function buyPrice() {
    return buyPrice
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function frozenAccount(address arg1) {
    return bool(stor10[arg1])
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function mainnetAccountDict(address arg1) {
    return mainnetAccountDict[arg1][0 len mainnetAccountDict[arg1].length]
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function setEnableSell(bool arg1) {
    require msg.sender == owner
    uint8(stor9.field_0) = uint8(arg1)
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function setPrices(uint256 arg1, uint256 arg2) {
    require msg.sender == owner
    sellPrice = arg1
    buyPrice = arg2
}

function setMainnetLocked(bool arg1) {
    require msg.sender == owner
    Mask(248, 0, stor9.field_8) = Mask(248, 0, arg1)
}

function freezeAccount(address arg1, bool arg2) {
    require msg.sender == owner
    stor10[address(arg1)] = uint8(arg2)
    emit FrozenFunds(address(arg1), arg2);
}

function setMainnetAccount(string arg1) {
    require not uint8(stor9.field_8)
    mainnetAccountDict[address(msg.sender)][] = Array(len=arg1.length, data=arg1[all])
}

function burn(uint256 arg1) {
    require balanceOf[address(msg.sender)] >= arg1
    balanceOf[address(msg.sender)] -= arg1
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function incPreSell(address arg1, uint256 arg2) {
    require msg.sender == owner
    balanceOf[address(arg1)] += arg2
    totalSupply += arg2
    emit Transfer(arg2, 0, this.address);
    emit Transfer(arg2, this.address, arg1);
}

function burnFrom(address arg1, uint256 arg2) {
    require balanceOf[address(arg1)] >= arg2
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    balanceOf[address(arg1)] -= arg2
    allowance[address(arg1)][address(msg.sender)] -= arg2
    totalSupply -= arg2
    emit Burn(arg2, arg1);
    return 1
}

function moveFundToOwner(uint256 arg1) {
    require msg.sender == owner
    if arg1:
        call owner with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
    else:
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
    require ext_call.success
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    require ext_code.size(arg1)
    call arg1.receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining - 710 wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor9.field_8)
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    require not stor10[address(msg.sender)]
    require not stor10[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function buy() payable {
    require buyPrice
    require not uint8(stor9.field_8)
    require msg.sender
    require balanceOf[stor0] >= msg.value / buyPrice
    require balanceOf[address(msg.sender)] + (msg.value / buyPrice) > balanceOf[address(msg.sender)]
    require not stor10[stor0]
    require not stor10[address(msg.sender)]
    balanceOf[stor0] -= msg.value / buyPrice
    balanceOf[address(msg.sender)] += msg.value / buyPrice
    emit Transfer((msg.value / buyPrice), owner, msg.sender);
}

function _fallback() payable {
    require buyPrice
    require not uint8(stor9.field_8)
    require msg.sender
    require balanceOf[stor0] >= msg.value / buyPrice
    require balanceOf[address(msg.sender)] + (msg.value / buyPrice) > balanceOf[address(msg.sender)]
    require not stor10[stor0]
    require not stor10[address(msg.sender)]
    balanceOf[stor0] -= msg.value / buyPrice
    balanceOf[address(msg.sender)] += msg.value / buyPrice
    emit Transfer((msg.value / buyPrice), owner, msg.sender);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require not uint8(stor9.field_8)
    require arg2
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    require not stor10[address(arg1)]
    require not stor10[address(arg2)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function sell(uint256 arg1) {
    require uint8(stor9.field_0)
    require eth.balance(this.address) >= arg1 * sellPrice
    require not uint8(stor9.field_8)
    require owner
    require balanceOf[address(msg.sender)] >= arg1
    require balanceOf[stor0] + arg1 > balanceOf[stor0]
    require not stor10[address(msg.sender)]
    require not stor10[stor0]
    balanceOf[address(msg.sender)] -= arg1
    balanceOf[stor0] += arg1
    emit Transfer(arg1, msg.sender, owner);
    call msg.sender with:
       value arg1 * sellPrice wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
