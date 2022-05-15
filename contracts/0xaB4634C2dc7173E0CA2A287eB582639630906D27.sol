contract main {




// =====================  Runtime code  =====================


address stor0;
mapping of address stor1;

function _fallback() payable {
    revert
}

function setOwner(address arg1) {
    require arg1
    require msg.sender == stor0
    stor0 = arg1
    emit OwnerSet(arg1);
}

function setAdmin(address arg1, address arg2) {
    require arg2
    if stor1[address(arg1)] != msg.sender:
        require msg.sender == stor0
    stor1[address(arg1)] = arg2
    emit AdminSet(arg1, arg2);
}

function disburseToken(address arg1, address[] arg2, uint256[] arg3) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require msg.sender == stor1[address(arg1)]
    mem[(32 * arg2.length) + (32 * arg3.length) + 164] = this.address
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    s = 0
    while uint16(idx) < arg3.length:
        require uint16(idx) < arg3.length
        idx = idx + 1
        s = s + mem[(32 * uint16(idx)) + (32 * arg2.length) + 160]
        continue 
    t = 0
    idx = 0
    while uint16(idx) < arg2.length:
        require uint16(idx) < arg3.length
        _50 = mem[(32 * uint16(idx)) + (32 * arg2.length) + 160]
        require s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None
        require uint16(idx) < arg2.length
        mem[(32 * arg2.length) + (32 * arg3.length) + 164] = mem[(32 * uint16(idx)) + 140 len 20]
        mem[(32 * arg2.length) + (32 * arg3.length) + 196] = ext_call.return_data[0] * _50 / s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args mem[(32 * arg2.length) + (32 * arg3.length) + 164], ext_call.return_data[0] * _50 / s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None
        mem[(32 * arg2.length) + (32 * arg3.length) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        t = ext_call.return_data[0] * _50 / s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None
        idx = idx + 1
        continue 
    mem[(32 * arg2.length) + (32 * arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    _66 = sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg2.length) + (32 * arg3.length) + floor32(arg2.length) + 160 len (32 * arg2.length) - floor32(arg2.length)])
    mem[(32 * arg2.length) + (32 * arg3.length) + 256 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    emit Disbursement(Array(len=arg3.length, data=call.data[arg3 + 36 len floor32(arg3.length)], mem[(32 * arg2.length) + (32 * arg3.length) + floor32(arg3.length) + 256 len (32 * arg3.length) - floor32(arg3.length)]), ext_call.return_data[0], arg1, _66);
}



}
