contract main {




// =====================  Runtime code  =====================


address owner;
array of uint256 name;
uint8 decimals;
array of uint256 symbol;
uint256 totalSupply;
address raindropAddress;
mapping of uint256 balances;
mapping of uint256 allowed;

function raindropAddress() {
    return raindropAddress
}

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function balances(address arg1) {
    return balances[arg1]
}

function decimals() {
    return decimals
}

function allowed(address arg1, address arg2) {
    return allowed[arg1][arg2]
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowed[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function setRaindropAddress(address arg1) {
    require msg.sender == owner
    raindropAddress = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowed[address(msg.sender)][address(arg1)]
    allowed[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    require msg.sender == owner
    require balances[address(msg.sender)] >= arg1
    require arg1 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg1 != this.address
    require arg2 <= balances[address(msg.sender)]
    require arg2 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg2
    require balances[address(arg1)] + arg2 >= balances[address(arg1)]
    balances[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require allowed[address(arg1)][address(msg.sender)] >= arg3
    allowed[address(arg1)][address(msg.sender)] -= arg3
    require arg2
    require arg2 != this.address
    require arg3 <= balances[address(arg1)]
    require arg3 <= balances[address(arg1)]
    balances[address(arg1)] -= arg3
    require balances[address(arg2)] + arg3 >= balances[address(arg2)]
    balances[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    if arg2:
        require not allowed[address(msg.sender)][address(arg1)]
    allowed[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    require ext_code.size(arg1)
    call arg1.0x8f4ffcb1 with:
         gas gas_remaining wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function authenticate(uint256 arg1, uint256 arg2, uint256 arg3) {
    require ext_code.size(raindropAddress)
    call raindropAddress.authenticate(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) with:
         gas gas_remaining wei
        args 0, uint32(msg.sender), arg1, arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require owner
    require owner != this.address
    require arg1 <= balances[address(msg.sender)]
    require arg1 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg1
    require balances[stor0] + arg1 >= balances[stor0]
    balances[stor0] += arg1
    emit Transfer(arg1, msg.sender, owner);
}

function setBalances(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == owner
    require arg1.length == arg2.length
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require not balances[mem[(32 * idx) + 140 len 20]]
        require idx < arg1.length
        _25 = mem[(32 * idx) + 128]
        require idx < arg2.length
        require mem[(32 * idx) + 140 len 20]
        require mem[(32 * idx) + 140 len 20] != this.address
        require mem[(32 * idx) + (32 * arg1.length) + 160] <= balances[address(msg.sender)]
        require mem[(32 * idx) + (32 * arg1.length) + 160] <= balances[address(msg.sender)]
        balances[address(msg.sender)] -= mem[(32 * idx) + (32 * arg1.length) + 160]
        require balances[address(mem[(32 * idx) + 128])] + mem[(32 * idx) + (32 * arg1.length) + 160] >= balances[address(mem[(32 * idx) + 128])]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 6
        balances[address(mem[(32 * idx) + 128])] += mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
        emit Transfer(mem[(32 * arg1.length) + (32 * arg2.length) + 160], msg.sender, address(_25));
        idx = idx + 1
        continue 
}



}
