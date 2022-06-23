contract main {




// =====================  Runtime code  =====================


address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint256 freezeOf;
uint8 stor8;

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

function freezeOf(address arg1) {
    return freezeOf[arg1]
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

function setSuspendTrading(bool arg1) {
    require msg.sender == owner
    stor8 = uint8(arg1)
}

function approve(address arg1, uint256 arg2) {
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    require msg.sender == owner
    require arg1 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg1
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function unfreezeToken(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg2 <= freezeOf[address(arg1)]
    freezeOf[address(arg1)] -= arg2
    emit UnFreezeFunds(address(arg1), arg2);
}

function mintToken(address arg1, uint256 arg2) {
    require msg.sender == owner
    balanceOf[address(arg1)] += arg2
    totalSupply += arg2
    emit Transfer(arg2, 0, this.address);
    emit Transfer(arg2, this.address, arg1);
}

function freezeToken(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg2 <= balanceOf[address(arg1)] - freezeOf[address(arg1)]
    freezeOf[address(arg1)] += arg2
    emit FreezeFunds(address(arg1), arg2);
}

function burnFrom(address arg1, uint256 arg2) {
    require msg.sender == owner
    require balanceOf[address(arg1)] >= freezeOf[address(arg1)]
    require arg2 <= balanceOf[address(arg1)] - freezeOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    totalSupply -= arg2
    emit Burn(arg2, arg1);
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    require ext_code.size(arg1)
    call arg1.receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args msg.sender, arg2, this.address, Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not stor8
    require arg1
    require balanceOf[address(msg.sender)] >= freezeOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)] - freezeOf[address(msg.sender)]
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    balanceOf[msg.sender] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    require balanceOf[address(arg1)] + balanceOf[msg.sender] == balanceOf[msg.sender] + balanceOf[address(arg1)]
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    require not stor8
    require arg2
    require balanceOf[address(arg1)] >= freezeOf[address(arg1)]
    require arg3 <= balanceOf[address(arg1)] - freezeOf[address(arg1)]
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    balanceOf[arg1] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    require balanceOf[address(arg2)] + balanceOf[arg1] == balanceOf[arg1] + balanceOf[address(arg2)]
    return 1
}

function sub_498eaaae(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _19 = mem[(32 * idx) + 128]
        require idx < arg2.length
        _21 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require msg.sender == owner
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 5
        balanceOf[mem[(32 * idx) + 140 len 20]] += mem[(32 * idx) + (32 * arg1.length) + 160]
        totalSupply += mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
        emit Transfer(mem[(32 * arg2.length) + (32 * arg1.length) + 160], 0, this.address);
        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = _21
        emit Transfer(_21, this.address, address(_19));
        idx = idx + 1
        continue 
    return 1
}

function sub_a6778f2b(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _21 = mem[(32 * idx) + 128]
        require idx < arg2.length
        require msg.sender == owner
        require balanceOf[mem[(32 * idx) + 140 len 20]] >= freezeOf[mem[(32 * idx) + 140 len 20]]
        require mem[(32 * idx) + (32 * arg1.length) + 160] <= balanceOf[address(mem[(32 * idx) + 128])] - freezeOf[address(mem[(32 * idx) + 128])]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 5
        balanceOf[address(mem[(32 * idx) + 128])] -= mem[(32 * idx) + (32 * arg1.length) + 160]
        totalSupply -= mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
        emit Burn(mem[(32 * arg2.length) + (32 * arg1.length) + 160], address(_21));
        idx = idx + 1
        continue 
    return 1
}

function multiTransfer(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _25 = mem[(32 * idx) + 128]
        require idx < arg2.length
        require not stor8
        require mem[(32 * idx) + 140 len 20]
        require balanceOf[address(msg.sender)] >= freezeOf[address(msg.sender)]
        require mem[(32 * idx) + (32 * arg1.length) + 160] <= balanceOf[address(msg.sender)] - freezeOf[address(msg.sender)]
        require balanceOf[address(mem[(32 * idx) + 128])] + mem[(32 * idx) + (32 * arg1.length) + 160] > balanceOf[address(mem[(32 * idx) + 128])]
        _33 = sha3(address(mem[(32 * idx) + 128]), 5)
        balanceOf[msg.sender] -= mem[(32 * idx) + (32 * arg1.length) + 160]
        balanceOf[address(mem[(32 * idx) + 128])] += mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
        emit Transfer(mem[(32 * arg2.length) + (32 * arg1.length) + 160], msg.sender, address(_25));
        mem[32] = 5
        mem[0] = msg.sender
        require stor[_33] + balanceOf[msg.sender] == balanceOf[msg.sender] + balanceOf[address(_25)]
        idx = idx + 1
        continue 
    return 1
}



}
