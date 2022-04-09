contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint256 stor4;
address stor5;
mapping of uint256 stor6;

function _fallback() payable {
    mem[128] = 'Token 0.1'
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'Token 0.1' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    mem[160 len -4635] = code.data[5135 len -4635]
    stor5 = msg.sender
    stor6[tx.origin] = mem[192]
    stor4 = mem[192]
    stor1[] = Array(len=mem[mem[160] + 160], data=mem[mem[160] + 192 len mem[mem[160] + 160]])
    return code.data[500 len 4635]
}



// =====================  Runtime code  =====================


const getName = ''


array of uint256 standard;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
address owner;
mapping of uint256 queryBalance;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function queryBalance(address arg1) {
    return queryBalance[address(arg1)]
}

function standard() {
    return standard[0 len standard.length]
}

function balanceOf(address arg1) {
    return queryBalance[arg1]
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

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function mint(uint256 arg1) {
    require msg.sender == owner
    totalSupply += arg1
    queryBalance[stor5] += arg1
    emit Transfer(arg1, msg.sender, msg.sender);
}

function send(address arg1, uint256 arg2) {
    if queryBalance[address(msg.sender)] >= arg2:
        queryBalance[address(msg.sender)] -= arg2
        queryBalance[address(arg1)] += arg2
        emit Sent(msg.sender, address(arg1), arg2);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require msg.sender == owner
    require queryBalance[address(arg2)] + arg3 >= queryBalance[address(arg2)]
    queryBalance[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function sub_1eda2bf5(?) {
    require queryBalance[address(arg1)] >= arg3
    require queryBalance[address(arg2)] + arg3 >= queryBalance[address(arg2)]
    queryBalance[address(arg1)] -= arg3
    queryBalance[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require queryBalance[address(msg.sender)] >= arg2
    require queryBalance[address(arg1)] + arg2 >= queryBalance[address(arg1)]
    queryBalance[address(msg.sender)] -= arg2
    queryBalance[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}



}
