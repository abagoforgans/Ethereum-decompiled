contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor3;

function _fallback() {
    stor0 = code.data[2408 len 20]
    stor1 = code.data[2440 len 20]
    stor3 = code.data[2440 len 20]
    return code.data[118 len 2278]
}



// =====================  Runtime code  =====================


address adminAddress;
address sub_95fa9fc9Address;
address ethAddress;
address stor3;

function ethAddress() {
    return ethAddress
}

function sub_95fa9fc9(?) {
    return sub_95fa9fc9Address
}

function admin() {
    return adminAddress
}

function _fallback() payable {
  stop
}

function fund() payable {
    emit Fund(msg.sender, msg.value, eth.balance(this.address));
}

function sub_5a1e7337(?) {
    require adminAddress == msg.sender
    sub_95fa9fc9Address = arg1
}

function changeAdmin(address arg1) {
    require adminAddress == msg.sender
    adminAddress = arg1
}

function sub_394f000d(?) payable {
    require adminAddress == msg.sender
    require ext_code.size(stor3)
    call stor3.withdraw(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    emit EtherDeltaWithdraw(arg1);
}

function transferOut(uint256 arg1) {
    require adminAddress == msg.sender
    if eth.balance(this.address) < arg1:
        return 0
    call adminAddress with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Withdraw(arg1);
    return 1
}

function sub_52d1bc84(?) {
    require adminAddress == msg.sender
    call stor3 with:
         gas gas_remaining - 25710 wei
        args arg1[all]
    call stor3 with:
         gas gas_remaining - 25710 wei
        args arg2[all]
    require ext_call.success
    require ext_call.success
    return 1
}

function sub_f2e3a5a4(?) {
    require adminAddress == msg.sender
    if eth.balance(this.address) < arg1:
        return 0
    require ext_code.size(stor3)
    call stor3.0xd0e30db0 with:
       value arg1 wei
         gas gas_remaining - 9710 wei
    require ext_call.success
    emit EtherDeltaDeposit(arg1);
    return 1
}

function sub_787c5196(?) {
    require adminAddress == msg.sender
    call stor3 with:
       funct Mask(32, 224, sha3('trade(address,uint256,address,ui', 'nt256,uint256,uint256,address,ui', 'nt8,bytes32,bytes32,uint256)')) >> 224
         gas gas_remaining - 25710 wei
        args address(arg1), arg2, address(arg3), arg4, arg5, arg6, address(arg7), arg8 << 248, arg9, arg10, arg11
    require ext_call.success
    return bool(ext_call.success)
}

function sub_71731dd2(?) payable {
    mem[64] = 96
    require not msg.value
    require adminAddress == msg.sender
    s = 0
    idx = 0
    s = 1
    while idx < ('cd', 4).length:
        _21 = mem[64]
        mem[64] = mem[64] + 32
        mem[_21] = 0
        _22 = mem[64]
        if msize < mem[64]:
            mem[mem[64]] = 32
            mem[64] = mem[64] + 1056
            mem[_22 + 32] = cd[((32 * idx) + cd[4] + 36)]
            t = 0
            while t < mem[_22]:
                mem[t + _22 + 1056] = mem[_22 + t + 32]
                t = t + 32
                continue 
            if not mem[_22] % 32:
                call stor3.mem[mem[64] len 4] with:
                     gas gas_remaining - 25710 wei
                    args mem[mem[64] + 4 len mem[_22] + _22 + -mem[64] + 1052]
            else:
                mem[floor32(mem[_22]) + _22 + 1056] = mem[floor32(mem[_22]) + _22 + -(mem[_22] % 32) + 1088 len mem[_22] % 32]
                call stor3.mem[mem[64] len 4] with:
                     gas gas_remaining - 25710 wei
                    args mem[mem[64] + 4 len floor32(mem[_22]) + _22 + -mem[64] + 1084]
        else:
            _24 = msize
            mem[msize] = 32
            mem[64] = _24 + 1056
            mem[_24 + 32] = cd[((32 * idx) + cd[4] + 36)]
            t = 0
            while t < mem[_24]:
                mem[t + _24 + 1056] = mem[_24 + t + 32]
                t = t + 32
                continue 
            if not mem[_24] % 32:
                call stor3.mem[_24 + 1056 len 4] with:
                     gas gas_remaining - 25710 wei
                    args mem[_24 + 1060 len mem[_24] - 4]
            else:
                mem[floor32(mem[_24]) + _24 + 1056] = mem[floor32(mem[_24]) + _24 + -(mem[_24] % 32) + 1088 len mem[_24] % 32]
                call stor3.mem[_24 + 1056 len 4] with:
                     gas gas_remaining - 25710 wei
                    args mem[_24 + 1060 len floor32(mem[_24]) + 28]
        require s
        require ext_call.success
        s = ext_call.success
        idx = idx + 1
        s = ext_call.success
        continue 
    require s
    return 1
}



}
