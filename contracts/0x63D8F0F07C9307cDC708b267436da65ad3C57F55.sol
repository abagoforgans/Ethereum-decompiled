contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
array of uint256 stor2;
uint8 stor3;
uint256 stor4;
mapping of uint256 stor5;

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
    mem[160 len -1855] = code.data[2338 len -1855]
    stor5[address(msg.sender)] = mem[160]
    stor1[] = Array(len=mem[mem[192] + 160], data=mem[mem[192] + 192 len mem[mem[192] + 160]])
    stor2[] = Array(len=mem[mem[256] + 160], data=mem[mem[256] + 192 len mem[mem[256] + 160]])
    stor3 = mem[255 len 1]
    stor4 = mem[160]
    return code.data[483 len 1855]
}



// =====================  Runtime code  =====================


array of uint256 standard;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 total_supply;
mapping of uint256 balance_of;

function name() {
    return name[0 len name.length]
}

function decimals() {
    return decimals
}

function total_supply() {
    return total_supply
}

function standard() {
    return standard[0 len standard.length]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function balance_of(address arg1) {
    return balance_of[arg1]
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    require balance_of[address(msg.sender)] >= arg2
    require balance_of[address(arg1)] + arg2 >= balance_of[address(arg1)]
    balance_of[address(msg.sender)] -= arg2
    balance_of[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}



}
