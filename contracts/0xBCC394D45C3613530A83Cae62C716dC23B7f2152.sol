contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
array of uint256 stor2;
uint8 stor3;
uint256 stor4;
uint8 stor5; offset 160
address stor5;
mapping of uint256 stor6;
mapping of uint32 stor8;
mapping of address stor9;

function _fallback() payable {
    mem[96 len -3974] = code.data[4464 len -3974]
    mem[64] = -3878
    stor0 = msg.sender
    stor6[address(msg.sender)] = mem[96]
    stor4 = mem[96]
    stor1[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor2[] = Array(len=mem[mem[192] + 96], data=mem[mem[192] + 128 len mem[mem[192] + 96]])
    stor3 = mem[191 len 1]
    address(stor5.field_0) = msg.sender
    stor8[address(msg.sender)] = mem[252 len 4]
    stor9[mem[224] << 224] = address(stor5.field_0)
    uint8(stor5.field_160) = 1
    return code.data[490 len 3974]
}



// =====================  Runtime code  =====================


address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint8 stor5; offset 160
uint128 stor5; offset 160
address bankAddress;
mapping of uint256 balanceOf;
mapping of uint8 stor7;
mapping of uint32 sub_9bf8e5f3;
mapping of address sub_3950dc3d;
mapping of address sub_7fd2d5e4;
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

function sub_3950dc3d(?) {
    return sub_3950dc3d[arg1]
}

function sellPrice() {
    return sellPrice
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function bank() {
    return bankAddress
}

function sub_7fd2d5e4(?) {
    return sub_7fd2d5e4[arg1]
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

function sub_9bf8e5f3(?) {
    return sub_9bf8e5f3[arg1]
}

function frozenAccount(address arg1) {
    return bool(stor7[arg1])
}

function sub_fbfb4882(?) {
    return bool(uint8(stor5.field_160))
}

function kill() {
    require owner == msg.sender
    selfdestruct(owner)
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function setPrices(uint256 arg1, uint256 arg2) {
    require owner == msg.sender
    sellPrice = arg1
    buyPrice = arg2
}

function freezeAccount(address arg1, bool arg2) {
    require owner == msg.sender
    stor7[address(arg1)] = uint8(arg2)
    emit FrozenFunds(arg2, arg1);
}

function sub_a1725d75(?) {
    require owner == msg.sender
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function mint(uint256 arg1) {
    require owner == msg.sender
    balanceOf[address(stor5.field_0)] += arg1
    totalSupply += arg1
    emit Transfer(arg1, 0, bankAddress);
    return 1
}

function burn(uint256 arg1) {
    require balanceOf[address(msg.sender)] >= arg1
    balanceOf[address(msg.sender)] -= arg1
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function sub_96534224(?) {
    require owner == msg.sender
    name[] = Array(len=arg1.length, data=arg1[all])
    symbol[] = Array(len=arg3.length, data=arg3[all])
    decimals = arg2
    Mask(96, 0, stor5.field_160) = Mask(96, 0, arg4)
}

function register(address arg1, uint32 arg2) {
    require owner == msg.sender
    require not sub_9bf8e5f3[address(arg1)]
    require arg2 > 0
    require arg1 > 0
    sub_9bf8e5f3[address(arg1)] = arg2
    sub_7fd2d5e4[address(arg1)] = sub_3950dc3d[arg2 << 224]
    sub_3950dc3d[arg2 << 224] = arg1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    if uint8(stor5.field_160):
        require sub_9bf8e5f3[address(arg1)] > 0
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    require not stor7[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function transferTo(address arg1, uint256 arg2) {
    require owner == msg.sender
    require arg1
    if uint8(stor5.field_160):
        require sub_9bf8e5f3[address(arg1)] > 0
    require balanceOf[address(stor5.field_0)] >= arg2
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    require not stor7[address(stor5.field_0)]
    balanceOf[address(stor5.field_0)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, bankAddress, arg1);
}

function transferFrom(address arg1, uint256 arg2) {
    require owner == msg.sender
    require bankAddress
    if uint8(stor5.field_160):
        require sub_9bf8e5f3[address(stor5.field_0)] > 0
    require balanceOf[address(arg1)] >= arg2
    require balanceOf[address(stor5.field_0)] + arg2 > balanceOf[address(stor5.field_0)]
    require not stor7[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    balanceOf[address(stor5.field_0)] += arg2
    emit Transfer(arg2, arg1, bankAddress);
}

function _fallback() payable {
    if buyPrice > 0:
        if owner != msg.sender:
            require buyPrice
            if msg.value / buyPrice > 0:
                if balanceOf[address(stor5.field_0)] >= msg.value / buyPrice:
                    if balanceOf[address(msg.sender)] + (msg.value / buyPrice) > balanceOf[address(msg.sender)]:
                        balanceOf[address(msg.sender)] += msg.value / buyPrice
                        balanceOf[address(stor5.field_0)] -= msg.value / buyPrice
                        emit Transfer((msg.value / buyPrice), bankAddress, msg.sender);
}

function buy() payable {
    require buyPrice > 0
    require buyPrice
    require msg.sender
    if uint8(stor5.field_160):
        require sub_9bf8e5f3[address(msg.sender)] > 0
    require balanceOf[address(stor5.field_0)] >= msg.value / buyPrice
    require balanceOf[address(msg.sender)] + (msg.value / buyPrice) > balanceOf[address(msg.sender)]
    require not stor7[address(stor5.field_0)]
    balanceOf[address(stor5.field_0)] -= msg.value / buyPrice
    balanceOf[msg.sender] += msg.value / buyPrice
    emit Transfer((msg.value / buyPrice), bankAddress, msg.sender);
    return (msg.value / buyPrice)
}

function sell(uint256 arg1) {
    require sellPrice > 0
    require bankAddress
    if uint8(stor5.field_160):
        require sub_9bf8e5f3[address(stor5.field_0)] > 0
    require balanceOf[address(msg.sender)] >= arg1
    require balanceOf[address(stor5.field_0)] + arg1 > balanceOf[address(stor5.field_0)]
    require not stor7[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    balanceOf[address(stor5.field_0)] += arg1
    emit Transfer(arg1, msg.sender, bankAddress);
    call msg.sender with:
       value arg1 * sellPrice wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    return (arg1 * sellPrice)
}



}
