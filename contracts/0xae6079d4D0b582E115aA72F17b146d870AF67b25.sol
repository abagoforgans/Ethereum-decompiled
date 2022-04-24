contract main {


// =======================  Init code  ======================


address stor0;
mapping of uint8 stor1;
array of uint256 stor2;
array of uint256 stor3;
uint8 stor4;
uint256 stor5;
uint256 stor6;
uint8 stor7; offset 16
uint16 stor7;
mapping of uint8 stor8;
mapping of uint256 stor9;
mapping of uint8 stor12;
uint256 stor13;
uint256 stor14;

function _fallback() payable {
    uint8(stor7.field_16) = 0
    stor13 = 1
    stor14 = 10^15
    require not msg.value
    stor0 = msg.sender
    stor1[address(msg.sender)] = 1
    stor9[address(msg.sender)] = 26680000 * 10^18
    stor5 = 26680000 * 10^18
    bool(stor2.length) = 0
    stor2.length.field_1 = 10
    stor2.length.field_8 = 'Sivalicoin' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor3.length) = 0
    stor3.length.field_1 = 3
    stor3.length.field_8 = 'SVC' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor4 = 18
    stor6 = 10^15
    uint16(stor7.field_0) = 0
    stor8[address(msg.sender)] = 1
    stor12[address(msg.sender)] = 1
    return code.data[555 len 5093]
}



// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint256 stor6;
uint8 stor7;
uint8 stor7; offset 8
uint8 stor7; offset 16
uint256 stor7; offset 16
uint256 stor7; offset 8
mapping of uint8 stor8;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor11;
mapping of uint8 stor12;
uint256 sellPrice;
uint256 buyPrice;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function usersCanUnfreeze() {
    return bool(uint8(stor7.field_8))
}

function admins(address arg1) {
    return bool(stor1[arg1])
}

function sellPrice() {
    return sellPrice
}

function canTrade(address arg1) {
    return bool(stor12[arg1])
}

function ico() {
    return bool(uint8(stor7.field_16))
}

function usersCanTrade() {
    return bool(uint8(stor7.field_0))
}

function admin(address arg1) {
    return bool(stor8[arg1])
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

function frozen(address arg1) {
    return bool(stor11[arg1])
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function _fallback() payable {
  stop
}

function setMinBalance(uint256 arg1) {
    require owner == msg.sender
    stor6 = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function usersCanUnFreeze(bool arg1) {
    Mask(248, 0, stor7.field_8) = Mask(248, 0, arg1)
}

function setUsersCanTrade(bool arg1) {
    require owner == msg.sender
    uint8(stor7.field_0) = uint8(arg1)
}

function setICO(bool arg1) {
    require owner == msg.sender
    Mask(240, 0, stor7.field_16) = Mask(240, 0, arg1)
}

function setAdmin(address arg1, bool arg2) {
    require owner == msg.sender
    stor8[address(arg1)] = uint8(arg2)
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function makeAdmin(address arg1, bool arg2) {
    require owner == msg.sender
    stor1[address(arg1)] = uint8(arg2)
}

function setCanTrade(address arg1, bool arg2) {
    require owner == msg.sender
    stor12[address(arg1)] = uint8(arg2)
}

function setPrices(uint256 arg1, uint256 arg2) {
    require owner == msg.sender
    sellPrice = arg1
    buyPrice = arg2
}

function withdraw(address arg1, uint256 arg2) {
    require owner == msg.sender
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Withdrawn(arg2, arg1);
}

function increaseTotalSupply(address arg1, uint256 arg2) {
    require owner == msg.sender
    balanceOf[address(arg1)] += arg2
    totalSupply += arg2
    emit Transfer(arg2, 0, owner);
    emit Transfer(arg2, owner, arg1);
}

function burn(uint256 arg1) {
    require owner == msg.sender
    require balanceOf[address(msg.sender)] >= arg1
    balanceOf[address(msg.sender)] -= arg1
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function freeze(address arg1, bool arg2) {
    if arg2:
        require stor8[address(msg.sender)]
    else:
        if not uint8(stor7.field_8):
            require stor8[address(msg.sender)]
    stor11[address(arg1)] = uint8(arg2)
    emit Frozen(arg2, arg1);
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

function buy() payable {
    if not uint8(stor7.field_0):
        require stor12[address(msg.sender)]
    require balanceOf[address(this.address)] >= buyPrice * msg.value
    balanceOf[address(msg.sender)] += buyPrice * msg.value
    balanceOf[this.address] += -1 * buyPrice * msg.value
    emit Transfer((buyPrice * msg.value), this.address, msg.sender);
    return (buyPrice * msg.value)
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    require owner == msg.sender
    allowance[address(msg.sender)][address(arg1)] = arg2
    require ext_code.size(arg1)
    call arg1.receiveApproval(address rg1, uint256 rg2, address rg3, bytes rg4) with:
         gas gas_remaining - 710 wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if not stor8[address(msg.sender)]:
        require not uint8(stor7.field_16)
    require not stor11[address(msg.sender)]
    require arg1
    require not stor11[address(msg.sender)]
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function transferAndFreeze(address arg1, uint256 arg2) {
    require bool(stor1[address(msg.sender)]) == 1
    require arg1
    require not stor11[address(msg.sender)]
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    require stor8[address(msg.sender)]
    stor11[address(arg1)] = 1
    emit Frozen(1, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not stor11[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg2
    require not stor11[address(arg1)]
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[arg2] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function sell(uint256 arg1) {
    require not stor11[address(msg.sender)]
    if not uint8(stor7.field_0):
        if not stor12[address(msg.sender)]:
            require sellPrice
            require stor6 > arg1 / sellPrice
    require balanceOf[address(msg.sender)] >= arg1
    balanceOf[address(this.address)] += arg1
    balanceOf[msg.sender] -= arg1
    require sellPrice
    call msg.sender with:
       value arg1 / sellPrice wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Transfer(arg1, msg.sender, this.address);
    return (arg1 / sellPrice)
}



}
