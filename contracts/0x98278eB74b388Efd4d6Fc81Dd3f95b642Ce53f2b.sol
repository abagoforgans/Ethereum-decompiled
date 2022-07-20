contract main {




// =====================  Runtime code  =====================


address stor0;
uint256 sub_98a72e11;
uint256 sub_560a28df;
uint256 nextSnapshotTime;
address owner;
mapping of struct sub_6ede9ca8;
mapping of uint8 stor6;
mapping of uint256 sub_e0ef84b9;
mapping of uint256 sub_dd53c728;
mapping of uint8 stor9;
array of uint256 sub_b5648fa8;
array of uint256 sub_1b7ab031;
uint256 sub_a41b7d86;
uint256 sub_da01ebc9;
array of uint256 stor660301456019777184113296434797620819555017468543624515662331739614079884729;

function sub_158993fd(?) {
    return sub_1b7ab031.length
}

function sub_1b7ab031(?) {
    require arg1 < sub_1b7ab031.length
    return sub_1b7ab031[arg1]
}

function sub_2928f883(?) {
    return bool(stor6[arg1][arg2])
}

function sub_560a28df(?) {
    return sub_560a28df
}

function sub_6ede9ca8(?) {
    return sub_6ede9ca8[arg1][arg2].field_0, sub_6ede9ca8[arg1][arg2].field_0, sub_6ede9ca8[arg1][arg2].field_160
}

function owner() {
    return owner
}

function sub_98a72e11(?) {
    return sub_98a72e11
}

function sub_a41b7d86(?) {
    return sub_a41b7d86
}

function nextSnapshotTime() {
    return nextSnapshotTime
}

function sub_aabd9857(?) {
    return sub_6ede9ca8[address(arg1)][stor8[address(arg1)]].field_0, 
           sub_6ede9ca8[address(arg1)][stor8[address(arg1)]].field_0,
           sub_6ede9ca8[address(arg2)][stor8[address(arg2)]].field_80
}

function sub_b03ee6c0(?) {
    return sub_dd53c728[arg1]
}

function sub_b5648fa8(?) {
    require arg1 < sub_b5648fa8.length
    return sub_b5648fa8[arg1]
}

function sub_da01ebc9(?) {
    return sub_da01ebc9
}

function sub_dd53c728(?) {
    return sub_6ede9ca8[address(arg1)][stor8[address(arg1)]].field_0, 
           sub_6ede9ca8[address(arg1)][stor8[address(arg1)]].field_0,
           sub_6ede9ca8[address(arg1)][stor8[address(arg1)]].field_160
}

function sub_e0ef84b9(?) {
    return sub_e0ef84b9[arg1]
}

function _fallback() payable {
    revert
}

function sub_f40b26bd(?) {
    require msg.sender == owner
    stor0 = arg1
}

function setOperator(address arg1, bool arg2) {
    require msg.sender == owner
    stor9[address(arg1)] = uint8(arg2)
}

function sub_1149ef5a(?) {
    require stor9[msg.sender]
    sub_560a28df = Mask(224, 0, sub_560a28df + Mask(224, 0, arg1))
}

function sub_9e33c2eb(?) {
    require msg.sender == owner
    require Mask(224, 0, arg1) > 0
    require Mask(224, 0, arg1) <= 10
    require Mask(224, 0, arg2) > 0
    require Mask(224, 0, arg2) <= 10
    sub_a41b7d86 = Mask(224, 0, arg1)
    sub_da01ebc9 = Mask(224, 0, arg2)
}

function sub_36bce998(?) {
    require stor9[msg.sender]
    sub_6ede9ca8[address(arg1)][stor11.length].field_0 = Mask(80, 0, Mask(80, 0, arg4) + sub_6ede9ca8[address(arg1)][stor8[address(arg1)]].field_160)
    sub_6ede9ca8[address(arg1)][stor11.length].field_80 = 0
    if sub_1b7ab031.length != sub_dd53c728[address(arg1)]:
        sub_dd53c728[address(arg1)] = sub_1b7ab031.length
    sub_98a72e11 = Mask(224, 0, Mask(80, 0, Mask(80, 0, arg2) + Mask(80, 0, arg3)) + sub_98a72e11)
    require ext_code.size(stor0)
    call stor0.0x4defaa78 with:
         gas gas_remaining wei
        args address(arg1), Mask(80, 0, Mask(80, 0, arg2) + Mask(80, 0, arg3))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_fa5ccd0b(?) {
    require stor9[msg.sender]
    if Mask(80, 0, sub_6ede9ca8[address(arg1)][stor8[address(arg1)]].field_0 - Mask(80, 0, arg2)):
        sub_6ede9ca8[address(arg1)][stor11.length].field_0 = 0xffff00000000000000000000ffffffffffffffffffffffffffffffffffffff and Mask(96, 160, sub_6ede9ca8[address(arg1)][stor11.length].field_0) or Mask(80, 0, sub_6ede9ca8[address(arg1)][stor8[address(arg1)]].field_0 - Mask(80, 0, arg2)) or Mask(80, 0, sub_6ede9ca8[address(arg1)][stor8[address(arg1)]].field_80 - Mask(80, 0, arg3)) << 80 or Mask(80, 0, sub_6ede9ca8[address(arg1)][stor8[address(arg1)]].field_160 - Mask(80, 0, arg4)) << 160
    else:
        if Mask(80, 0, sub_6ede9ca8[address(arg1)][stor8[address(arg1)]].field_80 - Mask(80, 0, arg3)):
            sub_6ede9ca8[address(arg1)][stor11.length].field_0 = 0xffff00000000000000000000ffffffffffffffffffffffffffffffffffffff and Mask(96, 160, sub_6ede9ca8[address(arg1)][stor11.length].field_0) or Mask(80, 0, sub_6ede9ca8[address(arg1)][stor8[address(arg1)]].field_0 - Mask(80, 0, arg2)) or Mask(80, 0, sub_6ede9ca8[address(arg1)][stor8[address(arg1)]].field_80 - Mask(80, 0, arg3)) << 80 or Mask(80, 0, sub_6ede9ca8[address(arg1)][stor8[address(arg1)]].field_160 - Mask(80, 0, arg4)) << 160
        else:
            stor6[address(arg1)][stor11.length] = 1
            sub_6ede9ca8[address(arg1)][stor11.length].field_0 = 0
    if sub_1b7ab031.length != sub_dd53c728[address(arg1)]:
        sub_dd53c728[address(arg1)] = sub_1b7ab031.length
    sub_98a72e11 = Mask(224, 0, sub_98a72e11 - Mask(80, 0, Mask(80, 0, arg2) + Mask(80, 0, arg3)))
    require ext_code.size(stor0)
    call stor0.0x646a59b3 with:
         gas gas_remaining wei
        args address(arg1), Mask(80, 0, Mask(80, 0, arg2) + Mask(80, 0, arg3))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_08688ce0(?) {
    require stor9[msg.sender]
    if Mask(80, 0, arg2 + sub_6ede9ca8[address(arg1)][stor8[address(arg1)]].field_0):
        sub_6ede9ca8[address(arg1)][stor11.length].field_0 = 0xffff00000000000000000000ffffffffffffffffffffffffffffffffffffff and Mask(96, 160, sub_6ede9ca8[address(arg1)][stor11.length].field_0) or Mask(80, 0, arg2 + sub_6ede9ca8[address(arg1)][stor8[address(arg1)]].field_0) or Mask(80, 0, arg3 + sub_6ede9ca8[address(arg1)][stor8[address(arg1)]].field_80) << 80 or Mask(80, 0, arg4 + sub_6ede9ca8[address(arg1)][stor8[address(arg1)]].field_160) << 160
    else:
        if Mask(80, 0, arg3 + sub_6ede9ca8[address(arg1)][stor8[address(arg1)]].field_80):
            sub_6ede9ca8[address(arg1)][stor11.length].field_0 = 0xffff00000000000000000000ffffffffffffffffffffffffffffffffffffff and Mask(96, 160, sub_6ede9ca8[address(arg1)][stor11.length].field_0) or Mask(80, 0, arg2 + sub_6ede9ca8[address(arg1)][stor8[address(arg1)]].field_0) or Mask(80, 0, arg3 + sub_6ede9ca8[address(arg1)][stor8[address(arg1)]].field_80) << 80 or Mask(80, 0, arg4 + sub_6ede9ca8[address(arg1)][stor8[address(arg1)]].field_160) << 160
        else:
            stor6[address(arg1)][stor11.length] = 1
            sub_6ede9ca8[address(arg1)][stor11.length].field_0 = 0
    if sub_1b7ab031.length != sub_dd53c728[address(arg1)]:
        sub_dd53c728[address(arg1)] = sub_1b7ab031.length
    if Mask(224, 0, arg3 + arg2 + sub_98a72e11) > sub_98a72e11:
        require ext_code.size(stor0)
        call stor0.0x4defaa78 with:
             gas gas_remaining wei
            args address(arg1), Mask(224, 0, arg3 + arg2)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if Mask(224, 0, arg3 + arg2 + sub_98a72e11) < sub_98a72e11:
            require ext_code.size(stor0)
            call stor0.0x646a59b3 with:
                 gas gas_remaining wei
                args address(arg1), Mask(224, 0, -arg3 - arg2)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    sub_98a72e11 = Mask(224, 0, arg3 + arg2 + sub_98a72e11)
}

function sub_8b26819f(?) {
    require msg.sender == owner
    require block.timestamp + (6 * 3600) > nextSnapshotTime
    sub_b5648fa8.length++
    sub_b5648fa8[sub_b5648fa8.length] = sub_98a72e11
    sub_1b7ab031.length++
    stor175B[stor11.length] = Mask(224, 0, Mask(224, 0, sub_a41b7d86 * sub_560a28df) / 100)
    sub_560a28df = Mask(224, 0, sub_560a28df - (Mask(224, 0, (sub_da01ebc9 * sub_560a28df) + (sub_a41b7d86 * sub_560a28df)) / 100))
    require ext_code.size(stor0)
    call stor0.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        idx = 1
        s = 0
        while idx <= ext_call.return_data[0]:
            mem[(32 * ext_call.return_data[0]) + 132] = idx
            require ext_code.size(stor0)
            call stor0.0xe3d39e66 with:
                 gas gas_remaining wei
                args idx
            mem[(32 * ext_call.return_data[0]) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx - 1 < ext_call.return_data[0]
            mem[(32 * idx - 1) + 128] = ext_call.return_data[0]
            require idx - 1 < ext_call.return_data[0]
            idx = idx + 1
            s = ext_call.return_data[0] + s
            continue 
        idx = 1
        while idx <= ext_call.return_data[0]:
            require idx - 1 < ext_call.return_data[0]
            _44 = mem[(32 * idx - 1) + 128]
            require _40 * ext_call.return_data[0]
            mem[(32 * ext_call.return_data[0]) + 128] = 0x5d74979e00000000000000000000000000000000000000000000000000000000
            mem[(32 * ext_call.return_data[0]) + 132] = Mask(224, 0, Mask(224, 0, sub_da01ebc9 * sub_560a28df) / 100) * _44 / _40 * ext_call.return_data[0]
            mem[(32 * ext_call.return_data[0]) + 164] = idx
            require ext_code.size(stor0)
            call stor0.0x5d74979e with:
                 gas gas_remaining wei
                args Mask(224, 0, Mask(224, 0, sub_da01ebc9 * sub_560a28df) / 100) * _44 / _40 * ext_call.return_data[0], idx
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
    else:
        mem[128 len 32 * ext_call.return_data[0]] = code.data[7018 len 32 * ext_call.return_data[0]]
        idx = 1
        s = 0
        while idx <= ext_call.return_data[0]:
            mem[(32 * ext_call.return_data[0]) + 132] = idx
            require ext_code.size(stor0)
            call stor0.0xe3d39e66 with:
                 gas gas_remaining wei
                args idx
            mem[(32 * ext_call.return_data[0]) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx - 1 < ext_call.return_data[0]
            mem[(32 * idx - 1) + 128] = ext_call.return_data[0]
            require idx - 1 < ext_call.return_data[0]
            idx = idx + 1
            s = ext_call.return_data[0] + s
            continue 
        idx = 1
        while idx <= ext_call.return_data[0]:
            require idx - 1 < ext_call.return_data[0]
            require _41 * ext_call.return_data[0]
            mem[(32 * ext_call.return_data[0]) + 128] = 0x5d74979e00000000000000000000000000000000000000000000000000000000
            mem[(32 * ext_call.return_data[0]) + 132] = Mask(224, 0, Mask(224, 0, sub_da01ebc9 * sub_560a28df) / 100) * mem[(32 * idx - 1) + 128] / _41 * ext_call.return_data[0]
            mem[(32 * ext_call.return_data[0]) + 164] = idx
            require ext_code.size(stor0)
            call stor0.0x5d74979e with:
                 gas gas_remaining wei
                args mem[(32 * ext_call.return_data[0]) + 132], idx
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
    nextSnapshotTime = block.timestamp + (24 * 3600)
}

function sub_22ea067a(?) {
    require arg1 <= arg2
    require arg1 >= sub_e0ef84b9[msg.sender]
    require arg2 < sub_1b7ab031.length
    mem[64] = 480
    mem[384] = sub_6ede9ca8[msg.sender][stor7[msg.sender] - 1].field_0
    mem[416] = sub_6ede9ca8[msg.sender][stor7[msg.sender] - 1].field_80
    mem[448] = sub_6ede9ca8[msg.sender][stor7[msg.sender] - 1].field_160
    s = 0
    s = 192
    idx = arg1
    s = 0
    while idx <= arg2:
        mem[0] = idx
        mem[32] = sha3(msg.sender, 5)
        _197 = mem[64]
        mem[64] = mem[64] + 96
        mem[_197] = sub_6ede9ca8[msg.sender][idx].field_0
        mem[_197 + 32] = sub_6ede9ca8[msg.sender][idx].field_80
        mem[_197 + 64] = sub_6ede9ca8[msg.sender][idx].field_160
        mem[32] = sha3(msg.sender, 6)
        if stor6[msg.sender][idx]:
            if idx < sub_b5648fa8.length:
                if idx < sub_1b7ab031.length:
                    mem[0] = 11
                    if sub_b5648fa8[idx]:
                        s = stor6[msg.sender][idx]
                        s = _197
                        idx = idx + 1
                        s = (Mask(224, 0, sub_1b7ab031[idx] * Mask(80, 0, sub_6ede9ca8[msg.sender][idx].field_0 + sub_6ede9ca8[msg.sender][idx].field_80)) / sub_b5648fa8[idx]) + s
                        continue 
        else:
            if sub_6ede9ca8[msg.sender][idx].field_0:
                if idx < sub_b5648fa8.length:
                    if idx < sub_1b7ab031.length:
                        mem[0] = 11
                        if sub_b5648fa8[idx]:
                            s = stor6[msg.sender][idx]
                            s = _197
                            idx = idx + 1
                            s = (Mask(224, 0, sub_1b7ab031[idx] * Mask(80, 0, sub_6ede9ca8[msg.sender][idx].field_0 + sub_6ede9ca8[msg.sender][idx].field_80)) / sub_b5648fa8[idx]) + s
                            continue 
            else:
                if sub_6ede9ca8[msg.sender][idx].field_80:
                    if idx < sub_b5648fa8.length:
                        if idx < sub_1b7ab031.length:
                            mem[0] = 11
                            if sub_b5648fa8[idx]:
                                s = stor6[msg.sender][idx]
                                s = _197
                                idx = idx + 1
                                s = (Mask(224, 0, sub_1b7ab031[idx] * Mask(80, 0, sub_6ede9ca8[msg.sender][idx].field_0 + sub_6ede9ca8[msg.sender][idx].field_80)) / sub_b5648fa8[idx]) + s
                                continue 
                else:
                    if idx < sub_b5648fa8.length:
                        if idx < sub_1b7ab031.length:
                            mem[0] = 11
                            if sub_b5648fa8[idx]:
                                s = stor6[msg.sender][idx]
                                s = 384
                                idx = idx + 1
                                s = (Mask(224, 0, sub_1b7ab031[idx] * Mask(80, 0, mem[384] + mem[416])) / sub_b5648fa8[idx]) + s
                                continue 
        revert
    mem[0] = arg2
    mem[32] = sha3(msg.sender, 5)
    _194 = mem[64]
    mem[64] = mem[64] + 96
    mem[_194] = sub_6ede9ca8[msg.sender][arg2].field_0
    mem[_194 + 32] = sub_6ede9ca8[msg.sender][arg2].field_80
    mem[_194 + 64] = sub_6ede9ca8[msg.sender][arg2].field_160
    if not sub_6ede9ca8[msg.sender][arg2].field_0:
        if not sub_6ede9ca8[msg.sender][arg2].field_80:
            if not stor6[msg.sender][arg2]:
                if Mask(80, 0, mem[384] + mem[416]) > 0:
                    sub_6ede9ca8[msg.sender][arg2].field_0 = 0xffff00000000000000000000ffffffffffffffffffffffffffffffffffffff and Mask(96, 160, sub_6ede9ca8[msg.sender][arg2].field_0) or mem[406 len 10] or Mask(80, 0, mem[416]) << 80 or Mask(80, 0, mem[448]) << 160
    sub_e0ef84b9[address(msg.sender)] = arg2 + 1
    require ext_code.size(stor0)
    call stor0.0x118382ff with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    if Mask(224, 0, ext_call.return_data[0]) <= 0:
        require ext_code.size(0xdf0960778c6e6597f197ed9a25f12f5d971da86c)
        if not address(ext_call.return_data[128]):
            call 0xdf0960778c6e6597f197ed9a25f12f5d971da86c.0x4f03f17c with:
                 gas gas_remaining wei
                args 4294967296 * s - ext_call.return_data[32] - ext_call.return_data[0], msg.sender
        else:
            if Mask(224, 0, ext_call.return_data[96]) <= 0:
                call 0xdf0960778c6e6597f197ed9a25f12f5d971da86c.0x4f03f17c with:
                     gas gas_remaining wei
                    args 4294967296 * s - ext_call.return_data[96] - ext_call.return_data[32] - ext_call.return_data[0], msg.sender
            else:
                call 0xdf0960778c6e6597f197ed9a25f12f5d971da86c.0x4f03f17c with:
                     gas gas_remaining wei
                    args 4294967296 * Mask(224, 0, s * ext_call.return_data[96]) / 100, address(ext_call.return_data[128])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(0xdf0960778c6e6597f197ed9a25f12f5d971da86c)
                call 0xdf0960778c6e6597f197ed9a25f12f5d971da86c.0x4f03f17c with:
                     gas gas_remaining wei
                    args 4294967296 * s - (Mask(224, 0, s * ext_call.return_data[96]) / 100) - ext_call.return_data[32] - ext_call.return_data[0], msg.sender
    else:
        require ext_code.size(stor0)
        call stor0.0x70b11a35 with:
             gas gas_remaining wei
            args msg.sender, Mask(224, 0, Mask(224, 0, ext_call.return_data[0] * s) / 100)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0xdf0960778c6e6597f197ed9a25f12f5d971da86c)
        call 0xdf0960778c6e6597f197ed9a25f12f5d971da86c.0x4f03f17c with:
             gas gas_remaining wei
            args 4294967296 * Mask(224, 0, ext_call.return_data[32] * s) / 100, address(ext_call.return_data[64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0xdf0960778c6e6597f197ed9a25f12f5d971da86c)
        if not address(ext_call.return_data[128]):
            call 0xdf0960778c6e6597f197ed9a25f12f5d971da86c.0x4f03f17c with:
                 gas gas_remaining wei
                args 4294967296 * s - (Mask(224, 0, ext_call.return_data[32] * s) / 100) - (Mask(224, 0, ext_call.return_data[0] * s) / 100), msg.sender
        else:
            if Mask(224, 0, ext_call.return_data[96]) <= 0:
                call 0xdf0960778c6e6597f197ed9a25f12f5d971da86c.0x4f03f17c with:
                     gas gas_remaining wei
                    args 4294967296 * s - ext_call.return_data[96] - (Mask(224, 0, ext_call.return_data[32] * s) / 100) - (Mask(224, 0, ext_call.return_data[0] * s) / 100), msg.sender
            else:
                call 0xdf0960778c6e6597f197ed9a25f12f5d971da86c.0x4f03f17c with:
                     gas gas_remaining wei
                    args 4294967296 * Mask(224, 0, s * ext_call.return_data[96]) / 100, address(ext_call.return_data[128])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(0xdf0960778c6e6597f197ed9a25f12f5d971da86c)
                call 0xdf0960778c6e6597f197ed9a25f12f5d971da86c.0x4f03f17c with:
                     gas gas_remaining wei
                    args 4294967296 * s - (Mask(224, 0, s * ext_call.return_data[96]) / 100) - (Mask(224, 0, ext_call.return_data[32] * s) / 100) - (Mask(224, 0, ext_call.return_data[0] * s) / 100), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
