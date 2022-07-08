contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
address stor3;
address tokenAddress;
address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;

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

function token() {
    return tokenAddress
}

function destroy() {
    require msg.sender == stor3
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == stor3
    require arg1
    emit OwnershipTransferred(stor3, arg1);
    stor3 = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferByOwner(address arg1, address arg2, uint256 arg3) {
    require msg.sender == stor3
    require msg.sender == owner
    require arg2
    require arg1 != arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function returnInvestment(address[] arg1, uint256[] arg2) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == stor3
    require msg.sender == owner
    require arg1.length == arg2.length
    require arg1.length > 0
    idx = 0
    while uint32(idx) < arg1.length:
        require uint32(idx) < arg1.length
        require owner != mem[(32 * uint32(idx)) + 140 len 20]
        require uint32(idx) < arg2.length
        require mem[(32 * uint32(idx)) + (32 * arg1.length) + 160] > 0
        require uint32(idx) < arg2.length
        require uint32(idx) < arg1.length
        mem[0] = mem[(32 * uint32(idx)) + 140 len 20]
        mem[32] = 0
        require balanceOf[mem[(32 * uint32(idx)) + 140 len 20]] == mem[(32 * uint32(idx)) + (32 * arg1.length) + 160]
        require uint32(idx) < arg1.length
        _39 = mem[(32 * uint32(idx)) + 128]
        require uint32(idx) < arg2.length
        _41 = mem[(32 * uint32(idx)) + (32 * arg1.length) + 160]
        mem[(32 * arg1.length) + (32 * arg2.length) + 164] = owner
        mem[(32 * arg1.length) + (32 * arg2.length) + 196] = address(_39)
        mem[(32 * arg1.length) + (32 * arg2.length) + 228] = _41
        require ext_code.size(tokenAddress)
        call tokenAddress.0x691a9ae0 with:
             gas gas_remaining wei
            args owner, address(_39), _41
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
    return 1
}

function sub_97dda233(?) {
    mem[96] = arg3.length
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 128] = arg4.length
    mem[(32 * arg3.length) + 160 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    require msg.sender == stor3
    require msg.sender == owner
    require arg3.length == arg4.length
    require arg3.length > 0
    require balanceOf[address(arg1)] == totalSupply
    idx = 0
    s = 0
    while uint32(idx) < arg3.length:
        require uint32(idx) < arg3.length
        require arg1 != mem[(32 * uint32(idx)) + 140 len 20]
        require uint32(idx) < arg4.length
        require mem[(32 * uint32(idx)) + (32 * arg3.length) + 160] > 0
        require uint32(idx) < arg4.length
        require balanceOf[address(arg1)] >= mem[(32 * uint32(idx)) + (32 * arg3.length) + 160]
        require uint32(idx) < arg4.length
        require mem[(32 * uint32(idx)) + (32 * arg3.length) + 160] <= balanceOf[address(arg1)]
        balanceOf[address(arg1)] -= mem[(32 * uint32(idx)) + (32 * arg3.length) + 160]
        require uint32(idx) < arg4.length
        require uint32(idx) < arg3.length
        require balanceOf[mem[(32 * uint32(idx)) + 140 len 20]] + mem[(32 * uint32(idx)) + (32 * arg3.length) + 160] >= balanceOf[mem[(32 * uint32(idx)) + 140 len 20]]
        require uint32(idx) < arg3.length
        mem[0] = mem[(32 * uint32(idx)) + 140 len 20]
        mem[32] = 0
        balanceOf[mem[(32 * uint32(idx)) + 140 len 20]] += mem[(32 * uint32(idx)) + (32 * arg3.length) + 160]
        require uint32(idx) < arg3.length
        _76 = mem[(32 * uint32(idx)) + 128]
        require uint32(idx) < arg4.length
        mem[(32 * arg3.length) + (32 * arg4.length) + 160] = mem[(32 * uint32(idx)) + (32 * arg3.length) + 160]
        emit Transfer(mem[(32 * arg3.length) + (32 * arg4.length) + 160], arg1, address(_76));
        require uint32(idx) < arg4.length
        require s + mem[(32 * uint32(idx)) + (32 * arg3.length) + 160] >= s
        idx = idx + 1
        s = s + mem[(32 * uint32(idx)) + (32 * arg3.length) + 160]
        continue 
    require ext_code.size(tokenAddress)
    call tokenAddress.0x691a9ae0 with:
         gas gas_remaining wei
        args address(arg1), address(arg2), s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.0x691a9ae0 with:
         gas gas_remaining wei
        args address(arg2), owner, s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 1
}



}
