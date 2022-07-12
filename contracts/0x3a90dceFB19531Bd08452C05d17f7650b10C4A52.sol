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
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = arg4.length
    mem[(32 * arg3.length) + (32 * arg2.length) + 192 len arg4.length] = arg4[all]
    require msg.value >= fee
    require arg2.length == arg3.length
    require arg2.length <= arrayLimit
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        _34 = mem[(32 * idx) + 128]
        require idx < arg3.length
        _36 = mem[(32 * arg2.length) + (32 * idx) + 160]
        mem[(32 * arg3.length) + (32 * arg2.length) + ceil32(arg4.length) + 196] = msg.sender
        mem[(32 * arg3.length) + (32 * arg2.length) + ceil32(arg4.length) + 228] = address(_34)
        mem[(32 * arg3.length) + (32 * arg2.length) + ceil32(arg4.length) + 260] = _36
        require ext_code.size(arg1)
        call arg1.transferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args msg.sender, address(_34), _36
        mem[(32 * arg3.length) + (32 * arg2.length) + ceil32(arg4.length) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
    require fee <= msg.value
    if msg.value - fee > 0:
        call msg.sender with:
           value msg.value - fee wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Refund((msg.value - fee));
    emit 0x53a85291: Array(len=arg4.length, data=arg4[all])
}

function sub_02c4bc47(?) payable {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
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
        require idx < arg1.length
        require idx < arg2.length
        call mem[(32 * idx) + 140 len 20] with:
           value mem[(32 * arg1.length) + (32 * idx) + 160] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require idx < arg1.length
        _90 = mem[(32 * idx) + 128]
        require idx < arg2.length
        mem[(32 * arg2.length) + (32 * arg1.length) + ceil32(arg3.length) + 192] = mem[(32 * idx) + (32 * arg1.length) + 160]
        emit Transfer(mem[(32 * arg2.length) + (32 * arg1.length) + ceil32(arg3.length) + 192], msg.sender, address(_90));
        idx = idx + 1
        continue 
    if msg.value - s > 0:
        call msg.sender with:
           value msg.value - s wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Refund((msg.value - s));
    emit 0x53a85291: Array(len=arg3.length, data=arg3[all])
}



}
