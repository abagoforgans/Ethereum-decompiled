contract main {




// =====================  Runtime code  =====================


const sub_d072b045(?) = block.timestamp


address stor0;
address stor1;
address sub_a9d9f97fAddress;
address sub_ee76ae30Address;
uint8 stor4; offset 160
uint128 stor4; offset 160
address sub_ec081d2eAddress;
address ceoAddress;
uint256 sub_0f5cb780;
uint256 sub_11626809;
uint256 sub_bf2139b5;
uint256 sub_75e5c513;
mapping of uint8 stor10;

function ceoAddress() {
    return ceoAddress
}

function sub_0f5cb780(?) {
    return sub_0f5cb780
}

function sub_11626809(?) {
    return sub_11626809
}

function paused() {
    return bool(uint8(stor4.field_160))
}

function sub_75e5c513(?) {
    return sub_75e5c513
}

function sub_7e8d3aa3(?) {
    return bool(stor10[arg1])
}

function sub_a9d9f97f(?) {
    return sub_a9d9f97fAddress
}

function sub_bf2139b5(?) {
    return sub_bf2139b5
}

function sub_ec081d2e(?) {
    return sub_ec081d2eAddress
}

function sub_ee76ae30(?) {
    return sub_ee76ae30Address
}

function _fallback() payable {
    revert
}

function sub_8334bd08(?) {
    require msg.sender == ceoAddress
    sub_0f5cb780 = arg1
}

function sub_aaa2d84c(?) {
    require msg.sender == ceoAddress
    sub_bf2139b5 = arg1
}

function sub_6f7cacb8(?) {
    require msg.sender == ceoAddress
    sub_ec081d2eAddress = arg1
}

function sub_b5fd858b(?) {
    require msg.sender == ceoAddress
    sub_11626809 = block.timestamp + arg1
}

function setCEO(address arg1) {
    require msg.sender == ceoAddress
    require arg1
    ceoAddress = arg1
}

function sub_20e635a4(?) {
    require msg.sender == ceoAddress
    sub_11626809 = block.timestamp + sub_0f5cb780
}

function sub_6c5697d2(?) {
    require msg.sender == ceoAddress
    sub_ee76ae30Address = arg1
    stor1 = sub_ee76ae30Address
}

function sub_cdac70cc(?) {
    require msg.sender == ceoAddress
    sub_a9d9f97fAddress = arg1
    stor0 = sub_a9d9f97fAddress
}

function unpause() {
    require msg.sender == ceoAddress
    require uint8(stor4.field_160)
    Mask(96, 0, stor4.field_160) = 0
}

function pause() {
    require msg.sender == ceoAddress
    require not uint8(stor4.field_160)
    Mask(96, 0, stor4.field_160) = 1
}

function payout() {
    require msg.sender == ceoAddress
    call ceoAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_b119af88(?) {
    mem[128 len arg4.length] = arg4[all]
    require not uint8(stor4.field_160)
    mem[ceil32(arg4.length) + 128 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
    mem[ceil32(arg4.length) + floor32(arg4.length) + -(arg4.length % 32) + 160 len arg4.length % 32] = mem[floor32(arg4.length) + -(arg4.length % 32) + 160 len arg4.length % 32]
    mem[arg4.length + ceil32(arg4.length) + 128] = address(this.address)
    mem[arg4.length + ceil32(arg4.length) + 148] = sub_ec081d2eAddress
    signer = erecover(sha3(call.data[arg4 + 36 len floor32(arg4.length)], mem[ceil32(arg4.length) + floor32(arg4.length) + 128 len (arg4.length % 32) + 20], sub_ec081d2eAddress), arg1 << 248, arg2, arg3) 
    mem[ceil32(arg4.length) + 128] = signer
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require uint32(ext_code.size(msg.sender)) <= 0
    if address(signer) != sub_ec081d2eAddress:
        mem[ceil32(arg4.length) + 288 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
        mem[arg4.length + ceil32(arg4.length) + 288] = 16
        emit 0xfd959850: msg.sender, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + 288 len arg4.length + -ceil32(arg4.length) + 32], 'signature failed'), arg4.length + 128
        return 0
    mem[ceil32(arg4.length) + 160] = 6
    mem[ceil32(arg4.length) + 192 len 192] = code.data[7367 len 192]
    idx = 0
    while idx < 6:
        require idx < arg4.length
        require idx < 6
        mem[ceil32(arg4.length) + idx + 192 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
        idx = idx + 1
        continue 
    idx = 0
    s = 0
    while idx < 6:
        require idx < 6
        if Mask(8, 248, mem[ceil32(arg4.length) + idx + 192]) < 0x3000000000000000000000000000000000000000000000000000000000000000:
            idx = idx + 1
            s = s
            continue 
        require idx < 6
        if Mask(8, 248, mem[ceil32(arg4.length) + idx + 192]) > 0x3900000000000000000000000000000000000000000000000000000000000000:
            idx = idx + 1
            s = s
            continue 
        require idx < 6
        idx = idx + 1
        s = (10 * s) + mem[ceil32(arg4.length) + idx + 192 len 1] - 48
        continue 
    mem[ceil32(arg4.length) + 256 len 128] = code.data[7367 len 128]
    idx = 6
    while idx < 10:
        require idx < arg4.length
        require idx - 6 < 4
        mem[ceil32(arg4.length) + idx + 250 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
        idx = idx + 1
        continue 
    idx = 0
    t = 0
    while idx < 4:
        require idx < 4
        if Mask(8, 248, mem[ceil32(arg4.length) + idx + 256]) < 0x3000000000000000000000000000000000000000000000000000000000000000:
            idx = idx + 1
            t = t
            continue 
        require idx < 4
        if Mask(8, 248, mem[ceil32(arg4.length) + idx + 256]) > 0x3900000000000000000000000000000000000000000000000000000000000000:
            idx = idx + 1
            t = t
            continue 
        require idx < 4
        idx = idx + 1
        t = (10 * t) + mem[ceil32(arg4.length) + idx + 256 len 1] - 48
        continue 
    if block.timestamp <= sub_11626809:
        if sub_75e5c513 + t >= sub_bf2139b5:
            mem[ceil32(arg4.length) + 416 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
            mem[arg4.length + ceil32(arg4.length) + 416] = 13
            mem[arg4.length + ceil32(arg4.length) + 448] = 'limit reached'
            emit 0xfd959850: msg.sender, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + 416 len arg4.length + -ceil32(arg4.length) + 64]), arg4.length + 128
            return 0
        if stor10[s]:
            mem[ceil32(arg4.length) + 416 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
            idx = ceil32(arg4.length)
            mem[arg4.length + ceil32(arg4.length) + 416] = 12
            mem[arg4.length + ceil32(arg4.length) + 448] = 'nonce exists'
            emit 0xfd959850: msg.sender, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + 416 len arg4.length + -ceil32(arg4.length) + 64]), arg4.length + 128
            return 0
    else:
        require sub_0f5cb780
        sub_11626809 = sub_11626809 + sub_0f5cb780 + (block.timestamp - sub_11626809 / sub_0f5cb780 * sub_0f5cb780)
        sub_75e5c513 = 0
        emit 0xdb2077a8: Array(len=arg4.length, data=arg4[all])
        if sub_75e5c513 + t >= sub_bf2139b5:
            mem[ceil32(arg4.length) + 416 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
            mem[arg4.length + ceil32(arg4.length) + 416] = 13
            mem[arg4.length + ceil32(arg4.length) + 448] = 'limit reached'
            emit 0xfd959850: msg.sender, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + 416 len arg4.length + -ceil32(arg4.length) + 64]), arg4.length + 128
            return 0
        if stor10[s]:
            mem[ceil32(arg4.length) + 416 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
            mem[arg4.length + ceil32(arg4.length) + 416] = 12
            mem[arg4.length + ceil32(arg4.length) + 448] = 'nonce exists'
            emit 0xfd959850: msg.sender, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + 416 len arg4.length + -ceil32(arg4.length) + 64]), arg4.length + 128
            return 0
    ('iszero', ('stor', ('map', ('var', 1), ('name', 'stor10', 10))))
    require ext_code.size(stor1)
    call stor1.0x70a08231 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        mem[ceil32(arg4.length) + 416 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
        mem[arg4.length + ceil32(arg4.length) + 416] = 10
        mem[arg4.length + ceil32(arg4.length) + 448] = 'no planets'
        emit 0xfd959850: msg.sender, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + 416 len arg4.length + -ceil32(arg4.length) + 64]), arg4.length + 128
        return 0
    sub_75e5c513 += t
    stor10[s] = 1
    emit 0x193a1a01: msg.sender, t, s
    require ext_code.size(stor0)
    call stor0.mintTokens(address arg1, uint256 arg2) with:
         gas 100 * 10^6 wei
        args msg.sender, 10^18 * t
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 1
}



}
