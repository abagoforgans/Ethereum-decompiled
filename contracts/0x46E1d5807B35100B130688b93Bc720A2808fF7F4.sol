contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
mapping of uint256 stor5;
address stor7;

function _fallback() payable {
    bool(stor0.length) = 0
    stor0.length.field_1 = 4
    stor0.length.field_8 = 'IBTC' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor1.length) = 0
    stor1.length.field_1 = 4
    stor1.length.field_8 = 'IBTC' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor2 = 18
    stor3 = 21000000 * 10^18
    stor4 = 21000000 * 10^18
    stor7 = 0x26dce88a69a0619b92894eefadbca25b1b53fc6d
    stor5[stor7] = stor3
    return code.data[585 len 6535]
}



// =====================  Runtime code  =====================


array of struct name;
array of struct symbol;
uint256 decimals;
uint256 _totalSupply;
uint256 _tokenLeft;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;

function name() {
    return name[0 len name.length].field_0
}

function totalSupply() {
    return _totalSupply
}

function decimals() {
    return decimals
}

function _totalSupply() {
    return _totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length].field_0
}

function _tokenLeft() {
    return _tokenLeft
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    require msg.sender
}

function tokensale(address arg1) payable {
    require arg1
}

function approve(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 > 0
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
}

function destroyIBTCToken(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg1
    require arg2 > 0
    require _totalSupply >= arg2
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 > 0
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function sendIBTCToken(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg1
    require arg2 > 0
    require _tokenLeft >= arg2
    require arg2 <= balanceOf[stor7]
    balanceOf[stor7] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    require arg2 <= _tokenLeft
    _tokenLeft -= arg2
    emit Transfer(arg2, owner, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require balanceOf[address(arg1)] >= arg3
    require arg3 > 0
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
}

function sendIBTCTokenToMultiAddr(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == owner
    require arg1.length == arg2.length
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require mem[(32 * idx) + 140 len 20]
        require idx < arg2.length
        require idx < arg1.length
        require balanceOf[mem[(32 * idx) + 140 len 20]] + mem[(32 * idx) + (32 * arg1.length) + 160] >= balanceOf[mem[(32 * idx) + 140 len 20]]
        require idx < arg1.length
        balanceOf[mem[(32 * idx) + 140 len 20]] += mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < arg2.length
        require mem[(32 * idx) + (32 * arg1.length) + 160] <= balanceOf[stor7]
        mem[0] = owner
        mem[32] = 5
        balanceOf[stor7] -= mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < arg1.length
        _44 = mem[(32 * idx) + 128]
        require idx < arg2.length
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
        emit Transfer(mem[(32 * arg1.length) + (32 * arg2.length) + 160], owner, address(_44));
        require idx < arg2.length
        require mem[(32 * idx) + (32 * arg1.length) + 160] <= _tokenLeft
        _tokenLeft -= mem[(32 * idx) + (32 * arg1.length) + 160]
        idx = idx + 1
        continue 
}

function getTokenDetail() {
    mem[96] = 0
    mem[128] = 0
    mem[160] = name.length
    mem[192] = uint256(name.field_0)
    idx = 192
    s = 0
    while name.length + 160 > idx:
        mem[idx + 32] = name[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(name.length) + ceil32(symbol.length) + 224
    mem[ceil32(name.length) + 192] = symbol.length
    mem[0] = 1
    mem[ceil32(name.length) + 224] = uint256(symbol.field_0)
    idx = ceil32(name.length) + 224
    s = 0
    while ceil32(name.length) + symbol.length + 192 > idx:
        mem[idx + 32] = symbol[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(name.length) + ceil32(symbol.length) + 288] = _totalSupply
    mem[ceil32(name.length) + ceil32(symbol.length) + 224] = 96
    mem[ceil32(name.length) + ceil32(symbol.length) + 320] = name.length
    if not name.length:
        mem[ceil32(name.length) + ceil32(symbol.length) + 256] = name.length + 128
        mem[name.length + ceil32(name.length) + ceil32(symbol.length) + 352] = symbol.length
        if not symbol.length:
            if not symbol.length % 32:
                return Array(len=name.length, data=mem[ceil32(name.length) + ceil32(symbol.length) + 352 len symbol.length + name.length + 32]), 
                       name.length + 128,
                       _totalSupply
            mem[floor32(symbol.length) + name.length + ceil32(name.length) + ceil32(symbol.length) + 384] = mem[floor32(symbol.length) + name.length + ceil32(name.length) + ceil32(symbol.length) + -symbol.length % 32 + 416 len symbol.length % 32]
            return Array(len=name.length, data=mem[ceil32(name.length) + ceil32(symbol.length) + 352 len floor32(symbol.length) + name.length + 64]), 
                   name.length + 128,
                   _totalSupply
        mem[name.length + ceil32(name.length) + ceil32(symbol.length) + 384] = mem[ceil32(name.length) + 224]
        mem[name.length + ceil32(name.length) + ceil32(symbol.length) + 416 len floor32(symbol.length - 1)] = mem[ceil32(name.length) + 256 len floor32(symbol.length - 1)]
        if not symbol.length % 32:
            return Array(len=name.length, data=mem[ceil32(name.length) + ceil32(symbol.length) + 352 len symbol.length + name.length + 32]), 
                   name.length + 128,
                   _totalSupply
        mem[floor32(symbol.length) + name.length + ceil32(name.length) + ceil32(symbol.length) + 384] = mem[floor32(symbol.length) + name.length + ceil32(name.length) + ceil32(symbol.length) + -symbol.length % 32 + 416 len symbol.length % 32]
        return Array(len=name.length, data=mem[ceil32(name.length) + ceil32(symbol.length) + 352 len name.length + 32], mem[ceil32(name.length) + 224], mem[ceil32(name.length) + ceil32(symbol.length) + name.length + 416 len floor32(symbol.length)]), 
               name.length + 128,
               _totalSupply
    mem[ceil32(name.length) + ceil32(symbol.length) + 352] = mem[192]
    mem[ceil32(name.length) + ceil32(symbol.length) + 384 len floor32(name.length - 1)] = mem[224 len floor32(name.length - 1)]
    mem[ceil32(name.length) + ceil32(symbol.length) + 256] = name.length + 128
    mem[name.length + ceil32(name.length) + ceil32(symbol.length) + 352] = symbol.length
    if symbol.length:
        mem[name.length + ceil32(name.length) + ceil32(symbol.length) + 384] = mem[ceil32(name.length) + 224]
        mem[name.length + ceil32(name.length) + ceil32(symbol.length) + 416 len floor32(symbol.length - 1)] = mem[ceil32(name.length) + 256 len floor32(symbol.length - 1)]
    if not symbol.length % 32:
        return Array(len=name.length, data=mem[192], mem[ceil32(name.length) + ceil32(symbol.length) + 384 len symbol.length + name.length]), 
               name.length + 128,
               _totalSupply
    mem[floor32(symbol.length) + name.length + ceil32(name.length) + ceil32(symbol.length) + 384] = mem[floor32(symbol.length) + name.length + ceil32(name.length) + ceil32(symbol.length) + -symbol.length % 32 + 416 len symbol.length % 32]
    return Array(len=name.length, data=mem[192], mem[ceil32(name.length) + ceil32(symbol.length) + 384 len floor32(symbol.length) + name.length + 32]), 
           name.length + 128,
           _totalSupply
}



}
