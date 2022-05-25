contract main {




// =====================  Runtime code  =====================


const ONE_DECIMAL_QUANTUM_ABC_TOKEN_PRICE = 10^10


mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
array of uint256 name;
array of uint256 token;
uint8 decimals;
uint256 INITIAL_SUPPLY;
mapping of uint8 stor7;
address tokenAdministratorAddress;
address vaultAddress;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function INITIAL_SUPPLY() {
    return INITIAL_SUPPLY
}

function decimals() {
    return decimals
}

function tokenAdministrator() {
    return tokenAdministratorAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function vault() {
    return vaultAddress
}

function token() {
    return token[0 len token.length]
}

function resetContract() {
    require stor7[address(msg.sender)]
    selfdestruct(vaultAddress)
}

function addAdministrator(address arg1) {
    require stor7[address(msg.sender)]
    stor7[address(arg1)] = 1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function overrideTokenHolder(address arg1, uint256 arg2) {
    require stor7[address(msg.sender)]
    balanceOf[address(arg1)] = arg2
    totalSupply = totalSupply - balanceOf[address(arg1)] + arg2
    emit tokenOverriden(address(arg1), arg2);
}

function increaseApproval(address arg1, uint256 arg2) {
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= balanceOf[address(msg.sender)]
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 >= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] = 0
    else:
        require arg2 <= allowance[address(msg.sender)][address(arg1)]
        allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function _fallback() payable {
    call vaultAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require ext_code.size(this.address)
    call this.address.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, msg.value / 10^10
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit receivedEther(msg.sender, msg.value);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function overrideTokenHolders(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require stor7[address(msg.sender)]
    require arg1.length == arg2.length
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _26 = sha3(mem[(32 * idx) + 140 len 20], 0)
        require idx < arg2.length
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 0
        balanceOf[mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < arg2.length
        totalSupply = totalSupply - balanceOf[mem[(32 * idx) + 140 len 20]] + mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < arg1.length
        require idx < arg2.length
        _37 = mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + 140 len 20]
        mem[(32 * arg1.length) + (32 * arg2.length) + 192] = _37
        emit tokenOverriden(mem[(32 * arg1.length) + (32 * arg2.length) + 160], _37);
        s = stor[_26]
        idx = idx + 1
        continue 
}



}
