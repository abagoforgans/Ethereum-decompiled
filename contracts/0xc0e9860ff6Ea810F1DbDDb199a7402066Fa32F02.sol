contract main {


// =======================  Init code  ======================


address stor0;
uint32 stor1; offset 168
uint32 stor1; offset 200
uint128 stor1; offset 160
address stor1;
uint32 stor3;
uint32 stor5;
uint8 stor11; offset 88
uint16 stor11;
uint16 stor11; offset 16
uint16 stor11; offset 32
uint16 stor11; offset 48
uint32 stor11; offset 64

function _fallback() payable {
    Mask(96, 0, stor1.field_160) = 0
    uint32(stor1.field_168) = 0
    uint32(stor1.field_200) = 0
    stor3 = 0
    stor5 = 0
    uint16(stor11.field_0) = 991
    uint16(stor11.field_16) = 0
    uint16(stor11.field_32) = 9995
    uint16(stor11.field_48) = 0
    stor11.field_64 % 16777216 = 99999
    uint8(stor11.field_88) = 0
    stor0 = msg.sender
    address(stor1.field_0) = msg.sender
    return code.data[417 len 12745]
}



// =====================  Runtime code  =====================


#
#  - sub_91d2eb87(?)
#
const sub_b6213062(?) = 10^16


address _owner;
uint8 stor1; offset 160
uint8 stor1; offset 200
uint32 stor1; offset 208
uint32 sub_80aa64c5; offset 168
uint32 sub_25127ad2; offset 200
uint128 stor1; offset 160
address sub_7538223eAddress;
array of struct sub_016ccec3;
uint32 sub_ffba8e70;
array of struct sub_e265d050;
uint32 sub_0335e00b;
uint32 sub_047ac498; offset 32
mapping of uint32 sub_a7c7185f;
uint32 sub_ce8fa642;
uint32 sub_0f93eb14; offset 32
uint32 sub_e683e387; offset 64
uint32 sub_6e9c87db; offset 96
uint256 sub_ea475ae8;
uint256 sub_5d50d879;
uint256 sub_62aad4ba;
uint32 stor11;
uint32 stor11; offset 32
uint32 stor11; offset 64

function sub_016ccec3(?) {
    require arg1 < sub_016ccec3.length
    return uint32(sub_016ccec3[arg1].field_0), 
           address(sub_016ccec3[arg1].field_0),
           uint8(sub_016ccec3[arg1].field_0),
           uint8(sub_016ccec3[arg1].field_192)
}

function sub_0335e00b(?) {
    return sub_0335e00b
}

function sub_047ac498(?) {
    return sub_047ac498
}

function sub_0f93eb14(?) {
    return sub_0f93eb14
}

function sub_25127ad2(?) {
    return sub_25127ad2
}

function sub_3c6d31b0(?) {
    return uint32(sub_e265d050.length)
}

function sub_4db5697d(?) {
    return sub_ffba8e70
}

function paused() {
    return bool(uint8(stor1.field_160))
}

function sub_5d50d879(?) {
    return sub_5d50d879
}

function sub_62aad4ba(?) {
    return sub_62aad4ba
}

function sub_6525cd3d(?) {
    require arg1 < sub_e265d050.length
    return uint32(sub_e265d050[arg1].field_0), 
           address(sub_e265d050[arg1].field_0),
           uint256(sub_e265d050[arg1].field_256),
           bool(uint8(sub_e265d050[arg1].field_528)),
           uint8(sub_e265d050[arg1].field_512),
           uint8(sub_e265d050[arg1].field_512)
}

function sub_6e9c87db(?) {
    return sub_6e9c87db
}

function sub_7538223e(?) {
    return sub_7538223eAddress
}

function sub_80aa64c5(?) {
    return sub_80aa64c5
}

function sub_a7c7185f(?) {
    return sub_a7c7185f[arg1 << 224]
}

function _owner() {
    return _owner
}

function sub_ca65d218(?) {
    return sub_ffba8e70
}

function sub_ce8fa642(?) {
    return sub_ce8fa642
}

function sub_e265d050(?) {
    require arg1 < sub_e265d050.length
    return uint32(sub_e265d050[arg1].field_0), 
           address(sub_e265d050[arg1].field_0),
           uint256(sub_e265d050[arg1].field_256),
           uint8(sub_e265d050[arg1].field_512),
           uint8(sub_e265d050[arg1].field_520),
           bool(uint8(sub_e265d050[arg1].field_528))
}

function sub_e683e387(?) {
    return sub_e683e387
}

function sub_ea475ae8(?) {
    return sub_ea475ae8
}

function sub_ffba8e70(?) {
    return sub_ffba8e70
}

function destory() {
    require msg.sender == _owner
    selfdestruct(_owner)
}

function _fallback() payable {
  stop
}

function sub_4db0fd2d(?) {
    require msg.sender == _owner
    Mask(96, 0, stor1.field_160) = 1
}

function sub_a9e81ae5(?) {
    require msg.sender == _owner
    Mask(96, 0, stor1.field_160) = 0
}

function sub_b2ecfbf4(?) {
    require not uint8(stor1.field_160)
    return eth.balance(this.address)
}

function setCEOAddress(address arg1) {
    require msg.sender == _owner
    sub_7538223eAddress = arg1
}

function isCanBuy() {
    if sub_25127ad2 != 1:
        return (sub_25127ad2 == 1)
    return not bool(uint8(stor1.field_160))
}

function sub_ecb89183(?) {
    require msg.sender == _owner
    require not uint8(stor1.field_160)
    if sub_25127ad2 == 1:
        uint8(stor1.field_200) = 2
        stor1.field_208 % 16777216 = 0
}

function startNewPeriod() {
    require msg.sender == _owner
    require not uint8(stor1.field_160)
    if sub_25127ad2 <= 0:
        uint8(stor1.field_200) = 1
        stor1.field_208 % 16777216 = 0
        sub_80aa64c5 = uint32(sub_80aa64c5 + 1)
        sub_ffba8e70 = 0
    else:
        if sub_25127ad2 >= 4:
            uint8(stor1.field_200) = 1
            stor1.field_208 % 16777216 = 0
            sub_80aa64c5 = uint32(sub_80aa64c5 + 1)
            sub_ffba8e70 = 0
}

function sub_5b281d2f(?) {
    require msg.sender == _owner
    require not uint8(stor1.field_160)
    require sub_25127ad2 == 3
    s = 0
    idx = 0
    while uint32(idx) < sub_0335e00b:
        require uint32(idx) < sub_e265d050.length
        mem[0] = 4
        if uint256(sub_e265d050[uint32(idx)].field_256) > 0:
            if not uint8(sub_e265d050[uint32(idx)].field_528):
                call address(sub_e265d050[uint32(idx)].field_32) with:
                   value uint256(sub_e265d050[uint32(idx)].field_256) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                Mask(240, 0, sub_e265d050[uint32(idx)].field_528) = 1
        s = (3 * uint32(idx)) + sha3(4)
        idx = idx + 1
        continue 
    uint8(stor1.field_200) = 4
    stor1.field_208 % 16777216 = 0
}

function sub_bcb3830d(?) {
    idx = 0
    s = 0
    while uint32(idx) < sub_e265d050.length:
        mem[0] = 4
        if address(sub_e265d050[uint32(idx)].field_32) != msg.sender:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    idx = 0
    t = 0
    while uint32(idx) < sub_e265d050.length:
        mem[0] = 4
        if address(sub_e265d050[uint32(idx)].field_32) != msg.sender:
            idx = idx + 1
            t = t
            continue 
        require uint32(t) < uint32(s)
        mem[(32 * uint32(t)) + 160] = uint32(idx)
        idx = idx + 1
        t = t + 1
        continue 
    mem[(32 * uint32(s)) + 224 len Mask(27, 5, s)] = mem[160 len Mask(27, 5, s)]
    return Array(len=s << 224, data=mem[160 len Mask(27, 5, s)], mem[(32 * uint32(s)) + Mask(27, 5, s) + 224 len (32 * uint32(s)) - Mask(27, 5, s)]), 
}

function sub_904bcb00(?) {
    idx = 0
    s = 0
    while uint32(idx) < sub_ffba8e70:
        require uint32(idx) < sub_016ccec3.length
        mem[0] = 2
        if address(sub_016ccec3[uint32(idx)].field_32) != msg.sender:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    idx = 0
    t = 0
    while uint32(idx) < sub_ffba8e70:
        require uint32(idx) < sub_016ccec3.length
        mem[0] = 2
        if address(sub_016ccec3[uint32(idx)].field_32) != msg.sender:
            idx = idx + 1
            t = t
            continue 
        require uint32(t) < uint32(s)
        mem[(32 * uint32(t)) + 160] = uint32(idx)
        idx = idx + 1
        t = t + 1
        continue 
    mem[(32 * uint32(s)) + 224 len Mask(27, 5, s)] = mem[160 len Mask(27, 5, s)]
    return Array(len=s << 224, data=mem[160 len Mask(27, 5, s)], mem[(32 * uint32(s)) + Mask(27, 5, s) + 224 len (32 * uint32(s)) - Mask(27, 5, s)]), 
}

function sub_0d269974(?) payable {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = 0
    mem[ceil32(arg1.length) + 160] = 0
    require not uint8(stor1.field_160)
    require sub_25127ad2 == 1
    require not uint8(stor1.field_160)
    require arg3 > 0
    require arg2 > 0
    require msg.value >= 10^16 * arg3 * arg2
    call sub_7538223eAddress with:
       value 10 * msg.value / 100 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    uint32(stor11.field_64) = uint32(uint32(stor11.field_64) + uint32(stor11.field_32))
    if uint32(stor11.field_64) <= 10^6:
        uint32(stor11.field_32) = uint32(uint32(stor11.field_32) + uint32(stor11.field_0))
        if uint32(stor11.field_32) <= 10^6:
            uint32(stor11.field_0) = uint32(uint32(stor11.field_0) + uint32(stor11.field_64))
            if uint32(stor11.field_0) <= 10^6:
                mem[ceil32(arg1.length) + 192] = arg3
                mem[64] = ceil32(arg1.length) + (32 * uint32(arg3)) + 224
                s = 0
                t = 0
                idx = 0
                while uint32(idx) < arg3:
                    u = 0
                    s = 0
                    while uint32(u) < 3:
                        require uint32((3 * idx) + u) < arg1.length
                        u = u + 1
                        s = (10 * s) + mem[uint32((3 * idx) + u) + 128 len 1] - 48
                        continue 
                    require uint32(idx) < arg3
                    mem[(32 * uint32(idx)) + ceil32(arg1.length) + 224] = uint32(-48 * None)
                    u = None
                    s = -48 * None
                    idx = idx + 1
                    continue 
                idx = 0
                while uint32(idx) < arg3:
                    require uint32(idx) < mem[ceil32(arg1.length) + 192]
                    _676 = mem[(32 * uint32(idx)) + ceil32(arg1.length) + 224]
                    _735 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_735] = 0
                    mem[_735 + 32] = 0
                    mem[_735 + 64] = 0
                    mem[_735 + 96] = 0
                    _751 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_751] = uint32(_676)
                    mem[_751 + 32] = msg.sender
                    mem[_751 + 64] = uint8(arg2)
                    mem[_751 + 96] = 0
                    if sub_ffba8e70 >= sub_016ccec3.length:
                        sub_016ccec3.length++
                        if not sub_016ccec3.length <= sub_016ccec3.length + 1:
                            s = sha3(2) + sub_016ccec3.length + 1
                            while sha3(2) + sub_016ccec3.length > s:
                                uint32(stor[s].field_0) = 0
                                address(stor[s].field_32) = 0
                                uint8(stor[s].field_192) = 0
                                uint8(stor[s].field_200) = 0
                                s = s + 1
                                continue 
                    sub_ffba8e70 = uint32(sub_ffba8e70 + 1)
                    require uint32(sub_ffba8e70 - 1) < sub_016ccec3.length
                    mem[0] = 2
                    uint32(sub_016ccec3[uint32(stor3 - 1)].field_0) = uint32(_676)
                    address(sub_016ccec3[uint32(stor3 - 1)].field_32) = msg.sender
                    uint8(sub_016ccec3[uint32(stor3 - 1)].field_192) = uint8(arg2)
                    uint8(sub_016ccec3[uint32(stor3 - 1)].field_200) = 0
                    sub_016ccec3[uint32(stor3 - 1)].field_256 % 1 = 0
                    idx = idx + 1
                    continue 
            else:
                uint32(stor11.field_0) = uint32(uint32(stor11.field_0) % 10^6)
                mem[ceil32(arg1.length) + 192] = arg3
                mem[64] = ceil32(arg1.length) + (32 * uint32(arg3)) + 224
                s = 0
                t = 0
                idx = 0
                while uint32(idx) < arg3:
                    u = 0
                    s = 0
                    while uint32(u) < 3:
                        require uint32((3 * idx) + u) < arg1.length
                        u = u + 1
                        s = (10 * s) + mem[uint32((3 * idx) + u) + 128 len 1] - 48
                        continue 
                    require uint32(idx) < arg3
                    mem[(32 * uint32(idx)) + ceil32(arg1.length) + 224] = uint32(-48 * None)
                    u = None
                    s = -48 * None
                    idx = idx + 1
                    continue 
                idx = 0
                while uint32(idx) < arg3:
                    require uint32(idx) < mem[ceil32(arg1.length) + 192]
                    _684 = mem[(32 * uint32(idx)) + ceil32(arg1.length) + 224]
                    _737 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_737] = 0
                    mem[_737 + 32] = 0
                    mem[_737 + 64] = 0
                    mem[_737 + 96] = 0
                    _753 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_753] = uint32(_684)
                    mem[_753 + 32] = msg.sender
                    mem[_753 + 64] = uint8(arg2)
                    mem[_753 + 96] = 0
                    if sub_ffba8e70 >= sub_016ccec3.length:
                        sub_016ccec3.length++
                        if not sub_016ccec3.length <= sub_016ccec3.length + 1:
                            s = sha3(2) + sub_016ccec3.length + 1
                            while sha3(2) + sub_016ccec3.length > s:
                                uint32(stor[s].field_0) = 0
                                address(stor[s].field_32) = 0
                                uint8(stor[s].field_192) = 0
                                uint8(stor[s].field_200) = 0
                                s = s + 1
                                continue 
                    sub_ffba8e70 = uint32(sub_ffba8e70 + 1)
                    require uint32(sub_ffba8e70 - 1) < sub_016ccec3.length
                    mem[0] = 2
                    uint32(sub_016ccec3[uint32(stor3 - 1)].field_0) = uint32(_684)
                    address(sub_016ccec3[uint32(stor3 - 1)].field_32) = msg.sender
                    uint8(sub_016ccec3[uint32(stor3 - 1)].field_192) = uint8(arg2)
                    uint8(sub_016ccec3[uint32(stor3 - 1)].field_200) = 0
                    sub_016ccec3[uint32(stor3 - 1)].field_256 % 1 = 0
                    idx = idx + 1
                    continue 
        else:
            uint32(stor11.field_32) = uint32(uint32(stor11.field_32) % 10^6)
            uint32(stor11.field_0) = uint32(uint32(stor11.field_0) + uint32(stor11.field_64))
            if uint32(stor11.field_0) <= 10^6:
                mem[ceil32(arg1.length) + 192] = arg3
                mem[64] = ceil32(arg1.length) + (32 * uint32(arg3)) + 224
                s = 0
                t = 0
                idx = 0
                while uint32(idx) < arg3:
                    u = 0
                    s = 0
                    while uint32(u) < 3:
                        require uint32((3 * idx) + u) < arg1.length
                        u = u + 1
                        s = (10 * s) + mem[uint32((3 * idx) + u) + 128 len 1] - 48
                        continue 
                    require uint32(idx) < arg3
                    mem[(32 * uint32(idx)) + ceil32(arg1.length) + 224] = uint32(-48 * None)
                    u = None
                    s = -48 * None
                    idx = idx + 1
                    continue 
                idx = 0
                while uint32(idx) < arg3:
                    require uint32(idx) < mem[ceil32(arg1.length) + 192]
                    _692 = mem[(32 * uint32(idx)) + ceil32(arg1.length) + 224]
                    _739 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_739] = 0
                    mem[_739 + 32] = 0
                    mem[_739 + 64] = 0
                    mem[_739 + 96] = 0
                    _755 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_755] = uint32(_692)
                    mem[_755 + 32] = msg.sender
                    mem[_755 + 64] = uint8(arg2)
                    mem[_755 + 96] = 0
                    if sub_ffba8e70 >= sub_016ccec3.length:
                        sub_016ccec3.length++
                        if not sub_016ccec3.length <= sub_016ccec3.length + 1:
                            s = sha3(2) + sub_016ccec3.length + 1
                            while sha3(2) + sub_016ccec3.length > s:
                                uint32(stor[s].field_0) = 0
                                address(stor[s].field_32) = 0
                                uint8(stor[s].field_192) = 0
                                uint8(stor[s].field_200) = 0
                                s = s + 1
                                continue 
                    sub_ffba8e70 = uint32(sub_ffba8e70 + 1)
                    require uint32(sub_ffba8e70 - 1) < sub_016ccec3.length
                    mem[0] = 2
                    uint32(sub_016ccec3[uint32(stor3 - 1)].field_0) = uint32(_692)
                    address(sub_016ccec3[uint32(stor3 - 1)].field_32) = msg.sender
                    uint8(sub_016ccec3[uint32(stor3 - 1)].field_192) = uint8(arg2)
                    uint8(sub_016ccec3[uint32(stor3 - 1)].field_200) = 0
                    sub_016ccec3[uint32(stor3 - 1)].field_256 % 1 = 0
                    idx = idx + 1
                    continue 
            else:
                uint32(stor11.field_0) = uint32(uint32(stor11.field_0) % 10^6)
                mem[ceil32(arg1.length) + 192] = arg3
                mem[64] = ceil32(arg1.length) + (32 * uint32(arg3)) + 224
                s = 0
                t = 0
                idx = 0
                while uint32(idx) < arg3:
                    u = 0
                    s = 0
                    while uint32(u) < 3:
                        require uint32((3 * idx) + u) < arg1.length
                        u = u + 1
                        s = (10 * s) + mem[uint32((3 * idx) + u) + 128 len 1] - 48
                        continue 
                    require uint32(idx) < arg3
                    mem[(32 * uint32(idx)) + ceil32(arg1.length) + 224] = uint32(-48 * None)
                    u = None
                    s = -48 * None
                    idx = idx + 1
                    continue 
                idx = 0
                while uint32(idx) < arg3:
                    require uint32(idx) < mem[ceil32(arg1.length) + 192]
                    _700 = mem[(32 * uint32(idx)) + ceil32(arg1.length) + 224]
                    _741 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_741] = 0
                    mem[_741 + 32] = 0
                    mem[_741 + 64] = 0
                    mem[_741 + 96] = 0
                    _757 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_757] = uint32(_700)
                    mem[_757 + 32] = msg.sender
                    mem[_757 + 64] = uint8(arg2)
                    mem[_757 + 96] = 0
                    if sub_ffba8e70 >= sub_016ccec3.length:
                        sub_016ccec3.length++
                        if not sub_016ccec3.length <= sub_016ccec3.length + 1:
                            s = sha3(2) + sub_016ccec3.length + 1
                            while sha3(2) + sub_016ccec3.length > s:
                                uint32(stor[s].field_0) = 0
                                address(stor[s].field_32) = 0
                                uint8(stor[s].field_192) = 0
                                uint8(stor[s].field_200) = 0
                                s = s + 1
                                continue 
                    sub_ffba8e70 = uint32(sub_ffba8e70 + 1)
                    require uint32(sub_ffba8e70 - 1) < sub_016ccec3.length
                    mem[0] = 2
                    uint32(sub_016ccec3[uint32(stor3 - 1)].field_0) = uint32(_700)
                    address(sub_016ccec3[uint32(stor3 - 1)].field_32) = msg.sender
                    uint8(sub_016ccec3[uint32(stor3 - 1)].field_192) = uint8(arg2)
                    uint8(sub_016ccec3[uint32(stor3 - 1)].field_200) = 0
                    sub_016ccec3[uint32(stor3 - 1)].field_256 % 1 = 0
                    idx = idx + 1
                    continue 
    else:
        uint32(stor11.field_64) = uint32(uint32(stor11.field_64) % 10^6)
        uint32(stor11.field_32) = uint32(uint32(stor11.field_32) + uint32(stor11.field_0))
        if uint32(stor11.field_32) <= 10^6:
            uint32(stor11.field_0) = uint32(uint32(stor11.field_0) + uint32(stor11.field_64))
            if uint32(stor11.field_0) <= 10^6:
                mem[ceil32(arg1.length) + 192] = arg3
                mem[64] = ceil32(arg1.length) + (32 * uint32(arg3)) + 224
                s = 0
                t = 0
                idx = 0
                while uint32(idx) < arg3:
                    u = 0
                    s = 0
                    while uint32(u) < 3:
                        require uint32((3 * idx) + u) < arg1.length
                        u = u + 1
                        s = (10 * s) + mem[uint32((3 * idx) + u) + 128 len 1] - 48
                        continue 
                    require uint32(idx) < arg3
                    mem[(32 * uint32(idx)) + ceil32(arg1.length) + 224] = uint32(-48 * None)
                    u = None
                    s = -48 * None
                    idx = idx + 1
                    continue 
                idx = 0
                while uint32(idx) < arg3:
                    require uint32(idx) < mem[ceil32(arg1.length) + 192]
                    _708 = mem[(32 * uint32(idx)) + ceil32(arg1.length) + 224]
                    _743 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_743] = 0
                    mem[_743 + 32] = 0
                    mem[_743 + 64] = 0
                    mem[_743 + 96] = 0
                    _759 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_759] = uint32(_708)
                    mem[_759 + 32] = msg.sender
                    mem[_759 + 64] = uint8(arg2)
                    mem[_759 + 96] = 0
                    if sub_ffba8e70 >= sub_016ccec3.length:
                        sub_016ccec3.length++
                        if not sub_016ccec3.length <= sub_016ccec3.length + 1:
                            s = sha3(2) + sub_016ccec3.length + 1
                            while sha3(2) + sub_016ccec3.length > s:
                                uint32(stor[s].field_0) = 0
                                address(stor[s].field_32) = 0
                                uint8(stor[s].field_192) = 0
                                uint8(stor[s].field_200) = 0
                                s = s + 1
                                continue 
                    sub_ffba8e70 = uint32(sub_ffba8e70 + 1)
                    require uint32(sub_ffba8e70 - 1) < sub_016ccec3.length
                    mem[0] = 2
                    uint32(sub_016ccec3[uint32(stor3 - 1)].field_0) = uint32(_708)
                    address(sub_016ccec3[uint32(stor3 - 1)].field_32) = msg.sender
                    uint8(sub_016ccec3[uint32(stor3 - 1)].field_192) = uint8(arg2)
                    uint8(sub_016ccec3[uint32(stor3 - 1)].field_200) = 0
                    sub_016ccec3[uint32(stor3 - 1)].field_256 % 1 = 0
                    idx = idx + 1
                    continue 
            else:
                uint32(stor11.field_0) = uint32(uint32(stor11.field_0) % 10^6)
                mem[ceil32(arg1.length) + 192] = arg3
                mem[64] = ceil32(arg1.length) + (32 * uint32(arg3)) + 224
                s = 0
                t = 0
                idx = 0
                while uint32(idx) < arg3:
                    u = 0
                    s = 0
                    while uint32(u) < 3:
                        require uint32((3 * idx) + u) < arg1.length
                        u = u + 1
                        s = (10 * s) + mem[uint32((3 * idx) + u) + 128 len 1] - 48
                        continue 
                    require uint32(idx) < arg3
                    mem[(32 * uint32(idx)) + ceil32(arg1.length) + 224] = uint32(-48 * None)
                    u = None
                    s = -48 * None
                    idx = idx + 1
                    continue 
                idx = 0
                while uint32(idx) < arg3:
                    require uint32(idx) < mem[ceil32(arg1.length) + 192]
                    _716 = mem[(32 * uint32(idx)) + ceil32(arg1.length) + 224]
                    _745 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_745] = 0
                    mem[_745 + 32] = 0
                    mem[_745 + 64] = 0
                    mem[_745 + 96] = 0
                    _761 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_761] = uint32(_716)
                    mem[_761 + 32] = msg.sender
                    mem[_761 + 64] = uint8(arg2)
                    mem[_761 + 96] = 0
                    if sub_ffba8e70 >= sub_016ccec3.length:
                        sub_016ccec3.length++
                        if not sub_016ccec3.length <= sub_016ccec3.length + 1:
                            s = sha3(2) + sub_016ccec3.length + 1
                            while sha3(2) + sub_016ccec3.length > s:
                                uint32(stor[s].field_0) = 0
                                address(stor[s].field_32) = 0
                                uint8(stor[s].field_192) = 0
                                uint8(stor[s].field_200) = 0
                                s = s + 1
                                continue 
                    sub_ffba8e70 = uint32(sub_ffba8e70 + 1)
                    require uint32(sub_ffba8e70 - 1) < sub_016ccec3.length
                    mem[0] = 2
                    uint32(sub_016ccec3[uint32(stor3 - 1)].field_0) = uint32(_716)
                    address(sub_016ccec3[uint32(stor3 - 1)].field_32) = msg.sender
                    uint8(sub_016ccec3[uint32(stor3 - 1)].field_192) = uint8(arg2)
                    uint8(sub_016ccec3[uint32(stor3 - 1)].field_200) = 0
                    sub_016ccec3[uint32(stor3 - 1)].field_256 % 1 = 0
                    idx = idx + 1
                    continue 
        else:
            uint32(stor11.field_32) = uint32(uint32(stor11.field_32) % 10^6)
            uint32(stor11.field_0) = uint32(uint32(stor11.field_0) + uint32(stor11.field_64))
            if uint32(stor11.field_0) <= 10^6:
                mem[ceil32(arg1.length) + 192] = arg3
                mem[64] = ceil32(arg1.length) + (32 * uint32(arg3)) + 224
                s = 0
                t = 0
                idx = 0
                while uint32(idx) < arg3:
                    u = 0
                    s = 0
                    while uint32(u) < 3:
                        require uint32((3 * idx) + u) < arg1.length
                        u = u + 1
                        s = (10 * s) + mem[uint32((3 * idx) + u) + 128 len 1] - 48
                        continue 
                    require uint32(idx) < arg3
                    mem[(32 * uint32(idx)) + ceil32(arg1.length) + 224] = uint32(-48 * None)
                    u = None
                    s = -48 * None
                    idx = idx + 1
                    continue 
                idx = 0
                while uint32(idx) < arg3:
                    require uint32(idx) < mem[ceil32(arg1.length) + 192]
                    _724 = mem[(32 * uint32(idx)) + ceil32(arg1.length) + 224]
                    _747 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_747] = 0
                    mem[_747 + 32] = 0
                    mem[_747 + 64] = 0
                    mem[_747 + 96] = 0
                    _763 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_763] = uint32(_724)
                    mem[_763 + 32] = msg.sender
                    mem[_763 + 64] = uint8(arg2)
                    mem[_763 + 96] = 0
                    if sub_ffba8e70 >= sub_016ccec3.length:
                        sub_016ccec3.length++
                        if not sub_016ccec3.length <= sub_016ccec3.length + 1:
                            s = sha3(2) + sub_016ccec3.length + 1
                            while sha3(2) + sub_016ccec3.length > s:
                                uint32(stor[s].field_0) = 0
                                address(stor[s].field_32) = 0
                                uint8(stor[s].field_192) = 0
                                uint8(stor[s].field_200) = 0
                                s = s + 1
                                continue 
                    sub_ffba8e70 = uint32(sub_ffba8e70 + 1)
                    require uint32(sub_ffba8e70 - 1) < sub_016ccec3.length
                    mem[0] = 2
                    uint32(sub_016ccec3[uint32(stor3 - 1)].field_0) = uint32(_724)
                    address(sub_016ccec3[uint32(stor3 - 1)].field_32) = msg.sender
                    uint8(sub_016ccec3[uint32(stor3 - 1)].field_192) = uint8(arg2)
                    uint8(sub_016ccec3[uint32(stor3 - 1)].field_200) = 0
                    sub_016ccec3[uint32(stor3 - 1)].field_256 % 1 = 0
                    idx = idx + 1
                    continue 
            else:
                uint32(stor11.field_0) = uint32(uint32(stor11.field_0) % 10^6)
                mem[ceil32(arg1.length) + 192] = arg3
                mem[64] = ceil32(arg1.length) + (32 * uint32(arg3)) + 224
                s = 0
                t = 0
                idx = 0
                while uint32(idx) < arg3:
                    u = 0
                    s = 0
                    while uint32(u) < 3:
                        require uint32((3 * idx) + u) < arg1.length
                        u = u + 1
                        s = (10 * s) + mem[uint32((3 * idx) + u) + 128 len 1] - 48
                        continue 
                    require uint32(idx) < arg3
                    mem[(32 * uint32(idx)) + ceil32(arg1.length) + 224] = uint32(-48 * None)
                    u = None
                    s = -48 * None
                    idx = idx + 1
                    continue 
                idx = 0
                while uint32(idx) < arg3:
                    require uint32(idx) < mem[ceil32(arg1.length) + 192]
                    _732 = mem[(32 * uint32(idx)) + ceil32(arg1.length) + 224]
                    _749 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_749] = 0
                    mem[_749 + 32] = 0
                    mem[_749 + 64] = 0
                    mem[_749 + 96] = 0
                    _765 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_765] = uint32(_732)
                    mem[_765 + 32] = msg.sender
                    mem[_765 + 64] = uint8(arg2)
                    mem[_765 + 96] = 0
                    if sub_ffba8e70 >= sub_016ccec3.length:
                        sub_016ccec3.length++
                        if not sub_016ccec3.length <= sub_016ccec3.length + 1:
                            s = sha3(2) + sub_016ccec3.length + 1
                            while sha3(2) + sub_016ccec3.length > s:
                                uint32(stor[s].field_0) = 0
                                address(stor[s].field_32) = 0
                                uint8(stor[s].field_192) = 0
                                uint8(stor[s].field_200) = 0
                                s = s + 1
                                continue 
                    sub_ffba8e70 = uint32(sub_ffba8e70 + 1)
                    require uint32(sub_ffba8e70 - 1) < sub_016ccec3.length
                    mem[0] = 2
                    uint32(sub_016ccec3[uint32(stor3 - 1)].field_0) = uint32(_732)
                    address(sub_016ccec3[uint32(stor3 - 1)].field_32) = msg.sender
                    uint8(sub_016ccec3[uint32(stor3 - 1)].field_192) = uint8(arg2)
                    uint8(sub_016ccec3[uint32(stor3 - 1)].field_200) = 0
                    sub_016ccec3[uint32(stor3 - 1)].field_256 % 1 = 0
                    idx = idx + 1
                    continue 
    emit refresh()
    return arg3
}



}
