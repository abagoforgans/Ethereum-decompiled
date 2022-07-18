contract main {




// =====================  Runtime code  =====================


address owner;
uint8 decimals; offset 160
address CURESAddress;

function decimals() {
    return decimals
}

function CURES() {
    return CURESAddress
}

function owner() {
    return owner
}

function _fallback() payable {
  stop
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    owner = arg1
}

function checkBalance() {
    require ext_code.size(CURESAddress)
    call CURESAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_1f2bc892(?) {
    require msg.sender == owner
    require ext_code.size(CURESAddress)
    call CURESAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(CURESAddress)
    call CURESAddress.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 1
}

function sub_3b38e2d2(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == owner
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        _17 = mem[(32 * arg1.length) + (32 * idx) + 160]
        require idx < arg1.length
        mem[(32 * arg2.length) + (32 * arg1.length) + 164] = mem[(32 * idx) + 140 len 20]
        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = _17 * 10^decimals
        require ext_code.size(CURESAddress)
        call CURESAddress.0xa9059cbb with:
             gas gas_remaining wei
            args mem[(32 * arg2.length) + (32 * arg1.length) + 164], _17 * 10^decimals
        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        s = _17 * 10^decimals
        idx = idx + 1
        continue 
    return 1
}



}
