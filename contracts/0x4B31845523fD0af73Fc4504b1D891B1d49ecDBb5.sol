contract main {


// =======================  Init code  ======================


array of uint256 stor0;
address stor1;
array of uint256 stor2;

function _fallback() payable {
    bool(stor0.length) = 0
    stor0.length.field_1 = 5
    stor0.length.field_8 = '0.0.2' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor2.length) = 0
    stor2.length.field_1 = 5
    stor2.length.field_8 = '0.0.2' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    stor1 = msg.sender
    emit TokenCreated(msg.sender);
    return code.data[513 len 6593]
}



// =====================  Runtime code  =====================


const tranferFrom(address arg1, address arg2, uint256 arg3) = 0


address owner;
array of uint256 version;
uint256 totalSupply;
uint256 decimals;
mapping of uint256 balances;
mapping of uint256 allowance;
array of uint256 name;
uint256 symbol;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
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

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function setSymbol(bytes32 arg1) {
    require msg.sender == owner
    symbol = arg1
}

function setDecimals(uint256 arg1) {
    require msg.sender == owner
    decimals = arg1
}

function setName(string arg1) {
    require msg.sender == owner
    name[] = Array(len=arg1.length, data=arg1[all])
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
    emit OwnershipTransfer(owner, arg1);
}

function mint(address arg1, uint256 arg2) {
    totalSupply += arg2
    balances[address(arg1)] += arg2
    emit TokenMinted(arg2, arg1);
}

function unapprove(address arg1) {
    allowance[address(msg.sender)][address(arg1)] = 0
    emit Unapproved(msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if balances[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    balances[address(msg.sender)] -= arg2
    balances[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function approve(address arg1, uint256 arg2) {
    if allowance[address(msg.sender)][address(arg1)] + arg2 <= allowance[address(msg.sender)][address(arg1)]:
        return 0
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approved(arg2, msg.sender, arg1);
    return 1
}

function ownerTransfer(address arg1, address arg2, uint256 arg3) {
    if balances[address(arg1)] < arg3:
        return 0
    if owner != msg.sender:
        return 0
    if arg3 <= 0:
        return 0
    balances[address(arg1)] -= arg3
    balances[address(arg2)] += arg3
    emit OwnerTransfer(arg3, msg.sender, arg1, arg2);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balances[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    balances[address(arg1)] -= arg3
    balances[address(arg2)] += arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function ownerTransferFrom(address arg1, address arg2, uint256 arg3) {
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if owner != msg.sender:
        return 0
    if arg3 <= 0:
        return 0
    balances[address(msg.sender)] -= arg3
    balances[address(arg2)] += arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit 0x2845149d: arg3, msg.sender, arg1, arg2
    return 1
}



}
