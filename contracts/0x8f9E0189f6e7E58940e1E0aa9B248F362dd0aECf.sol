contract main {




// =====================  Runtime code  =====================


address owner;
address newOwner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address saleAddress;
address sub_02f89be2Address;

function sub_02f89be2(?) {
    return sub_02f89be2Address
}

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function sale() {
    return saleAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function newOwner() {
    return newOwner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function setSale(address arg1) {
    require msg.sender == owner
    saleAddress = arg1
}

function changeOwner(address arg1) {
    require msg.sender == owner
    newOwner = arg1
}

function sub_25023f0b(?) {
    require msg.sender == owner
    sub_02f89be2Address = arg1
}

function acceptOwnership() {
    if msg.sender == newOwner:
        owner = newOwner
        newOwner = 0
}

function approve(address arg1, uint256 arg2) {
    require calldata.size >= 68
    if arg2:
        if allowance[msg.sender][address(arg1)]:
            return 0
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    require arg1 <= balanceOf[msg.sender]
    require arg1 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    emit Transfer(arg1, msg.sender, 0);
}

function increaseApproval(address arg1, uint256 arg2) {
    require calldata.size >= 68
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] += arg2
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size >= 68
    if arg2 > balanceOf[msg.sender]:
        return 0
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    require calldata.size >= 68
    if arg2 > allowance[msg.sender][address(arg1)]:
        allowance[msg.sender][address(arg1)] = 0
        emit Approval(0, msg.sender, arg1);
    else:
        allowance[msg.sender][address(arg1)] -= arg2
        emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size >= 100
    if arg3 > balanceOf[address(arg1)]:
        return 0
    if not arg2:
        return 0
    if msg.sender == sub_02f89be2Address:
        require arg3 <= balanceOf[address(arg1)]
        balanceOf[address(arg1)] -= arg3
        require arg3 + balanceOf[arg2] >= balanceOf[arg2]
        balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    else:
        if allowance[address(arg1)][msg.sender] < arg3:
            return 0
        require arg3 <= balanceOf[address(arg1)]
        balanceOf[address(arg1)] -= arg3
        require arg3 + balanceOf[arg2] >= balanceOf[arg2]
        balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
        require arg3 <= allowance[address(arg1)][msg.sender]
        allowance[address(arg1)][msg.sender] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function multiMint(uint256[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    s = 0
    s = 0
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        _12 = mem[(32 * idx) + 128]
        require idx < arg1.length
        _14 = mem[(32 * idx) + 128]
        if mem[(32 * idx) + 148 len 12] <= 0:
            s = mem[(32 * idx) + 148 len 12]
            s = mem[(32 * idx) + 128 len 20]
            idx = idx + 1
            s = s
            continue 
        if not Mask(160, 96, mem[(32 * idx) + 128]):
            s = mem[(32 * idx) + 148 len 12]
            s = mem[(32 * idx) + 128 len 20]
            idx = idx + 1
            s = s
            continue 
        require mem[(32 * idx) + 148 len 12] + balanceOf[mem[(32 * idx) + 128 len 20]] >= balanceOf[mem[(32 * idx) + 128 len 20]]
        mem[0] = mem[(32 * idx) + 128 len 20]
        mem[32] = 6
        balanceOf[Mask(160, 96, mem[(32 * idx) + 128])] = mem[(32 * idx) + 148 len 12] + balanceOf[mem[(32 * idx) + 128 len 20]]
        require mem[(32 * idx) + 148 len 12] + s >= s
        mem[(32 * arg1.length) + 128] = mem[(32 * idx) + 148 len 12]
        emit Transfer(mem[(32 * arg1.length) + 128], 0, Mask(160, 96, _12) >> 96);
        s = Mask(96, 0, _14)
        s = Mask(160, 96, _12) >> 96
        idx = idx + 1
        s = Mask(96, 0, _14) + s
        continue 
    require s + totalSupply >= totalSupply
    totalSupply += s
}

function bulkTransfer(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg1.length == arg2.length
    s = 0
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _19 = mem[(32 * idx) + 128]
        require idx < arg2.length
        _21 = mem[(32 * arg1.length) + (32 * idx) + 160]
        if not mem[(32 * idx) + 140 len 20]:
            s = mem[(32 * arg1.length) + (32 * idx) + 160]
            s = mem[(32 * idx) + 128]
            idx = idx + 1
            continue 
        if not mem[(32 * arg1.length) + (32 * idx) + 160]:
            s = mem[(32 * arg1.length) + (32 * idx) + 160]
            s = mem[(32 * idx) + 128]
            idx = idx + 1
            continue 
        require mem[(32 * arg1.length) + (32 * idx) + 160] + balanceOf[mem[(32 * idx) + 140 len 20]] >= balanceOf[mem[(32 * idx) + 140 len 20]]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 6
        balanceOf[address(mem[(32 * idx) + 128])] = mem[(32 * arg1.length) + (32 * idx) + 160] + balanceOf[mem[(32 * idx) + 140 len 20]]
        require mem[(32 * arg1.length) + (32 * idx) + 160] >= 0
        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * arg1.length) + (32 * idx) + 160]
        emit Transfer(mem[(32 * arg2.length) + (32 * arg1.length) + 160], msg.sender, address(_19));
        s = _21
        s = _19
        idx = idx + 1
        continue 
    require 0 <= balanceOf[msg.sender]
    if 0 <= balanceOf[msg.sender]:
    revert
}



}
