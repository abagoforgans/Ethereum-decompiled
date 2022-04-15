contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
array of uint256 stor2;
address stor3;
uint256 stor4;
uint256 stor5;
bool stor6; offset 256
uint8 stor6;
uint8 stor6; offset 8
mapping of uint256 stor7;

function _fallback() payable {
    bool(stor1.length) = 0
    stor1.length.field_1 = 11
    stor1.length.field_8 = 'Token Seven' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[192] = 'SEVEN'
    bool(stor2.length) = 0
    stor2.length.field_1 = 5
    stor2.length.field_8 = 'SEVEN' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor3 = 0x45061dec15311c879606105bda764e7e7a7ffd46
    stor4 = 50000
    stor5 = 50000
    uint8(stor6.field_0) = 2
    uint8(stor6.field_8) = 1
    stor6.field_256 % 1 = 0
    require not msg.value
    mem[224 len -2242] = code.data[2877 len -2242]
    stor0 = msg.sender
    stor5 = mem[224]
    stor7[address(msg.sender)] = mem[224]
    stor1[].field_0 = Array(len=mem[mem[256] + 224], data=mem[mem[256] + 256 len mem[mem[256] + 224]])
    stor2[].field_0 = Array(len=mem[mem[288] + 224], data=mem[mem[288] + 256 len mem[mem[288] + 224]])
    uint8(stor6.field_0) = mem[351 len 1]
    if mem[364 len 20]:
        stor0 = mem[364 len 20]
    return code.data[635 len 2242]
}



// =====================  Runtime code  =====================


address owner;
array of uint256 name;
array of uint256 symbol;
address centralMinterAddress;
uint256 initialSupply;
uint256 totalSupply;
uint8 decimals;
uint8 stor6; offset 8
mapping of uint256 balanceOf;
mapping of uint8 stor8;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function initialSupply() {
    return initialSupply
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function frozenAccount(address arg1) {
    return bool(stor8[arg1])
}

function centralMinter() {
    return centralMinterAddress
}

function purchasingAllowed() {
    return bool(stor6)
}

function _fallback() payable {
    revert
}

function enablePurchasing() {
    require owner == msg.sender
    stor6 = 1
}

function disablePurchasing() {
    require owner == msg.sender
    stor6 = 0
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function freezeAccount(address arg1, bool arg2) {
    require owner == msg.sender
    stor8[address(arg1)] = uint8(arg2)
    emit FrozenFunds(address(arg1), arg2);
}

function mintToken(address arg1, uint256 arg2) {
    require owner == msg.sender
    balanceOf[address(arg1)] += arg2
    totalSupply += arg2
    emit Transfer(arg2, 0, owner);
    emit Transfer(arg2, owner, arg1);
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size >= 68
    if arg2 > 0:
        require balanceOf[address(msg.sender)] >= arg2
        require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
        balanceOf[address(msg.sender)] -= arg2
        balanceOf[arg1] += arg2
        emit Transfer(arg2, msg.sender, arg1);
        return 0
    else:
        return 0
}



}
