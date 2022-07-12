contract main {




// =====================  Runtime code  =====================


address owner;
uint256 fee;
uint256 arrayLimit;

function owner() {
    return owner
}

function arrayLimit() {
    return arrayLimit
}

function fee() {
    return fee
}

function _fallback() payable {
    revert
}

function setFee(uint256 arg1) {
    require msg.sender == owner
    fee = arg1
}

function setArrayLimit(uint256 arg1) {
    require msg.sender == owner
    arrayLimit = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdraw() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Withdraw(owner, eth.balance(this.address));
}

function sub_b50e06c3(?) payable {
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[64] = (32 * arg3.length) + (32 * arg2.length) + ceil32(arg4.length) + 192
    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = arg4.length
    mem[(32 * arg3.length) + (32 * arg2.length) + 192 len arg4.length] = arg4[all]
    require msg.value >= fee
    require arg2.length == arg3.length
    require arg2.length <= arrayLimit
    idx = 0
    while idx < arg2.length:
        require idx < mem[96]
        _38 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg2.length) + 128]
        _42 = mem[(32 * arg2.length) + (32 * idx) + 160]
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = address(_38)
        mem[mem[64] + 68] = _42
        require ext_code.size(arg1)
        call arg1.transferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args msg.sender, address(_38), _42
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < mem[96]
        _52 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg2.length) + 128]
        _54 = mem[(32 * arg2.length) + (32 * idx) + 160]
        mem[mem[64]] = msg.sender
        mem[mem[64] + 32] = address(_52)
        mem[mem[64] + 64] = _54
        mem[mem[64] + 96] = arg1
        emit 0xc7497c54: msg.sender, address(_52), _54, arg1
        idx = idx + 1
        continue 
    _33 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[(32 * arg3.length) + (32 * arg2.length) + 160]
    _35 = mem[(32 * arg3.length) + (32 * arg2.length) + 160]
    if 0 >= mem[(32 * arg3.length) + (32 * arg2.length) + 160]:
        if not mem[(32 * arg3.length) + (32 * arg2.length) + 160] % 32:
            emit 0x53a85291: 32, mem[mem[64] + 32 len mem[(32 * arg3.length) + (32 * arg2.length) + 160] + 32]
        else:
            mem[floor32(mem[(32 * arg3.length) + (32 * arg2.length) + 160]) + mem[64] + 64] = mem[floor32(mem[(32 * arg3.length) + (32 * arg2.length) + 160]) + mem[64] + -(mem[(32 * arg3.length) + (32 * arg2.length) + 160] % 32) + 96 len mem[(32 * arg3.length) + (32 * arg2.length) + 160] % 32]
            emit 0x53a85291: 32, mem[mem[64] + 32 len floor32(_35) + 64]
    else:
        mem[mem[64] + 64] = mem[(32 * arg3.length) + (32 * arg2.length) + 192]
        mem[mem[64] + 96 len floor32(_35 - 1)] = mem[(32 * arg3.length) + (32 * arg2.length) + 224 len floor32(_35 - 1)]
        if not _35 % 32:
            emit 0x53a85291: 32, mem[mem[64] + 32 len _35 + 32]
        else:
            mem[floor32(_35) + mem[64] + 64] = mem[floor32(_35) + mem[64] + -(_35 % 32) + 96 len _35 % 32]
            emit 0x53a85291: mem[mem[64] len floor32(_35) + _33 + -mem[64] + 96]
}

function sub_02c4bc47(?) payable {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[64] = (32 * arg2.length) + (32 * arg1.length) + ceil32(arg3.length) + 192
    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = arg3.length
    mem[(32 * arg2.length) + (32 * arg1.length) + 192 len arg3.length] = arg3[all]
    require arg1.length == arg2.length
    require arg1.length <= arrayLimit
    idx = 0
    s = fee
    while idx < arg1.length:
        require idx < arg2.length
        require mem[(32 * idx) + (32 * arg1.length) + 160] + s >= s
        idx = idx + 1
        s = mem[(32 * idx) + (32 * arg1.length) + 160] + s
        continue 
    require fee + (_41 * arg1.length) <= msg.value
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        require idx < mem[(32 * arg1.length) + 128]
        call mem[(32 * idx) + 140 len 20] with:
           value mem[(32 * arg1.length) + (32 * idx) + 160] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require idx < mem[96]
        _90 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg1.length) + 128]
        _94 = mem[(32 * arg1.length) + (32 * idx) + 160]
        mem[mem[64]] = msg.sender
        mem[mem[64] + 32] = address(_90)
        mem[mem[64] + 64] = _94
        emit 0xcd08573a: msg.sender, address(_90), _94
        idx = idx + 1
        continue 
    if msg.value - s <= 0:
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[(32 * arg2.length) + (32 * arg1.length) + 160]
        _75 = mem[(32 * arg2.length) + (32 * arg1.length) + 160]
        mem[mem[64] + 64 len ceil32(mem[(32 * arg2.length) + (32 * arg1.length) + 160])] = mem[(32 * arg2.length) + (32 * arg1.length) + 192 len ceil32(mem[(32 * arg2.length) + (32 * arg1.length) + 160])]
        if not _75 % 32:
            emit 0x53a85291: 32, mem[mem[64] + 32 len _75 + 32]
        else:
            mem[floor32(_75) + mem[64] + 64] = mem[floor32(_75) + mem[64] + -(_75 % 32) + 96 len _75 % 32]
            emit 0x53a85291: 32, mem[mem[64] + 32 len floor32(_75) + 64]
    else:
        call msg.sender with:
           value msg.value - s wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Refund((msg.value - s));
        _84 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[(32 * arg2.length) + (32 * arg1.length) + 160]
        _86 = mem[(32 * arg2.length) + (32 * arg1.length) + 160]
        mem[mem[64] + 64 len ceil32(mem[(32 * arg2.length) + (32 * arg1.length) + 160])] = mem[(32 * arg2.length) + (32 * arg1.length) + 192 len ceil32(mem[(32 * arg2.length) + (32 * arg1.length) + 160])]
        if not _86 % 32:
            emit 0x53a85291: 32, mem[mem[64] + 32 len _86 + 32]
        else:
            mem[floor32(_86) + mem[64] + 64] = mem[floor32(_86) + mem[64] + -(_86 % 32) + 96 len _86 % 32]
            emit 0x53a85291: mem[mem[64] len floor32(_86) + _84 + -mem[64] + 96]
}



}
