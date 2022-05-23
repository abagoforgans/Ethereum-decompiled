contract main {




// =====================  Runtime code  =====================


#
#  - sub_293c8e2e(?)
#
uint256 stor0;
uint256 stor1;
address stor2;
uint256 sub_73a3c6cc;
address stor4;
array of struct sub_bb90b9fb;

function sub_73a3c6cc(?) {
    return sub_73a3c6cc
}

function sub_bb90b9fb(?) {
    return sub_bb90b9fb[arg1].field_3072
}

function sub_c559d6cc(?) {
    return bool(sub_bb90b9fb[arg1].field_2816)
}

function priceFeedSource() {
    return sub_bb90b9fb[arg1].field_512
}

function _fallback() payable {
    revert
}

function sub_82d9f1c2(?) {
    emit 0xf61ef224: arg1, msg.sender
}

function sub_584c474a(?) {
    require msg.sender == stor4
    sub_73a3c6cc = arg1
}

function sub_7af819bc(?) {
    if 2 < sub_bb90b9fb[arg1].field_256:
        if sub_bb90b9fb[arg1].field_0 != msg.sender:
            revert with 0, 'denied!'
        emit 0x1363b0ab: arg1, arg2
}

function sub_444ed7b1(?) {
    if 0 >= sub_bb90b9fb[arg1].field_256:
        return 0
    if sub_bb90b9fb[arg1].field_256 != 1:
        return bool(sub_bb90b9fb[arg1][10][address(arg2)].field_0)
    return bool(sub_bb90b9fb[sub_bb90b9fb[arg1].field_4096][10][address(arg2)].field_0)
}

function sub_10b6b12e(?) {
    require ext_code.size(0xc36e414410695a3f094156cf2b16c2f996655902)
    delegate 0xc36e414410695a3f094156cf2b16c2f996655902.0x4f94d2f2 with:
         gas gas_remaining wei
        args 6, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function sub_61286a3f(?) {
    if not stor1:
        if stor0 >= stor0:
            if stor0 >= 0:
                return stor0
    else:
        if arg1.length * stor1 / stor1 == arg1.length:
            if (arg1.length * stor1) + stor0 >= stor0:
                if (arg1.length * stor1) + stor0 >= arg1.length * stor1:
                    return ((arg1.length * stor1) + stor0)
    revert
}

function sub_eef3798e(?) {
    if stor4 != msg.sender:
        revert with 0, 'denied!'
    require ext_code.size(0xc36e414410695a3f094156cf2b16c2f996655902)
    delegate 0xc36e414410695a3f094156cf2b16c2f996655902.0xc762b079 with:
         gas gas_remaining wei
        args 6, address(arg1), arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_6ca3b7b6(?) {
    require 0 < sub_bb90b9fb[arg1].field_256
    if sub_bb90b9fb[arg1].field_256 > 1:
        if sub_bb90b9fb[arg1].field_0 != msg.sender:
            revert with 0, 'denied!'
    else:
        if sub_bb90b9fb[sub_bb90b9fb[arg1].field_4096].field_256 > 1:
            if sub_bb90b9fb[sub_bb90b9fb[arg1].field_4096].field_0 != msg.sender:
                revert with 0, 'denied!'
    sub_bb90b9fb[arg1].field_2816 = 1
    emit 0xd97d4fc6: arg1, arg1
}

function sub_c00aa3f6(?) {
    require ext_code.size(0xc36e414410695a3f094156cf2b16c2f996655902)
    delegate 0xc36e414410695a3f094156cf2b16c2f996655902.0x947d2bf with:
         gas gas_remaining wei
        args 6, arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not delegate.return_data[0]
    require 0 < sub_bb90b9fb[arg1].field_256
    require msg.sender == sub_bb90b9fb[arg1].field_0
    sub_bb90b9fb[arg1][10][address(arg2)].field_0 = 1
}

function sub_a8efa269(?) {
    require 1 < sub_bb90b9fb[arg2].field_256
    require not sub_bb90b9fb[arg1].field_256
    if sub_bb90b9fb[arg2].field_0 != msg.sender:
        revert with 0, 'denied!'
    if sub_bb90b9fb[arg2].field_3840:
        if sub_bb90b9fb[sub_bb90b9fb[arg2].field_3840].field_256 == 1:
            sub_bb90b9fb[arg1].field_3328 = sub_bb90b9fb[arg2].field_3840
    sub_bb90b9fb[arg1].field_256 = 1
    sub_bb90b9fb[arg1].field_3584 = uint8(arg3)
    sub_bb90b9fb[arg1].field_4096 = arg2
    sub_bb90b9fb[arg2].field_3840 = arg1
}

function sub_30bbc643(?) {
    if arg1:
        require ext_code.size(stor2)
        call stor2.0xdd62ed3e with:
             gas gas_remaining wei
            args address(arg1), this.address
    else:
        if not msg.sender:
            return 0
        require ext_code.size(stor2)
        call stor2.0xdd62ed3e with:
             gas gas_remaining wei
            args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_54eb5e67(?) {
    if stor4 != msg.sender:
        revert with 0, 'denied!'
    require ext_code.size(0xc36e414410695a3f094156cf2b16c2f996655902)
    delegate 0xc36e414410695a3f094156cf2b16c2f996655902.0xcfca0468 with:
         gas gas_remaining wei
        args 6, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if delegate.return_data[0]:
        if arg2:
            require ext_code.size(0xc36e414410695a3f094156cf2b16c2f996655902)
            delegate 0xc36e414410695a3f094156cf2b16c2f996655902.0xc762b079 with:
                 gas gas_remaining wei
                args 6, address(arg1), arg2
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
}

function sub_4dc3ec5a(?) {
    require 0 < sub_bb90b9fb[arg1].field_256
    require not sub_bb90b9fb[arg1].field_3584
    if sub_bb90b9fb[arg1].field_0 != msg.sender:
        revert with 0, 'denied!'
    require sub_bb90b9fb[arg1].field_0 != arg2
    require ext_code.size(0xc36e414410695a3f094156cf2b16c2f996655902)
    delegate 0xc36e414410695a3f094156cf2b16c2f996655902.0x82b81256 with:
         gas gas_remaining wei
        args sha3(arg1, 11) + 5, arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xc36e414410695a3f094156cf2b16c2f996655902)
    delegate 0xc36e414410695a3f094156cf2b16c2f996655902.0xb76accb9 with:
         gas gas_remaining wei
        args sha3(address(arg2), 12), arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0xd97d4fc6: arg1, arg1
}

function sub_510bb22a(?) {
    require 0 < sub_bb90b9fb[arg1].field_256
    require not sub_bb90b9fb[arg1].field_3584
    if sub_bb90b9fb[arg1].field_0 != msg.sender:
        revert with 0, 'denied!'
    require ext_code.size(0xc36e414410695a3f094156cf2b16c2f996655902)
    delegate 0xc36e414410695a3f094156cf2b16c2f996655902.0x9915be14 with:
         gas gas_remaining wei
        args sha3(arg1, 11) + 5, arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not delegate.return_data[0]:
        emit 0xd97d4fc6: arg1, arg1
    else:
        if ext_code.size(0xc36e414410695a3f094156cf2b16c2f996655902):
            delegate 0xc36e414410695a3f094156cf2b16c2f996655902.0xaae82cc0 with:
                 gas gas_remaining wei
                args sha3(address(arg2), 12), arg1
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            if return_data.size >= 32:
                emit 0xd97d4fc6: arg1, arg1
    revert
}

function sub_0361b949(?) {
    mem[96] = 0x254dc15400000000000000000000000000000000000000000000000000000000
    mem[100] = 6
    require ext_code.size(0xc36e414410695a3f094156cf2b16c2f996655902)
    delegate 0xc36e414410695a3f094156cf2b16c2f996655902.0x254dc154 with:
         gas gas_remaining wei
        args 6
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], 0
    require mem[96 len 4], 0 <= 4294967296
    require mem[96 len 4], 0 + 32 <= return_data.size
    require mem[mem[96 len 4], 0 + 96] <= 4294967296 and mem[96 len 4], 0 + (32 * mem[mem[96 len 4], 0 + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = 32
    mem[ceil32(return_data.size) + 128] = mem[_4 + 96]
    _8 = mem[_4 + 96]
    mem[ceil32(return_data.size) + 160 len floor32(mem[_4 + 96])] = mem[_4 + 128 len floor32(mem[_4 + 96])]
    return 32, mem[ceil32(return_data.size) + 128 len (32 * _8) + 32]
}

function sub_411c5f61(?) {
    if not sub_bb90b9fb[arg1].field_1024:
        mem[(32 * sub_bb90b9fb[arg1].field_1024) + 128] = 32
        mem[(32 * sub_bb90b9fb[arg1].field_1024) + 160] = sub_bb90b9fb[arg1].field_1024
        mem[(32 * sub_bb90b9fb[arg1].field_1024) + 192 len floor32(sub_bb90b9fb[arg1].field_1024)] = mem[128 len floor32(sub_bb90b9fb[arg1].field_1024)]
        return memory
          from (32 * sub_bb90b9fb[arg1].field_1024) + 128
           len (96 * sub_bb90b9fb[arg1].field_1024) + 64
    mem[128] = sub_bb90b9fb[arg1][4].field_0
    idx = 128
    s = 0
    while (32 * sub_bb90b9fb[arg1].field_1024) + 96 > idx:
        mem[idx + 32] = sub_bb90b9fb[arg1][s + 4].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_bb90b9fb[arg1].field_1024) + 192 len floor32(sub_bb90b9fb[arg1].field_1024)] = mem[128 len floor32(sub_bb90b9fb[arg1].field_1024)]
    return Array(len=sub_bb90b9fb[arg1].field_1024, data=mem[128 len floor32(sub_bb90b9fb[arg1].field_1024)], mem[(32 * sub_bb90b9fb[arg1].field_1024) + floor32(sub_bb90b9fb[arg1].field_1024) + 192 len (32 * sub_bb90b9fb[arg1].field_1024) - floor32(sub_bb90b9fb[arg1].field_1024)]), 
}

function sub_7652beff(?) {
    require sub_bb90b9fb[arg1].field_256 > 1
    if sub_bb90b9fb[arg1].field_0 != msg.sender:
        revert with 0, 'denied!'
    require ext_code.size(0xc36e414410695a3f094156cf2b16c2f996655902)
    delegate 0xc36e414410695a3f094156cf2b16c2f996655902.0xaae82cc0 with:
         gas gas_remaining wei
        args sha3(sub_bb90b9fb[arg1].field_0, 12), arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_bb90b9fb[arg1].field_0 = arg2
    require ext_code.size(0xc36e414410695a3f094156cf2b16c2f996655902)
    delegate 0xc36e414410695a3f094156cf2b16c2f996655902.0x9915be14 with:
         gas gas_remaining wei
        args sha3(arg1, 11) + 5, arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xc36e414410695a3f094156cf2b16c2f996655902)
    delegate 0xc36e414410695a3f094156cf2b16c2f996655902.0xb76accb9 with:
         gas gas_remaining wei
        args sha3(sub_bb90b9fb[arg1].field_0, 12), arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit OwnerChanged(msg.sender, arg2, arg1);
}

function fileList() {
    mem[96] = 0xfad8f9e400000000000000000000000000000000000000000000000000000000
    mem[100] = sha3(msg.sender, 12)
    require ext_code.size(0xc36e414410695a3f094156cf2b16c2f996655902)
    delegate 0xc36e414410695a3f094156cf2b16c2f996655902.0xfad8f9e4 with:
         gas gas_remaining wei
        args sha3(msg.sender, 12)
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _5 = mem[96 len 4], Mask(224, 32, sha3(msg.sender, 12)) >> 32
    require mem[96 len 4], Mask(224, 32, sha3(msg.sender, 12)) >> 32 <= 4294967296
    require mem[96 len 4], Mask(224, 32, sha3(msg.sender, 12)) >> 32 + 32 <= return_data.size
    require mem[mem[96 len 4], Mask(224, 32, sha3(msg.sender, 12)) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, sha3(msg.sender, 12)) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, sha3(msg.sender, 12)) >> 32 + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = 32
    mem[ceil32(return_data.size) + 128] = mem[_5 + 96]
    _9 = mem[_5 + 96]
    mem[ceil32(return_data.size) + 160 len floor32(mem[_5 + 96])] = mem[_5 + 128 len floor32(mem[_5 + 96])]
    return 32, mem[ceil32(return_data.size) + 128 len (32 * _9) + 32]
}

function sub_274b15a6(?) {
    require sub_bb90b9fb[arg1].field_256 > 1
    if sub_bb90b9fb[arg1].field_256 <= 2:
        require sub_bb90b9fb[arg1].field_1024 > sub_bb90b9fb[arg1].field_512
        idx = 0
        while idx < sub_bb90b9fb[arg1].field_1024:
            require sub_bb90b9fb[arg1][idx + 4].field_0 != msg.sender
            require idx < sub_bb90b9fb[arg1].field_1024
            mem[0] = sha3(arg1, 11) + 4
            idx = idx + 1
            continue 
        require 0 < sub_bb90b9fb[arg1].field_1024
        sub_bb90b9fb[arg1][4].field_0 = msg.sender
    else:
        require 0 < sub_bb90b9fb[arg1].field_768
        require sub_bb90b9fb[arg1].field_1024 == sub_bb90b9fb[arg1].field_768
        require 0 < sub_bb90b9fb[arg1].field_1024
        require sub_bb90b9fb[arg1][4].field_0 != msg.sender
        require 0 < sub_bb90b9fb[arg1].field_768
        idx = 0
        while sub_bb90b9fb[arg1][idx + 3].field_0 != msg.sender:
            require idx + 1 < sub_bb90b9fb[arg1].field_1024
            require sub_bb90b9fb[arg1][idx + 4].field_256 != msg.sender
            require idx + 1 < sub_bb90b9fb[arg1].field_768
            mem[0] = sha3(arg1, 11) + 3
            idx = idx + 1
            continue 
        require None + 2 < sub_bb90b9fb[arg1].field_768
        require None + 2 < sub_bb90b9fb[arg1].field_1024
        stor[('array', 4, ('map', ('param', 'arg1'), ('name', 'sub_bb90b9fb', 11))) + None].field_512 = stor[('array', 3, ('map', ('param', 'arg1'), ('name', 'sub_bb90b9fb', 11))) + None].field_512
    sub_bb90b9fb[arg1].field_512++
    require ext_code.size(0xc36e414410695a3f094156cf2b16c2f996655902)
    delegate 0xc36e414410695a3f094156cf2b16c2f996655902.0xb76accb9 with:
         gas gas_remaining wei
        args sha3(msg.sender, 12), arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x9a81450c: arg1, msg.sender
}

function sub_613ec716(?) {
    if sub_bb90b9fb[arg1].field_256 != 1:
        if arg3:
            if msg.sender == sub_bb90b9fb[arg1].field_0:
                return True
            return (sub_bb90b9fb[arg1].field_0 == arg2)
        if sub_bb90b9fb[arg1].field_3584:
            return bool(sub_bb90b9fb[arg1].field_3584)
        if msg.sender == sub_bb90b9fb[arg1].field_0:
            return True
        if sub_bb90b9fb[arg1].field_0 == arg2:
            return True
        require ext_code.size(0xc36e414410695a3f094156cf2b16c2f996655902)
        delegate 0xc36e414410695a3f094156cf2b16c2f996655902.0x38181319 with:
             gas gas_remaining wei
            args sha3(arg1, 11) + 5, arg2
    else:
        if sub_bb90b9fb[sub_bb90b9fb[arg1].field_4096].field_256 <= 1:
            if arg3:
                if msg.sender == sub_bb90b9fb[arg1].field_0:
                    return True
                return (sub_bb90b9fb[arg1].field_0 == arg2)
            if sub_bb90b9fb[arg1].field_3584:
                return bool(sub_bb90b9fb[arg1].field_3584)
            if msg.sender == sub_bb90b9fb[arg1].field_0:
                return True
            if sub_bb90b9fb[arg1].field_0 == arg2:
                return True
            require ext_code.size(0xc36e414410695a3f094156cf2b16c2f996655902)
            delegate 0xc36e414410695a3f094156cf2b16c2f996655902.0x38181319 with:
                 gas gas_remaining wei
                args sha3(arg1, 11) + 5, arg2
        else:
            if arg3:
                if msg.sender == sub_bb90b9fb[sub_bb90b9fb[arg1].field_4096].field_0:
                    return True
                return (sub_bb90b9fb[sub_bb90b9fb[arg1].field_4096].field_0 == arg2)
            if sub_bb90b9fb[arg1].field_3584:
                return bool(sub_bb90b9fb[arg1].field_3584)
            if msg.sender == sub_bb90b9fb[sub_bb90b9fb[arg1].field_4096].field_0:
                return True
            if sub_bb90b9fb[sub_bb90b9fb[arg1].field_4096].field_0 == arg2:
                return True
            require ext_code.size(0xc36e414410695a3f094156cf2b16c2f996655902)
            delegate 0xc36e414410695a3f094156cf2b16c2f996655902.0x38181319 with:
                 gas gas_remaining wei
                args sha3(sub_bb90b9fb[arg1].field_4096, 11) + 5, arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(delegate.return_data[0])
}

function sub_bbebdd09(?) {
    mem[0] = arg1
    mem[32] = 11
    mem[96] = 0x254dc15400000000000000000000000000000000000000000000000000000000
    mem[100] = 6
    require ext_code.size(0xc36e414410695a3f094156cf2b16c2f996655902)
    delegate 0xc36e414410695a3f094156cf2b16c2f996655902.0x254dc154 with:
         gas gas_remaining wei
        args 6
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _5 = mem[96 len 4], 0
    require mem[96 len 4], 0 <= 4294967296
    require mem[96 len 4], 0 + 32 <= return_data.size
    require mem[mem[96 len 4], 0 + 96] <= 4294967296 and mem[96 len 4], 0 + (32 * mem[mem[96 len 4], 0 + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = 0
    mem[ceil32(return_data.size) + 128] = 0
    mem[64] = ceil32(return_data.size) + 160
    _31 = mem[_5 + 96]
    idx = 0
    s = 0
    while idx < _31:
        require idx < mem[_5 + 96]
        mem[0] = mem[_5 + (32 * idx) + 140 len 20]
        mem[32] = sha3(arg1, 11) + 10
        if not sub_bb90b9fb[arg1][10][mem[_5 + (32 * idx) + 140 len 20]].field_0:
            idx = idx + 1
            s = s
            continue 
        require idx < mem[_5 + 96]
        require s < 0
        mem[ceil32(return_data.size) + (32 * s) + 128] = mem[(32 * idx) + _5 + 140 len 20]
        require idx < mem[_5 + 96]
        _47 = mem[(32 * idx) + _5 + 128]
        mem[ceil32(return_data.size) + 164] = 6
        mem[ceil32(return_data.size) + 196] = address(_47)
        require ext_code.size(0xc36e414410695a3f094156cf2b16c2f996655902)
        delegate 0xc36e414410695a3f094156cf2b16c2f996655902.0x4f94d2f2 with:
             gas gas_remaining wei
            args 6, address(_47)
        mem[ceil32(return_data.size) + 160] = delegate.return_data[0]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require s < mem[ceil32(return_data.size) + 128]
        mem[ceil32(return_data.size) + (32 * s) + 160] = delegate.return_data[0]
        idx = idx + 1
        s = s + 1
        continue 
    mem[ceil32(return_data.size) + 160] = 64
    mem[ceil32(return_data.size) + 224] = 0
    mem[ceil32(return_data.size) + 256 len 0] = None
    mem[ceil32(return_data.size) + 192] = 96
    mem[ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 128]
    mem[ceil32(return_data.size) + 288 len floor32(mem[ceil32(return_data.size) + 128])] = mem[ceil32(return_data.size) + 160 len floor32(mem[ceil32(return_data.size) + 128])]
    return 64, 96, 0, mem[ceil32(return_data.size) + 256 len (32 * mem[ceil32(return_data.size) + 128]) + 32]
}

function sub_76189601(?) {
    mem[128 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    mem[(32 * arg5.length) + 128] = arg2
    if stor4 != msg.sender:
        revert with 0, 'denied!'
    require not sub_bb90b9fb[arg1].field_256
    if not stor1:
        require stor0 >= stor0
        require stor0 >= 0
    else:
        require arg5.length * stor1 / stor1 == arg5.length
        require (arg5.length * stor1) + stor0 >= stor0
        require (arg5.length * stor1) + stor0 >= arg5.length * stor1
    idx = 0
    while idx < arg5.length:
        require idx < arg5.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = sha3(arg1, 11) + 10
        sub_bb90b9fb[arg1][10][mem[(32 * idx) + 140 len 20]].field_0 = 1
        idx = idx + 1
        continue 
    if sub_bb90b9fb[arg4].field_256 > 1:
        sub_bb90b9fb[arg1].field_3328 = arg4
    sub_bb90b9fb[arg1].field_0 = msg.sender or Mask(96, 160, sub_bb90b9fb[arg1].field_0)
    sub_bb90b9fb[arg1].field_768 = 0
    if sub_bb90b9fb[arg1].field_768 > 0:
        idx = 0
        while sub_bb90b9fb[arg1].field_768 > idx:
            sub_bb90b9fb[arg1][idx + 3].field_0 = 0
            idx = idx + 1
            continue 
    sub_bb90b9fb[arg1].field_256 = 2
    sub_bb90b9fb[arg1].field_512 = 0
    sub_bb90b9fb[arg1].field_3072 = arg3
    sub_bb90b9fb[arg1].field_1024 = arg2
    if sub_bb90b9fb[arg1].field_1024 > arg2:
        idx = arg2
        while sub_bb90b9fb[arg1].field_1024 > idx:
            sub_bb90b9fb[arg1][idx + 4].field_0 = 0
            idx = idx + 1
            continue 
    idx = 0
    while idx < sub_bb90b9fb[arg1].field_768:
        require ext_code.size(0xc36e414410695a3f094156cf2b16c2f996655902)
        delegate 0xc36e414410695a3f094156cf2b16c2f996655902.0x82b81256 with:
             gas gas_remaining wei
            args sha3(arg1, 11) + 5, sub_bb90b9fb[arg1][idx + 3].field_0
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < sub_bb90b9fb[arg1].field_768
        mem[32] = 12
        mem[(32 * arg5.length) + (32 * arg2) + 164] = sha3(sub_bb90b9fb[arg1][idx + 3].field_0, 12)
        mem[(32 * arg5.length) + (32 * arg2) + 196] = arg1
        require ext_code.size(0xc36e414410695a3f094156cf2b16c2f996655902)
        delegate 0xc36e414410695a3f094156cf2b16c2f996655902.0xb76accb9 with:
             gas gas_remaining wei
            args sha3(sub_bb90b9fb[arg1][idx + 3].field_0, 12), arg1
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < sub_bb90b9fb[arg1].field_768
        mem[0] = sha3(arg1, 11) + 3
        mem[(32 * arg5.length) + (32 * arg2) + 160] = arg1
        emit 0x1363b0ab: arg1, sub_bb90b9fb[arg1][idx + 3].field_0
        idx = idx + 1
        continue 
    require ext_code.size(0xc36e414410695a3f094156cf2b16c2f996655902)
    delegate 0xc36e414410695a3f094156cf2b16c2f996655902.0xb76accb9 with:
         gas gas_remaining wei
        args sha3(sub_bb90b9fb[arg1].field_0, 12), arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0xd97d4fc6: arg1, arg1
}

function sub_ba890dc3(?) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg5.length
    mem[(32 * arg2.length) + 160 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    if stor4 != msg.sender:
        revert with 0, 'denied!'
    require not sub_bb90b9fb[arg1].field_256
    if not stor1:
        require stor0 >= stor0
        require stor0 >= 0
    else:
        require arg5.length * stor1 / stor1 == arg5.length
        require (arg5.length * stor1) + stor0 >= stor0
        require (arg5.length * stor1) + stor0 >= arg5.length * stor1
    idx = 0
    while idx < arg5.length:
        require idx < arg5.length
        mem[0] = mem[(32 * idx) + (32 * arg2.length) + 172 len 20]
        mem[32] = sha3(arg1, 11) + 10
        sub_bb90b9fb[arg1][10][mem[(32 * idx) + (32 * arg2.length) + 172 len 20]].field_0 = 1
        idx = idx + 1
        continue 
    if sub_bb90b9fb[arg4].field_256 > 1:
        sub_bb90b9fb[arg1].field_3328 = arg4
    sub_bb90b9fb[arg1].field_0 = msg.sender or Mask(96, 160, sub_bb90b9fb[arg1].field_0)
    sub_bb90b9fb[arg1].field_768 = arg2.length
    if not arg2.length:
        idx = 0
        while sub_bb90b9fb[arg1].field_768 > idx:
            sub_bb90b9fb[arg1][idx + 3].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg2.length) + 128 > idx:
            sub_bb90b9fb[arg1][s + 3].field_0 = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg2.length) + 31) >> 5
        while sub_bb90b9fb[arg1].field_768 > idx:
            sub_bb90b9fb[arg1][idx + 3].field_0 = 0
            idx = idx + 1
            continue 
    sub_bb90b9fb[arg1].field_256 = 3
    sub_bb90b9fb[arg1].field_512 = 0
    sub_bb90b9fb[arg1].field_3072 = arg3
    sub_bb90b9fb[arg1].field_1024 = arg2.length
    if sub_bb90b9fb[arg1].field_1024 > arg2.length:
        idx = arg2.length
        while sub_bb90b9fb[arg1].field_1024 > idx:
            sub_bb90b9fb[arg1][idx + 4].field_0 = 0
            idx = idx + 1
            continue 
    idx = 0
    while idx < sub_bb90b9fb[arg1].field_768:
        require ext_code.size(0xc36e414410695a3f094156cf2b16c2f996655902)
        delegate 0xc36e414410695a3f094156cf2b16c2f996655902.0x82b81256 with:
             gas gas_remaining wei
            args sha3(arg1, 11) + 5, sub_bb90b9fb[arg1][idx + 3].field_0
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < sub_bb90b9fb[arg1].field_768
        mem[32] = 12
        mem[(32 * arg5.length) + (32 * arg2.length) + 164] = sha3(sub_bb90b9fb[arg1][idx + 3].field_0, 12)
        mem[(32 * arg5.length) + (32 * arg2.length) + 196] = arg1
        require ext_code.size(0xc36e414410695a3f094156cf2b16c2f996655902)
        delegate 0xc36e414410695a3f094156cf2b16c2f996655902.0xb76accb9 with:
             gas gas_remaining wei
            args sha3(sub_bb90b9fb[arg1][idx + 3].field_0, 12), arg1
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < sub_bb90b9fb[arg1].field_768
        mem[0] = sha3(arg1, 11) + 3
        mem[(32 * arg5.length) + (32 * arg2.length) + 160] = arg1
        emit 0x1363b0ab: arg1, sub_bb90b9fb[arg1][idx + 3].field_0
        idx = idx + 1
        continue 
    require ext_code.size(0xc36e414410695a3f094156cf2b16c2f996655902)
    delegate 0xc36e414410695a3f094156cf2b16c2f996655902.0xb76accb9 with:
         gas gas_remaining wei
        args sha3(sub_bb90b9fb[arg1].field_0, 12), arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0xd97d4fc6: arg1, arg1
}

function sub_9754c8fd(?) {
    mem[32] = 11
    if 0 >= sub_bb90b9fb[arg1].field_256:
        return 0, 0, 0, 0, 0, 0, 0, 0, 0, 352, 384, 0, 0
    if sub_bb90b9fb[arg1].field_256 != 1:
        mem[96] = 0x72b7b34200000000000000000000000000000000000000000000000000000000
        mem[100] = sha3(arg1, 11) + 5
        require ext_code.size(0xc36e414410695a3f094156cf2b16c2f996655902)
        delegate 0xc36e414410695a3f094156cf2b16c2f996655902.0x72b7b342 with:
             gas gas_remaining wei
            args (sha3(arg1, 11) + 5)
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        _18 = mem[96 len 4], Mask(224, 32, sha3(arg1, 11) + 5) >> 32
        require mem[96 len 4], Mask(224, 32, sha3(arg1, 11) + 5) >> 32 <= 4294967296
        require mem[96 len 4], Mask(224, 32, sha3(arg1, 11) + 5) >> 32 + 32 <= return_data.size
        require mem[mem[96 len 4], Mask(224, 32, sha3(arg1, 11) + 5) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, sha3(arg1, 11) + 5) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, sha3(arg1, 11) + 5) >> 32 + 96]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 96] = sub_bb90b9fb[arg1].field_768
        if not sub_bb90b9fb[arg1].field_768:
            mem[ceil32(return_data.size) + (32 * sub_bb90b9fb[arg1].field_768) + 128] = arg1
            mem[ceil32(return_data.size) + (32 * sub_bb90b9fb[arg1].field_768) + 160] = sub_bb90b9fb[arg1].field_0
            mem[ceil32(return_data.size) + (32 * sub_bb90b9fb[arg1].field_768) + 192] = sub_bb90b9fb[arg1].field_256
            mem[ceil32(return_data.size) + (32 * sub_bb90b9fb[arg1].field_768) + 224] = bool(sub_bb90b9fb[arg1].field_2816)
            mem[ceil32(return_data.size) + (32 * sub_bb90b9fb[arg1].field_768) + 256] = sub_bb90b9fb[arg1].field_3072
            mem[ceil32(return_data.size) + (32 * sub_bb90b9fb[arg1].field_768) + 288] = bool(sub_bb90b9fb[arg1].field_3584)
            mem[ceil32(return_data.size) + (32 * sub_bb90b9fb[arg1].field_768) + 320] = sub_bb90b9fb[arg1].field_3840
            mem[ceil32(return_data.size) + (32 * sub_bb90b9fb[arg1].field_768) + 352] = sub_bb90b9fb[arg1].field_4096
            mem[ceil32(return_data.size) + (32 * sub_bb90b9fb[arg1].field_768) + 384] = sub_bb90b9fb[arg1].field_3328
            mem[ceil32(return_data.size) + (32 * sub_bb90b9fb[arg1].field_768) + 416] = 352
            mem[ceil32(return_data.size) + (32 * sub_bb90b9fb[arg1].field_768) + 480] = mem[_18 + 96]
            _33 = mem[_18 + 96]
            mem[ceil32(return_data.size) + (32 * sub_bb90b9fb[arg1].field_768) + 512 len floor32(mem[_18 + 96])] = mem[_18 + 128 len floor32(mem[_18 + 96])]
            mem[(32 * _33) + ceil32(return_data.size) + (32 * sub_bb90b9fb[arg1].field_768) + 544 len floor32(sub_bb90b9fb[arg1].field_768)] = mem[ceil32(return_data.size) + 128 len floor32(sub_bb90b9fb[arg1].field_768)]
            return arg1, 
                   sub_bb90b9fb[arg1].field_0,
                   sub_bb90b9fb[arg1].field_256,
                   bool(sub_bb90b9fb[arg1].field_2816),
                   sub_bb90b9fb[arg1].field_3072,
                   bool(sub_bb90b9fb[arg1].field_3584),
                   sub_bb90b9fb[arg1].field_3840,
                   sub_bb90b9fb[arg1].field_4096,
                   sub_bb90b9fb[arg1].field_3328,
                   Array(len=mem[ceil32(return_data.size) + (32 * sub_bb90b9fb[arg1].field_768) + 480 len (32 * _33) + 32], data=sub_bb90b9fb[arg1].field_768, mem[ceil32(return_data.size) + 128 len floor32(sub_bb90b9fb[arg1].field_768)], mem[ceil32(return_data.size) + (32 * sub_bb90b9fb[arg1].field_768) + (32 * _33) + floor32(sub_bb90b9fb[arg1].field_768) + 544 len (32 * sub_bb90b9fb[arg1].field_768) - floor32(sub_bb90b9fb[arg1].field_768)]),
                   (32 * _33) + 384
        mem[ceil32(return_data.size) + 128] = sub_bb90b9fb[arg1][3].field_0
        idx = ceil32(return_data.size) + 128
        s = 0
        while ceil32(return_data.size) + (32 * sub_bb90b9fb[arg1].field_768) + 96 > idx:
            mem[idx + 32] = sub_bb90b9fb[arg1][s + 3].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[ceil32(return_data.size) + (32 * sub_bb90b9fb[arg1].field_768) + 128] = arg1
        mem[ceil32(return_data.size) + (32 * sub_bb90b9fb[arg1].field_768) + 160] = sub_bb90b9fb[arg1].field_0
        mem[ceil32(return_data.size) + (32 * sub_bb90b9fb[arg1].field_768) + 192] = sub_bb90b9fb[arg1].field_256
        mem[ceil32(return_data.size) + (32 * sub_bb90b9fb[arg1].field_768) + 224] = bool(sub_bb90b9fb[arg1].field_2816)
        mem[ceil32(return_data.size) + (32 * sub_bb90b9fb[arg1].field_768) + 256] = sub_bb90b9fb[arg1].field_3072
        mem[ceil32(return_data.size) + (32 * sub_bb90b9fb[arg1].field_768) + 288] = bool(sub_bb90b9fb[arg1].field_3584)
        mem[ceil32(return_data.size) + (32 * sub_bb90b9fb[arg1].field_768) + 320] = sub_bb90b9fb[arg1].field_3840
        mem[ceil32(return_data.size) + (32 * sub_bb90b9fb[arg1].field_768) + 352] = sub_bb90b9fb[arg1].field_4096
        mem[ceil32(return_data.size) + (32 * sub_bb90b9fb[arg1].field_768) + 384] = sub_bb90b9fb[arg1].field_3328
        mem[ceil32(return_data.size) + (32 * sub_bb90b9fb[arg1].field_768) + 416] = 352
        mem[ceil32(return_data.size) + (32 * sub_bb90b9fb[arg1].field_768) + 480] = mem[_18 + 96]
        _86 = mem[_18 + 96]
        mem[ceil32(return_data.size) + (32 * sub_bb90b9fb[arg1].field_768) + 512 len floor32(mem[_18 + 96])] = mem[_18 + 128 len floor32(mem[_18 + 96])]
        mem[(32 * _86) + ceil32(return_data.size) + (32 * sub_bb90b9fb[arg1].field_768) + 544 len floor32(sub_bb90b9fb[arg1].field_768)] = mem[ceil32(return_data.size) + 128 len floor32(sub_bb90b9fb[arg1].field_768)]
        return arg1, 
               sub_bb90b9fb[arg1].field_0,
               sub_bb90b9fb[arg1].field_256,
               bool(sub_bb90b9fb[arg1].field_2816),
               sub_bb90b9fb[arg1].field_3072,
               bool(sub_bb90b9fb[arg1].field_3584),
               sub_bb90b9fb[arg1].field_3840,
               sub_bb90b9fb[arg1].field_4096,
               sub_bb90b9fb[arg1].field_3328,
               Array(len=mem[ceil32(return_data.size) + (32 * sub_bb90b9fb[arg1].field_768) + 480 len (32 * _86) + 32], data=sub_bb90b9fb[arg1].field_768, mem[ceil32(return_data.size) + 128 len floor32(sub_bb90b9fb[arg1].field_768)], mem[ceil32(return_data.size) + (32 * sub_bb90b9fb[arg1].field_768) + (32 * _86) + floor32(sub_bb90b9fb[arg1].field_768) + 544 len (32 * sub_bb90b9fb[arg1].field_768) - floor32(sub_bb90b9fb[arg1].field_768)]),
               (32 * _86) + 384
    mem[32] = 11
    mem[96] = 0x72b7b34200000000000000000000000000000000000000000000000000000000
    mem[100] = sha3(arg1, 11) + 5
    require ext_code.size(0xc36e414410695a3f094156cf2b16c2f996655902)
    delegate 0xc36e414410695a3f094156cf2b16c2f996655902.0x72b7b342 with:
         gas gas_remaining wei
        args (sha3(arg1, 11) + 5)
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    if sub_bb90b9fb[sub_bb90b9fb[arg1].field_4096].field_256 <= 1:
        _20 = mem[96 len 4], Mask(224, 32, sha3(arg1, 11) + 5) >> 32
        require mem[96 len 4], Mask(224, 32, sha3(arg1, 11) + 5) >> 32 <= 4294967296
        require mem[96 len 4], Mask(224, 32, sha3(arg1, 11) + 5) >> 32 + 32 <= return_data.size
        require mem[mem[96 len 4], Mask(224, 32, sha3(arg1, 11) + 5) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, sha3(arg1, 11) + 5) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, sha3(arg1, 11) + 5) >> 32 + 96]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 96] = sub_bb90b9fb[arg1].field_768
        if not sub_bb90b9fb[arg1].field_768:
            mem[ceil32(return_data.size) + (32 * sub_bb90b9fb[arg1].field_768) + 128] = arg1
            mem[ceil32(return_data.size) + (32 * sub_bb90b9fb[arg1].field_768) + 160] = 0
            mem[ceil32(return_data.size) + (32 * sub_bb90b9fb[arg1].field_768) + 192] = sub_bb90b9fb[arg1].field_256
            mem[ceil32(return_data.size) + (32 * sub_bb90b9fb[arg1].field_768) + 224] = bool(sub_bb90b9fb[arg1].field_2816)
            mem[ceil32(return_data.size) + (32 * sub_bb90b9fb[arg1].field_768) + 256] = sub_bb90b9fb[arg1].field_3072
            mem[ceil32(return_data.size) + (32 * sub_bb90b9fb[arg1].field_768) + 288] = bool(sub_bb90b9fb[arg1].field_3584)
            mem[ceil32(return_data.size) + (32 * sub_bb90b9fb[arg1].field_768) + 320] = sub_bb90b9fb[arg1].field_3840
            mem[ceil32(return_data.size) + (32 * sub_bb90b9fb[arg1].field_768) + 352] = sub_bb90b9fb[arg1].field_4096
            mem[ceil32(return_data.size) + (32 * sub_bb90b9fb[arg1].field_768) + 384] = sub_bb90b9fb[arg1].field_3328
            mem[ceil32(return_data.size) + (32 * sub_bb90b9fb[arg1].field_768) + 416] = 352
            mem[ceil32(return_data.size) + (32 * sub_bb90b9fb[arg1].field_768) + 480] = mem[_20 + 96]
            _37 = mem[_20 + 96]
            mem[ceil32(return_data.size) + (32 * sub_bb90b9fb[arg1].field_768) + 512 len floor32(mem[_20 + 96])] = mem[_20 + 128 len floor32(mem[_20 + 96])]
            mem[(32 * _37) + ceil32(return_data.size) + (32 * sub_bb90b9fb[arg1].field_768) + 544 len floor32(sub_bb90b9fb[arg1].field_768)] = mem[ceil32(return_data.size) + 128 len floor32(sub_bb90b9fb[arg1].field_768)]
            return arg1, 
                   0,
                   sub_bb90b9fb[arg1].field_256,
                   bool(sub_bb90b9fb[arg1].field_2816),
                   sub_bb90b9fb[arg1].field_3072,
                   bool(sub_bb90b9fb[arg1].field_3584),
                   sub_bb90b9fb[arg1].field_3840,
                   sub_bb90b9fb[arg1].field_4096,
                   sub_bb90b9fb[arg1].field_3328,
                   352,
                   (32 * _37) + 384,
                   mem[ceil32(return_data.size) + (32 * sub_bb90b9fb[arg1].field_768) + 480 len (32 * _37) + 32],
                   sub_bb90b9fb[arg1].field_768,
                   mem[ceil32(return_data.size) + 128 len floor32(sub_bb90b9fb[arg1].field_768)],
                   mem[ceil32(return_data.size) + (32 * sub_bb90b9fb[arg1].field_768) + (32 * _37) + floor32(sub_bb90b9fb[arg1].field_768) + 544 len (32 * sub_bb90b9fb[arg1].field_768) - floor32(sub_bb90b9fb[arg1].field_768)]
        mem[ceil32(return_data.size) + 128] = sub_bb90b9fb[arg1][3].field_0
        idx = ceil32(return_data.size) + 128
        s = 0
        while ceil32(return_data.size) + (32 * sub_bb90b9fb[arg1].field_768) + 96 > idx:
            mem[idx + 32] = sub_bb90b9fb[arg1][s + 3].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[ceil32(return_data.size) + (32 * sub_bb90b9fb[arg1].field_768) + 128] = arg1
        mem[ceil32(return_data.size) + (32 * sub_bb90b9fb[arg1].field_768) + 160] = 0
        mem[ceil32(return_data.size) + (32 * sub_bb90b9fb[arg1].field_768) + 192] = sub_bb90b9fb[arg1].field_256
        mem[ceil32(return_data.size) + (32 * sub_bb90b9fb[arg1].field_768) + 224] = bool(sub_bb90b9fb[arg1].field_2816)
        mem[ceil32(return_data.size) + (32 * sub_bb90b9fb[arg1].field_768) + 256] = sub_bb90b9fb[arg1].field_3072
        mem[ceil32(return_data.size) + (32 * sub_bb90b9fb[arg1].field_768) + 288] = bool(sub_bb90b9fb[arg1].field_3584)
        mem[ceil32(return_data.size) + (32 * sub_bb90b9fb[arg1].field_768) + 320] = sub_bb90b9fb[arg1].field_3840
        mem[ceil32(return_data.size) + (32 * sub_bb90b9fb[arg1].field_768) + 352] = sub_bb90b9fb[arg1].field_4096
        mem[ceil32(return_data.size) + (32 * sub_bb90b9fb[arg1].field_768) + 384] = sub_bb90b9fb[arg1].field_3328
        mem[ceil32(return_data.size) + (32 * sub_bb90b9fb[arg1].field_768) + 416] = 352
        mem[ceil32(return_data.size) + (32 * sub_bb90b9fb[arg1].field_768) + 480] = mem[_20 + 96]
        _89 = mem[_20 + 96]
        mem[ceil32(return_data.size) + (32 * sub_bb90b9fb[arg1].field_768) + 512 len floor32(mem[_20 + 96])] = mem[_20 + 128 len floor32(mem[_20 + 96])]
        mem[(32 * _89) + ceil32(return_data.size) + (32 * sub_bb90b9fb[arg1].field_768) + 544 len floor32(sub_bb90b9fb[arg1].field_768)] = mem[ceil32(return_data.size) + 128 len floor32(sub_bb90b9fb[arg1].field_768)]
        return arg1, 
               0,
               sub_bb90b9fb[arg1].field_256,
               bool(sub_bb90b9fb[arg1].field_2816),
               sub_bb90b9fb[arg1].field_3072,
               bool(sub_bb90b9fb[arg1].field_3584),
               sub_bb90b9fb[arg1].field_3840,
               sub_bb90b9fb[arg1].field_4096,
               sub_bb90b9fb[arg1].field_3328,
               352,
               (32 * _89) + 384,
               mem[ceil32(return_data.size) + (32 * sub_bb90b9fb[arg1].field_768) + 480 len (32 * _89) + 32],
               sub_bb90b9fb[arg1].field_768,
               mem[ceil32(return_data.size) + 128 len floor32(sub_bb90b9fb[arg1].field_768)],
               mem[ceil32(return_data.size) + (32 * sub_bb90b9fb[arg1].field_768) + (32 * _89) + floor32(sub_bb90b9fb[arg1].field_768) + 544 len (32 * sub_bb90b9fb[arg1].field_768) - floor32(sub_bb90b9fb[arg1].field_768)]
    _23 = mem[96 len 4], Mask(224, 32, sha3(arg1, 11) + 5) >> 32
    require mem[96 len 4], Mask(224, 32, sha3(arg1, 11) + 5) >> 32 <= 4294967296
    require mem[96 len 4], Mask(224, 32, sha3(arg1, 11) + 5) >> 32 + 32 <= return_data.size
    require mem[mem[96 len 4], Mask(224, 32, sha3(arg1, 11) + 5) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, sha3(arg1, 11) + 5) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, sha3(arg1, 11) + 5) >> 32 + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = sub_bb90b9fb[arg1].field_768
    if not sub_bb90b9fb[arg1].field_768:
        mem[ceil32(return_data.size) + (32 * sub_bb90b9fb[arg1].field_768) + 128] = arg1
        mem[ceil32(return_data.size) + (32 * sub_bb90b9fb[arg1].field_768) + 160] = sub_bb90b9fb[sub_bb90b9fb[arg1].field_4096].field_0
        mem[ceil32(return_data.size) + (32 * sub_bb90b9fb[arg1].field_768) + 192] = sub_bb90b9fb[arg1].field_256
        mem[ceil32(return_data.size) + (32 * sub_bb90b9fb[arg1].field_768) + 224] = bool(sub_bb90b9fb[arg1].field_2816)
        mem[ceil32(return_data.size) + (32 * sub_bb90b9fb[arg1].field_768) + 256] = sub_bb90b9fb[arg1].field_3072
        mem[ceil32(return_data.size) + (32 * sub_bb90b9fb[arg1].field_768) + 288] = bool(sub_bb90b9fb[arg1].field_3584)
        mem[ceil32(return_data.size) + (32 * sub_bb90b9fb[arg1].field_768) + 320] = sub_bb90b9fb[arg1].field_3840
        mem[ceil32(return_data.size) + (32 * sub_bb90b9fb[arg1].field_768) + 352] = sub_bb90b9fb[arg1].field_4096
        mem[ceil32(return_data.size) + (32 * sub_bb90b9fb[arg1].field_768) + 384] = sub_bb90b9fb[arg1].field_3328
        mem[ceil32(return_data.size) + (32 * sub_bb90b9fb[arg1].field_768) + 416] = 352
        mem[ceil32(return_data.size) + (32 * sub_bb90b9fb[arg1].field_768) + 480] = mem[_23 + 96]
        _43 = mem[_23 + 96]
        mem[ceil32(return_data.size) + (32 * sub_bb90b9fb[arg1].field_768) + 512 len floor32(mem[_23 + 96])] = mem[_23 + 128 len floor32(mem[_23 + 96])]
        mem[(32 * _43) + ceil32(return_data.size) + (32 * sub_bb90b9fb[arg1].field_768) + 544 len floor32(sub_bb90b9fb[arg1].field_768)] = mem[ceil32(return_data.size) + 128 len floor32(sub_bb90b9fb[arg1].field_768)]
        return arg1, 
               sub_bb90b9fb[sub_bb90b9fb[arg1].field_4096].field_0,
               sub_bb90b9fb[arg1].field_256,
               bool(sub_bb90b9fb[arg1].field_2816),
               sub_bb90b9fb[arg1].field_3072,
               bool(sub_bb90b9fb[arg1].field_3584),
               sub_bb90b9fb[arg1].field_3840,
               sub_bb90b9fb[arg1].field_4096,
               sub_bb90b9fb[arg1].field_3328,
               Array(len=mem[ceil32(return_data.size) + (32 * sub_bb90b9fb[arg1].field_768) + 480 len (32 * _43) + 32], data=sub_bb90b9fb[arg1].field_768, mem[ceil32(return_data.size) + 128 len floor32(sub_bb90b9fb[arg1].field_768)], mem[ceil32(return_data.size) + (32 * sub_bb90b9fb[arg1].field_768) + (32 * _43) + floor32(sub_bb90b9fb[arg1].field_768) + 544 len (32 * sub_bb90b9fb[arg1].field_768) - floor32(sub_bb90b9fb[arg1].field_768)]),
               (32 * _43) + 384
    mem[ceil32(return_data.size) + 128] = sub_bb90b9fb[arg1][3].field_0
    idx = ceil32(return_data.size) + 128
    s = 0
    while ceil32(return_data.size) + (32 * sub_bb90b9fb[arg1].field_768) + 96 > idx:
        mem[idx + 32] = sub_bb90b9fb[arg1][s + 3].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(return_data.size) + (32 * sub_bb90b9fb[arg1].field_768) + 128] = arg1
    mem[ceil32(return_data.size) + (32 * sub_bb90b9fb[arg1].field_768) + 160] = sub_bb90b9fb[sub_bb90b9fb[arg1].field_4096].field_0
    mem[ceil32(return_data.size) + (32 * sub_bb90b9fb[arg1].field_768) + 192] = sub_bb90b9fb[arg1].field_256
    mem[ceil32(return_data.size) + (32 * sub_bb90b9fb[arg1].field_768) + 224] = bool(sub_bb90b9fb[arg1].field_2816)
    mem[ceil32(return_data.size) + (32 * sub_bb90b9fb[arg1].field_768) + 256] = sub_bb90b9fb[arg1].field_3072
    mem[ceil32(return_data.size) + (32 * sub_bb90b9fb[arg1].field_768) + 288] = bool(sub_bb90b9fb[arg1].field_3584)
    mem[ceil32(return_data.size) + (32 * sub_bb90b9fb[arg1].field_768) + 320] = sub_bb90b9fb[arg1].field_3840
    mem[ceil32(return_data.size) + (32 * sub_bb90b9fb[arg1].field_768) + 352] = sub_bb90b9fb[arg1].field_4096
    mem[ceil32(return_data.size) + (32 * sub_bb90b9fb[arg1].field_768) + 384] = sub_bb90b9fb[arg1].field_3328
    mem[ceil32(return_data.size) + (32 * sub_bb90b9fb[arg1].field_768) + 416] = 352
    mem[ceil32(return_data.size) + (32 * sub_bb90b9fb[arg1].field_768) + 480] = mem[_23 + 96]
    _92 = mem[_23 + 96]
    mem[ceil32(return_data.size) + (32 * sub_bb90b9fb[arg1].field_768) + 512 len floor32(mem[_23 + 96])] = mem[_23 + 128 len floor32(mem[_23 + 96])]
    mem[(32 * _92) + ceil32(return_data.size) + (32 * sub_bb90b9fb[arg1].field_768) + 544 len floor32(sub_bb90b9fb[arg1].field_768)] = mem[ceil32(return_data.size) + 128 len floor32(sub_bb90b9fb[arg1].field_768)]
    return arg1, 
           sub_bb90b9fb[sub_bb90b9fb[arg1].field_4096].field_0,
           sub_bb90b9fb[arg1].field_256,
           bool(sub_bb90b9fb[arg1].field_2816),
           sub_bb90b9fb[arg1].field_3072,
           bool(sub_bb90b9fb[arg1].field_3584),
           sub_bb90b9fb[arg1].field_3840,
           sub_bb90b9fb[arg1].field_4096,
           sub_bb90b9fb[arg1].field_3328,
           Array(len=mem[ceil32(return_data.size) + (32 * sub_bb90b9fb[arg1].field_768) + 480 len (32 * _92) + 32], data=sub_bb90b9fb[arg1].field_768, mem[ceil32(return_data.size) + 128 len floor32(sub_bb90b9fb[arg1].field_768)], mem[ceil32(return_data.size) + (32 * sub_bb90b9fb[arg1].field_768) + (32 * _92) + floor32(sub_bb90b9fb[arg1].field_768) + 544 len (32 * sub_bb90b9fb[arg1].field_768) - floor32(sub_bb90b9fb[arg1].field_768)]),
           (32 * _92) + 384
}



}
