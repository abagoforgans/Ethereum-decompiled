contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
address owner;
array of uint256 symbol;
array of uint256 name;
uint8 decimals;
uint256 stor4;
uint256 stor5;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function name() {
    return name[0 len name.length]
}

function decimals() {
    return decimals
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

function running() {
    return bool(uint8(stor0.field_160))
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function totalSupply() {
    require balanceOf[0] <= stor4
    return (stor4 - balanceOf[0])
}

function approve(address arg1, uint256 arg2) {
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burnTokens(uint256 arg1) {
    require arg1 <= balanceOf[msg.sender]
    require arg1
    require arg1 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg1
    require arg1 <= stor4
    stor4 -= arg1
    emit Transfer(arg1, msg.sender, 0);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= balanceOf[msg.sender]
    require arg2
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferAnyERC20Token(address arg1, uint256 arg2) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    stor5 = balanceOf[address(stor0.field_0)]
    require balanceOf[address(stor0.field_0)] <= balanceOf[address(stor0.field_0)]
    balanceOf[address(stor0.field_0)] = 0
    require stor5 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = stor5 + balanceOf[arg1]
    emit Transfer(stor5, owner, arg1);
    owner = arg1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][msg.sender]
    require arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function multisend(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        require mem[(32 * arg1.length) + (32 * idx) + 160] <= balanceOf[address(stor0.field_0)]
        balanceOf[address(stor0.field_0)] -= mem[(32 * arg1.length) + (32 * idx) + 160]
        require idx < arg2.length
        require idx < arg1.length
        require mem[(32 * idx) + (32 * arg1.length) + 160] + balanceOf[mem[(32 * idx) + 140 len 20]] >= balanceOf[mem[(32 * idx) + 140 len 20]]
        require idx < arg1.length
        mem[32] = 6
        balanceOf[mem[(32 * idx) + 140 len 20]] += mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < arg1.length
        _42 = mem[(32 * idx) + 128]
        mem[0] = mem[(32 * idx) + 140 len 20]
        require idx < arg2.length
        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
        emit Transfer(mem[(32 * arg2.length) + (32 * arg1.length) + 160], owner, address(_42));
        idx = idx + 1
        continue 
    return arg1.length
}



}
