contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
mapping of uint256 tokens;

function tokens(address arg1, address arg2) {
    return tokens[arg1][arg2]
}

function paused() {
    return bool(uint8(stor0.field_160))
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function unpause() {
    require msg.sender == owner
    require uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 1
    emit Pause()
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function tokenFallback(address arg1, uint256 arg2, bytes arg3) {
    require not uint8(stor0.field_160)
    require tokens[address(msg.sender)][address(arg1)] + arg2 >= tokens[address(msg.sender)][address(arg1)]
    tokens[address(msg.sender)][address(arg1)] += arg2
    emit Deposit(msg.sender, address(arg1), arg2, tokens[address(msg.sender)][address(arg1)]);
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
    require not uint8(stor0.field_160)
    require arg1
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require tokens[address(arg1)][address(msg.sender)] + arg2 >= tokens[address(arg1)][address(msg.sender)]
    tokens[address(arg1)][address(msg.sender)] += arg2
    emit Deposit(address(arg1), msg.sender, arg2, tokens[address(arg1)][address(msg.sender)]);
}

function distributeTokenToAddress(address arg1, address arg2, address arg3, uint256 arg4) {
    require msg.sender == owner
    require arg1
    require arg3
    require tokens[address(arg1)][address(arg2)] >= arg4
    require arg4 <= tokens[address(arg1)][address(arg2)]
    tokens[address(arg1)][address(arg2)] -= arg4
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg3), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit Distribution(address(arg1), address(arg2), address(arg3), arg4, uint64(block.timestamp));
}

function distributeTokenToAddressesAndAmountsWithoutHost(address arg1, address[] arg2, uint256[] arg3) payable {
    mem[64] = 96
    require not msg.value
    require msg.sender == owner
    require arg1
    require arg2.length == arg3.length
    idx = 0
    s = 0
    while idx < arg3.length:
        require s + cd[((32 * idx) + arg3 + 36)] >= s
        idx = idx + 1
        s = s + cd[((32 * idx) + arg3 + 36)]
        continue 
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= s * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length * arg3.length
    idx = 0
    while idx < arg2.length:
        require idx < arg3.length
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
        mem[mem[64]] = arg1
        mem[mem[64] + 32] = this.address
        mem[mem[64] + 64] = address(cd[((32 * idx) + arg2 + 36)])
        mem[mem[64] + 96] = cd[((32 * idx) + arg3 + 36)]
        mem[mem[64] + 128] = uint64(block.timestamp)
        emit Distribution(address(arg1), address(this.address), address(cd[((32 * idx) + arg2 + 36)]), cd[((32 * idx) + arg3 + 36)], uint64(block.timestamp));
        idx = idx + 1
        continue 
}

function distributeWithTransferFrom(address arg1, address arg2, address[] arg3, uint256[] arg4) payable {
    mem[64] = 96
    require not msg.value
    require msg.sender == owner
    require arg1
    require arg3.length == arg4.length
    idx = 0
    s = 0
    while idx < arg4.length:
        require s + cd[((32 * idx) + arg4 + 36)] >= s
        idx = idx + 1
        s = s + cd[((32 * idx) + arg4 + 36)]
        continue 
    require ext_code.size(arg1)
    call arg1.0xdd62ed3e with:
         gas gas_remaining wei
        args address(arg2), this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= s * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length
    idx = 0
    while idx < arg3.length:
        require idx < arg4.length
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
        mem[mem[64]] = arg1
        mem[mem[64] + 32] = this.address
        mem[mem[64] + 64] = address(cd[((32 * idx) + arg3 + 36)])
        mem[mem[64] + 96] = cd[((32 * idx) + arg4 + 36)]
        mem[mem[64] + 128] = uint64(block.timestamp)
        emit Distribution(address(arg1), address(this.address), address(cd[((32 * idx) + arg3 + 36)]), cd[((32 * idx) + arg4 + 36)], uint64(block.timestamp));
        idx = idx + 1
        continue 
}

function distributeTokenToAddressesAndAmounts(address arg1, address arg2, address[] arg3, uint256[] arg4) payable {
    mem[64] = 96
    require not msg.value
    require msg.sender == owner
    require arg1
    require arg2
    require arg3.length == arg4.length
    idx = 0
    s = 0
    while idx < arg4.length:
        require s + cd[((32 * idx) + arg4 + 36)] >= s
        idx = idx + 1
        s = s + cd[((32 * idx) + arg4 + 36)]
        continue 
    require tokens[address(arg1)][address(arg2)] >= s * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length
    require s * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length <= tokens[address(arg1)][address(arg2)]
    tokens[address(arg1)][address(arg2)] += -1 * s * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length * arg4.length
    idx = 0
    while idx < arg3.length:
        require idx < arg4.length
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
        mem[mem[64]] = arg1
        mem[mem[64] + 32] = arg2
        mem[mem[64] + 64] = address(cd[((32 * idx) + arg3 + 36)])
        mem[mem[64] + 96] = cd[((32 * idx) + arg4 + 36)]
        mem[mem[64] + 128] = uint64(block.timestamp)
        emit Distribution(address(arg1), address(arg2), address(cd[((32 * idx) + arg3 + 36)]), cd[((32 * idx) + arg4 + 36)], uint64(block.timestamp));
        idx = idx + 1
        continue 
}



}
