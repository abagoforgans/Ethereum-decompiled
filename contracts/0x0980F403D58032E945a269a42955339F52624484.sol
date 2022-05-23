contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
address owner;
mapping of uint256 tokens;

function tokens(address arg1, address arg2) {
    return tokens[arg1][arg2]
}

function paused() {
    return bool(stor0)
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function unpause() {
    require msg.sender == owner
    require stor0
    stor0 = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not stor0
    stor0 = 1
    emit Pause()
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function depositEther() payable {
    require not stor0
    require msg.value + tokens[0][msg.sender] >= tokens[0][msg.sender]
    tokens[0][msg.sender] += msg.value
    emit Deposit(msg.value, msg.value + tokens[0][msg.sender], 0, msg.sender);
}

function tokenFallback(address arg1, uint256 arg2, bytes arg3) {
    require not stor0
    require arg2 + tokens[msg.sender][address(arg1)] >= tokens[msg.sender][address(arg1)]
    tokens[address(msg.sender)][address(arg1)] = arg2 + tokens[msg.sender][address(arg1)]
    emit Deposit(arg2, arg2 + tokens[msg.sender][address(arg1)], msg.sender, arg1);
}

function approveToPullOutTokens(address arg1, address arg2, uint256 arg3) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function depositToken(address arg1, uint256 arg2) {
    require not stor0
    require arg1
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require arg2 + tokens[address(arg1)][msg.sender] >= tokens[address(arg1)][msg.sender]
    tokens[address(arg1)][msg.sender] += arg2
    emit Deposit(arg2, arg2 + tokens[address(arg1)][msg.sender], arg1, msg.sender);
}

function distributeTokenToAddress(address arg1, address arg2, address arg3, uint256 arg4) {
    require msg.sender == owner
    require arg3
    require arg4 <= tokens[address(arg1)][address(arg2)]
    require arg4 <= tokens[address(arg1)][address(arg2)]
    tokens[address(arg1)][address(arg2)] -= arg4
    if not arg1:
        call arg3 with:
           value arg4 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    else:
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg3), arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    emit Distribution(arg4, arg1, arg2, arg3);
}

function distributeWithTransferFrom(address arg1, address arg2, address[] arg3, uint256[] arg4) {
    require msg.sender == owner
    require arg1
    require arg4.length == arg3.length
    idx = 0
    s = 0
    while idx < arg4.length:
        require cd[((32 * idx) + arg4 + 36)] + s >= s
        idx = idx + 1
        s = cd[((32 * idx) + arg4 + 36)] + s
        continue 
    require ext_code.size(arg1)
    call arg1.0xdd62ed3e with:
         gas gas_remaining wei
        args address(arg2), this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= cd[((32 * arg4.length) + arg4 + 36)] * arg4.length
    idx = 0
    while idx < arg3.length:
        require idx < arg4.length
        mem[100] = arg2
        mem[132] = address(cd[((32 * idx) + arg3 + 36)])
        mem[164] = cd[((32 * idx) + arg4 + 36)]
        require ext_code.size(arg1)
        call arg1.0x23b872dd with:
             gas gas_remaining wei
            args address(arg2), address(cd[((32 * idx) + arg3 + 36)]), cd[((32 * idx) + arg4 + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require idx < arg3.length
        require idx < arg4.length
        mem[96] = cd[((32 * idx) + arg4 + 36)]
        emit Distribution(cd[((32 * idx) + arg4 + 36)], arg1, this.address, address(cd[((32 * idx) + arg3 + 36)]));
        idx = idx + 1
        continue 
}

function distributeTokenToAddressesAndAmounts(address arg1, address arg2, address[] arg3, uint256[] arg4) {
    require msg.sender == owner
    require arg2
    require arg4.length == arg3.length
    idx = 0
    s = 0
    while idx < arg4.length:
        require cd[((32 * idx) + arg4 + 36)] + s >= s
        idx = idx + 1
        s = cd[((32 * idx) + arg4 + 36)] + s
        continue 
    require cd[((32 * arg4.length) + arg4 + 36)] * arg4.length <= tokens[address(arg1)][address(arg2)]
    require cd[((32 * arg4.length) + arg4 + 36)] * arg4.length <= tokens[address(arg1)][address(arg2)]
    tokens[address(arg1)][address(arg2)] += -1 * cd[((32 * arg4.length) + arg4 + 36)] * arg4.length
    if arg1:
        idx = 0
        while idx < arg3.length:
            require idx < arg4.length
            mem[100] = address(cd[((32 * idx) + arg3 + 36)])
            mem[132] = cd[((32 * idx) + arg4 + 36)]
            require ext_code.size(arg1)
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args address(cd[((32 * idx) + arg3 + 36)]), cd[((32 * idx) + arg4 + 36)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            require idx < arg3.length
            require idx < arg4.length
            mem[96] = cd[((32 * idx) + arg4 + 36)]
            emit Distribution(cd[((32 * idx) + arg4 + 36)], arg1, arg2, address(cd[((32 * idx) + arg3 + 36)]));
            idx = idx + 1
            continue 
    else:
        idx = 0
        while idx < arg3.length:
            require idx < arg4.length
            call address(cd[((32 * idx) + arg3 + 36)]) with:
               value cd[((32 * idx) + arg4 + 36)] wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require idx < arg3.length
            require idx < arg4.length
            mem[96] = cd[((32 * idx) + arg4 + 36)]
            emit Distribution(cd[((32 * idx) + arg4 + 36)], arg1, arg2, address(cd[((32 * idx) + arg3 + 36)]));
            idx = idx + 1
            continue 
}

function distributeTokenToAddressesAndAmountsWithoutHost(address arg1, address[] arg2, uint256[] arg3) {
    require msg.sender == owner
    require arg3.length == arg2.length
    idx = 0
    s = 0
    while idx < arg3.length:
        require cd[((32 * idx) + arg3 + 36)] + s >= s
        idx = idx + 1
        s = cd[((32 * idx) + arg3 + 36)] + s
        continue 
    if not arg1:
        require cd[((32 * arg3.length) + arg3 + 36)] * arg3.length <= eth.balance(this.address)
        idx = 0
        while idx < arg2.length:
            require idx < arg3.length
            call address(cd[((32 * idx) + arg2 + 36)]) with:
               value cd[((32 * idx) + arg3 + 36)] wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require idx < arg2.length
            require idx < arg3.length
            mem[96] = cd[((32 * idx) + arg3 + 36)]
            emit Distribution(cd[((32 * idx) + arg3 + 36)], arg1, this.address, address(cd[((32 * idx) + arg2 + 36)]));
            idx = idx + 1
            continue 
    else:
        require ext_code.size(arg1)
        call arg1.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] >= cd[((32 * arg3.length) + arg3 + 36)] * arg3.length
        idx = 0
        while idx < arg2.length:
            require idx < arg3.length
            mem[100] = address(cd[((32 * idx) + arg2 + 36)])
            mem[132] = cd[((32 * idx) + arg3 + 36)]
            require ext_code.size(arg1)
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args address(cd[((32 * idx) + arg2 + 36)]), cd[((32 * idx) + arg3 + 36)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            require idx < arg2.length
            require idx < arg3.length
            mem[96] = cd[((32 * idx) + arg3 + 36)]
            emit Distribution(cd[((32 * idx) + arg3 + 36)], arg1, this.address, address(cd[((32 * idx) + arg2 + 36)]));
            idx = idx + 1
            continue 
}



}
