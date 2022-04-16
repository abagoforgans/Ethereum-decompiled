contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor3;

function _fallback() {
    mem[96 len -1458] = code.data[1987 len -1458]
    stor3[address(msg.sender)] = 10^6
    bool(stor0.length) = 0
    stor0.length.field_1 = 10
    stor0.length.field_8 = 'Pruebacoin' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor1.length) = 0
    stor1.length.field_1 = 3
    stor1.length.field_8 = 'PBC' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor2 = 5
    return code.data[529 len 1458]
}



// =====================  Runtime code  =====================


array of struct name;
array of struct symbol;
uint8 decimals;
mapping of uint256 balanceOf;

function name() {
    return name[0 len name.length].field_0
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function symbol() {
    return symbol[0 len symbol.length].field_0
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function _fallback() payable {
    if name() == uint32(call.func_hash):
        require not msg.value
        mem[128] = uint256(name.field_0)
        idx = 128
        s = 0
        while name.length + 96 > idx:
            mem[idx + 32] = name[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=name.length, data=mem[128 len name.length])
    if unknown_0x313ce567(?????) == uint32(call.func_hash):
        require not msg.value
        return decimals
    if unknown_0x70a08231(?????) == uint32(call.func_hash):
        require not msg.value
        return balanceOf[arg1]
    if unknown_0x95d89b41(?????) == uint32(call.func_hash):
        require not msg.value
        mem[128] = uint256(symbol.field_0)
        idx = 128
        s = 0
        while symbol.length + 96 > idx:
            mem[idx + 32] = symbol[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=symbol.length, data=mem[128 len symbol.length])
    require unknown_0xa9059cbb(?????) == uint32(call.func_hash)
    require not msg.value
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}



}
