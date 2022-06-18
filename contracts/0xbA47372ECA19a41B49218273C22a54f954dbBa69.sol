contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
mapping of uint256 stor3;

function _fallback() payable {
  stop
}

function setCEO(address arg1) {
    require msg.sender == stor0
    stor0 = arg1
}

function setCFO(address arg1) {
    require msg.sender == stor0
    stor1 = arg1
}

function deposit() payable {
    require msg.value > 0
    emit Deposit(msg.sender, address(this.address), msg.value);
}

function sub_b8a1e3f8(?) {
    require msg.sender == stor0
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function verifyProof(bytes32[] arg1, bytes32 arg2, bytes32 arg3) {
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    s = 0
    idx = 0
    t = arg3
    while idx < arg1.length:
        require idx < mem[96]
        _29 = mem[(32 * idx) + 128]
        if t >= mem[(32 * idx) + 128]:
            _30 = mem[64]
            mem[mem[64] + 32] = mem[(32 * idx) + 128]
            mem[mem[64] + 64] = t
            _31 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            _33 = mem[_31]
            t = _31 + 32
            v = _30 + 96
            u = mem[_31]
            while u >= 32:
                mem[v] = mem[t]
                t = t + 32
                v = v + 32
                u = u - 32
                continue 
            mem[_30 + floor32(mem[_31]) + 96] = mem[_31 + -(mem[_31] % 32) + floor32(mem[_31]) + 64 len mem[_31] % 32] or Mask(8 * -(mem[_31] % 32) + 32, -(8 * -(mem[_31] % 32) + 32) + 256, mem[_30 + floor32(mem[_31]) + 96])
            t = _29
            v = v + 1
            u = sha3(mem[_30 + 96 len _33])
            continue 
        _34 = mem[64]
        mem[mem[64] + 32] = t
        mem[mem[64] + 64] = _29
        _35 = mem[64]
        mem[mem[64]] = 64
        mem[64] = mem[64] + 96
        _37 = mem[_35]
        t = _35 + 32
        v = _34 + 96
        u = mem[_35]
        while u >= 32:
            mem[v] = mem[t]
            t = t + 32
            v = v + 32
            u = u - 32
            continue 
        mem[_34 + floor32(mem[_35]) + 96] = mem[_35 + -(mem[_35] % 32) + floor32(mem[_35]) + 64 len mem[_35] % 32] or Mask(8 * -(mem[_35] % 32) + 32, -(8 * -(mem[_35] % 32) + 32) + 256, mem[_34 + floor32(mem[_35]) + 96])
        t = _29
        v = v + 1
        u = sha3(mem[_34 + 96 len _37])
        continue 
    return (t == arg2)
}

function withdraw(address arg1, uint256 arg2, uint256 arg3, bytes32[] arg4) {
    mem[96] = arg4.length
    mem[128 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    require arg2 > 0
    mem[(32 * arg4.length) + 160] = 'withdraw'
    mem[(32 * arg4.length) + 168] = arg3
    mem[(32 * arg4.length) + 128] = 40
    require ext_code.size(stor2)
    call stor2.0x54f6127f with:
         gas gas_remaining wei
        args sha3('withdraw', Mask(192, 64, arg3) >> 64, mem[(32 * arg4.length) + 232 len 8])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    mem[(32 * arg4.length) + 232] = address(arg1)
    mem[(32 * arg4.length) + 252] = arg2
    mem[(32 * arg4.length) + 200] = 52
    mem[64] = (32 * arg4.length) + 284
    mem[(32 * arg4.length) + 284] = arg1, Mask(96, 160, arg2) >> 160
    mem[(32 * arg4.length) + 316] = uint64(arg2), Mask(96, 64, arg1) >> 64 or Mask(96, 160, mem[(32 * arg4.length) + 316])
    _105 = sha3(arg1, Mask(96, 160, arg2) >> 160, mem[(32 * arg4.length) + 316 len 20])
    require ext_call.return_data[0]
    s = 0
    idx = 0
    t = 0
    while idx < arg4.length:
        require idx < mem[96]
        _138 = mem[(32 * idx) + 128]
        if t + sha3(mem[mem[64] len (32 * arg4.length) + -mem[64] + 336]) >= mem[(32 * idx) + 128]:
            _141 = mem[64]
            mem[mem[64] + 32] = mem[(32 * idx) + 128]
            mem[mem[64] + 64] = t + sha3(mem[mem[64] len (32 * arg4.length) + -mem[64] + 336])
            _142 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            _144 = mem[_142]
            t = _142 + 32
            v = mem[64]
            u = mem[_142]
            while u + sha3(mem[mem[64] len (32 * arg4.length) + -mem[64] + 336]) >= 32:
                mem[v] = mem[t]
                t = t + 32
                v = v + 32
                u = u - 32
                continue 
            mem[mem[64] + floor32(mem[_142])] = mem[_142 + floor32(mem[_142]) + -(mem[_142] % 32) + 64 len mem[_142] % 32] or Mask(8 * -(mem[_142] % 32) + 32, -(8 * -(mem[_142] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_142])])
            t = _138
            v = v + 1
            u = sha3(mem[mem[64] len _144 + _141 + -mem[64] + 96])
            continue 
        _145 = mem[64]
        mem[mem[64] + 32] = t + sha3(mem[mem[64] len (32 * arg4.length) + -mem[64] + 336])
        mem[mem[64] + 64] = _138
        _146 = mem[64]
        mem[mem[64]] = 64
        mem[64] = mem[64] + 96
        _148 = mem[_146]
        t = _146 + 32
        v = _145 + 96
        u = mem[_146]
        while u + sha3(mem[mem[64] len (32 * arg4.length) + -mem[64] + 336]) >= 32:
            mem[v] = mem[t]
            t = t + 32
            v = v + 32
            u = u - 32
            continue 
        mem[_145 + floor32(mem[_146]) + 96] = mem[_146 + -(mem[_146] % 32) + floor32(mem[_146]) + 64 len mem[_146] % 32] or Mask(8 * -(mem[_146] % 32) + 32, -(8 * -(mem[_146] % 32) + 32) + 256, mem[_145 + floor32(mem[_146]) + 96])
        t = _138
        v = v + 1
        u = sha3(mem[_145 + 96 len _148])
        continue 
    require t == ext_call.return_data[32]
    require not stor3[ext_call.return_data[32]][_105]
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor3[ext_call.return_data[32]][_105]++
    emit Withdraw(address(this.address), address(arg1), arg2, arg3);
}



}
