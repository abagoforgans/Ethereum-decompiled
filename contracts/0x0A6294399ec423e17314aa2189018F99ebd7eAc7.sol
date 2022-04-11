contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
array of uint256 stor2;
array of uint256 stor3;
uint256 stor4;

function _fallback() payable {
    mem[128] = 'Token 0.1'
    bool(stor1.length) = 0
    stor1.length.field_1 = 9
    stor1.length.field_8 = 'Token 0.1' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    mem[160 len -2113] = code.data[2502 len -2113]
    stor0 = msg.sender
    stor4 = mem[160]
    stor2[] = Array(len=mem[mem[192] + 160], data=mem[mem[192] + 192 len mem[mem[192] + 160]])
    stor3[] = Array(len=mem[mem[224] + 160], data=mem[mem[224] + 192 len mem[mem[224] + 160]])
    return code.data[389 len 2113]
}



// =====================  Runtime code  =====================


address owner;
array of uint256 standard;
array of uint256 name;
array of uint256 symbol;
uint256 totalSupply;
mapping of uint256 balance;

function name() {
    return name[0 len name.length]
}

function getBalance() {
    return balance[address(msg.sender)]
}

function totalSupply() {
    return totalSupply
}

function balances(address arg1) {
    return balance[arg1]
}

function standard() {
    return standard[0 len standard.length]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function _fallback() {
    revert
}

function changeOwner(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function burn(address arg1, uint256 arg2) {
    require owner == msg.sender
    if balance[address(arg1)] - arg2 <= balance[address(arg1)]:
        balance[address(arg1)] = 0
    else:
        balance[address(arg1)] -= arg2
}

function mintToken(address arg1, uint256 arg2) {
    require owner == msg.sender
    require totalSupply + arg2 < totalSupply
    balance[address(arg1)] += arg2
    totalSupply += arg2
    emit Transfer(0, address(arg1), arg2);
}

function transfer(address arg1, uint256 arg2) {
    require not arg1
    require balance[address(msg.sender)] >= arg2
    require balance[address(arg1)] + arg2 >= balance[address(arg1)]
    balance[address(msg.sender)] -= arg2
    balance[arg1] += arg2
    emit Transfer(msg.sender, address(arg1), arg2);
}



}
