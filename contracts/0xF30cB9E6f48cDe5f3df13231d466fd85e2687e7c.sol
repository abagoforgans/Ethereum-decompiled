contract main {




// =====================  Runtime code  =====================


address owner;
address newOwner;
address sub_2c99fd84Address;
mapping of struct sub_19da83a8;

function sub_19da83a8(?) {
    require calldata.size - 4 >= 32
    return sub_19da83a8[arg1].field_0, sub_19da83a8[arg1].field_256
}

function sub_2c99fd84(?) {
    return sub_2c99fd84Address
}

function owner() {
    return owner
}

function newOwner() {
    return newOwner
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    newOwner = arg1
}

function acceptOwnership() {
    require msg.sender == newOwner
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function sub_dcff88c6(?) {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = 0
    require msg.sender == owner
    require arg1.length == arg2.length
    require arg1.length == arg3.length
    idx = 0
    while idx < arg1.length:
        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        _27 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
        _28 = mem[64]
        mem[64] = mem[64] + 64
        require idx < mem[96]
        mem[_28] = mem[(32 * idx) + 140 len 20]
        require idx < mem[(32 * arg1.length) + 128]
        mem[_28 + 32] = mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[0] = _27
        mem[32] = 3
        sub_19da83a8[_27].field_0 = mem[_28 + 12 len 20]
        _35 = mem[_28 + 32]
        sub_19da83a8[_27].field_256 = mem[_28 + 32]
        mem[mem[64] + 4] = mem[_28 + 12 len 20]
        mem[mem[64] + 36] = _35
        require ext_code.size(sub_2c99fd84Address)
        call sub_2c99fd84Address.0xa9059cbb with:
             gas gas_remaining wei
            args mem[mem[64] + 4], _35
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[0] = _27
        mem[32] = 3
        mem[mem[64]] = sub_19da83a8[_27].field_256
        mem[mem[64] + 32] = _27
        emit Invest(sub_19da83a8[_27].field_256, _27, sub_19da83a8[_27].field_0);
        idx = idx + 1
        continue 
}



}
