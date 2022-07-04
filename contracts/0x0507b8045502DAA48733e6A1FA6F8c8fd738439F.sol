contract main {




// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function batchTransfer(address[] arg1, uint256[] arg2) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg1.length == arg2.length
    idx = 0
    s = 0
    while uint32(idx) < arg2.length:
        require uint32(idx) < arg2.length
        idx = idx + 1
        s = s + mem[(32 * uint32(idx)) + (32 * arg1.length) + 160]
        continue 
    require s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None <= balanceOf[msg.sender]
    idx = 0
    while uint32(idx) < arg1.length:
        require uint32(idx) < arg1.length
        _41 = mem[(32 * uint32(idx)) + 128]
        require uint32(idx) < arg2.length
        require mem[(32 * uint32(idx)) + (32 * arg1.length) + 160] <= balanceOf[msg.sender]
        mem[32] = 4
        balanceOf[msg.sender] -= mem[(32 * uint32(idx)) + (32 * arg1.length) + 160]
        mem[0] = mem[(32 * uint32(idx)) + 140 len 20]
        balanceOf[mem[(32 * uint32(idx)) + 140 len 20]] += mem[(32 * uint32(idx)) + (32 * arg1.length) + 160]
        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * uint32(idx)) + (32 * arg1.length) + 160]
        emit Transfer(mem[(32 * arg2.length) + (32 * arg1.length) + 160], msg.sender, address(_41));
        idx = idx + 1
        continue 
    return 1
}



}
