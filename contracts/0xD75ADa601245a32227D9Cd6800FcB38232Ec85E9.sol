contract main {




// =====================  Runtime code  =====================


address owner;
uint256 E18;

function E18() {
    return E18
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1 != owner
    require arg1
    owner = arg1
    emit OwnerTransferPropose(owner, arg1);
}

function withDrawToken(address arg1, uint256 arg2) {
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg2 * E18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function multipleTokenDistribute(address arg1, address[] arg2, uint256[] arg3) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require msg.sender == owner
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        require idx < arg3.length
        _16 = mem[(32 * idx) + (32 * arg2.length) + 160]
        mem[(32 * arg2.length) + (32 * arg3.length) + 164] = mem[(32 * idx) + 140 len 20]
        mem[(32 * arg2.length) + (32 * arg3.length) + 196] = _16 * E18
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args mem[(32 * arg2.length) + (32 * arg3.length) + 164], _16 * E18
        mem[(32 * arg2.length) + (32 * arg3.length) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
}



}
