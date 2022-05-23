contract main {




// =====================  Runtime code  =====================


uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 stor6; offset 160
address owner;
uint256 cap;

function mintingFinished() {
    return bool(stor6)
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

function cap() {
    return cap
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

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function finishMinting() {
    require msg.sender == owner
    require not stor6
    stor6 = 1
    emit MintFinished()
    return 1
}

function approve(address arg1, uint256 arg2) {
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function increaseApproval(address arg1, uint256 arg2) {
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] += arg2
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    require arg1 <= balanceOf[address(msg.sender)]
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    emit Transfer(arg1, msg.sender, 0);
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[msg.sender][address(arg1)]:
        allowance[msg.sender][address(arg1)] -= arg2
    else:
        allowance[msg.sender][address(arg1)] = 0
    emit Approval(allowance[msg.sender][address(arg1)], msg.sender, arg1);
    return 1
}

function withdrawEther(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg1
    require arg2 <= eth.balance(this.address)
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= balanceOf[msg.sender]
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function withdrawTokensTransfer(address arg1, address arg2, uint256 arg3) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function withdrawTokensApprove(address arg1, address arg2, uint256 arg3) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function withdrawTokensTransferFrom(address arg1, address arg2, address arg3, uint256 arg4) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args address(arg2), address(arg3), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function mint(address arg1, uint256 arg2) {
    require arg2 + totalSupply >= totalSupply
    require arg2 + totalSupply <= cap
    require msg.sender == owner
    require not stor6
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    emit Transfer(arg2, 0, arg1);
    return 1
}

function burnFrom(address arg1, uint256 arg2) {
    require arg2 <= allowance[address(arg1)][msg.sender]
    require arg2 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg2
    require arg2 <= balanceOf[address(arg1)]
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require arg2 <= totalSupply
    totalSupply -= arg2
    emit Burn(arg2, arg1);
    emit Transfer(arg2, arg1, 0);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][msg.sender]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function multiTransfer(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg1.length == arg2.length
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _25 = mem[(32 * idx) + 128]
        require idx < arg2.length
        require mem[(32 * idx) + 140 len 20]
        require mem[(32 * idx) + (32 * arg1.length) + 160] <= balanceOf[msg.sender]
        require mem[(32 * idx) + (32 * arg1.length) + 160] <= balanceOf[msg.sender]
        balanceOf[msg.sender] -= mem[(32 * idx) + (32 * arg1.length) + 160]
        require mem[(32 * idx) + (32 * arg1.length) + 160] + balanceOf[mem[(32 * idx) + 140 len 20]] >= balanceOf[mem[(32 * idx) + 140 len 20]]
        mem[32] = 4
        balanceOf[address(mem[(32 * idx) + 128])] = mem[(32 * idx) + (32 * arg1.length) + 160] + balanceOf[mem[(32 * idx) + 140 len 20]]
        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[0] = address(_25)
        emit Transfer(mem[(32 * arg2.length) + (32 * arg1.length) + 160], msg.sender, address(_25));
        idx = idx + 1
        continue 
    return 1
}



}
