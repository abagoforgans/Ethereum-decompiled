contract main {


// =======================  Init code  ======================


uint256 stor1;

function _fallback() payable {
    stor1 = 1
    require not msg.value
    return code.data[35 len 7840]
}



// =====================  Runtime code  =====================


#
#  - sub_02cd519f(?)
#  - sub_6f62741b(?)
#  - deploy()
#  - sub_9e8147a8(?)
#  - sub_a6ec80e2(?)
#
const sub_91f8035c(?) = 0


address stor0;
uint256 nonce;

function nonce() {
    return nonce
}

function _fallback() payable {
    revert
}

function sub_a2c84af8(?) {
    s = 0
    idx = arg1
    while idx > 0:
        s = s + 1
        idx = idx / 256
        continue 
    return uint8(s)
}

function sub_85db6d66(?) {
    if not stor0:
        return 0
    require ext_code.size(stor0)
    call stor0.hasRole(address rg1, bytes32 rg2, address rg3) with:
         gas gas_remaining - 710 wei
        args address(this.address), 'assign', msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    require ext_code.size(arg1)
    call arg1.0x19ab453c with:
         gas gas_remaining - 710 wei
        args arg2
    require ext_call.success
    emit 0xa9e1ee75: arg1, arg2
    return 1
}

function sub_c124c64e(?) {
    if not arg1:
        return address(sha3(0, 0, this.address, 128))
    if arg1 < 128:
        return address(sha3(0, 0, this.address, uint8(arg1)))
    if arg1 <= 255:
        return address(sha3(0, 0, this.address, 0, uint8(arg1)))
    if arg1 <= 65535:
        return address(sha3(0, 0, this.address, 0, uint16(arg1)))
    if arg1 <= 16777215:
        return address(sha3(0, 0, this.address, 0, arg1 % 16777216))
    require arg1 <= test266151307()
    return address(sha3(0, 0, this.address, 0, uint32(arg1)))
}

function setupAmbi2(address arg1) {
    if stor0:
        return 0
    require ext_code.size(arg1)
    call arg1.claimFor(address rg1, address rg2) with:
         gas gas_remaining - 710 wei
        args address(this.address), msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        require ext_code.size(arg1)
        call arg1.isOwner(address rg1, address rg2) with:
             gas gas_remaining - 710 wei
            args address(this.address), msg.sender
        require ext_call.success
        if not ext_call.return_data[0]:
            return 0
    stor0 = arg1
    return 1
}

function sub_57202bfd(?) {
    if not stor0:
        return 0
    require ext_code.size(stor0)
    call stor0.hasRole(address rg1, bytes32 rg2, address rg3) with:
         gas gas_remaining - 710 wei
        args address(this.address), 'assign', msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    require ext_code.size(arg1)
    if arg3:
        call arg1.0x19ab453c with:
             gas gas_remaining - 710 wei
            args arg2
    else:
        call arg1.0x3f48ae1a with:
             gas gas_remaining - 710 wei
            args arg2
    require ext_call.success
    emit 0xa9e1ee75: arg1, arg2
    return 1
}

function sub_249e6bb8(?) {
    mem[160] = arg2
    idx = 0
    while uint8(idx) < arg2:
        require -mem[160] + uint8(idx) + 32 < 32
        require uint8(idx) < mem[160]
        mem[uint8(idx) + 192 len 8] = Mask(8, -(('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0))), ('add', -11, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0)), ('add', 32, ('mul', -1, ('mem', ('range', 160, 32))), ('mask_shl', 8, 0, 0, ('var', 0)))), 0) + 256, 0) << (('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0))), ('add', -11, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0)), ('add', 32, ('mul', -1, ('mem', ('range', 160, 32))), ('mask_shl', 8, 0, 0, ('var', 0)))), 0) - 256
        idx = idx + 1
        continue 
    mem[(32 * uint8(arg2)) + 192] = 32
    mem[(32 * uint8(arg2)) + 224] = mem[160]
    mem[(32 * uint8(arg2)) + 256 len ceil32(mem[160])] = mem[192 len ceil32(mem[160])]
    if not mem[160] % 32:
        return 32, mem[(32 * uint8(arg2)) + 224 len mem[160] + 32]
    mem[floor32(mem[160]) + (32 * uint8(arg2)) + 256] = mem[floor32(mem[160]) + (32 * uint8(arg2)) + -(mem[160] % 32) + 288 len mem[160] % 32]
    return Array(len=mem[160], data=mem[(32 * uint8(arg2)) + 256 len floor32(mem[160]) + 32])
}

function sub_3d82868c(?) {
    s = 0
    idx = arg1
    while idx > 0:
        s = s + 1
        idx = idx / 256
        continue 
    t = 0
    while uint8(t) < uint8(s):
        require -uint8(s) + uint8(t) + 32 < 32
        require uint8(t) < uint8(s)
        mem[uint8(t) + 224 len 8] = Mask(8, -(('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0))), ('add', -11, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0)), ('add', 32, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', 1))), ('mask_shl', 8, 0, 0, ('var', 2)))), 0) + 256, 0) << (('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0))), ('add', -11, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0)), ('add', 32, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', 1))), ('mask_shl', 8, 0, 0, ('var', 2)))), 0) - 256
        t = t + 1
        continue 
    mem[(32 * uint8(s)) + 288 len ceil32(uint8(s))] = mem[224 len ceil32(uint8(s))]
    if not s % 32:
        return Array(len=s << 248, data=mem[224 len uint8(s)])
    mem[Mask(3, 5, s) + (32 * uint8(s)) + 288] = mem[Mask(3, 5, s) + (32 * uint8(s)) + -(s % 32) + 320 len s % 32]
    return Array(len=s << 248, data=mem[224 len ceil32(uint8(s))], mem[(32 * uint8(s)) + ceil32(uint8(s)) + 288 len Mask(3, 5, s) + -ceil32(uint8(s)) + 32]), 
}

function sub_bb05df23(?) {
    if arg1 < test266151307():
        if not arg1:
            return address(sha3(0, 0, this.address, 128))
        if arg1 < 128:
            return address(sha3(0, 0, this.address, uint8(arg1)))
        if arg1 <= 255:
            return address(sha3(0, 0, this.address, 0, uint8(arg1)))
        if arg1 <= 65535:
            return address(sha3(0, 0, this.address, 0, uint16(arg1)))
        if arg1 <= 16777215:
            return address(sha3(0, 0, this.address, 0, arg1 % 16777216))
        require arg1 <= test266151307()
        return address(sha3(0, 0, this.address, 0, uint32(arg1)))
    s = 0
    idx = arg1
    while idx > 0:
        s = s + 1
        idx = idx / 256
        continue 
    t = 0
    while uint8(t) < uint8(s):
        require -uint8(s) + uint8(t) + 32 < 32
        require uint8(t) < uint8(s)
        mem[uint8(t) + 192 len 8] = Mask(8, -(('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0))), ('add', -11, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0)), ('add', 32, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', 1))), ('mask_shl', 8, 0, 0, ('var', 2)))), 0) + 256, 0) << (('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0))), ('add', -11, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0)), ('add', 32, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', 1))), ('mask_shl', 8, 0, 0, ('var', 2)))), 0) - 256
        t = t + 1
        continue 
    mem[(32 * uint8(s)) + 192] = s + 214 << 248
    mem[(32 * uint8(s)) + 193] = 0x9400000000000000000000000000000000000000000000000000000000000000
    mem[(32 * uint8(s)) + 194] = address(this.address)
    mem[(32 * uint8(s)) + 214] = s + 128 << 248
    mem[(32 * uint8(s)) + 215 len Mask(3, 5, s)] = mem[192 len Mask(3, 5, s)]
    mem[(32 * uint8(s)) + Mask(3, 5, s) + -(s % 32) + 247 len s % 32] = mem[Mask(3, 5, s) + -(s % 32) + 224 len s % 32]
    mem[(32 * uint8(s)) + 192] = address(sha3(uint8(s + 214), 0, this.address, uint8(s + 128), mem[192 len Mask(3, 5, s)], mem[(32 * uint8(s)) + Mask(3, 5, s) + 215 len uint8(s) - Mask(3, 5, s)]))
    return memory
      from (32 * uint8(s)) + 192
       len 32
}



}
