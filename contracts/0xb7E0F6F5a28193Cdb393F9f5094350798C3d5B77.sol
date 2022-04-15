contract main {


// =======================  Init code  ======================


uint256 stor0;
array of uint256 stor1;
array of uint256 stor2;
array of uint256 stor3;
uint8 stor4;
mapping of uint256 stor5;
address stor7;
uint256 stor9;

function _fallback() payable {
    bool(stor1.length) = 0
    stor1.length.field_1 = 15
    stor1.length.field_8 = 'Cryptoken 0.1.1' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor2.length) = 0
    stor2.length.field_1 = 0
    stor2.length.field_8 = mem[192 len 31]
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor3.length) = 0
    stor3.length.field_1 = 0
    stor3.length.field_8 = mem[224 len 31]
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor4 = 0
    stor9 = 1600000000 * 10^18
    require not msg.value
    bool(stor2.length) = 0
    stor2.length.field_1 = 12
    stor2.length.field_8 = 'FARAD Escrow' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor3.length) = 0
    stor3.length.field_1 = 3
    stor3.length.field_8 = 'FRE' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor4 = 18
    stor7 = msg.sender
    stor0 = stor9
    stor5[address(msg.sender)] = stor9
    return code.data[613 len 3121]
}



// =====================  Runtime code  =====================


uint256 totalSupply;
array of uint256 standard;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
mapping of uint256 balances;
mapping of uint256 allowed;
address owner;
address pendingOwner;
uint256 SUPPLY;

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

function standard() {
    return standard[0 len standard.length]
}

function allowed(address arg1, address arg2) {
    return allowed[arg1][arg2]
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function SUPPLY() {
    return SUPPLY
}

function allowance(address arg1, address arg2) {
    require arg2
    require arg1
    require arg1 != arg2
    require arg2 != this.address
    return allowed[address(arg1)][address(arg2)]
}

function pendingOwner() {
    return pendingOwner
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    pendingOwner = arg1
}

function claimOwnership() {
    require pendingOwner == msg.sender
    owner = pendingOwner
    pendingOwner = 0
}

function approve(address arg1, uint256 arg2) {
    require arg1
    require arg1 != this.address
    require not allowed[address(msg.sender)][address(arg1)]
    allowed[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1 != this.address
    require arg2 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg2
    require arg2 + balances[arg1] >= balances[arg1]
    balances[address(arg1)] = arg2 + balances[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg1
    require arg1 != arg2
    require arg2 != this.address
    require arg3 <= allowed[address(arg1)][address(arg2)]
    allowed[address(arg1)][address(arg2)] -= arg3
    require arg3 <= balances[address(arg1)]
    balances[address(arg1)] -= arg3
    require arg3 + balances[arg2] >= balances[arg2]
    balances[address(arg2)] = arg3 + balances[arg2]
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
