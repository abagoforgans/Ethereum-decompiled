contract main {




// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint256 decimals;
uint256 tokens;
mapping of uint256 balances;
mapping of uint256 approvals;
mapping of uint8 stor6;
address sub_bfb88b53Address;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return tokens
}

function balances(address arg1) {
    return balances[arg1]
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function tokens() {
    return tokens
}

function approvals(address arg1, address arg2) {
    return approvals[arg1][arg2]
}

function sub_bfb88b53(?) {
    return sub_bfb88b53Address
}

function sub_d5b9221b(?) {
    return bool(stor6[arg1])
}

function allowance(address arg1, address arg2) {
    return approvals[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not approvals[address(msg.sender)][address(arg1)]
    approvals[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function deallocate(address arg1, uint256 arg2) {
    require stor6[address(msg.sender)]
    require balances[address(arg1)] >= arg2
    require arg2 <= tokens
    tokens -= arg2
    require arg2 <= balances[address(arg1)]
    balances[address(arg1)] -= arg2
    emit Transfer(arg2, arg1, 0);
}

function allocate(address arg1, uint256 arg2) {
    require stor6[address(msg.sender)]
    require tokens + arg2 >= tokens
    require tokens + arg2 >= arg2
    tokens += arg2
    require balances[address(arg1)] + arg2 >= balances[address(arg1)]
    require balances[address(arg1)] + arg2 >= arg2
    balances[address(arg1)] += arg2
    emit Transfer(arg2, this.address, arg1);
}

function reallocate(address arg1, address arg2, uint256 arg3) {
    require stor6[address(msg.sender)]
    require balances[address(arg1)] >= arg3
    require arg3 <= balances[address(arg1)]
    balances[address(arg1)] -= arg3
    require balances[address(arg2)] + arg3 >= balances[address(arg2)]
    require balances[address(arg2)] + arg3 >= arg3
    balances[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
}

function transfer(address arg1, uint256 arg2) {
    if balances[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    require arg2 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg2
    require balances[address(arg1)] + arg2 >= balances[address(arg1)]
    require balances[address(arg1)] + arg2 >= arg2
    balances[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balances[address(arg1)] < arg3:
        return 0
    if approvals[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    require balances[address(arg2)] + arg3 >= balances[address(arg2)]
    require balances[address(arg2)] + arg3 >= arg3
    balances[address(arg2)] += arg3
    require arg3 <= balances[address(arg1)]
    balances[address(arg1)] -= arg3
    require arg3 <= approvals[address(arg1)][address(msg.sender)]
    approvals[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function sub_378704fa(?) {
    require ext_code.size(sub_bfb88b53Address)
    call sub_bfb88b53Address.0x1484698f with:
         gas gas_remaining wei
        args 0, 192, (32 * arg2.length) + 224, (32 * arg2.length) + (32 * arg3.length) + 256, address(this.address), (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 288, sha3(arg1), arg2.length, call.data[arg2 + 36 len 32 * arg2.length], arg3.length, call.data[arg3 + 36 len 32 * arg3.length], arg4.length, call.data[arg4 + 36 len 32 * arg4.length], 24, 'setMultisigAuthenticator'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_bfb88b53Address = arg1
    emit 0xa0e0d8e9: arg1
}

function sub_9aef7599(?) {
    require ext_code.size(sub_bfb88b53Address)
    call sub_bfb88b53Address.0x1484698f with:
         gas gas_remaining wei
        args 0, 192, (32 * arg2.length) + 224, (32 * arg2.length) + (32 * arg3.length) + 256, address(this.address), (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 288, sha3(arg1), arg2.length, call.data[arg2 + 36 len 32 * arg2.length], arg3.length, call.data[arg3 + 36 len 32 * arg3.length], arg4.length, call.data[arg4 + 36 len 32 * arg4.length], 17, 'authorizeContract'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor6[address(arg1)] = 1
    emit ContractAuthorized(arg1);
}

function sub_0f281352(?) {
    require ext_code.size(sub_bfb88b53Address)
    call sub_bfb88b53Address.0x1484698f with:
         gas gas_remaining wei
        args 0, 192, (32 * arg2.length) + 224, (32 * arg2.length) + (32 * arg3.length) + 256, address(this.address), (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 288, sha3(arg1), arg2.length, call.data[arg2 + 36 len 32 * arg2.length], arg3.length, call.data[arg3 + 36 len 32 * arg3.length], arg4.length, call.data[arg4 + 36 len 32 * arg4.length], 19, 'deauthorizeContract'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor6[address(arg1)] = 0
    emit ContractDeauthorized(arg1);
}

function sub_932fca09(?) {
    require stor6[address(msg.sender)]
    require ('cd', 4).length == ('cd', 36).length
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 36).length
        require idx < ('cd', 4).length
        require balances[address(cd[((32 * idx) + cd[4] + 36)])] >= cd[((32 * idx) + cd[36] + 36)]
        require idx < ('cd', 36).length
        require cd[((32 * idx) + cd[36] + 36)] <= tokens
        tokens -= cd[((32 * idx) + cd[36] + 36)]
        require idx < ('cd', 4).length
        require idx < ('cd', 36).length
        require cd[((32 * idx) + cd[36] + 36)] <= balances[address(cd[((32 * idx) + cd[4] + 36)])]
        require idx < ('cd', 4).length
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 4
        balances[address(cd[((32 * idx) + cd[4] + 36)])] -= cd[((32 * idx) + cd[36] + 36)]
        require idx < ('cd', 36).length
        mem[96] = cd[((32 * idx) + cd[36] + 36)]
        emit Transfer(cd[((32 * idx) + cd[36] + 36)], address(cd[((32 * idx) + cd[4] + 36)]), 0);
        idx = idx + 1
        continue 
}

function sub_c92b4168(?) {
    require ext_code.size(sub_bfb88b53Address)
    call sub_bfb88b53Address.0x1484698f with:
         gas gas_remaining wei
        args 0, 192, (32 * ('cd', 36).length) + 224, (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 256, address(this.address), (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 288, sha3(call.data[cd[4] + 36 len ('cd', 4).length]), ('cd', 36).length, call.data[cd[36] + 36 len 32 * ('cd', 36).length], ('cd', 68).length, call.data[cd[68] + 36 len 32 * ('cd', 68).length], ('cd', 100).length, call.data[cd[100] + 36 len 32 * ('cd', 100).length], 7, 'setName'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    name.length = (2 * ('cd', 4).length) + 1
    s = 0
    idx = cd[4] + 36
    while cd[4] + ('cd', 4).length + 36 > idx:
        name[s] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, ('cd', 4).length + 31) >> 5
    while name.length + 31 / 32 > idx:
        name[idx] = 0
        idx = idx + 1
        continue 
    emit 0x13c98778: Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length])
}

function sub_46780a94(?) {
    require ext_code.size(sub_bfb88b53Address)
    call sub_bfb88b53Address.0x1484698f with:
         gas gas_remaining wei
        args 0, 192, (32 * ('cd', 36).length) + 224, (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 256, address(this.address), (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 288, sha3(call.data[cd[4] + 36 len ('cd', 4).length]), ('cd', 36).length, call.data[cd[36] + 36 len 32 * ('cd', 36).length], ('cd', 68).length, call.data[cd[68] + 36 len 32 * ('cd', 68).length], ('cd', 100).length, call.data[cd[100] + 36 len 32 * ('cd', 100).length], 9, 'setSymbol'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    symbol.length = (2 * ('cd', 4).length) + 1
    s = 0
    idx = cd[4] + 36
    while cd[4] + ('cd', 4).length + 36 > idx:
        symbol[s] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, ('cd', 4).length + 31) >> 5
    while symbol.length + 31 / 32 > idx:
        symbol[idx] = 0
        idx = idx + 1
        continue 
    emit 0x3e46ff90: Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length])
}

function sub_9c7ef3df(?) {
    require stor6[address(msg.sender)]
    require ('cd', 4).length == ('cd', 36).length
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 36).length
        require tokens + cd[((32 * idx) + cd[36] + 36)] >= tokens
        require tokens + cd[((32 * idx) + cd[36] + 36)] >= cd[((32 * idx) + cd[36] + 36)]
        tokens += cd[((32 * idx) + cd[36] + 36)]
        require idx < ('cd', 4).length
        require idx < ('cd', 36).length
        require balances[address(cd[((32 * idx) + cd[4] + 36)])] + cd[((32 * idx) + cd[36] + 36)] >= balances[address(cd[((32 * idx) + cd[4] + 36)])]
        require balances[address(cd[((32 * idx) + cd[4] + 36)])] + cd[((32 * idx) + cd[36] + 36)] >= cd[((32 * idx) + cd[36] + 36)]
        require idx < ('cd', 4).length
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 4
        balances[address(cd[((32 * idx) + cd[4] + 36)])] += cd[((32 * idx) + cd[36] + 36)]
        require idx < ('cd', 36).length
        mem[96] = cd[((32 * idx) + cd[36] + 36)]
        emit Transfer(cd[((32 * idx) + cd[36] + 36)], this.address, address(cd[((32 * idx) + cd[4] + 36)]));
        idx = idx + 1
        continue 
}

function sub_7b583f64(?) {
    require stor6[address(msg.sender)]
    require ('cd', 4).length == ('cd', 36).length
    require ('cd', 36).length == ('cd', 68).length
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 68).length
        require idx < ('cd', 4).length
        require balances[address(cd[((32 * idx) + cd[4] + 36)])] >= cd[((32 * idx) + cd[68] + 36)]
        require idx < ('cd', 4).length
        require idx < ('cd', 68).length
        require cd[((32 * idx) + cd[68] + 36)] <= balances[address(cd[((32 * idx) + cd[4] + 36)])]
        require idx < ('cd', 4).length
        balances[address(cd[((32 * idx) + cd[4] + 36)])] -= cd[((32 * idx) + cd[68] + 36)]
        require idx < ('cd', 36).length
        require idx < ('cd', 68).length
        require balances[address(cd[((32 * idx) + cd[36] + 36)])] + cd[((32 * idx) + cd[68] + 36)] >= balances[address(cd[((32 * idx) + cd[36] + 36)])]
        require balances[address(cd[((32 * idx) + cd[36] + 36)])] + cd[((32 * idx) + cd[68] + 36)] >= cd[((32 * idx) + cd[68] + 36)]
        require idx < ('cd', 36).length
        mem[0] = address(cd[((32 * idx) + cd[36] + 36)])
        mem[32] = 4
        balances[address(cd[((32 * idx) + cd[36] + 36)])] += cd[((32 * idx) + cd[68] + 36)]
        require idx < ('cd', 4).length
        require idx < ('cd', 68).length
        mem[96] = cd[((32 * idx) + cd[68] + 36)]
        emit Transfer(cd[((32 * idx) + cd[68] + 36)], address(cd[((32 * idx) + cd[4] + 36)]), address(cd[((32 * idx) + cd[36] + 36)]));
        idx = idx + 1
        continue 
}



}
