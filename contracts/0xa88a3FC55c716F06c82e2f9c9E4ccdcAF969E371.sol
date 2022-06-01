contract main {




// =====================  Runtime code  =====================


#
#  - sub_2b0e557e(?)
#  - sub_7a21f0b0(?)
#  - sub_c27204aa(?)
#  - sub_cd23214c(?)
#  - sub_d7d07af2(?)
#
address ceoAddress;
address cfoAddress;
uint8 stor2; offset 160
uint128 stor2; offset 160
address cooAddress;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor9;
uint256 stor10;
uint256 stor11;
mapping of uint256 sub_4db5e27c;
array of struct stor13;
array of struct stor16;
uint256 stor17;
uint256 stor18;
mapping of struct sub_a588be7f;

function cfoAddress() {
    return cfoAddress
}

function sub_05a0088e(?) {
    return stor16.length
}

function ceoAddress() {
    return ceoAddress
}

function sub_4db5e27c(?) {
    return sub_4db5e27c[address(msg.sender)]
}

function paused() {
    return bool(uint8(stor2.field_160))
}

function sub_68dfa25d(?) {
    return sub_a588be7f[arg1].field_512, sub_a588be7f[arg1].field_768
}

function sub_a588be7f(?) {
    require arg2 < sub_a588be7f[arg1].field_512
    return sub_a588be7f[arg1][4][arg2].field_0, 
           sub_a588be7f[arg1][4][arg2].field_256,
           sub_a588be7f[arg1][4][arg2].field_512,
           sub_a588be7f[arg1][4][arg2].field_768
}

function cooAddress() {
    return cooAddress
}

function kill() {
    require msg.sender == ceoAddress
    selfdestruct(ceoAddress)
}

function _fallback() payable {
    revert
}

function sub_22f19172(?) {
    return stor3, stor4
}

function setCEO(address arg1) {
    require msg.sender == ceoAddress
    require arg1
    ceoAddress = arg1
}

function setCOO(address arg1) {
    require msg.sender == ceoAddress
    require arg1
    cooAddress = arg1
}

function setCFO(address arg1) {
    require msg.sender == ceoAddress
    require arg1
    cfoAddress = arg1
}

function unpause() {
    require msg.sender == ceoAddress
    require uint8(stor2.field_160)
    Mask(96, 0, stor2.field_160) = 0
}

function getGameInfo() {
    if cooAddress != msg.sender:
        if ceoAddress != msg.sender:
            require msg.sender == cfoAddress
    return stor16.length, stor9, stor10, stor11, stor17, stor18
}

function pause() {
    if cooAddress != msg.sender:
        if ceoAddress != msg.sender:
            require msg.sender == cfoAddress
    require not uint8(stor2.field_160)
    Mask(96, 0, stor2.field_160) = 1
}

function sub_8c8356a9(?) {
    if cooAddress != msg.sender:
        if ceoAddress != msg.sender:
            require msg.sender == cfoAddress
    if arg1 > 0:
        stor3 = arg1
    if arg2 > 0:
        stor4 = arg2
    emit 0xce720b7b: arg1, arg2
    return 1
}

function sub_0a4ed13a(?) {
    require arg2
    s = 0
    idx = 0
    while idx < sub_a588be7f[arg1].field_512:
        mem[0] = idx
        mem[32] = sha3(arg1, 20) + 4
        if sub_a588be7f[arg1][4][idx].field_0 != arg2:
            s = sha3(idx, sha3(arg1, 20) + 4)
            idx = idx + 1
            continue 
        return sub_a588be7f[arg1][4][idx].field_0, sub_a588be7f[arg1][4][idx].field_256
    return 0
}

function sub_37b9ffba(?) {
    if cooAddress != msg.sender:
        if ceoAddress != msg.sender:
            require msg.sender == cfoAddress
    require arg1 < stor16.length
    require arg2 <= 3
    require stor16[arg1].field_2048 <= 3
    require stor16[arg1].field_2048 != arg2
    require stor16[arg1].field_2048 <= 3
    require not stor16[arg1].field_2048
    require arg2 <= 3
    stor16[arg1].field_2048 = arg2
    return 1
}

function sub_722df710(?) {
    require msg.sender
    s = 0
    idx = 0
    while idx < sub_a588be7f[arg1].field_512:
        mem[0] = idx
        mem[32] = sha3(arg1, 20) + 4
        if sub_a588be7f[arg1][4][idx].field_0 != msg.sender:
            s = sha3(idx, sha3(arg1, 20) + 4)
            idx = idx + 1
            continue 
        return sub_a588be7f[arg1][4][idx].field_0, 
               sub_a588be7f[arg1][4][idx].field_256,
               sub_a588be7f[arg1][4][idx].field_512,
               sub_a588be7f[arg1][4][idx].field_768
    return 0
}

function sub_926cb7a9(?) {
    require not uint8(stor2.field_160)
    require arg1 <= sub_4db5e27c[address(msg.sender)]
    require sub_4db5e27c[address(msg.sender)] >= 200
    require arg1 <= sub_4db5e27c[address(msg.sender)]
    require arg1 <= sub_4db5e27c[address(msg.sender)]
    sub_4db5e27c[address(msg.sender)] -= arg1
    require arg1 <= stor11
    stor11 -= arg1
    if not arg1:
        call msg.sender with:
             gas 2300 wei
    else:
        require arg1
        require arg1 * stor5 / arg1 == stor5
        call msg.sender with:
           value arg1 * stor5 wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x82a628f0: msg.sender, arg1
    return 1
}

function sub_7ad7ba49(?) {
    require arg1 >= 0
    require arg1 < stor16.length
    if stor16[arg1].field_1792:
        mem[128] = stor[sha3((9 * arg1) + ('name', 'stor16', 16) + 7)].field_0
        idx = 128
        s = 0
        while (32 * stor16[arg1].field_1792) + 96 > idx:
            mem[idx + 32] = stor[s + sha3((9 * arg1) + ('name', 'stor16', 16) + 7)].field_256
            idx = idx + 32
            s = s + 1
            continue 
    require stor16[arg1].field_2048 <= 3
    mem[(32 * stor16[arg1].field_1792) + 448 len floor32(stor16[arg1].field_1792)] = mem[128 len floor32(stor16[arg1].field_1792)]
    return stor16[arg1].field_0, 
           stor16[arg1].field_256,
           stor16[arg1].field_1024,
           stor16[arg1].field_512,
           stor16[arg1].field_768,
           stor16[arg1].field_1280,
           stor16[arg1].field_1536,
           Array(len=stor16[arg1].field_1792, data=mem[128 len floor32(stor16[arg1].field_1792)], mem[(32 * stor16[arg1].field_1792) + floor32(stor16[arg1].field_1792) + 448 len (32 * stor16[arg1].field_1792) - floor32(stor16[arg1].field_1792)]),
           stor16[arg1].field_2048
}

function sub_6d11238b(?) {
    require msg.sender == cfoAddress
    require arg2 > 0
    require stor9 >= arg2
    if not arg2:
        require arg2 <= stor9
        stor9 -= arg2
        if arg1:
            call arg1 with:
                 gas 2300 wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0x9de8f591: address(arg1), arg2
        else:
            call cfoAddress with:
                 gas 2300 wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0x9de8f591: cfoAddress, arg2
    else:
        require arg2
        require arg2 * stor5 / arg2 == stor5
        require arg2 <= stor9
        stor9 -= arg2
        if arg1:
            call arg1 with:
               value arg2 * stor5 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0x9de8f591: address(arg1), arg2
        else:
            call cfoAddress with:
               value arg2 * stor5 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0x9de8f591: cfoAddress, arg2
    return 1
}

function sub_479032f5(?) payable {
    require not uint8(stor2.field_160)
    require arg1 < stor16.length
    require stor16[arg1].field_2048 <= 3
    require stor16[arg1].field_2048 == 2
    if not stor16[arg1].field_0:
        require msg.value >= 0
    else:
        require stor16[arg1].field_0
        require stor16[arg1].field_0 * stor5 / stor16[arg1].field_0 == stor5
        require msg.value >= stor16[arg1].field_0 * stor5
    if not stor16[arg1].field_0:
        require 0 <= msg.value
        stor16[arg1].field_1024 = msg.sender
        stor16[arg1].field_2048 = 1
        require msg.value <= msg.value
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
    else:
        require stor16[arg1].field_0
        require stor16[arg1].field_0 * stor5 / stor16[arg1].field_0 == stor5
        require stor16[arg1].field_0 * stor5 <= msg.value
        stor16[arg1].field_1024 = msg.sender
        stor16[arg1].field_2048 = 1
        require msg.value - (stor16[arg1].field_0 * stor5) <= msg.value
        call msg.sender with:
           value msg.value - (stor16[arg1].field_0 * stor5) wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require stor9 + stor16[arg1].field_0 >= stor9
    stor9 += stor16[arg1].field_0
    emit 0x50fdc8fa: arg1, msg.sender
    return 1
}

function sub_8688cd51(?) {
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    require arg1 >= 0
    require arg1 < stor16.length
    mem[0] = arg1
    mem[32] = 20
    if arg2 <= sub_a588be7f[arg1].field_512:
        mem[224] = arg2
        if not arg2:
            mem[(32 * arg2) + 256] = arg2
            mem[64] = (64 * arg2) + 288
            s = 0
            idx = 0
            s = 96
            while idx < arg2:
                if not arg3:
                    mem[0] = idx
                    mem[32] = sha3(arg1, 20) + 4
                    _102 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_102] = sub_a588be7f[arg1][4][idx].field_0
                    mem[_102 + 32] = sub_a588be7f[arg1][4][idx].field_256
                    mem[_102 + 64] = sub_a588be7f[arg1][4][idx].field_512
                    mem[_102 + 96] = sub_a588be7f[arg1][4][idx].field_768
                    require idx < mem[224]
                    mem[(32 * idx) + 256] = sub_a588be7f[arg1][4][idx].field_0
                    require idx < mem[(32 * arg2) + 256]
                    mem[(32 * idx) + (32 * arg2) + 288] = sub_a588be7f[arg1][4][idx].field_256
                    s = idx
                    idx = idx + 1
                    s = _102
                    continue 
                mem[0] = sub_a588be7f[arg1].field_512 + -idx - 1
                mem[32] = sha3(arg1, 20) + 4
                _106 = mem[64]
                mem[64] = mem[64] + 128
                mem[_106] = sub_a588be7f[arg1][4][sub_a588be7f[arg1].field_512 + -idx - 1].field_0
                mem[_106 + 32] = sub_a588be7f[arg1][4][sub_a588be7f[arg1].field_512 + -idx - 1].field_256
                mem[_106 + 64] = sub_a588be7f[arg1][4][sub_a588be7f[arg1].field_512 + -idx - 1].field_512
                mem[_106 + 96] = sub_a588be7f[arg1][4][sub_a588be7f[arg1].field_512 + -idx - 1].field_768
                require idx < mem[224]
                mem[(32 * idx) + 256] = sub_a588be7f[arg1][4][sub_a588be7f[arg1].field_512 + -idx - 1].field_0
                require idx < mem[(32 * arg2) + 256]
                mem[(32 * idx) + (32 * arg2) + 288] = sub_a588be7f[arg1][4][sub_a588be7f[arg1].field_512 + -idx - 1].field_256
                s = sub_a588be7f[arg1].field_512 + -idx - 1
                idx = idx + 1
                s = _106
                continue 
            _89 = mem[64]
            mem[mem[64]] = 64
            mem[mem[64] + 64] = mem[224]
            _91 = mem[224]
            mem[mem[64] + 96 len floor32(mem[224])] = mem[256 len floor32(mem[224])]
            mem[mem[64] + 32] = (32 * _91) + 96
            mem[(32 * _91) + _89 + 96] = mem[(32 * arg2) + 256]
            _170 = mem[(32 * arg2) + 256]
            mem[(32 * _91) + _89 + 128 len floor32(mem[(32 * arg2) + 256])] = mem[(32 * arg2) + 288 len floor32(mem[(32 * arg2) + 256])]
            return memory
              from mem[64]
               len (32 * _170) + (32 * _91) + _89 + -mem[64] + 128
        mem[256 len 32 * arg2] = code.data[23074 len 32 * arg2]
        mem[(32 * arg2) + 256] = arg2
        mem[64] = (64 * arg2) + 288
        mem[(32 * arg2) + 288 len 32 * arg2] = code.data[23074 len 32 * arg2]
        s = 0
        idx = 0
        s = 96
        while idx < arg2:
            if not arg3:
                mem[0] = idx
                mem[32] = sha3(arg1, 20) + 4
                _110 = mem[64]
                mem[64] = mem[64] + 128
                mem[_110] = sub_a588be7f[arg1][4][idx].field_0
                mem[_110 + 32] = sub_a588be7f[arg1][4][idx].field_256
                mem[_110 + 64] = sub_a588be7f[arg1][4][idx].field_512
                mem[_110 + 96] = sub_a588be7f[arg1][4][idx].field_768
                require idx < mem[224]
                mem[(32 * idx) + 256] = sub_a588be7f[arg1][4][idx].field_0
                require idx < mem[(32 * arg2) + 256]
                mem[(32 * idx) + (32 * arg2) + 288] = sub_a588be7f[arg1][4][idx].field_256
                s = idx
                idx = idx + 1
                s = _110
                continue 
            mem[0] = sub_a588be7f[arg1].field_512 + -idx - 1
            mem[32] = sha3(arg1, 20) + 4
            _114 = mem[64]
            mem[64] = mem[64] + 128
            mem[_114] = sub_a588be7f[arg1][4][sub_a588be7f[arg1].field_512 + -idx - 1].field_0
            mem[_114 + 32] = sub_a588be7f[arg1][4][sub_a588be7f[arg1].field_512 + -idx - 1].field_256
            mem[_114 + 64] = sub_a588be7f[arg1][4][sub_a588be7f[arg1].field_512 + -idx - 1].field_512
            mem[_114 + 96] = sub_a588be7f[arg1][4][sub_a588be7f[arg1].field_512 + -idx - 1].field_768
            require idx < mem[224]
            mem[(32 * idx) + 256] = sub_a588be7f[arg1][4][sub_a588be7f[arg1].field_512 + -idx - 1].field_0
            require idx < mem[(32 * arg2) + 256]
            mem[(32 * idx) + (32 * arg2) + 288] = sub_a588be7f[arg1][4][sub_a588be7f[arg1].field_512 + -idx - 1].field_256
            s = sub_a588be7f[arg1].field_512 + -idx - 1
            idx = idx + 1
            s = _114
            continue 
        _92 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = mem[224]
        _94 = mem[224]
        mem[mem[64] + 96 len floor32(mem[224])] = mem[256 len floor32(mem[224])]
        mem[mem[64] + 32] = (32 * _94) + 96
        mem[(32 * _94) + _92 + 96] = mem[(32 * arg2) + 256]
        _173 = mem[(32 * arg2) + 256]
        mem[(32 * _94) + _92 + 128 len floor32(mem[(32 * arg2) + 256])] = mem[(32 * arg2) + 288 len floor32(mem[(32 * arg2) + 256])]
        return memory
          from mem[64]
           len (32 * _173) + (32 * _94) + _92 + -mem[64] + 128
    mem[224] = sub_a588be7f[arg1].field_512
    if not sub_a588be7f[arg1].field_512:
        mem[(32 * sub_a588be7f[arg1].field_512) + 256] = sub_a588be7f[arg1].field_512
        mem[64] = (64 * sub_a588be7f[arg1].field_512) + 288
        s = 0
        idx = 0
        s = 96
        while idx < sub_a588be7f[arg1].field_512:
            if not arg3:
                mem[0] = idx
                mem[32] = sha3(arg1, 20) + 4
                _118 = mem[64]
                mem[64] = mem[64] + 128
                mem[_118] = sub_a588be7f[arg1][4][idx].field_0
                mem[_118 + 32] = sub_a588be7f[arg1][4][idx].field_256
                mem[_118 + 64] = sub_a588be7f[arg1][4][idx].field_512
                mem[_118 + 96] = sub_a588be7f[arg1][4][idx].field_768
                require idx < mem[224]
                mem[(32 * idx) + 256] = sub_a588be7f[arg1][4][idx].field_0
                require idx < mem[(32 * sub_a588be7f[arg1].field_512) + 256]
                mem[(32 * idx) + (32 * sub_a588be7f[arg1].field_512) + 288] = sub_a588be7f[arg1][4][idx].field_256
                s = idx
                idx = idx + 1
                s = _118
                continue 
            mem[0] = sub_a588be7f[arg1].field_512 + -idx - 1
            mem[32] = sha3(arg1, 20) + 4
            _122 = mem[64]
            mem[64] = mem[64] + 128
            mem[_122] = sub_a588be7f[arg1][4][sub_a588be7f[arg1].field_512 + -idx - 1].field_0
            mem[_122 + 32] = sub_a588be7f[arg1][4][sub_a588be7f[arg1].field_512 + -idx - 1].field_256
            mem[_122 + 64] = sub_a588be7f[arg1][4][sub_a588be7f[arg1].field_512 + -idx - 1].field_512
            mem[_122 + 96] = sub_a588be7f[arg1][4][sub_a588be7f[arg1].field_512 + -idx - 1].field_768
            require idx < mem[224]
            mem[(32 * idx) + 256] = sub_a588be7f[arg1][4][sub_a588be7f[arg1].field_512 + -idx - 1].field_0
            require idx < mem[(32 * sub_a588be7f[arg1].field_512) + 256]
            mem[(32 * idx) + (32 * sub_a588be7f[arg1].field_512) + 288] = sub_a588be7f[arg1][4][sub_a588be7f[arg1].field_512 + -idx - 1].field_256
            s = sub_a588be7f[arg1].field_512 + -idx - 1
            idx = idx + 1
            s = _122
            continue 
        _95 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = mem[224]
        _97 = mem[224]
        mem[mem[64] + 96 len floor32(mem[224])] = mem[256 len floor32(mem[224])]
        mem[mem[64] + 32] = (32 * _97) + 96
        mem[(32 * _97) + _95 + 96] = mem[(32 * sub_a588be7f[arg1].field_512) + 256]
        _176 = mem[(32 * sub_a588be7f[arg1].field_512) + 256]
        mem[(32 * _97) + _95 + 128 len floor32(mem[(32 * sub_a588be7f[arg1].field_512) + 256])] = mem[(32 * sub_a588be7f[arg1].field_512) + 288 len floor32(mem[(32 * sub_a588be7f[arg1].field_512) + 256])]
        return memory
          from mem[64]
           len (32 * _176) + (32 * _97) + _95 + -mem[64] + 128
    mem[256 len 32 * sub_a588be7f[arg1].field_512] = code.data[23074 len 32 * sub_a588be7f[arg1].field_512]
    mem[(32 * sub_a588be7f[arg1].field_512) + 256] = sub_a588be7f[arg1].field_512
    mem[64] = (64 * sub_a588be7f[arg1].field_512) + 288
    mem[(32 * sub_a588be7f[arg1].field_512) + 288 len 32 * sub_a588be7f[arg1].field_512] = code.data[23074 len 32 * sub_a588be7f[arg1].field_512]
    s = 0
    idx = 0
    s = 96
    while idx < sub_a588be7f[arg1].field_512:
        if not arg3:
            mem[0] = idx
            mem[32] = sha3(arg1, 20) + 4
            _126 = mem[64]
            mem[64] = mem[64] + 128
            mem[_126] = sub_a588be7f[arg1][4][idx].field_0
            mem[_126 + 32] = sub_a588be7f[arg1][4][idx].field_256
            mem[_126 + 64] = sub_a588be7f[arg1][4][idx].field_512
            mem[_126 + 96] = sub_a588be7f[arg1][4][idx].field_768
            require idx < mem[224]
            mem[(32 * idx) + 256] = sub_a588be7f[arg1][4][idx].field_0
            require idx < mem[(32 * sub_a588be7f[arg1].field_512) + 256]
            mem[(32 * idx) + (32 * sub_a588be7f[arg1].field_512) + 288] = sub_a588be7f[arg1][4][idx].field_256
            s = idx
            idx = idx + 1
            s = _126
            continue 
        mem[0] = sub_a588be7f[arg1].field_512 + -idx - 1
        mem[32] = sha3(arg1, 20) + 4
        _130 = mem[64]
        mem[64] = mem[64] + 128
        mem[_130] = sub_a588be7f[arg1][4][sub_a588be7f[arg1].field_512 + -idx - 1].field_0
        mem[_130 + 32] = sub_a588be7f[arg1][4][sub_a588be7f[arg1].field_512 + -idx - 1].field_256
        mem[_130 + 64] = sub_a588be7f[arg1][4][sub_a588be7f[arg1].field_512 + -idx - 1].field_512
        mem[_130 + 96] = sub_a588be7f[arg1][4][sub_a588be7f[arg1].field_512 + -idx - 1].field_768
        require idx < mem[224]
        mem[(32 * idx) + 256] = sub_a588be7f[arg1][4][sub_a588be7f[arg1].field_512 + -idx - 1].field_0
        require idx < mem[(32 * sub_a588be7f[arg1].field_512) + 256]
        mem[(32 * idx) + (32 * sub_a588be7f[arg1].field_512) + 288] = sub_a588be7f[arg1][4][sub_a588be7f[arg1].field_512 + -idx - 1].field_256
        s = sub_a588be7f[arg1].field_512 + -idx - 1
        idx = idx + 1
        s = _130
        continue 
    _98 = mem[64]
    mem[mem[64]] = 64
    mem[mem[64] + 64] = mem[224]
    _100 = mem[224]
    mem[mem[64] + 96 len floor32(mem[224])] = mem[256 len floor32(mem[224])]
    mem[mem[64] + 32] = (32 * _100) + 96
    mem[(32 * _100) + _98 + 96] = mem[(32 * sub_a588be7f[arg1].field_512) + 256]
    _179 = mem[(32 * sub_a588be7f[arg1].field_512) + 256]
    mem[(32 * _100) + _98 + 128 len floor32(mem[(32 * sub_a588be7f[arg1].field_512) + 256])] = mem[(32 * sub_a588be7f[arg1].field_512) + 288 len floor32(mem[(32 * sub_a588be7f[arg1].field_512) + 256])]
    return memory
      from mem[64]
       len (32 * _179) + (32 * _100) + _98 + -mem[64] + 128
}

function sub_e9506a41(?) {
    if not sub_a588be7f[arg1].field_1536:
        if not sub_a588be7f[arg1].field_1792:
            if sub_a588be7f[arg1].field_2048:
                mem[(32 * sub_a588be7f[arg1].field_1536) + (32 * sub_a588be7f[arg1].field_1792) + 192] = sub_a588be7f[arg1][8].field_0
                idx = (32 * sub_a588be7f[arg1].field_1536) + (32 * sub_a588be7f[arg1].field_1792) + 192
                s = 0
                while (32 * sub_a588be7f[arg1].field_1536) + (32 * sub_a588be7f[arg1].field_1792) + (32 * sub_a588be7f[arg1].field_2048) + 160 > idx:
                    mem[idx + 32] = sub_a588be7f[arg1][s + 8].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[(32 * sub_a588be7f[arg1].field_1536) + (32 * sub_a588be7f[arg1].field_1792) + (32 * sub_a588be7f[arg1].field_2048) + 480 len floor32(sub_a588be7f[arg1].field_1536)] = mem[128 len floor32(sub_a588be7f[arg1].field_1536)]
            mem[(64 * sub_a588be7f[arg1].field_1536) + (32 * sub_a588be7f[arg1].field_1792) + (32 * sub_a588be7f[arg1].field_2048) + 480] = sub_a588be7f[arg1].field_1792
            mem[(64 * sub_a588be7f[arg1].field_1536) + (32 * sub_a588be7f[arg1].field_1792) + (32 * sub_a588be7f[arg1].field_2048) + 512 len floor32(sub_a588be7f[arg1].field_1792)] = mem[(32 * sub_a588be7f[arg1].field_1536) + 160 len floor32(sub_a588be7f[arg1].field_1792)]
            mem[(64 * sub_a588be7f[arg1].field_1792) + (64 * sub_a588be7f[arg1].field_1536) + (32 * sub_a588be7f[arg1].field_2048) + 512] = sub_a588be7f[arg1].field_2048
            mem[(64 * sub_a588be7f[arg1].field_1792) + (64 * sub_a588be7f[arg1].field_1536) + (32 * sub_a588be7f[arg1].field_2048) + 544 len floor32(sub_a588be7f[arg1].field_2048)] = mem[(32 * sub_a588be7f[arg1].field_1536) + (32 * sub_a588be7f[arg1].field_1792) + 192 len floor32(sub_a588be7f[arg1].field_2048)]
            return sub_a588be7f[arg1].field_512, 
                   sub_a588be7f[arg1].field_768,
                   bool(sub_a588be7f[arg1].field_1280),
                   Array(len=sub_a588be7f[arg1].field_1536, data=mem[128 len floor32(sub_a588be7f[arg1].field_1536)], mem[(32 * sub_a588be7f[arg1].field_1536) + (32 * sub_a588be7f[arg1].field_1792) + (32 * sub_a588be7f[arg1].field_2048) + floor32(sub_a588be7f[arg1].field_1536) + 480 len (32 * sub_a588be7f[arg1].field_1536) + (32 * sub_a588be7f[arg1].field_1792) + (32 * sub_a588be7f[arg1].field_2048) + -floor32(sub_a588be7f[arg1].field_1536) + 64]),
                   (32 * sub_a588be7f[arg1].field_1536) + 288,
                   (32 * sub_a588be7f[arg1].field_1792) + (32 * sub_a588be7f[arg1].field_1536) + 320,
                   sub_a588be7f[arg1].field_0,
                   sub_a588be7f[arg1].field_3072
        mem[(32 * sub_a588be7f[arg1].field_1536) + 160] = sub_a588be7f[arg1][7].field_0
        idx = (32 * sub_a588be7f[arg1].field_1536) + 160
        s = 0
        while (32 * sub_a588be7f[arg1].field_1536) + (32 * sub_a588be7f[arg1].field_1792) + 128 > idx:
            mem[idx + 32] = sub_a588be7f[arg1][s + 7].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if not sub_a588be7f[arg1].field_2048:
            mem[(32 * sub_a588be7f[arg1].field_1536) + (32 * sub_a588be7f[arg1].field_1792) + (32 * sub_a588be7f[arg1].field_2048) + 480 len floor32(sub_a588be7f[arg1].field_1536)] = mem[128 len floor32(sub_a588be7f[arg1].field_1536)]
            mem[(64 * sub_a588be7f[arg1].field_1536) + (32 * sub_a588be7f[arg1].field_1792) + (32 * sub_a588be7f[arg1].field_2048) + 480] = sub_a588be7f[arg1].field_1792
            mem[(64 * sub_a588be7f[arg1].field_1536) + (32 * sub_a588be7f[arg1].field_1792) + (32 * sub_a588be7f[arg1].field_2048) + 512 len floor32(sub_a588be7f[arg1].field_1792)] = mem[(32 * sub_a588be7f[arg1].field_1536) + 160 len floor32(sub_a588be7f[arg1].field_1792)]
            mem[(64 * sub_a588be7f[arg1].field_1792) + (64 * sub_a588be7f[arg1].field_1536) + (32 * sub_a588be7f[arg1].field_2048) + 512] = sub_a588be7f[arg1].field_2048
            mem[(64 * sub_a588be7f[arg1].field_1792) + (64 * sub_a588be7f[arg1].field_1536) + (32 * sub_a588be7f[arg1].field_2048) + 544 len floor32(sub_a588be7f[arg1].field_2048)] = mem[(32 * sub_a588be7f[arg1].field_1536) + (32 * sub_a588be7f[arg1].field_1792) + 192 len floor32(sub_a588be7f[arg1].field_2048)]
            return sub_a588be7f[arg1].field_512, 
                   sub_a588be7f[arg1].field_768,
                   bool(sub_a588be7f[arg1].field_1280),
                   Array(len=sub_a588be7f[arg1].field_1536, data=mem[128 len floor32(sub_a588be7f[arg1].field_1536)], mem[(32 * sub_a588be7f[arg1].field_1536) + (32 * sub_a588be7f[arg1].field_1792) + (32 * sub_a588be7f[arg1].field_2048) + floor32(sub_a588be7f[arg1].field_1536) + 480 len (32 * sub_a588be7f[arg1].field_1536) + (32 * sub_a588be7f[arg1].field_1792) + (32 * sub_a588be7f[arg1].field_2048) + -floor32(sub_a588be7f[arg1].field_1536) + 64]),
                   (32 * sub_a588be7f[arg1].field_1536) + 288,
                   (32 * sub_a588be7f[arg1].field_1792) + (32 * sub_a588be7f[arg1].field_1536) + 320,
                   sub_a588be7f[arg1].field_0,
                   sub_a588be7f[arg1].field_3072
        mem[(32 * sub_a588be7f[arg1].field_1536) + (32 * sub_a588be7f[arg1].field_1792) + 192] = sub_a588be7f[arg1][8].field_0
        idx = (32 * sub_a588be7f[arg1].field_1536) + (32 * sub_a588be7f[arg1].field_1792) + 192
        s = 0
        while (32 * sub_a588be7f[arg1].field_1536) + (32 * sub_a588be7f[arg1].field_1792) + (32 * sub_a588be7f[arg1].field_2048) + 160 > idx:
            mem[idx + 32] = sub_a588be7f[arg1][s + 8].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_a588be7f[arg1].field_1536) + (32 * sub_a588be7f[arg1].field_1792) + (32 * sub_a588be7f[arg1].field_2048) + 480 len floor32(sub_a588be7f[arg1].field_1536)] = mem[128 len floor32(sub_a588be7f[arg1].field_1536)]
        mem[(64 * sub_a588be7f[arg1].field_1536) + (32 * sub_a588be7f[arg1].field_1792) + (32 * sub_a588be7f[arg1].field_2048) + 480] = sub_a588be7f[arg1].field_1792
        mem[(64 * sub_a588be7f[arg1].field_1536) + (32 * sub_a588be7f[arg1].field_1792) + (32 * sub_a588be7f[arg1].field_2048) + 512 len floor32(sub_a588be7f[arg1].field_1792)] = mem[(32 * sub_a588be7f[arg1].field_1536) + 160 len floor32(sub_a588be7f[arg1].field_1792)]
        mem[(64 * sub_a588be7f[arg1].field_1792) + (64 * sub_a588be7f[arg1].field_1536) + (32 * sub_a588be7f[arg1].field_2048) + 512] = sub_a588be7f[arg1].field_2048
        mem[(64 * sub_a588be7f[arg1].field_1792) + (64 * sub_a588be7f[arg1].field_1536) + (32 * sub_a588be7f[arg1].field_2048) + 544 len floor32(sub_a588be7f[arg1].field_2048)] = mem[(32 * sub_a588be7f[arg1].field_1536) + (32 * sub_a588be7f[arg1].field_1792) + 192 len floor32(sub_a588be7f[arg1].field_2048)]
        return sub_a588be7f[arg1].field_512, 
               sub_a588be7f[arg1].field_768,
               bool(sub_a588be7f[arg1].field_1280),
               Array(len=sub_a588be7f[arg1].field_1536, data=mem[128 len floor32(sub_a588be7f[arg1].field_1536)], mem[(32 * sub_a588be7f[arg1].field_1536) + (32 * sub_a588be7f[arg1].field_1792) + (32 * sub_a588be7f[arg1].field_2048) + floor32(sub_a588be7f[arg1].field_1536) + 480 len (32 * sub_a588be7f[arg1].field_1536) + (32 * sub_a588be7f[arg1].field_2048) + (32 * sub_a588be7f[arg1].field_1792) + -floor32(sub_a588be7f[arg1].field_1536) + 64]),
               (32 * sub_a588be7f[arg1].field_1536) + 288,
               (32 * sub_a588be7f[arg1].field_1792) + (32 * sub_a588be7f[arg1].field_1536) + 320,
               sub_a588be7f[arg1].field_0,
               sub_a588be7f[arg1].field_3072
    mem[128] = sub_a588be7f[arg1][6].field_0
    idx = 128
    s = 0
    while (32 * sub_a588be7f[arg1].field_1536) + 96 > idx:
        mem[idx + 32] = sub_a588be7f[arg1][s + 6].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if not sub_a588be7f[arg1].field_1792:
        if not sub_a588be7f[arg1].field_2048:
            mem[(32 * sub_a588be7f[arg1].field_1536) + (32 * sub_a588be7f[arg1].field_1792) + (32 * sub_a588be7f[arg1].field_2048) + 480 len floor32(sub_a588be7f[arg1].field_1536)] = mem[128 len floor32(sub_a588be7f[arg1].field_1536)]
            mem[(64 * sub_a588be7f[arg1].field_1536) + (32 * sub_a588be7f[arg1].field_1792) + (32 * sub_a588be7f[arg1].field_2048) + 480] = sub_a588be7f[arg1].field_1792
            mem[(64 * sub_a588be7f[arg1].field_1536) + (32 * sub_a588be7f[arg1].field_1792) + (32 * sub_a588be7f[arg1].field_2048) + 512 len floor32(sub_a588be7f[arg1].field_1792)] = mem[(32 * sub_a588be7f[arg1].field_1536) + 160 len floor32(sub_a588be7f[arg1].field_1792)]
            mem[(64 * sub_a588be7f[arg1].field_1792) + (64 * sub_a588be7f[arg1].field_1536) + (32 * sub_a588be7f[arg1].field_2048) + 512] = sub_a588be7f[arg1].field_2048
            mem[(64 * sub_a588be7f[arg1].field_1792) + (64 * sub_a588be7f[arg1].field_1536) + (32 * sub_a588be7f[arg1].field_2048) + 544 len floor32(sub_a588be7f[arg1].field_2048)] = mem[(32 * sub_a588be7f[arg1].field_1536) + (32 * sub_a588be7f[arg1].field_1792) + 192 len floor32(sub_a588be7f[arg1].field_2048)]
            return sub_a588be7f[arg1].field_512, 
                   sub_a588be7f[arg1].field_768,
                   bool(sub_a588be7f[arg1].field_1280),
                   Array(len=sub_a588be7f[arg1].field_1536, data=mem[128 len floor32(sub_a588be7f[arg1].field_1536)], mem[(32 * sub_a588be7f[arg1].field_1536) + (32 * sub_a588be7f[arg1].field_1792) + (32 * sub_a588be7f[arg1].field_2048) + floor32(sub_a588be7f[arg1].field_1536) + 480 len (32 * sub_a588be7f[arg1].field_1536) + (32 * sub_a588be7f[arg1].field_1792) + (32 * sub_a588be7f[arg1].field_2048) + -floor32(sub_a588be7f[arg1].field_1536) + 64]),
                   (32 * sub_a588be7f[arg1].field_1536) + 288,
                   (32 * sub_a588be7f[arg1].field_1792) + (32 * sub_a588be7f[arg1].field_1536) + 320,
                   sub_a588be7f[arg1].field_0,
                   sub_a588be7f[arg1].field_3072
        mem[(32 * sub_a588be7f[arg1].field_1536) + (32 * sub_a588be7f[arg1].field_1792) + 192] = sub_a588be7f[arg1][8].field_0
        idx = (32 * sub_a588be7f[arg1].field_1536) + (32 * sub_a588be7f[arg1].field_1792) + 192
        s = 0
        while (32 * sub_a588be7f[arg1].field_1536) + (32 * sub_a588be7f[arg1].field_1792) + (32 * sub_a588be7f[arg1].field_2048) + 160 > idx:
            mem[idx + 32] = sub_a588be7f[arg1][s + 8].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_a588be7f[arg1].field_1536) + (32 * sub_a588be7f[arg1].field_1792) + (32 * sub_a588be7f[arg1].field_2048) + 480 len floor32(sub_a588be7f[arg1].field_1536)] = mem[128 len floor32(sub_a588be7f[arg1].field_1536)]
        mem[(64 * sub_a588be7f[arg1].field_1536) + (32 * sub_a588be7f[arg1].field_1792) + (32 * sub_a588be7f[arg1].field_2048) + 480] = sub_a588be7f[arg1].field_1792
        mem[(64 * sub_a588be7f[arg1].field_1536) + (32 * sub_a588be7f[arg1].field_1792) + (32 * sub_a588be7f[arg1].field_2048) + 512 len floor32(sub_a588be7f[arg1].field_1792)] = mem[(32 * sub_a588be7f[arg1].field_1536) + 160 len floor32(sub_a588be7f[arg1].field_1792)]
        mem[(64 * sub_a588be7f[arg1].field_1792) + (64 * sub_a588be7f[arg1].field_1536) + (32 * sub_a588be7f[arg1].field_2048) + 512] = sub_a588be7f[arg1].field_2048
        mem[(64 * sub_a588be7f[arg1].field_1792) + (64 * sub_a588be7f[arg1].field_1536) + (32 * sub_a588be7f[arg1].field_2048) + 544 len floor32(sub_a588be7f[arg1].field_2048)] = mem[(32 * sub_a588be7f[arg1].field_1536) + (32 * sub_a588be7f[arg1].field_1792) + 192 len floor32(sub_a588be7f[arg1].field_2048)]
        return sub_a588be7f[arg1].field_512, 
               sub_a588be7f[arg1].field_768,
               bool(sub_a588be7f[arg1].field_1280),
               Array(len=sub_a588be7f[arg1].field_1536, data=mem[128 len floor32(sub_a588be7f[arg1].field_1536)], mem[(32 * sub_a588be7f[arg1].field_1536) + (32 * sub_a588be7f[arg1].field_1792) + (32 * sub_a588be7f[arg1].field_2048) + floor32(sub_a588be7f[arg1].field_1536) + 480 len (32 * sub_a588be7f[arg1].field_1536) + (32 * sub_a588be7f[arg1].field_2048) + (32 * sub_a588be7f[arg1].field_1792) + -floor32(sub_a588be7f[arg1].field_1536) + 64]),
               (32 * sub_a588be7f[arg1].field_1536) + 288,
               (32 * sub_a588be7f[arg1].field_1792) + (32 * sub_a588be7f[arg1].field_1536) + 320,
               sub_a588be7f[arg1].field_0,
               sub_a588be7f[arg1].field_3072
    mem[(32 * sub_a588be7f[arg1].field_1536) + 160] = sub_a588be7f[arg1][7].field_0
    idx = (32 * sub_a588be7f[arg1].field_1536) + 160
    s = 0
    while (32 * sub_a588be7f[arg1].field_1536) + (32 * sub_a588be7f[arg1].field_1792) + 128 > idx:
        mem[idx + 32] = sub_a588be7f[arg1][s + 7].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if not sub_a588be7f[arg1].field_2048:
        mem[(32 * sub_a588be7f[arg1].field_1536) + (32 * sub_a588be7f[arg1].field_1792) + (32 * sub_a588be7f[arg1].field_2048) + 480 len floor32(sub_a588be7f[arg1].field_1536)] = mem[128 len floor32(sub_a588be7f[arg1].field_1536)]
        mem[(64 * sub_a588be7f[arg1].field_1536) + (32 * sub_a588be7f[arg1].field_1792) + (32 * sub_a588be7f[arg1].field_2048) + 480] = sub_a588be7f[arg1].field_1792
        mem[(64 * sub_a588be7f[arg1].field_1536) + (32 * sub_a588be7f[arg1].field_1792) + (32 * sub_a588be7f[arg1].field_2048) + 512 len floor32(sub_a588be7f[arg1].field_1792)] = mem[(32 * sub_a588be7f[arg1].field_1536) + 160 len floor32(sub_a588be7f[arg1].field_1792)]
        mem[(64 * sub_a588be7f[arg1].field_1792) + (64 * sub_a588be7f[arg1].field_1536) + (32 * sub_a588be7f[arg1].field_2048) + 512] = sub_a588be7f[arg1].field_2048
        mem[(64 * sub_a588be7f[arg1].field_1792) + (64 * sub_a588be7f[arg1].field_1536) + (32 * sub_a588be7f[arg1].field_2048) + 544 len floor32(sub_a588be7f[arg1].field_2048)] = mem[(32 * sub_a588be7f[arg1].field_1536) + (32 * sub_a588be7f[arg1].field_1792) + 192 len floor32(sub_a588be7f[arg1].field_2048)]
        return sub_a588be7f[arg1].field_512, 
               sub_a588be7f[arg1].field_768,
               bool(sub_a588be7f[arg1].field_1280),
               Array(len=sub_a588be7f[arg1].field_1536, data=mem[128 len floor32(sub_a588be7f[arg1].field_1536)], mem[(32 * sub_a588be7f[arg1].field_1536) + (32 * sub_a588be7f[arg1].field_1792) + (32 * sub_a588be7f[arg1].field_2048) + floor32(sub_a588be7f[arg1].field_1536) + 480 len (32 * sub_a588be7f[arg1].field_1536) + (32 * sub_a588be7f[arg1].field_1792) + (32 * sub_a588be7f[arg1].field_2048) + -floor32(sub_a588be7f[arg1].field_1536) + 64]),
               (32 * sub_a588be7f[arg1].field_1536) + 288,
               (32 * sub_a588be7f[arg1].field_1792) + (32 * sub_a588be7f[arg1].field_1536) + 320,
               sub_a588be7f[arg1].field_0,
               sub_a588be7f[arg1].field_3072
    mem[(32 * sub_a588be7f[arg1].field_1536) + (32 * sub_a588be7f[arg1].field_1792) + 192] = sub_a588be7f[arg1][8].field_0
    idx = (32 * sub_a588be7f[arg1].field_1536) + (32 * sub_a588be7f[arg1].field_1792) + 192
    s = 0
    while (32 * sub_a588be7f[arg1].field_1536) + (32 * sub_a588be7f[arg1].field_1792) + (32 * sub_a588be7f[arg1].field_2048) + 160 > idx:
        mem[idx + 32] = sub_a588be7f[arg1][s + 8].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_a588be7f[arg1].field_1536) + (32 * sub_a588be7f[arg1].field_1792) + (32 * sub_a588be7f[arg1].field_2048) + 480 len floor32(sub_a588be7f[arg1].field_1536)] = mem[128 len floor32(sub_a588be7f[arg1].field_1536)]
    mem[(64 * sub_a588be7f[arg1].field_1536) + (32 * sub_a588be7f[arg1].field_1792) + (32 * sub_a588be7f[arg1].field_2048) + 480] = sub_a588be7f[arg1].field_1792
    mem[(64 * sub_a588be7f[arg1].field_1536) + (32 * sub_a588be7f[arg1].field_1792) + (32 * sub_a588be7f[arg1].field_2048) + 512 len floor32(sub_a588be7f[arg1].field_1792)] = mem[(32 * sub_a588be7f[arg1].field_1536) + 160 len floor32(sub_a588be7f[arg1].field_1792)]
    mem[(64 * sub_a588be7f[arg1].field_1792) + (64 * sub_a588be7f[arg1].field_1536) + (32 * sub_a588be7f[arg1].field_2048) + 512] = sub_a588be7f[arg1].field_2048
    mem[(64 * sub_a588be7f[arg1].field_1792) + (64 * sub_a588be7f[arg1].field_1536) + (32 * sub_a588be7f[arg1].field_2048) + 544 len floor32(sub_a588be7f[arg1].field_2048)] = mem[(32 * sub_a588be7f[arg1].field_1536) + (32 * sub_a588be7f[arg1].field_1792) + 192 len floor32(sub_a588be7f[arg1].field_2048)]
    return sub_a588be7f[arg1].field_512, 
           sub_a588be7f[arg1].field_768,
           bool(sub_a588be7f[arg1].field_1280),
           Array(len=sub_a588be7f[arg1].field_1536, data=mem[128 len floor32(sub_a588be7f[arg1].field_1536)], mem[(32 * sub_a588be7f[arg1].field_1536) + (32 * sub_a588be7f[arg1].field_1792) + (32 * sub_a588be7f[arg1].field_2048) + floor32(sub_a588be7f[arg1].field_1536) + 480 len (32 * sub_a588be7f[arg1].field_1536) + (32 * sub_a588be7f[arg1].field_1792) + -floor32(sub_a588be7f[arg1].field_1536) + 32], sub_a588be7f[arg1].field_2048, mem[(32 * sub_a588be7f[arg1].field_1536) + (32 * sub_a588be7f[arg1].field_1792) + 192 len floor32(sub_a588be7f[arg1].field_2048)], mem[(64 * sub_a588be7f[arg1].field_1536) + (64 * sub_a588be7f[arg1].field_1792) + (32 * sub_a588be7f[arg1].field_2048) + floor32(sub_a588be7f[arg1].field_2048) + 544 len (32 * sub_a588be7f[arg1].field_2048) - floor32(sub_a588be7f[arg1].field_2048)]),
           (32 * sub_a588be7f[arg1].field_1536) + 288,
           (32 * sub_a588be7f[arg1].field_1792) + (32 * sub_a588be7f[arg1].field_1536) + 320,
           sub_a588be7f[arg1].field_0,
           sub_a588be7f[arg1].field_3072
}

function sub_d60a15f7(?) {
    if arg1 <= stor14.length:
        if stor14.length <= stor6:
            mem[96] = arg1
            if not arg1:
                mem[(32 * arg1) + 128] = arg1
                mem[(64 * arg1) + 160] = arg1
                mem[(98 * arg1) + 192] = arg1
                mem[(131 * arg1) + 224] = arg1
                mem[64] = (164 * arg1) + 256
                s = 0
                idx = 0
                s = 0
                while idx < arg1:
                    require stor14.length + -idx - 1 < stor14.length
                    mem[0] = 14
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = uint256(stor[(5 * stor14.length) - (5 * idx) + ('name', 'stor14', 14)])
                    require idx < mem[(32 * arg1) + 128]
                    mem[(32 * idx) + (32 * arg1) + 160] = address(stor[(5 * stor14.length) - (5 * idx) + ('name', 'stor14', 14)])
                    require idx < mem[(64 * arg1) + 160]
                    mem[(32 * idx) + (64 * arg1) + 192] = uint256(stor[(5 * stor14.length) - (5 * idx) + ('name', 'stor14', 14)])
                    require idx < mem[(98 * arg1) + 192]
                    mem[(32 * idx) + (98 * arg1) + 224] = uint256(stor[(5 * stor14.length) - (5 * idx) + ('name', 'stor14', 14)])
                    require idx < mem[(131 * arg1) + 224]
                    mem[(32 * idx) + (131 * arg1) + 256] = uint256(stor[(5 * stor14.length) - (5 * idx) + ('name', 'stor14', 14)])
                    s = (5 * stor14.length) + (-5 * idx) + sha3(14) - 5
                    idx = idx + 1
                    s = stor14.length + -idx - 1
                    continue 
                _221 = mem[64]
                mem[mem[64]] = 160
                mem[mem[64] + 160] = mem[96]
                _223 = mem[96]
                mem[mem[64] + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                mem[mem[64] + 32] = (32 * mem[96]) + 192
                mem[(32 * mem[96]) + mem[64] + 192] = mem[(32 * arg1) + 128]
                _406 = mem[(32 * arg1) + 128]
                mem[(32 * mem[96]) + mem[64] + 224 len floor32(mem[(32 * arg1) + 128])] = mem[(32 * arg1) + 160 len floor32(mem[(32 * arg1) + 128])]
                mem[mem[64] + 64] = (32 * _406) + (32 * mem[96]) + 224
                mem[(32 * _406) + (32 * _223) + _221 + 224] = mem[(64 * arg1) + 160]
                _518 = mem[(64 * arg1) + 160]
                mem[(32 * _406) + (32 * _223) + _221 + 256 len floor32(mem[(64 * arg1) + 160])] = mem[(64 * arg1) + 192 len floor32(mem[(64 * arg1) + 160])]
                mem[_221 + 96] = (32 * _518) + (32 * _406) + (32 * _223) + 256
                mem[(32 * _518) + (32 * _406) + (32 * _223) + _221 + 256] = mem[(98 * arg1) + 192]
                _606 = mem[(98 * arg1) + 192]
                mem[(32 * _518) + (32 * _406) + (32 * _223) + _221 + 288 len floor32(mem[(98 * arg1) + 192])] = mem[(98 * arg1) + 224 len floor32(mem[(98 * arg1) + 192])]
                mem[_221 + 128] = (32 * _606) + (32 * _518) + (32 * _406) + (32 * _223) + 288
                mem[(32 * _606) + (32 * _518) + (32 * _406) + (32 * _223) + _221 + 288] = mem[(131 * arg1) + 224]
                _670 = mem[(131 * arg1) + 224]
                mem[(32 * _606) + (32 * _518) + (32 * _406) + (32 * _223) + _221 + 320 len floor32(mem[(131 * arg1) + 224])] = mem[(131 * arg1) + 256 len floor32(mem[(131 * arg1) + 224])]
                return memory
                  from mem[64]
                   len (32 * _670) + (32 * _606) + (32 * _518) + (32 * _406) + (32 * _223) + _221 + -mem[64] + 320
            mem[128 len 32 * arg1] = code.data[23074 len 32 * arg1]
            mem[(32 * arg1) + 128] = arg1
            mem[(32 * arg1) + 160 len 32 * arg1] = code.data[23074 len 32 * arg1]
            mem[(64 * arg1) + 160] = arg1
            mem[(64 * arg1) + 192 len 32 * arg1] = code.data[23074 len 32 * arg1]
            mem[(98 * arg1) + 192] = arg1
            mem[(98 * arg1) + 224 len 32 * arg1] = code.data[23074 len 32 * arg1]
            mem[(131 * arg1) + 224] = arg1
            mem[64] = (164 * arg1) + 256
            mem[(131 * arg1) + 256 len 32 * arg1] = code.data[23074 len 32 * arg1]
            s = 0
            idx = 0
            s = 0
            while idx < arg1:
                require stor14.length + -idx - 1 < stor14.length
                mem[0] = 14
                require idx < mem[96]
                mem[(32 * idx) + 128] = uint256(stor[(5 * stor14.length) - (5 * idx) + ('name', 'stor14', 14)])
                require idx < mem[(32 * arg1) + 128]
                mem[(32 * idx) + (32 * arg1) + 160] = address(stor[(5 * stor14.length) - (5 * idx) + ('name', 'stor14', 14)])
                require idx < mem[(64 * arg1) + 160]
                mem[(32 * idx) + (64 * arg1) + 192] = uint256(stor[(5 * stor14.length) - (5 * idx) + ('name', 'stor14', 14)])
                require idx < mem[(98 * arg1) + 192]
                mem[(32 * idx) + (98 * arg1) + 224] = uint256(stor[(5 * stor14.length) - (5 * idx) + ('name', 'stor14', 14)])
                require idx < mem[(131 * arg1) + 224]
                mem[(32 * idx) + (131 * arg1) + 256] = uint256(stor[(5 * stor14.length) - (5 * idx) + ('name', 'stor14', 14)])
                s = (5 * stor14.length) + (-5 * idx) + sha3(14) - 5
                idx = idx + 1
                s = stor14.length + -idx - 1
                continue 
            _226 = mem[64]
            mem[mem[64]] = 160
            mem[mem[64] + 160] = mem[96]
            _228 = mem[96]
            mem[mem[64] + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + 32] = (32 * mem[96]) + 192
            mem[(32 * mem[96]) + mem[64] + 192] = mem[(32 * arg1) + 128]
            _409 = mem[(32 * arg1) + 128]
            mem[(32 * mem[96]) + mem[64] + 224 len floor32(mem[(32 * arg1) + 128])] = mem[(32 * arg1) + 160 len floor32(mem[(32 * arg1) + 128])]
            mem[mem[64] + 64] = (32 * _409) + (32 * mem[96]) + 224
            mem[(32 * _409) + (32 * _228) + _226 + 224] = mem[(64 * arg1) + 160]
            _521 = mem[(64 * arg1) + 160]
            mem[(32 * _409) + (32 * _228) + _226 + 256 len floor32(mem[(64 * arg1) + 160])] = mem[(64 * arg1) + 192 len floor32(mem[(64 * arg1) + 160])]
            mem[_226 + 96] = (32 * _521) + (32 * _409) + (32 * _228) + 256
            mem[(32 * _521) + (32 * _409) + (32 * _228) + _226 + 256] = mem[(98 * arg1) + 192]
            _609 = mem[(98 * arg1) + 192]
            mem[(32 * _521) + (32 * _409) + (32 * _228) + _226 + 288 len floor32(mem[(98 * arg1) + 192])] = mem[(98 * arg1) + 224 len floor32(mem[(98 * arg1) + 192])]
            mem[_226 + 128] = (32 * _609) + (32 * _521) + (32 * _409) + (32 * _228) + 288
            mem[(32 * _609) + (32 * _521) + (32 * _409) + (32 * _228) + _226 + 288] = mem[(131 * arg1) + 224]
            _673 = mem[(131 * arg1) + 224]
            mem[(32 * _609) + (32 * _521) + (32 * _409) + (32 * _228) + _226 + 320 len floor32(mem[(131 * arg1) + 224])] = mem[(131 * arg1) + 256 len floor32(mem[(131 * arg1) + 224])]
            return memory
              from mem[64]
               len (32 * _673) + (32 * _609) + (32 * _521) + (32 * _409) + (32 * _228) + _226 + -mem[64] + 320
        mem[96] = stor6
        if not stor6:
            mem[(32 * stor6) + 128] = stor6
            mem[(64 * stor6) + 160] = stor6
            mem[(98 * stor6) + 192] = stor6
            mem[(131 * stor6) + 224] = stor6
            mem[64] = (164 * stor6) + 256
            s = 0
            idx = 0
            s = 0
            while idx < stor6:
                require stor14.length + -idx - 1 < stor14.length
                mem[0] = 14
                require idx < mem[96]
                mem[(32 * idx) + 128] = uint256(stor[(5 * stor14.length) - (5 * idx) + ('name', 'stor14', 14)])
                require idx < mem[(32 * stor6) + 128]
                mem[(32 * idx) + (32 * stor6) + 160] = address(stor[(5 * stor14.length) - (5 * idx) + ('name', 'stor14', 14)])
                require idx < mem[(64 * stor6) + 160]
                mem[(32 * idx) + (64 * stor6) + 192] = uint256(stor[(5 * stor14.length) - (5 * idx) + ('name', 'stor14', 14)])
                require idx < mem[(98 * stor6) + 192]
                mem[(32 * idx) + (98 * stor6) + 224] = uint256(stor[(5 * stor14.length) - (5 * idx) + ('name', 'stor14', 14)])
                require idx < mem[(131 * stor6) + 224]
                mem[(32 * idx) + (131 * stor6) + 256] = uint256(stor[(5 * stor14.length) - (5 * idx) + ('name', 'stor14', 14)])
                s = (5 * stor14.length) + (-5 * idx) + sha3(14) - 5
                idx = idx + 1
                s = stor14.length + -idx - 1
                continue 
            _231 = mem[64]
            mem[mem[64]] = 160
            mem[mem[64] + 160] = mem[96]
            _233 = mem[96]
            mem[mem[64] + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + 32] = (32 * mem[96]) + 192
            mem[(32 * mem[96]) + mem[64] + 192] = mem[(32 * stor6) + 128]
            _412 = mem[(32 * stor6) + 128]
            mem[(32 * mem[96]) + mem[64] + 224 len floor32(mem[(32 * stor6) + 128])] = mem[(32 * stor6) + 160 len floor32(mem[(32 * stor6) + 128])]
            mem[mem[64] + 64] = (32 * _412) + (32 * mem[96]) + 224
            mem[(32 * _412) + (32 * _233) + _231 + 224] = mem[(64 * stor6) + 160]
            _524 = mem[(64 * stor6) + 160]
            mem[(32 * _412) + (32 * _233) + _231 + 256 len floor32(mem[(64 * stor6) + 160])] = mem[(64 * stor6) + 192 len floor32(mem[(64 * stor6) + 160])]
            mem[_231 + 96] = (32 * _524) + (32 * _412) + (32 * _233) + 256
            mem[(32 * _524) + (32 * _412) + (32 * _233) + _231 + 256] = mem[(98 * stor6) + 192]
            _612 = mem[(98 * stor6) + 192]
            mem[(32 * _524) + (32 * _412) + (32 * _233) + _231 + 288 len floor32(mem[(98 * stor6) + 192])] = mem[(98 * stor6) + 224 len floor32(mem[(98 * stor6) + 192])]
            mem[_231 + 128] = (32 * _612) + (32 * _524) + (32 * _412) + (32 * _233) + 288
            mem[(32 * _612) + (32 * _524) + (32 * _412) + (32 * _233) + _231 + 288] = mem[(131 * stor6) + 224]
            _676 = mem[(131 * stor6) + 224]
            mem[(32 * _612) + (32 * _524) + (32 * _412) + (32 * _233) + _231 + 320 len floor32(mem[(131 * stor6) + 224])] = mem[(131 * stor6) + 256 len floor32(mem[(131 * stor6) + 224])]
            return memory
              from mem[64]
               len (32 * _676) + (32 * _612) + (32 * _524) + (32 * _412) + (32 * _233) + _231 + -mem[64] + 320
        mem[128 len 32 * stor6] = code.data[23074 len 32 * stor6]
        mem[(32 * stor6) + 128] = stor6
        mem[(32 * stor6) + 160 len 32 * stor6] = code.data[23074 len 32 * stor6]
        mem[(64 * stor6) + 160] = stor6
        mem[(64 * stor6) + 192 len 32 * stor6] = code.data[23074 len 32 * stor6]
        mem[(98 * stor6) + 192] = stor6
        mem[(98 * stor6) + 224 len 32 * stor6] = code.data[23074 len 32 * stor6]
        mem[(131 * stor6) + 224] = stor6
        mem[64] = (164 * stor6) + 256
        mem[(131 * stor6) + 256 len 32 * stor6] = code.data[23074 len 32 * stor6]
        s = 0
        idx = 0
        s = 0
        while idx < stor6:
            require stor14.length + -idx - 1 < stor14.length
            mem[0] = 14
            require idx < mem[96]
            mem[(32 * idx) + 128] = uint256(stor[(5 * stor14.length) - (5 * idx) + ('name', 'stor14', 14)])
            require idx < mem[(32 * stor6) + 128]
            mem[(32 * idx) + (32 * stor6) + 160] = address(stor[(5 * stor14.length) - (5 * idx) + ('name', 'stor14', 14)])
            require idx < mem[(64 * stor6) + 160]
            mem[(32 * idx) + (64 * stor6) + 192] = uint256(stor[(5 * stor14.length) - (5 * idx) + ('name', 'stor14', 14)])
            require idx < mem[(98 * stor6) + 192]
            mem[(32 * idx) + (98 * stor6) + 224] = uint256(stor[(5 * stor14.length) - (5 * idx) + ('name', 'stor14', 14)])
            require idx < mem[(131 * stor6) + 224]
            mem[(32 * idx) + (131 * stor6) + 256] = uint256(stor[(5 * stor14.length) - (5 * idx) + ('name', 'stor14', 14)])
            s = (5 * stor14.length) + (-5 * idx) + sha3(14) - 5
            idx = idx + 1
            s = stor14.length + -idx - 1
            continue 
        _236 = mem[64]
        mem[mem[64]] = 160
        mem[mem[64] + 160] = mem[96]
        _238 = mem[96]
        mem[mem[64] + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + 32] = (32 * mem[96]) + 192
        mem[(32 * mem[96]) + mem[64] + 192] = mem[(32 * stor6) + 128]
        _415 = mem[(32 * stor6) + 128]
        mem[(32 * mem[96]) + mem[64] + 224 len floor32(mem[(32 * stor6) + 128])] = mem[(32 * stor6) + 160 len floor32(mem[(32 * stor6) + 128])]
        mem[mem[64] + 64] = (32 * _415) + (32 * mem[96]) + 224
        mem[(32 * _415) + (32 * _238) + _236 + 224] = mem[(64 * stor6) + 160]
        _527 = mem[(64 * stor6) + 160]
        mem[(32 * _415) + (32 * _238) + _236 + 256 len floor32(mem[(64 * stor6) + 160])] = mem[(64 * stor6) + 192 len floor32(mem[(64 * stor6) + 160])]
        mem[_236 + 96] = (32 * _527) + (32 * _415) + (32 * _238) + 256
        mem[(32 * _527) + (32 * _415) + (32 * _238) + _236 + 256] = mem[(98 * stor6) + 192]
        _615 = mem[(98 * stor6) + 192]
        mem[(32 * _527) + (32 * _415) + (32 * _238) + _236 + 288 len floor32(mem[(98 * stor6) + 192])] = mem[(98 * stor6) + 224 len floor32(mem[(98 * stor6) + 192])]
        mem[_236 + 128] = (32 * _615) + (32 * _527) + (32 * _415) + (32 * _238) + 288
        mem[(32 * _615) + (32 * _527) + (32 * _415) + (32 * _238) + _236 + 288] = mem[(131 * stor6) + 224]
        _679 = mem[(131 * stor6) + 224]
        mem[(32 * _615) + (32 * _527) + (32 * _415) + (32 * _238) + _236 + 320 len floor32(mem[(131 * stor6) + 224])] = mem[(131 * stor6) + 256 len floor32(mem[(131 * stor6) + 224])]
        return memory
          from mem[64]
           len (32 * _679) + (32 * _615) + (32 * _527) + (32 * _415) + (32 * _238) + _236 + -mem[64] + 320
    if stor14.length <= stor6:
        mem[96] = stor14.length
        if not stor14.length:
            mem[(32 * stor14.length) + 128] = stor14.length
            mem[(64 * stor14.length) + 160] = stor14.length
            mem[(98 * stor14.length) + 192] = stor14.length
            mem[(131 * stor14.length) + 224] = stor14.length
            mem[64] = (164 * stor14.length) + 256
            s = 0
            idx = 0
            s = 0
            while idx < stor14.length:
                require stor14.length + -idx - 1 < stor14.length
                mem[0] = 14
                require idx < mem[96]
                mem[(32 * idx) + 128] = uint256(stor[(5 * stor14.length) - (5 * idx) + ('name', 'stor14', 14)])
                require idx < mem[(32 * stor14.length) + 128]
                mem[(32 * idx) + (32 * stor14.length) + 160] = address(stor[(5 * stor14.length) - (5 * idx) + ('name', 'stor14', 14)])
                require idx < mem[(64 * stor14.length) + 160]
                mem[(32 * idx) + (64 * stor14.length) + 192] = uint256(stor[(5 * stor14.length) - (5 * idx) + ('name', 'stor14', 14)])
                require idx < mem[(98 * stor14.length) + 192]
                mem[(32 * idx) + (98 * stor14.length) + 224] = uint256(stor[(5 * stor14.length) - (5 * idx) + ('name', 'stor14', 14)])
                require idx < mem[(131 * stor14.length) + 224]
                mem[(32 * idx) + (131 * stor14.length) + 256] = uint256(stor[(5 * stor14.length) - (5 * idx) + ('name', 'stor14', 14)])
                s = (5 * stor14.length) + (-5 * idx) + sha3(14) - 5
                idx = idx + 1
                s = stor14.length + -idx - 1
                continue 
            _241 = mem[64]
            mem[mem[64]] = 160
            mem[mem[64] + 160] = mem[96]
            _243 = mem[96]
            mem[mem[64] + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[mem[64] + 32] = (32 * mem[96]) + 192
            mem[(32 * mem[96]) + mem[64] + 192] = mem[(32 * stor14.length) + 128]
            _418 = mem[(32 * stor14.length) + 128]
            mem[(32 * mem[96]) + mem[64] + 224 len floor32(mem[(32 * stor14.length) + 128])] = mem[(32 * stor14.length) + 160 len floor32(mem[(32 * stor14.length) + 128])]
            mem[mem[64] + 64] = (32 * _418) + (32 * mem[96]) + 224
            mem[(32 * _418) + (32 * _243) + _241 + 224] = mem[(64 * stor14.length) + 160]
            _530 = mem[(64 * stor14.length) + 160]
            mem[(32 * _418) + (32 * _243) + _241 + 256 len floor32(mem[(64 * stor14.length) + 160])] = mem[(64 * stor14.length) + 192 len floor32(mem[(64 * stor14.length) + 160])]
            mem[_241 + 96] = (32 * _530) + (32 * _418) + (32 * _243) + 256
            mem[(32 * _530) + (32 * _418) + (32 * _243) + _241 + 256] = mem[(98 * stor14.length) + 192]
            _618 = mem[(98 * stor14.length) + 192]
            mem[(32 * _530) + (32 * _418) + (32 * _243) + _241 + 288 len floor32(mem[(98 * stor14.length) + 192])] = mem[(98 * stor14.length) + 224 len floor32(mem[(98 * stor14.length) + 192])]
            mem[_241 + 128] = (32 * _618) + (32 * _530) + (32 * _418) + (32 * _243) + 288
            mem[(32 * _618) + (32 * _530) + (32 * _418) + (32 * _243) + _241 + 288] = mem[(131 * stor14.length) + 224]
            _682 = mem[(131 * stor14.length) + 224]
            mem[(32 * _618) + (32 * _530) + (32 * _418) + (32 * _243) + _241 + 320 len floor32(mem[(131 * stor14.length) + 224])] = mem[(131 * stor14.length) + 256 len floor32(mem[(131 * stor14.length) + 224])]
            return memory
              from mem[64]
               len (32 * _682) + (32 * _618) + (32 * _530) + (32 * _418) + (32 * _243) + _241 + -mem[64] + 320
        mem[128 len 32 * stor14.length] = code.data[23074 len 32 * stor14.length]
        mem[(32 * stor14.length) + 128] = stor14.length
        mem[(32 * stor14.length) + 160 len 32 * stor14.length] = code.data[23074 len 32 * stor14.length]
        mem[(64 * stor14.length) + 160] = stor14.length
        mem[(64 * stor14.length) + 192 len 32 * stor14.length] = code.data[23074 len 32 * stor14.length]
        mem[(98 * stor14.length) + 192] = stor14.length
        mem[(98 * stor14.length) + 224 len 32 * stor14.length] = code.data[23074 len 32 * stor14.length]
        mem[(131 * stor14.length) + 224] = stor14.length
        mem[64] = (164 * stor14.length) + 256
        mem[(131 * stor14.length) + 256 len 32 * stor14.length] = code.data[23074 len 32 * stor14.length]
        s = 0
        idx = 0
        s = 0
        while idx < stor14.length:
            require stor14.length + -idx - 1 < stor14.length
            mem[0] = 14
            require idx < mem[96]
            mem[(32 * idx) + 128] = uint256(stor[(5 * stor14.length) - (5 * idx) + ('name', 'stor14', 14)])
            require idx < mem[(32 * stor14.length) + 128]
            mem[(32 * idx) + (32 * stor14.length) + 160] = address(stor[(5 * stor14.length) - (5 * idx) + ('name', 'stor14', 14)])
            require idx < mem[(64 * stor14.length) + 160]
            mem[(32 * idx) + (64 * stor14.length) + 192] = uint256(stor[(5 * stor14.length) - (5 * idx) + ('name', 'stor14', 14)])
            require idx < mem[(98 * stor14.length) + 192]
            mem[(32 * idx) + (98 * stor14.length) + 224] = uint256(stor[(5 * stor14.length) - (5 * idx) + ('name', 'stor14', 14)])
            require idx < mem[(131 * stor14.length) + 224]
            mem[(32 * idx) + (131 * stor14.length) + 256] = uint256(stor[(5 * stor14.length) - (5 * idx) + ('name', 'stor14', 14)])
            s = (5 * stor14.length) + (-5 * idx) + sha3(14) - 5
            idx = idx + 1
            s = stor14.length + -idx - 1
            continue 
        _246 = mem[64]
        mem[mem[64]] = 160
        mem[mem[64] + 160] = mem[96]
        _248 = mem[96]
        mem[mem[64] + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + 32] = (32 * mem[96]) + 192
        mem[(32 * mem[96]) + mem[64] + 192] = mem[(32 * stor14.length) + 128]
        _421 = mem[(32 * stor14.length) + 128]
        mem[(32 * mem[96]) + mem[64] + 224 len floor32(mem[(32 * stor14.length) + 128])] = mem[(32 * stor14.length) + 160 len floor32(mem[(32 * stor14.length) + 128])]
        mem[mem[64] + 64] = (32 * _421) + (32 * mem[96]) + 224
        mem[(32 * _421) + (32 * _248) + _246 + 224] = mem[(64 * stor14.length) + 160]
        _533 = mem[(64 * stor14.length) + 160]
        mem[(32 * _421) + (32 * _248) + _246 + 256 len floor32(mem[(64 * stor14.length) + 160])] = mem[(64 * stor14.length) + 192 len floor32(mem[(64 * stor14.length) + 160])]
        mem[_246 + 96] = (32 * _533) + (32 * _421) + (32 * _248) + 256
        mem[(32 * _533) + (32 * _421) + (32 * _248) + _246 + 256] = mem[(98 * stor14.length) + 192]
        _621 = mem[(98 * stor14.length) + 192]
        mem[(32 * _533) + (32 * _421) + (32 * _248) + _246 + 288 len floor32(mem[(98 * stor14.length) + 192])] = mem[(98 * stor14.length) + 224 len floor32(mem[(98 * stor14.length) + 192])]
        mem[_246 + 128] = (32 * _621) + (32 * _533) + (32 * _421) + (32 * _248) + 288
        mem[(32 * _621) + (32 * _533) + (32 * _421) + (32 * _248) + _246 + 288] = mem[(131 * stor14.length) + 224]
        _685 = mem[(131 * stor14.length) + 224]
        mem[(32 * _621) + (32 * _533) + (32 * _421) + (32 * _248) + _246 + 320 len floor32(mem[(131 * stor14.length) + 224])] = mem[(131 * stor14.length) + 256 len floor32(mem[(131 * stor14.length) + 224])]
        return memory
          from mem[64]
           len (32 * _685) + (32 * _621) + (32 * _533) + (32 * _421) + (32 * _248) + _246 + -mem[64] + 320
    mem[96] = stor6
    if not stor6:
        mem[(32 * stor6) + 128] = stor6
        mem[(64 * stor6) + 160] = stor6
        mem[(98 * stor6) + 192] = stor6
        mem[(131 * stor6) + 224] = stor6
        mem[64] = (164 * stor6) + 256
        s = 0
        idx = 0
        s = 0
        while idx < stor6:
            require stor14.length + -idx - 1 < stor14.length
            mem[0] = 14
            require idx < mem[96]
            mem[(32 * idx) + 128] = uint256(stor[(5 * stor14.length) - (5 * idx) + ('name', 'stor14', 14)])
            require idx < mem[(32 * stor6) + 128]
            mem[(32 * idx) + (32 * stor6) + 160] = address(stor[(5 * stor14.length) - (5 * idx) + ('name', 'stor14', 14)])
            require idx < mem[(64 * stor6) + 160]
            mem[(32 * idx) + (64 * stor6) + 192] = uint256(stor[(5 * stor14.length) - (5 * idx) + ('name', 'stor14', 14)])
            require idx < mem[(98 * stor6) + 192]
            mem[(32 * idx) + (98 * stor6) + 224] = uint256(stor[(5 * stor14.length) - (5 * idx) + ('name', 'stor14', 14)])
            require idx < mem[(131 * stor6) + 224]
            mem[(32 * idx) + (131 * stor6) + 256] = uint256(stor[(5 * stor14.length) - (5 * idx) + ('name', 'stor14', 14)])
            s = (5 * stor14.length) + (-5 * idx) + sha3(14) - 5
            idx = idx + 1
            s = stor14.length + -idx - 1
            continue 
        _251 = mem[64]
        mem[mem[64]] = 160
        mem[mem[64] + 160] = mem[96]
        _253 = mem[96]
        mem[mem[64] + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + 32] = (32 * mem[96]) + 192
        mem[(32 * mem[96]) + mem[64] + 192] = mem[(32 * stor6) + 128]
        _424 = mem[(32 * stor6) + 128]
        mem[(32 * mem[96]) + mem[64] + 224 len floor32(mem[(32 * stor6) + 128])] = mem[(32 * stor6) + 160 len floor32(mem[(32 * stor6) + 128])]
        mem[mem[64] + 64] = (32 * _424) + (32 * mem[96]) + 224
        mem[(32 * _424) + (32 * _253) + _251 + 224] = mem[(64 * stor6) + 160]
        _536 = mem[(64 * stor6) + 160]
        mem[(32 * _424) + (32 * _253) + _251 + 256 len floor32(mem[(64 * stor6) + 160])] = mem[(64 * stor6) + 192 len floor32(mem[(64 * stor6) + 160])]
        mem[_251 + 96] = (32 * _536) + (32 * _424) + (32 * _253) + 256
        mem[(32 * _536) + (32 * _424) + (32 * _253) + _251 + 256] = mem[(98 * stor6) + 192]
        _624 = mem[(98 * stor6) + 192]
        mem[(32 * _536) + (32 * _424) + (32 * _253) + _251 + 288 len floor32(mem[(98 * stor6) + 192])] = mem[(98 * stor6) + 224 len floor32(mem[(98 * stor6) + 192])]
        mem[_251 + 128] = (32 * _624) + (32 * _536) + (32 * _424) + (32 * _253) + 288
        mem[(32 * _624) + (32 * _536) + (32 * _424) + (32 * _253) + _251 + 288] = mem[(131 * stor6) + 224]
        _688 = mem[(131 * stor6) + 224]
        mem[(32 * _624) + (32 * _536) + (32 * _424) + (32 * _253) + _251 + 320 len floor32(mem[(131 * stor6) + 224])] = mem[(131 * stor6) + 256 len floor32(mem[(131 * stor6) + 224])]
        return memory
          from mem[64]
           len (32 * _688) + (32 * _624) + (32 * _536) + (32 * _424) + (32 * _253) + _251 + -mem[64] + 320
    mem[128 len 32 * stor6] = code.data[23074 len 32 * stor6]
    mem[(32 * stor6) + 128] = stor6
    mem[(32 * stor6) + 160 len 32 * stor6] = code.data[23074 len 32 * stor6]
    mem[(64 * stor6) + 160] = stor6
    mem[(64 * stor6) + 192 len 32 * stor6] = code.data[23074 len 32 * stor6]
    mem[(98 * stor6) + 192] = stor6
    mem[(98 * stor6) + 224 len 32 * stor6] = code.data[23074 len 32 * stor6]
    mem[(131 * stor6) + 224] = stor6
    mem[64] = (164 * stor6) + 256
    mem[(131 * stor6) + 256 len 32 * stor6] = code.data[23074 len 32 * stor6]
    s = 0
    idx = 0
    s = 0
    while idx < stor6:
        require stor14.length + -idx - 1 < stor14.length
        mem[0] = 14
        require idx < mem[96]
        mem[(32 * idx) + 128] = uint256(stor[(5 * stor14.length) - (5 * idx) + ('name', 'stor14', 14)])
        require idx < mem[(32 * stor6) + 128]
        mem[(32 * idx) + (32 * stor6) + 160] = address(stor[(5 * stor14.length) - (5 * idx) + ('name', 'stor14', 14)])
        require idx < mem[(64 * stor6) + 160]
        mem[(32 * idx) + (64 * stor6) + 192] = uint256(stor[(5 * stor14.length) - (5 * idx) + ('name', 'stor14', 14)])
        require idx < mem[(98 * stor6) + 192]
        mem[(32 * idx) + (98 * stor6) + 224] = uint256(stor[(5 * stor14.length) - (5 * idx) + ('name', 'stor14', 14)])
        require idx < mem[(131 * stor6) + 224]
        mem[(32 * idx) + (131 * stor6) + 256] = uint256(stor[(5 * stor14.length) - (5 * idx) + ('name', 'stor14', 14)])
        s = (5 * stor14.length) + (-5 * idx) + sha3(14) - 5
        idx = idx + 1
        s = stor14.length + -idx - 1
        continue 
    _256 = mem[64]
    mem[mem[64]] = 160
    mem[mem[64] + 160] = mem[96]
    _258 = mem[96]
    mem[mem[64] + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[mem[64] + 32] = (32 * mem[96]) + 192
    mem[(32 * mem[96]) + mem[64] + 192] = mem[(32 * stor6) + 128]
    _427 = mem[(32 * stor6) + 128]
    mem[(32 * mem[96]) + mem[64] + 224 len floor32(mem[(32 * stor6) + 128])] = mem[(32 * stor6) + 160 len floor32(mem[(32 * stor6) + 128])]
    mem[mem[64] + 64] = (32 * _427) + (32 * mem[96]) + 224
    mem[(32 * _427) + (32 * _258) + _256 + 224] = mem[(64 * stor6) + 160]
    _539 = mem[(64 * stor6) + 160]
    mem[(32 * _427) + (32 * _258) + _256 + 256 len floor32(mem[(64 * stor6) + 160])] = mem[(64 * stor6) + 192 len floor32(mem[(64 * stor6) + 160])]
    mem[_256 + 96] = (32 * _539) + (32 * _427) + (32 * _258) + 256
    mem[(32 * _539) + (32 * _427) + (32 * _258) + _256 + 256] = mem[(98 * stor6) + 192]
    _627 = mem[(98 * stor6) + 192]
    mem[(32 * _539) + (32 * _427) + (32 * _258) + _256 + 288 len floor32(mem[(98 * stor6) + 192])] = mem[(98 * stor6) + 224 len floor32(mem[(98 * stor6) + 192])]
    mem[_256 + 128] = (32 * _627) + (32 * _539) + (32 * _427) + (32 * _258) + 288
    mem[(32 * _627) + (32 * _539) + (32 * _427) + (32 * _258) + _256 + 288] = mem[(131 * stor6) + 224]
    _691 = mem[(131 * stor6) + 224]
    mem[(32 * _627) + (32 * _539) + (32 * _427) + (32 * _258) + _256 + 320 len floor32(mem[(131 * stor6) + 224])] = mem[(131 * stor6) + 256 len floor32(mem[(131 * stor6) + 224])]
    return memory
      from mem[64]
       len (32 * _691) + (32 * _627) + (32 * _539) + (32 * _427) + (32 * _258) + _256 + -mem[64] + 320
}

function sub_1ff98252(?) {
    if arg1:
        if arg1 <= stor15[address(msg.sender)]:
            if arg1 <= 0:
                mem[288 len 5120] = mem[128 len 128], 160, mem[288 len 4960]
                return 160, 
                       5312,
                       10464,
                       15616,
                       20768,
                       160,
                       mem[288 len 5120],
                       160,
                       5312,
                       mem[160 len 96],
                       160,
                       mem[288 len 4960],
                       160,
                       5312,
                       10464,
                       mem[192 len 64],
                       160,
                       mem[288 len 4960],
                       160,
                       5312,
                       10464,
                       15616,
                       mem[224],
                       160,
                       mem[288 len 4960],
                       160,
                       5312,
                       10464,
                       15616,
                       20768,
                       160,
                       mem[288 len 4960]
            if not arg1:
                mem[(32 * arg1) + 128] = arg1
                mem[(64 * arg1) + 160] = arg1
                mem[(98 * arg1) + 192] = arg1
                mem[(131 * arg1) + 224] = arg1
            else:
                mem[128 len 32 * arg1] = code.data[23074 len 32 * arg1]
                mem[(32 * arg1) + 128] = arg1
                mem[(32 * arg1) + 160 len 32 * arg1] = code.data[23074 len 32 * arg1]
                mem[(64 * arg1) + 160] = arg1
                mem[(64 * arg1) + 192 len 32 * arg1] = code.data[23074 len 32 * arg1]
                mem[(98 * arg1) + 192] = arg1
                mem[(98 * arg1) + 224 len 32 * arg1] = code.data[23074 len 32 * arg1]
                mem[(131 * arg1) + 224] = arg1
                mem[(131 * arg1) + 256 len 32 * arg1] = code.data[23074 len 32 * arg1]
            s = 0
            t = 0
            t = 0
            t = 0
            idx = 0
            while idx < arg1:
                require stor15[address(msg.sender)] + -idx - 1 < stor15[address(msg.sender)]
                require idx < arg1
                mem[(32 * idx) + 128] = stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor15', 15)) + stor15[address(msg.sender)] - idx]
                require idx < stor15[address(msg.sender)]
                mem[0] = stor15[address(msg.sender)][idx]
                mem[32] = 13
                t = 0
                while uint8(t) < stor13[stor15[address(msg.sender)][idx]].field_0:
                    mem[0] = sha3(stor15[address(msg.sender)][idx], 13)
                    if stor13[stor15[address(msg.sender)][idx]][uint8(t)].field_256 != msg.sender:
                        t = t + 1
                        continue 
                    require uint8(t) < stor13[stor15[address(msg.sender)][idx]].field_0
                    mem[0] = sha3(stor15[address(msg.sender)][idx], 13)
                    require idx < mem[(32 * arg1) + 128]
                    mem[(32 * idx) + (32 * arg1) + 160] = stor13[stor15[address(msg.sender)][idx]][uint8(t)].field_512
                    require idx < mem[(64 * arg1) + 160]
                    if stor13[stor15[address(msg.sender)][idx]].field_0 > 0:
                        mem[(32 * idx) + (64 * arg1) + 192] = 1
                    else:
                        mem[(32 * idx) + (64 * arg1) + 192] = 0
                    require idx < mem[(98 * arg1) + 192]
                    mem[(32 * idx) + (98 * arg1) + 224] = 1
                    require idx < mem[(131 * arg1) + 224]
                    mem[(32 * idx) + (131 * arg1) + 256] = stor13[stor15[address(msg.sender)][idx]][uint8(t)].field_768
                    s = stor13[stor15[address(msg.sender)][idx]][uint8(t)].field_512
                    t = stor13[stor15[address(msg.sender)][idx]][uint8(t)].field_768
                    t = 1
                    t = sha3(stor15[address(msg.sender)][idx], 13)
                    idx = idx + 1
                    continue 
                require idx < mem[(32 * arg1) + 128]
                mem[(32 * idx) + (32 * arg1) + 160] = s
                require idx < mem[(64 * arg1) + 160]
                if stor13[stor15[address(msg.sender)][idx]].field_0 > 0:
                    mem[(32 * idx) + (64 * arg1) + 192] = 1
                else:
                    mem[(32 * idx) + (64 * arg1) + 192] = 0
                require idx < mem[(98 * arg1) + 192]
                mem[(32 * idx) + (98 * arg1) + 224] = 0
                require idx < mem[(131 * arg1) + 224]
                mem[(32 * idx) + (131 * arg1) + 256] = 0
                s = s
                t = 0
                t = 0
                t = sha3(stor15[address(msg.sender)][idx], 13)
                idx = idx + 1
                continue 
            mem[(164 * arg1) + 256] = 160
            mem[(164 * arg1) + 416] = arg1
            mem[(164 * arg1) + 448 len floor32(arg1)] = mem[128 len floor32(arg1)]
            mem[(164 * arg1) + 288] = (32 * arg1) + 192
            mem[(197 * arg1) + 448] = mem[(32 * arg1) + 128]
            mem[(197 * arg1) + 480 len floor32(mem[(32 * arg1) + 128])] = mem[(32 * arg1) + 160 len floor32(mem[(32 * arg1) + 128])]
            mem[(164 * arg1) + 320] = (32 * mem[(32 * arg1) + 128]) + (32 * arg1) + 224
            mem[(32 * mem[(32 * arg1) + 128]) + (197 * arg1) + 480] = mem[(64 * arg1) + 160]
            mem[(32 * mem[(32 * arg1) + 128]) + (197 * arg1) + 512 len floor32(mem[(64 * arg1) + 160])] = mem[(64 * arg1) + 192 len floor32(mem[(64 * arg1) + 160])]
            mem[(164 * arg1) + 352] = (32 * mem[(64 * arg1) + 160]) + (32 * mem[(32 * arg1) + 128]) + (32 * arg1) + 256
            mem[(32 * mem[(64 * arg1) + 160]) + (32 * mem[(32 * arg1) + 128]) + (197 * arg1) + 512] = mem[(98 * arg1) + 192]
            mem[(32 * mem[(64 * arg1) + 160]) + (32 * mem[(32 * arg1) + 128]) + (197 * arg1) + 544 len floor32(mem[(98 * arg1) + 192])] = mem[(98 * arg1) + 224 len floor32(mem[(98 * arg1) + 192])]
            mem[(164 * arg1) + 384] = (32 * mem[(98 * arg1) + 192]) + (32 * mem[(64 * arg1) + 160]) + (32 * mem[(32 * arg1) + 128]) + (32 * arg1) + 288
            mem[(32 * mem[(98 * arg1) + 192]) + (32 * mem[(64 * arg1) + 160]) + (32 * mem[(32 * arg1) + 128]) + (197 * arg1) + 544] = mem[(131 * arg1) + 224]
            mem[(32 * mem[(98 * arg1) + 192]) + (32 * mem[(64 * arg1) + 160]) + (32 * mem[(32 * arg1) + 128]) + (197 * arg1) + 576 len floor32(mem[(131 * arg1) + 224])] = mem[(131 * arg1) + 256 len floor32(mem[(131 * arg1) + 224])]
            return Array(len=arg1, data=mem[128 len floor32(arg1)], mem[(164 * arg1) + floor32(arg1) + 448 len (32 * mem[(32 * arg1) + 128]) + (33 * arg1) + -floor32(arg1) + 32], mem[(64 * arg1) + 160], mem[(197 * arg1) + (32 * mem[(32 * arg1) + 128]) + 512 len (32 * mem[(131 * arg1) + 224]) + (32 * mem[(98 * arg1) + 192]) + (32 * mem[(64 * arg1) + 160]) + 64]), 
                   (32 * arg1) + 192,
                   (32 * mem[(32 * arg1) + 128]) + (32 * arg1) + 224,
                   (32 * mem[(64 * arg1) + 160]) + (32 * mem[(32 * arg1) + 128]) + (32 * arg1) + 256,
                   (32 * mem[(98 * arg1) + 192]) + (32 * mem[(64 * arg1) + 160]) + (32 * mem[(32 * arg1) + 128]) + (32 * arg1) + 288
        if stor15[address(msg.sender)] <= 0:
            mem[288 len 5120] = mem[128 len 128], 160, mem[288 len 4960]
            return 160, 
                   5312,
                   10464,
                   15616,
                   20768,
                   160,
                   mem[288 len 5120],
                   160,
                   5312,
                   mem[160 len 96],
                   160,
                   mem[288 len 4960],
                   160,
                   5312,
                   10464,
                   mem[192 len 64],
                   160,
                   mem[288 len 4960],
                   160,
                   5312,
                   10464,
                   15616,
                   mem[224],
                   160,
                   mem[288 len 4960],
                   160,
                   5312,
                   10464,
                   15616,
                   20768,
                   160,
                   mem[288 len 4960]
        if not stor15[address(msg.sender)]:
            mem[(32 * stor15[address(msg.sender)]) + 128] = stor15[address(msg.sender)]
            mem[(64 * stor15[address(msg.sender)]) + 160] = stor15[address(msg.sender)]
            mem[(98 * stor15[address(msg.sender)]) + 192] = stor15[address(msg.sender)]
            mem[(131 * stor15[address(msg.sender)]) + 224] = stor15[address(msg.sender)]
            s = 0
            t = 0
            t = 0
            t = 0
            idx = 0
            while idx < stor15[address(msg.sender)]:
                require stor15[address(msg.sender)] + -idx - 1 < stor15[address(msg.sender)]
                require idx < stor15[address(msg.sender)]
                mem[(32 * idx) + 128] = stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor15', 15)) + stor15[address(msg.sender)] - idx]
                require idx < stor15[address(msg.sender)]
                mem[0] = stor15[address(msg.sender)][idx]
                mem[32] = 13
                t = 0
                while uint8(t) < stor13[stor15[address(msg.sender)][idx]].field_0:
                    mem[0] = sha3(stor15[address(msg.sender)][idx], 13)
                    if stor13[stor15[address(msg.sender)][idx]][uint8(t)].field_256 != msg.sender:
                        t = t + 1
                        continue 
                    require uint8(t) < stor13[stor15[address(msg.sender)][idx]].field_0
                    mem[0] = sha3(stor15[address(msg.sender)][idx], 13)
                    require idx < mem[(32 * stor15[address(msg.sender)]) + 128]
                    mem[(32 * idx) + (32 * stor15[address(msg.sender)]) + 160] = stor13[stor15[address(msg.sender)][idx]][uint8(t)].field_512
                    require idx < mem[(64 * stor15[address(msg.sender)]) + 160]
                    if stor13[stor15[address(msg.sender)][idx]].field_0 > 0:
                        mem[(32 * idx) + (64 * stor15[address(msg.sender)]) + 192] = 1
                    else:
                        mem[(32 * idx) + (64 * stor15[address(msg.sender)]) + 192] = 0
                    require idx < mem[(98 * stor15[address(msg.sender)]) + 192]
                    mem[(32 * idx) + (98 * stor15[address(msg.sender)]) + 224] = 1
                    require idx < mem[(131 * stor15[address(msg.sender)]) + 224]
                    mem[(32 * idx) + (131 * stor15[address(msg.sender)]) + 256] = stor13[stor15[address(msg.sender)][idx]][uint8(t)].field_768
                    s = stor13[stor15[address(msg.sender)][idx]][uint8(t)].field_512
                    t = stor13[stor15[address(msg.sender)][idx]][uint8(t)].field_768
                    t = 1
                    t = sha3(stor15[address(msg.sender)][idx], 13)
                    idx = idx + 1
                    continue 
                require idx < mem[(32 * stor15[address(msg.sender)]) + 128]
                mem[(32 * idx) + (32 * stor15[address(msg.sender)]) + 160] = s
                require idx < mem[(64 * stor15[address(msg.sender)]) + 160]
                if stor13[stor15[address(msg.sender)][idx]].field_0 > 0:
                    mem[(32 * idx) + (64 * stor15[address(msg.sender)]) + 192] = 1
                else:
                    mem[(32 * idx) + (64 * stor15[address(msg.sender)]) + 192] = 0
                require idx < mem[(98 * stor15[address(msg.sender)]) + 192]
                mem[(32 * idx) + (98 * stor15[address(msg.sender)]) + 224] = 0
                require idx < mem[(131 * stor15[address(msg.sender)]) + 224]
                mem[(32 * idx) + (131 * stor15[address(msg.sender)]) + 256] = 0
                s = s
                t = 0
                t = 0
                t = sha3(stor15[address(msg.sender)][idx], 13)
                idx = idx + 1
                continue 
            mem[(164 * stor15[address(msg.sender)]) + 256] = 160
            mem[(164 * stor15[address(msg.sender)]) + 416] = stor15[address(msg.sender)]
            mem[(164 * stor15[address(msg.sender)]) + 448 len floor32(stor15[address(msg.sender)])] = mem[128 len floor32(stor15[address(msg.sender)])]
            mem[(164 * stor15[address(msg.sender)]) + 288] = (32 * stor15[address(msg.sender)]) + 192
            mem[(197 * stor15[address(msg.sender)]) + 448] = mem[(32 * stor15[address(msg.sender)]) + 128]
            mem[(197 * stor15[address(msg.sender)]) + 480 len floor32(mem[(32 * stor15[address(msg.sender)]) + 128])] = mem[(32 * stor15[address(msg.sender)]) + 160 len floor32(mem[(32 * stor15[address(msg.sender)]) + 128])]
            mem[(164 * stor15[address(msg.sender)]) + 320] = (32 * mem[(32 * stor15[address(msg.sender)]) + 128]) + (32 * stor15[address(msg.sender)]) + 224
            mem[(32 * mem[(32 * stor15[address(msg.sender)]) + 128]) + (197 * stor15[address(msg.sender)]) + 480] = mem[(64 * stor15[address(msg.sender)]) + 160]
            mem[(32 * mem[(32 * stor15[address(msg.sender)]) + 128]) + (197 * stor15[address(msg.sender)]) + 512 len floor32(mem[(64 * stor15[address(msg.sender)]) + 160])] = mem[(64 * stor15[address(msg.sender)]) + 192 len floor32(mem[(64 * stor15[address(msg.sender)]) + 160])]
            mem[(164 * stor15[address(msg.sender)]) + 352] = (32 * mem[(64 * stor15[address(msg.sender)]) + 160]) + (32 * mem[(32 * stor15[address(msg.sender)]) + 128]) + (32 * stor15[address(msg.sender)]) + 256
            mem[(32 * mem[(64 * stor15[address(msg.sender)]) + 160]) + (32 * mem[(32 * stor15[address(msg.sender)]) + 128]) + (197 * stor15[address(msg.sender)]) + 512] = mem[(98 * stor15[address(msg.sender)]) + 192]
            _1007 = mem[(98 * stor15[address(msg.sender)]) + 192]
            mem[(32 * mem[(64 * stor15[address(msg.sender)]) + 160]) + (32 * mem[(32 * stor15[address(msg.sender)]) + 128]) + (197 * stor15[address(msg.sender)]) + 544 len floor32(mem[(98 * stor15[address(msg.sender)]) + 192])] = mem[(98 * stor15[address(msg.sender)]) + 224 len floor32(mem[(98 * stor15[address(msg.sender)]) + 192])]
            mem[(164 * stor15[address(msg.sender)]) + 384] = (32 * _1007) + (32 * mem[(64 * stor15[address(msg.sender)]) + 160]) + (32 * mem[(32 * stor15[address(msg.sender)]) + 128]) + (32 * stor15[address(msg.sender)]) + 288
            mem[(32 * _1007) + (32 * mem[(64 * stor15[address(msg.sender)]) + 160]) + (32 * mem[(32 * stor15[address(msg.sender)]) + 128]) + (197 * stor15[address(msg.sender)]) + 544] = mem[(131 * stor15[address(msg.sender)]) + 224]
            mem[(32 * _1007) + (32 * mem[(64 * stor15[address(msg.sender)]) + 160]) + (32 * mem[(32 * stor15[address(msg.sender)]) + 128]) + (197 * stor15[address(msg.sender)]) + 576 len floor32(mem[(131 * stor15[address(msg.sender)]) + 224])] = mem[(131 * stor15[address(msg.sender)]) + 256 len floor32(mem[(131 * stor15[address(msg.sender)]) + 224])]
            return 160, 
                   (32 * stor15[address(msg.sender)]) + 192,
                   mem[(164 * stor15[address(msg.sender)]) + 320 len 64],
                   (32 * _1007) + (32 * mem[(64 * stor15[address(msg.sender)]) + 160]) + (32 * mem[(32 * stor15[address(msg.sender)]) + 128]) + (32 * stor15[address(msg.sender)]) + 288,
                   stor15[address(msg.sender)],
                   mem[(164 * stor15[address(msg.sender)]) + 448 len (33 * stor15[address(msg.sender)]) + (32 * mem[(131 * stor15[address(msg.sender)]) + 224]) + (32 * _1007) + (32 * mem[(64 * stor15[address(msg.sender)]) + 160]) + (32 * mem[(32 * stor15[address(msg.sender)]) + 128]) + 128]
        mem[128 len 32 * stor15[address(msg.sender)]] = code.data[23074 len 32 * stor15[address(msg.sender)]]
        mem[(32 * stor15[address(msg.sender)]) + 128] = stor15[address(msg.sender)]
        mem[(32 * stor15[address(msg.sender)]) + 160 len 32 * stor15[address(msg.sender)]] = code.data[23074 len 32 * stor15[address(msg.sender)]]
        mem[(64 * stor15[address(msg.sender)]) + 160] = stor15[address(msg.sender)]
        mem[(64 * stor15[address(msg.sender)]) + 192 len 32 * stor15[address(msg.sender)]] = code.data[23074 len 32 * stor15[address(msg.sender)]]
        mem[(98 * stor15[address(msg.sender)]) + 192] = stor15[address(msg.sender)]
        mem[(98 * stor15[address(msg.sender)]) + 224 len 32 * stor15[address(msg.sender)]] = code.data[23074 len 32 * stor15[address(msg.sender)]]
        mem[(131 * stor15[address(msg.sender)]) + 224] = stor15[address(msg.sender)]
        mem[(131 * stor15[address(msg.sender)]) + 256 len 32 * stor15[address(msg.sender)]] = code.data[23074 len 32 * stor15[address(msg.sender)]]
        s = 0
        t = 0
        t = 0
        t = 0
        idx = 0
        while idx < stor15[address(msg.sender)]:
            require stor15[address(msg.sender)] + -idx - 1 < stor15[address(msg.sender)]
            require idx < stor15[address(msg.sender)]
            mem[(32 * idx) + 128] = stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor15', 15)) + stor15[address(msg.sender)] - idx]
            require idx < stor15[address(msg.sender)]
            mem[0] = stor15[address(msg.sender)][idx]
            mem[32] = 13
            t = 0
            while uint8(t) < stor13[stor15[address(msg.sender)][idx]].field_0:
                mem[0] = sha3(stor15[address(msg.sender)][idx], 13)
                if stor13[stor15[address(msg.sender)][idx]][uint8(t)].field_256 != msg.sender:
                    t = t + 1
                    continue 
                require uint8(t) < stor13[stor15[address(msg.sender)][idx]].field_0
                mem[0] = sha3(stor15[address(msg.sender)][idx], 13)
                require idx < mem[(32 * stor15[address(msg.sender)]) + 128]
                mem[(32 * idx) + (32 * stor15[address(msg.sender)]) + 160] = stor13[stor15[address(msg.sender)][idx]][uint8(t)].field_512
                require idx < mem[(64 * stor15[address(msg.sender)]) + 160]
                if stor13[stor15[address(msg.sender)][idx]].field_0 > 0:
                    mem[(32 * idx) + (64 * stor15[address(msg.sender)]) + 192] = 1
                else:
                    mem[(32 * idx) + (64 * stor15[address(msg.sender)]) + 192] = 0
                require idx < mem[(98 * stor15[address(msg.sender)]) + 192]
                mem[(32 * idx) + (98 * stor15[address(msg.sender)]) + 224] = 1
                require idx < mem[(131 * stor15[address(msg.sender)]) + 224]
                mem[(32 * idx) + (131 * stor15[address(msg.sender)]) + 256] = stor13[stor15[address(msg.sender)][idx]][uint8(t)].field_768
                s = stor13[stor15[address(msg.sender)][idx]][uint8(t)].field_512
                t = stor13[stor15[address(msg.sender)][idx]][uint8(t)].field_768
                t = 1
                t = sha3(stor15[address(msg.sender)][idx], 13)
                idx = idx + 1
                continue 
            require idx < mem[(32 * stor15[address(msg.sender)]) + 128]
            mem[(32 * idx) + (32 * stor15[address(msg.sender)]) + 160] = s
            require idx < mem[(64 * stor15[address(msg.sender)]) + 160]
            if stor13[stor15[address(msg.sender)][idx]].field_0 > 0:
                mem[(32 * idx) + (64 * stor15[address(msg.sender)]) + 192] = 1
            else:
                mem[(32 * idx) + (64 * stor15[address(msg.sender)]) + 192] = 0
            require idx < mem[(98 * stor15[address(msg.sender)]) + 192]
            mem[(32 * idx) + (98 * stor15[address(msg.sender)]) + 224] = 0
            require idx < mem[(131 * stor15[address(msg.sender)]) + 224]
            mem[(32 * idx) + (131 * stor15[address(msg.sender)]) + 256] = 0
            s = s
            t = 0
            t = 0
            t = sha3(stor15[address(msg.sender)][idx], 13)
            idx = idx + 1
            continue 
        mem[(164 * stor15[address(msg.sender)]) + 256] = 160
        mem[(164 * stor15[address(msg.sender)]) + 416] = stor15[address(msg.sender)]
        mem[(164 * stor15[address(msg.sender)]) + 448 len floor32(stor15[address(msg.sender)])] = mem[128 len floor32(stor15[address(msg.sender)])]
        mem[(164 * stor15[address(msg.sender)]) + 288] = (32 * stor15[address(msg.sender)]) + 192
        mem[(197 * stor15[address(msg.sender)]) + 448] = mem[(32 * stor15[address(msg.sender)]) + 128]
        mem[(197 * stor15[address(msg.sender)]) + 480 len floor32(mem[(32 * stor15[address(msg.sender)]) + 128])] = mem[(32 * stor15[address(msg.sender)]) + 160 len floor32(mem[(32 * stor15[address(msg.sender)]) + 128])]
        mem[(164 * stor15[address(msg.sender)]) + 320] = (32 * mem[(32 * stor15[address(msg.sender)]) + 128]) + (32 * stor15[address(msg.sender)]) + 224
        mem[(32 * mem[(32 * stor15[address(msg.sender)]) + 128]) + (197 * stor15[address(msg.sender)]) + 480] = mem[(64 * stor15[address(msg.sender)]) + 160]
        mem[(32 * mem[(32 * stor15[address(msg.sender)]) + 128]) + (197 * stor15[address(msg.sender)]) + 512 len floor32(mem[(64 * stor15[address(msg.sender)]) + 160])] = mem[(64 * stor15[address(msg.sender)]) + 192 len floor32(mem[(64 * stor15[address(msg.sender)]) + 160])]
        mem[(164 * stor15[address(msg.sender)]) + 352] = (32 * mem[(64 * stor15[address(msg.sender)]) + 160]) + (32 * mem[(32 * stor15[address(msg.sender)]) + 128]) + (32 * stor15[address(msg.sender)]) + 256
        mem[(32 * mem[(64 * stor15[address(msg.sender)]) + 160]) + (32 * mem[(32 * stor15[address(msg.sender)]) + 128]) + (197 * stor15[address(msg.sender)]) + 512] = mem[(98 * stor15[address(msg.sender)]) + 192]
        _1010 = mem[(98 * stor15[address(msg.sender)]) + 192]
        mem[(32 * mem[(64 * stor15[address(msg.sender)]) + 160]) + (32 * mem[(32 * stor15[address(msg.sender)]) + 128]) + (197 * stor15[address(msg.sender)]) + 544 len floor32(mem[(98 * stor15[address(msg.sender)]) + 192])] = mem[(98 * stor15[address(msg.sender)]) + 224 len floor32(mem[(98 * stor15[address(msg.sender)]) + 192])]
        mem[(164 * stor15[address(msg.sender)]) + 384] = (32 * _1010) + (32 * mem[(64 * stor15[address(msg.sender)]) + 160]) + (32 * mem[(32 * stor15[address(msg.sender)]) + 128]) + (32 * stor15[address(msg.sender)]) + 288
        mem[(32 * _1010) + (32 * mem[(64 * stor15[address(msg.sender)]) + 160]) + (32 * mem[(32 * stor15[address(msg.sender)]) + 128]) + (197 * stor15[address(msg.sender)]) + 544] = mem[(131 * stor15[address(msg.sender)]) + 224]
        _1079 = mem[(131 * stor15[address(msg.sender)]) + 224]
        mem[(32 * _1010) + (32 * mem[(64 * stor15[address(msg.sender)]) + 160]) + (32 * mem[(32 * stor15[address(msg.sender)]) + 128]) + (197 * stor15[address(msg.sender)]) + 576 len floor32(mem[(131 * stor15[address(msg.sender)]) + 224])] = mem[(131 * stor15[address(msg.sender)]) + 256 len floor32(mem[(131 * stor15[address(msg.sender)]) + 224])]
        return 160, 
               (32 * stor15[address(msg.sender)]) + 192,
               mem[(164 * stor15[address(msg.sender)]) + 320 len 96],
               stor15[address(msg.sender)],
               mem[(164 * stor15[address(msg.sender)]) + 448 len (33 * stor15[address(msg.sender)]) + (32 * _1079) + (32 * _1010) + (32 * mem[(64 * stor15[address(msg.sender)]) + 160]) + (32 * mem[(32 * stor15[address(msg.sender)]) + 128]) + 128]
    if 10 <= stor15[address(msg.sender)]:
        mem[448] = 10
        mem[480 len 320] = code.data[23074 len 320]
        mem[800] = 10
        mem[832 len 320] = code.data[23074 len 320]
        mem[1152] = 10
        mem[1184 len 320] = code.data[23074 len 320]
        mem[1504] = 10
        mem[1536 len 320] = code.data[23074 len 320]
        s = 0
        t = 0
        t = 0
        t = 0
        idx = 0
        while idx < 10:
            require stor15[address(msg.sender)] + -idx - 1 < stor15[address(msg.sender)]
            require idx < 10
            mem[(32 * idx) + 128] = stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor15', 15)) + stor15[address(msg.sender)] - idx]
            require idx < stor15[address(msg.sender)]
            mem[0] = stor15[address(msg.sender)][idx]
            mem[32] = 13
            t = 0
            while uint8(t) < stor13[stor15[address(msg.sender)][idx]].field_0:
                mem[0] = sha3(stor15[address(msg.sender)][idx], 13)
                if stor13[stor15[address(msg.sender)][idx]][uint8(t)].field_256 != msg.sender:
                    t = t + 1
                    continue 
                require uint8(t) < stor13[stor15[address(msg.sender)][idx]].field_0
                mem[0] = sha3(stor15[address(msg.sender)][idx], 13)
                require idx < mem[448]
                mem[(32 * idx) + 480] = stor13[stor15[address(msg.sender)][idx]][uint8(t)].field_512
                require idx < mem[800]
                if stor13[stor15[address(msg.sender)][idx]].field_0 > 0:
                    mem[(32 * idx) + 832] = 1
                else:
                    mem[(32 * idx) + 832] = 0
                require idx < mem[1152]
                mem[(32 * idx) + 1184] = 1
                require idx < mem[1504]
                mem[(32 * idx) + 1536] = stor13[stor15[address(msg.sender)][idx]][uint8(t)].field_768
                s = stor13[stor15[address(msg.sender)][idx]][uint8(t)].field_512
                t = stor13[stor15[address(msg.sender)][idx]][uint8(t)].field_768
                t = 1
                t = sha3(stor15[address(msg.sender)][idx], 13)
                idx = idx + 1
                continue 
            require idx < mem[448]
            mem[(32 * idx) + 480] = s
            require idx < mem[800]
            if stor13[stor15[address(msg.sender)][idx]].field_0 > 0:
                mem[(32 * idx) + 832] = 1
            else:
                mem[(32 * idx) + 832] = 0
            require idx < mem[1152]
            mem[(32 * idx) + 1184] = 0
            require idx < mem[1504]
            mem[(32 * idx) + 1536] = 0
            s = s
            t = 0
            t = 0
            t = sha3(stor15[address(msg.sender)][idx], 13)
            idx = idx + 1
            continue 
        mem[1856] = 160
        mem[2016] = 10
        mem[2048 len 0] = None
        mem[1888] = 512
        mem[2368] = mem[448]
        mem[2400 len floor32(mem[448])] = mem[480 len floor32(mem[448])]
        mem[1920] = (32 * mem[448]) + 544
        mem[(32 * mem[448]) + 2400] = mem[800]
        mem[(32 * mem[448]) + 2432 len floor32(mem[800])] = mem[832 len floor32(mem[800])]
        mem[1952] = (32 * mem[800]) + (32 * mem[448]) + 576
        mem[(32 * mem[800]) + (32 * mem[448]) + 2432] = mem[1152]
        mem[(32 * mem[800]) + (32 * mem[448]) + 2464 len floor32(mem[1152])] = mem[1184 len floor32(mem[1152])]
        mem[1984] = (32 * mem[1152]) + (32 * mem[800]) + (32 * mem[448]) + 608
        mem[(32 * mem[1152]) + (32 * mem[800]) + (32 * mem[448]) + 2464] = mem[1504]
        mem[(32 * mem[1152]) + (32 * mem[800]) + (32 * mem[448]) + 2496 len floor32(mem[1504])] = mem[1536 len floor32(mem[1504])]
        return 160, 
               512,
               (32 * mem[448]) + 544,
               (32 * mem[800]) + (32 * mem[448]) + 576,
               (32 * mem[1152]) + (32 * mem[800]) + (32 * mem[448]) + 608,
               10,
               mem[2048 len 320],
               mem[448],
               mem[2400 len (32 * mem[800]) + (32 * mem[448]) + 32],
               mem[1152],
               mem[(32 * mem[800]) + (32 * mem[448]) + 2464 len (32 * mem[1504]) + (32 * mem[1152]) + 32]
    if stor15[address(msg.sender)] <= 0:
        mem[288 len 5120] = mem[128 len 128], 160, mem[288 len 4960]
        return 160, 
               5312,
               10464,
               15616,
               20768,
               160,
               mem[288 len 5120],
               160,
               5312,
               mem[160 len 96],
               160,
               mem[288 len 4960],
               160,
               5312,
               10464,
               mem[192 len 64],
               160,
               mem[288 len 4960],
               160,
               5312,
               10464,
               15616,
               mem[224],
               160,
               mem[288 len 4960],
               160,
               5312,
               10464,
               15616,
               20768,
               160,
               mem[288 len 4960]
    if not stor15[address(msg.sender)]:
        mem[(32 * stor15[address(msg.sender)]) + 128] = stor15[address(msg.sender)]
        mem[(64 * stor15[address(msg.sender)]) + 160] = stor15[address(msg.sender)]
        mem[(98 * stor15[address(msg.sender)]) + 192] = stor15[address(msg.sender)]
        mem[(131 * stor15[address(msg.sender)]) + 224] = stor15[address(msg.sender)]
        s = 0
        t = 0
        t = 0
        t = 0
        idx = 0
        while idx < stor15[address(msg.sender)]:
            require stor15[address(msg.sender)] + -idx - 1 < stor15[address(msg.sender)]
            require idx < stor15[address(msg.sender)]
            mem[(32 * idx) + 128] = stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor15', 15)) + stor15[address(msg.sender)] - idx]
            require idx < stor15[address(msg.sender)]
            mem[0] = stor15[address(msg.sender)][idx]
            mem[32] = 13
            t = 0
            while uint8(t) < stor13[stor15[address(msg.sender)][idx]].field_0:
                mem[0] = sha3(stor15[address(msg.sender)][idx], 13)
                if stor13[stor15[address(msg.sender)][idx]][uint8(t)].field_256 != msg.sender:
                    t = t + 1
                    continue 
                require uint8(t) < stor13[stor15[address(msg.sender)][idx]].field_0
                mem[0] = sha3(stor15[address(msg.sender)][idx], 13)
                require idx < mem[(32 * stor15[address(msg.sender)]) + 128]
                mem[(32 * idx) + (32 * stor15[address(msg.sender)]) + 160] = stor13[stor15[address(msg.sender)][idx]][uint8(t)].field_512
                require idx < mem[(64 * stor15[address(msg.sender)]) + 160]
                if stor13[stor15[address(msg.sender)][idx]].field_0 > 0:
                    mem[(32 * idx) + (64 * stor15[address(msg.sender)]) + 192] = 1
                else:
                    mem[(32 * idx) + (64 * stor15[address(msg.sender)]) + 192] = 0
                require idx < mem[(98 * stor15[address(msg.sender)]) + 192]
                mem[(32 * idx) + (98 * stor15[address(msg.sender)]) + 224] = 1
                require idx < mem[(131 * stor15[address(msg.sender)]) + 224]
                mem[(32 * idx) + (131 * stor15[address(msg.sender)]) + 256] = stor13[stor15[address(msg.sender)][idx]][uint8(t)].field_768
                s = stor13[stor15[address(msg.sender)][idx]][uint8(t)].field_512
                t = stor13[stor15[address(msg.sender)][idx]][uint8(t)].field_768
                t = 1
                t = sha3(stor15[address(msg.sender)][idx], 13)
                idx = idx + 1
                continue 
            require idx < mem[(32 * stor15[address(msg.sender)]) + 128]
            mem[(32 * idx) + (32 * stor15[address(msg.sender)]) + 160] = s
            require idx < mem[(64 * stor15[address(msg.sender)]) + 160]
            if stor13[stor15[address(msg.sender)][idx]].field_0 > 0:
                mem[(32 * idx) + (64 * stor15[address(msg.sender)]) + 192] = 1
            else:
                mem[(32 * idx) + (64 * stor15[address(msg.sender)]) + 192] = 0
            require idx < mem[(98 * stor15[address(msg.sender)]) + 192]
            mem[(32 * idx) + (98 * stor15[address(msg.sender)]) + 224] = 0
            require idx < mem[(131 * stor15[address(msg.sender)]) + 224]
            mem[(32 * idx) + (131 * stor15[address(msg.sender)]) + 256] = 0
            s = s
            t = 0
            t = 0
            t = sha3(stor15[address(msg.sender)][idx], 13)
            idx = idx + 1
            continue 
        mem[(164 * stor15[address(msg.sender)]) + 256] = 160
        mem[(164 * stor15[address(msg.sender)]) + 416] = stor15[address(msg.sender)]
        mem[(164 * stor15[address(msg.sender)]) + 448 len floor32(stor15[address(msg.sender)])] = mem[128 len floor32(stor15[address(msg.sender)])]
        mem[(164 * stor15[address(msg.sender)]) + 288] = (32 * stor15[address(msg.sender)]) + 192
        mem[(197 * stor15[address(msg.sender)]) + 448] = mem[(32 * stor15[address(msg.sender)]) + 128]
        mem[(197 * stor15[address(msg.sender)]) + 480 len floor32(mem[(32 * stor15[address(msg.sender)]) + 128])] = mem[(32 * stor15[address(msg.sender)]) + 160 len floor32(mem[(32 * stor15[address(msg.sender)]) + 128])]
        mem[(164 * stor15[address(msg.sender)]) + 320] = (32 * mem[(32 * stor15[address(msg.sender)]) + 128]) + (32 * stor15[address(msg.sender)]) + 224
        mem[(32 * mem[(32 * stor15[address(msg.sender)]) + 128]) + (197 * stor15[address(msg.sender)]) + 480] = mem[(64 * stor15[address(msg.sender)]) + 160]
        mem[(32 * mem[(32 * stor15[address(msg.sender)]) + 128]) + (197 * stor15[address(msg.sender)]) + 512 len floor32(mem[(64 * stor15[address(msg.sender)]) + 160])] = mem[(64 * stor15[address(msg.sender)]) + 192 len floor32(mem[(64 * stor15[address(msg.sender)]) + 160])]
        mem[(164 * stor15[address(msg.sender)]) + 352] = (32 * mem[(64 * stor15[address(msg.sender)]) + 160]) + (32 * mem[(32 * stor15[address(msg.sender)]) + 128]) + (32 * stor15[address(msg.sender)]) + 256
        mem[(32 * mem[(64 * stor15[address(msg.sender)]) + 160]) + (32 * mem[(32 * stor15[address(msg.sender)]) + 128]) + (197 * stor15[address(msg.sender)]) + 512] = mem[(98 * stor15[address(msg.sender)]) + 192]
        _1019 = mem[(98 * stor15[address(msg.sender)]) + 192]
        mem[(32 * mem[(64 * stor15[address(msg.sender)]) + 160]) + (32 * mem[(32 * stor15[address(msg.sender)]) + 128]) + (197 * stor15[address(msg.sender)]) + 544 len floor32(mem[(98 * stor15[address(msg.sender)]) + 192])] = mem[(98 * stor15[address(msg.sender)]) + 224 len floor32(mem[(98 * stor15[address(msg.sender)]) + 192])]
        mem[(164 * stor15[address(msg.sender)]) + 384] = (32 * _1019) + (32 * mem[(64 * stor15[address(msg.sender)]) + 160]) + (32 * mem[(32 * stor15[address(msg.sender)]) + 128]) + (32 * stor15[address(msg.sender)]) + 288
        mem[(32 * _1019) + (32 * mem[(64 * stor15[address(msg.sender)]) + 160]) + (32 * mem[(32 * stor15[address(msg.sender)]) + 128]) + (197 * stor15[address(msg.sender)]) + 544] = mem[(131 * stor15[address(msg.sender)]) + 224]
        mem[(32 * _1019) + (32 * mem[(64 * stor15[address(msg.sender)]) + 160]) + (32 * mem[(32 * stor15[address(msg.sender)]) + 128]) + (197 * stor15[address(msg.sender)]) + 576 len floor32(mem[(131 * stor15[address(msg.sender)]) + 224])] = mem[(131 * stor15[address(msg.sender)]) + 256 len floor32(mem[(131 * stor15[address(msg.sender)]) + 224])]
        return 160, 
               (32 * stor15[address(msg.sender)]) + 192,
               mem[(164 * stor15[address(msg.sender)]) + 320 len 64],
               (32 * _1019) + (32 * mem[(64 * stor15[address(msg.sender)]) + 160]) + (32 * mem[(32 * stor15[address(msg.sender)]) + 128]) + (32 * stor15[address(msg.sender)]) + 288,
               stor15[address(msg.sender)],
               mem[(164 * stor15[address(msg.sender)]) + 448 len (33 * stor15[address(msg.sender)]) + (32 * mem[(131 * stor15[address(msg.sender)]) + 224]) + (32 * _1019) + (32 * mem[(64 * stor15[address(msg.sender)]) + 160]) + (32 * mem[(32 * stor15[address(msg.sender)]) + 128]) + 128]
    mem[128 len 32 * stor15[address(msg.sender)]] = code.data[23074 len 32 * stor15[address(msg.sender)]]
    mem[(32 * stor15[address(msg.sender)]) + 128] = stor15[address(msg.sender)]
    mem[(32 * stor15[address(msg.sender)]) + 160 len 32 * stor15[address(msg.sender)]] = code.data[23074 len 32 * stor15[address(msg.sender)]]
    mem[(64 * stor15[address(msg.sender)]) + 160] = stor15[address(msg.sender)]
    mem[(64 * stor15[address(msg.sender)]) + 192 len 32 * stor15[address(msg.sender)]] = code.data[23074 len 32 * stor15[address(msg.sender)]]
    mem[(98 * stor15[address(msg.sender)]) + 192] = stor15[address(msg.sender)]
    mem[(98 * stor15[address(msg.sender)]) + 224 len 32 * stor15[address(msg.sender)]] = code.data[23074 len 32 * stor15[address(msg.sender)]]
    mem[(131 * stor15[address(msg.sender)]) + 224] = stor15[address(msg.sender)]
    mem[(131 * stor15[address(msg.sender)]) + 256 len 32 * stor15[address(msg.sender)]] = code.data[23074 len 32 * stor15[address(msg.sender)]]
    s = 0
    t = 0
    t = 0
    t = 0
    idx = 0
    while idx < stor15[address(msg.sender)]:
        require stor15[address(msg.sender)] + -idx - 1 < stor15[address(msg.sender)]
        require idx < stor15[address(msg.sender)]
        mem[(32 * idx) + 128] = stor[('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor15', 15)) + stor15[address(msg.sender)] - idx]
        require idx < stor15[address(msg.sender)]
        mem[0] = stor15[address(msg.sender)][idx]
        mem[32] = 13
        t = 0
        while uint8(t) < stor13[stor15[address(msg.sender)][idx]].field_0:
            mem[0] = sha3(stor15[address(msg.sender)][idx], 13)
            if stor13[stor15[address(msg.sender)][idx]][uint8(t)].field_256 != msg.sender:
                t = t + 1
                continue 
            require uint8(t) < stor13[stor15[address(msg.sender)][idx]].field_0
            mem[0] = sha3(stor15[address(msg.sender)][idx], 13)
            require idx < mem[(32 * stor15[address(msg.sender)]) + 128]
            mem[(32 * idx) + (32 * stor15[address(msg.sender)]) + 160] = stor13[stor15[address(msg.sender)][idx]][uint8(t)].field_512
            require idx < mem[(64 * stor15[address(msg.sender)]) + 160]
            if stor13[stor15[address(msg.sender)][idx]].field_0 > 0:
                mem[(32 * idx) + (64 * stor15[address(msg.sender)]) + 192] = 1
            else:
                mem[(32 * idx) + (64 * stor15[address(msg.sender)]) + 192] = 0
            require idx < mem[(98 * stor15[address(msg.sender)]) + 192]
            mem[(32 * idx) + (98 * stor15[address(msg.sender)]) + 224] = 1
            require idx < mem[(131 * stor15[address(msg.sender)]) + 224]
            mem[(32 * idx) + (131 * stor15[address(msg.sender)]) + 256] = stor13[stor15[address(msg.sender)][idx]][uint8(t)].field_768
            s = stor13[stor15[address(msg.sender)][idx]][uint8(t)].field_512
            t = stor13[stor15[address(msg.sender)][idx]][uint8(t)].field_768
            t = 1
            t = sha3(stor15[address(msg.sender)][idx], 13)
            idx = idx + 1
            continue 
        require idx < mem[(32 * stor15[address(msg.sender)]) + 128]
        mem[(32 * idx) + (32 * stor15[address(msg.sender)]) + 160] = s
        require idx < mem[(64 * stor15[address(msg.sender)]) + 160]
        if stor13[stor15[address(msg.sender)][idx]].field_0 > 0:
            mem[(32 * idx) + (64 * stor15[address(msg.sender)]) + 192] = 1
        else:
            mem[(32 * idx) + (64 * stor15[address(msg.sender)]) + 192] = 0
        require idx < mem[(98 * stor15[address(msg.sender)]) + 192]
        mem[(32 * idx) + (98 * stor15[address(msg.sender)]) + 224] = 0
        require idx < mem[(131 * stor15[address(msg.sender)]) + 224]
        mem[(32 * idx) + (131 * stor15[address(msg.sender)]) + 256] = 0
        s = s
        t = 0
        t = 0
        t = sha3(stor15[address(msg.sender)][idx], 13)
        idx = idx + 1
        continue 
    mem[(164 * stor15[address(msg.sender)]) + 256] = 160
    mem[(164 * stor15[address(msg.sender)]) + 416] = stor15[address(msg.sender)]
    mem[(164 * stor15[address(msg.sender)]) + 448 len floor32(stor15[address(msg.sender)])] = mem[128 len floor32(stor15[address(msg.sender)])]
    mem[(164 * stor15[address(msg.sender)]) + 288] = (32 * stor15[address(msg.sender)]) + 192
    mem[(197 * stor15[address(msg.sender)]) + 448] = mem[(32 * stor15[address(msg.sender)]) + 128]
    mem[(197 * stor15[address(msg.sender)]) + 480 len floor32(mem[(32 * stor15[address(msg.sender)]) + 128])] = mem[(32 * stor15[address(msg.sender)]) + 160 len floor32(mem[(32 * stor15[address(msg.sender)]) + 128])]
    mem[(164 * stor15[address(msg.sender)]) + 320] = (32 * mem[(32 * stor15[address(msg.sender)]) + 128]) + (32 * stor15[address(msg.sender)]) + 224
    mem[(32 * mem[(32 * stor15[address(msg.sender)]) + 128]) + (197 * stor15[address(msg.sender)]) + 480] = mem[(64 * stor15[address(msg.sender)]) + 160]
    mem[(32 * mem[(32 * stor15[address(msg.sender)]) + 128]) + (197 * stor15[address(msg.sender)]) + 512 len floor32(mem[(64 * stor15[address(msg.sender)]) + 160])] = mem[(64 * stor15[address(msg.sender)]) + 192 len floor32(mem[(64 * stor15[address(msg.sender)]) + 160])]
    mem[(164 * stor15[address(msg.sender)]) + 352] = (32 * mem[(64 * stor15[address(msg.sender)]) + 160]) + (32 * mem[(32 * stor15[address(msg.sender)]) + 128]) + (32 * stor15[address(msg.sender)]) + 256
    mem[(32 * mem[(64 * stor15[address(msg.sender)]) + 160]) + (32 * mem[(32 * stor15[address(msg.sender)]) + 128]) + (197 * stor15[address(msg.sender)]) + 512] = mem[(98 * stor15[address(msg.sender)]) + 192]
    _1022 = mem[(98 * stor15[address(msg.sender)]) + 192]
    mem[(32 * mem[(64 * stor15[address(msg.sender)]) + 160]) + (32 * mem[(32 * stor15[address(msg.sender)]) + 128]) + (197 * stor15[address(msg.sender)]) + 544 len floor32(mem[(98 * stor15[address(msg.sender)]) + 192])] = mem[(98 * stor15[address(msg.sender)]) + 224 len floor32(mem[(98 * stor15[address(msg.sender)]) + 192])]
    mem[(164 * stor15[address(msg.sender)]) + 384] = (32 * _1022) + (32 * mem[(64 * stor15[address(msg.sender)]) + 160]) + (32 * mem[(32 * stor15[address(msg.sender)]) + 128]) + (32 * stor15[address(msg.sender)]) + 288
    mem[(32 * _1022) + (32 * mem[(64 * stor15[address(msg.sender)]) + 160]) + (32 * mem[(32 * stor15[address(msg.sender)]) + 128]) + (197 * stor15[address(msg.sender)]) + 544] = mem[(131 * stor15[address(msg.sender)]) + 224]
    _1090 = mem[(131 * stor15[address(msg.sender)]) + 224]
    mem[(32 * _1022) + (32 * mem[(64 * stor15[address(msg.sender)]) + 160]) + (32 * mem[(32 * stor15[address(msg.sender)]) + 128]) + (197 * stor15[address(msg.sender)]) + 576 len floor32(mem[(131 * stor15[address(msg.sender)]) + 224])] = mem[(131 * stor15[address(msg.sender)]) + 256 len floor32(mem[(131 * stor15[address(msg.sender)]) + 224])]
    return 160, 
           (32 * stor15[address(msg.sender)]) + 192,
           mem[(164 * stor15[address(msg.sender)]) + 320 len 96],
           stor15[address(msg.sender)],
           mem[(164 * stor15[address(msg.sender)]) + 448 len (33 * stor15[address(msg.sender)]) + (32 * _1090) + (32 * _1022) + (32 * mem[(64 * stor15[address(msg.sender)]) + 160]) + (32 * mem[(32 * stor15[address(msg.sender)]) + 128]) + 128]
}



}
