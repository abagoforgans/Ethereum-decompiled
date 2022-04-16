contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;
array of uint256 stor1;
array of uint256 stor2;
uint8 stor3;

function _fallback() {
    mem[96 len -1454] = code.data[1856 len -1454]
    mem[64] = -1358
    stor0[address(msg.sender)] = mem[96]
    stor1[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor2[] = Array(len=mem[mem[160] + 96], data=mem[mem[160] + 128 len mem[mem[160] + 96]])
    stor3 = mem[223 len 1]
    return code.data[402 len 1454]
}



// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
array of struct name;
array of struct symbol;
uint8 decimals;

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
