contract main {


// =======================  Init code  ======================


uint256 stor3;
address stor6;
address stor7;
address stor8;

function _fallback() payable {
    stor3 = 100
    require not msg.value
    stor6 = msg.sender
    stor7 = 0
    stor8 = 0
    return code.data[85 len 5799]
}



// =====================  Runtime code  =====================


#
#  - partnerInfo_for_Owner(address arg1, bytes32 arg2, uint8 arg3, bytes32 arg4, bytes32 arg5)
#
mapping of address stor0;
mapping of uint256 stor1;
array of struct stor2;
uint256 ref_percent;
array of struct stor4;
uint256 amount_referral_invest;
address owner;
address contractPreICOAddress;
address contractICOAddress;
mapping of address stor99;

function contractPreICO() {
    return contractPreICOAddress
}

function amount_referral_invest() {
    return amount_referral_invest
}

function owner() {
    return owner
}

function contractICO() {
    return contractICOAddress
}

function ref_percent() {
    return ref_percent
}

function _fallback() payable {
    revert
}

function setReferralPercent(uint256 arg1) {
    require owner == msg.sender
    ref_percent = arg1
}

function changeOwner(address arg1) {
    require owner == msg.sender
    require arg1
    require arg1 != this.address
    owner = arg1
}

function setContractICO(address arg1) {
    require owner == msg.sender
    require not contractICOAddress
    require arg1
    require arg1 != this.address
    contractICOAddress = arg1
}

function setContractPreICO(address arg1) {
    require owner == msg.sender
    require not contractPreICOAddress
    require arg1
    require arg1 != this.address
    contractPreICOAddress = arg1
}

function checkPartner(address arg1) {
    if not uint8(stor2[address(arg1)].field_512):
        return bool(uint8(stor2[address(arg1)].field_512)), 64, 2, 0
    mem[224] = uint256(stor2[address(arg1)][1].field_0)
    idx = 224
    s = 0
    while stor2[address(arg1)][1].length + 192 > idx:
        mem[idx + 32] = uint256(stor2[address(arg1)][s + 1].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return bool(uint8(stor2[address(arg1)].field_512)), 
           Array(len=stor2[address(arg1)][1].length, data=mem[224 len stor2[address(arg1)][1].length])
}

function checkPromo(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 0
    mem[ceil32(arg1.length) + 128] = not not stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]
    return memory
      from ceil32(arg1.length) + 128
       len 32
}

function add_referral(address arg1, string arg2, uint256 arg3) {
    if contractPreICOAddress != msg.sender:
        if contractICOAddress != msg.sender:
            return 0
    if not stor0[arg2[all]]:
        return 0
    if stor0[arg2[all]] == arg1:
        return 0
    stor1[address(arg1)] += arg3
    amount_referral_invest += arg3
    uint256(stor2[stor0[arg2[all]]].field_0) += arg3
    uint256(stor4[stor0[arg2[all]]].field_0)++
    if not uint256(stor4[stor0[arg2[all]]].field_0) <= uint256(stor4[stor0[arg2[all]]].field_0) + 1:
        idx = (3 * uint256(stor4[stor0[arg2[all]]].field_0)) + 3
        while 3 * uint256(stor4[stor0[arg2[all]]].field_0) > idx:
            uint256(stor4[stor0[arg2[all]]][idx].field_0) = 0
            stor4[stor0[arg2[all]]][idx].field_256 = 0
            uint256(stor4[stor0[arg2[all]]][idx].field_512) = 0
            idx = idx + 3
            continue 
    uint256(stor4[stor0[arg2[all]]][uint256(stor4[stor0[arg2[all]]].field_0)].field_0) = block.timestamp
    stor4[stor0[arg2[all]]][uint256(stor4[stor0[arg2[all]]].field_0)].field_256 = arg1
    uint256(stor4[stor0[arg2[all]]][uint256(stor4[stor0[arg2[all]]].field_0)].field_512) = arg3
    if arg3 <= 0:
        return stor0[arg2[all]], 0, arg3 * ref_percent / 10000
    if arg3 < 2 * 10^18:
        return stor0[arg2[all]], 100 * arg3 / 10000, arg3 * ref_percent / 10000
    if arg3 < 3 * 10^18:
        return stor0[arg2[all]], 200 * arg3 / 10000, arg3 * ref_percent / 10000
    if arg3 < 4 * 10^18:
        return stor0[arg2[all]], 300 * arg3 / 10000, arg3 * ref_percent / 10000
    if arg3 >= 5 * 10^18:
        return stor0[arg2[all]], 500 * arg3 / 10000, arg3 * ref_percent / 10000
    return stor0[arg2[all]], 400 * arg3 / 10000, arg3 * ref_percent / 10000
}

function setPromoToPartner(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 0
    require not stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]
    require not uint8(stor2[address(msg.sender)].field_512)
    mem[ceil32(arg1.length) + 128] = 0
    s = 0
    idx = 0
    s = 0
    while idx < 32:
        if not Mask(8, 248, mem[128] * 2^(8 * idx)):
            s = mem[128] * 2^(8 * idx)
            idx = idx + 1
            s = s
            continue 
        require s < 32
        mem[ceil32(arg1.length) + floor32(arg1.length) + s + 224 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mul', ('mem', ('range', 128, 32)), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mul', ('mem', ('range', 128, 32)), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) - 256
        s = mem[128] * 2^(8 * idx)
        idx = idx + 1
        s = s + 1
        continue 
    require s > 0
    _37 = mem[128]
    t = 0
    idx = 0
    t = 0
    while idx < 32:
        if not Mask(8, 248, _37 * 2^(8 * idx)):
            t = _37 * 2^(8 * idx)
            idx = idx + 1
            t = t
            continue 
        require t < 32, mem[ceil32(arg1.length) + max(floor32(arg1.length) + s, (2 * floor32(arg1.length)) + 1112) + 264 len 0]
        mem[(ceil32(arg1.length) + max(floor32(arg1.length) + s, (2 * floor32(arg1.length)) + 1112) + 232) + t + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mul', ('var', '_37'), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mul', ('var', '_37'), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) - 256
        t = _37 * 2^(8 * idx)
        idx = idx + 1
        t = t + 1
        continue 
    require t <= 6
    mem[(ceil32(arg1.length) + max(floor32(arg1.length) + s, (2 * floor32(arg1.length)) + 1112) + 232) + 1056 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[(ceil32(arg1.length) + max(floor32(arg1.length) + s, (2 * floor32(arg1.length)) + 1112) + 232) + floor32(arg1.length) + -(arg1.length % 32) + 1088 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + (ceil32(arg1.length) + max(floor32(arg1.length) + s, (2 * floor32(arg1.length)) + 1112) + 232) + 1056] = 0
    stor[mem[(ceil32(arg1.length) + max(floor32(arg1.length) + s, (2 * floor32(arg1.length)) + 1112) + 232) + floor32(arg1.length) + 1056 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]] = msg.sender
    uint256(stor2[address(msg.sender)].field_0) = 0
    uint256(stor2[address(msg.sender)][1][].field_0) = Array(len=arg1.length, data=arg1[all])
    uint8(stor2[address(msg.sender)].field_512) = 1
}

function partnerInfo_for_Partner(bytes32 arg1, uint8 arg2, bytes32 arg3, bytes32 arg4) {
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    signer = erecover(arg1, arg2 << 248, arg3, arg4) 
    mem[224] = signer
    require erecover.result
    mem[256] = 0
    mem[288] = 0
    mem[320] = 0
    mem[352] = 0
    if not address(signer):
        return 160, 0, 224, 256, 288, 2, 0, 0, 0, 0
    if not uint8(stor2[address(signer)].field_512):
        return 160, 0, 224, 256, 288, 2, 0, 0, 0, 0
    mem[384] = stor2[address(signer)][1].length
    mem[416] = uint256(stor2[address(signer)][1].field_0)
    idx = 416
    s = 0
    while stor2[address(signer)][1].length + 384 > idx:
        mem[idx + 32] = uint256(stor2[address(signer)][s + 1].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    if msize < ceil32(stor2[address(signer)][1].length) + 416:
        mem[ceil32(stor2[address(signer)][1].length) + 416] = uint256(stor4[address(signer)].field_0)
        _msize = max(32, floor32(stor2[address(signer)][1].length - 1) + 32, ceil32(stor2[address(signer)][1].length))
        mem[_msize + 448] = uint256(stor4[address(signer)].field_0)
        _msize = max(ceil32(stor2[address(signer)][1].length) + 416, floor32(stor2[address(signer)][1].length - 1) + 448, _msize + 448)
        mem[_msize + 32] = uint256(stor4[address(signer)].field_0)
        mem[64] = (_msize + 32) + (32 * uint256(stor4[address(signer)].field_0)) + 32
        mem[0] = address(signer)
        mem[32] = 4
        idx = 0
        while uint8(idx) < uint256(stor4[address(signer)].field_0):
            require uint8(idx) < uint256(stor4[address(signer)].field_0)
            require uint8(idx) < mem[ceil32(stor2[address(signer)][1].length) + 416]
            mem[ceil32(stor2[address(signer)][1].length) + (32 * uint8(idx)) + 448] = uint256(stor4[address(signer)][uint8(idx)].field_0)
            mem[32] = 4
            require uint8(idx) < uint256(stor4[address(signer)].field_0)
            mem[0] = sha3(address(signer), 4)
            require uint8(idx) < mem[_msize + 448]
            mem[(_msize + 448) + (32 * uint8(idx)) + 32] = uint256(stor4[address(signer)][uint8(idx)].field_512)
            mem[32] = 4
            require uint8(idx) < uint256(stor4[address(signer)].field_0)
            mem[0] = sha3(address(signer), 4)
            require uint8(idx) < mem[_msize + 32]
            mem[(_msize + 32) + (32 * uint8(idx)) + 32] = stor4[address(signer)][uint8(idx)].field_256
            mem[0] = address(signer)
            mem[32] = 4
            idx = idx + 1
            continue 
        mem[(_msize + 32) + (32 * uint256(stor4[address(signer)].field_0)) + 64] = uint256(stor2[address(signer)].field_0)
        mem[(_msize + 32) + (32 * uint256(stor4[address(signer)].field_0)) + 32] = 160
        mem[(_msize + 32) + (32 * uint256(stor4[address(signer)].field_0)) + 192] = stor2[address(signer)][1].length
        mem[(_msize + 32) + (32 * uint256(stor4[address(signer)].field_0)) + 224 len ceil32(stor2[address(signer)][1].length)] = mem[416 len ceil32(stor2[address(signer)][1].length)]
        var50001 = ceil32(stor2[address(signer)][1].length)
        mem[(_msize + 32) + (32 * uint256(stor4[address(signer)].field_0)) + 96] = stor2[address(signer)][1].length + 192
        mem[stor2[address(signer)][1].length + (_msize + 32) + (32 * uint256(stor4[address(signer)].field_0)) + 224] = mem[ceil32(stor2[address(signer)][1].length) + 416]
        mem[stor2[address(signer)][1].length + (_msize + 32) + (32 * uint256(stor4[address(signer)].field_0)) + 256 len floor32(mem[ceil32(stor2[address(signer)][1].length) + 416])] = mem[ceil32(stor2[address(signer)][1].length) + 448 len floor32(mem[ceil32(stor2[address(signer)][1].length) + 416])]
        mem[(_msize + 32) + (32 * uint256(stor4[address(signer)].field_0)) + 128] = (32 * mem[ceil32(stor2[address(signer)][1].length) + 416]) + stor2[address(signer)][1].length + 224
        mem[(32 * mem[ceil32(stor2[address(signer)][1].length) + 416]) + stor2[address(signer)][1].length + (_msize + 32) + (32 * uint256(stor4[address(signer)].field_0)) + 256] = mem[_msize + 448]
        _4222 = mem[_msize + 448]
        mem[(32 * mem[ceil32(stor2[address(signer)][1].length) + 416]) + stor2[address(signer)][1].length + (_msize + 32) + (32 * uint256(stor4[address(signer)].field_0)) + 288 len floor32(mem[_msize + 448])] = mem[(_msize + 448) + 32 len floor32(mem[_msize + 448])]
        mem[(_msize + 32) + (32 * uint256(stor4[address(signer)].field_0)) + 160] = (32 * _4222) + (32 * mem[ceil32(stor2[address(signer)][1].length) + 416]) + stor2[address(signer)][1].length + 256
        mem[(32 * _4222) + (32 * mem[ceil32(stor2[address(signer)][1].length) + 416]) + stor2[address(signer)][1].length + (_msize + 32) + (32 * uint256(stor4[address(signer)].field_0)) + 288] = mem[_msize + 32]
        _4494 = mem[_msize + 32]
        mem[(32 * _4222) + (32 * mem[ceil32(stor2[address(signer)][1].length) + 416]) + stor2[address(signer)][1].length + (_msize + 32) + (32 * uint256(stor4[address(signer)].field_0)) + 320 len floor32(mem[_msize + 32])] = mem[(_msize + 32) + 32 len floor32(mem[_msize + 32])]
        return Array(len=stor2[address(signer)][1].length, data=mem[(_msize + 32) + (32 * uint256(stor4[address(signer)].field_0)) + 224 len (32 * mem[ceil32(stor2[address(signer)][1].length) + 416]) + stor2[address(signer)][1].length + 32], mem[_msize + 448], mem[(_msize + 32) + (32 * uint256(stor4[address(signer)].field_0)) + (32 * mem[ceil32(stor2[address(signer)][1].length) + 416]) + stor2[address(signer)][1].length + 288 len (32 * _4494) + (32 * _4222) + 32]), 
               uint256(stor2[address(signer)].field_0),
               stor2[address(signer)][1].length + 192,
               (32 * mem[ceil32(stor2[address(signer)][1].length) + 416]) + stor2[address(signer)][1].length + 224,
               (32 * _4222) + (32 * mem[ceil32(stor2[address(signer)][1].length) + 416]) + stor2[address(signer)][1].length + 256
    _msize = max(0, floor32(stor2[address(signer)][1].length - 1))
    mem[_msize + 480] = uint256(stor4[address(signer)].field_0)
    if 0 < 32 * uint256(stor4[address(signer)].field_0):
        mem[(_msize + 480) + (32 * uint256(stor4[address(signer)].field_0)) + 32] = uint256(stor4[address(signer)].field_0)
        if 32 < (64 * uint256(stor4[address(signer)].field_0)) + 64:
            mem[(_msize + 480) + (64 * uint256(stor4[address(signer)].field_0)) + 64] = uint256(stor4[address(signer)].field_0)
            mem[64] = (_msize + 480) + (98 * uint256(stor4[address(signer)].field_0)) + 96
            mem[0] = address(signer)
            mem[32] = 4
            idx = 0
            while uint8(idx) < uint256(stor4[address(signer)].field_0):
                mem[32] = 4
                require uint8(idx) < uint256(stor4[address(signer)].field_0)
                mem[0] = sha3(address(signer), 4)
                require uint8(idx) < mem[_msize + 480]
                mem[(_msize + 480) + (32 * uint8(idx)) + 32] = uint256(stor4[address(signer)][uint8(idx)].field_0)
                require uint8(idx) < uint256(stor4[address(signer)].field_0)
                require uint8(idx) < mem[(_msize + 480) + (32 * uint256(stor4[address(signer)].field_0)) + 32]
                mem[(_msize + 480) + (32 * uint256(stor4[address(signer)].field_0)) + (32 * uint8(idx)) + 64] = uint256(stor4[address(signer)][uint8(idx)].field_512)
                require uint8(idx) < uint256(stor4[address(signer)].field_0)
                require uint8(idx) < mem[(_msize + 480) + (64 * uint256(stor4[address(signer)].field_0)) + 64]
                mem[(_msize + 480) + (64 * uint256(stor4[address(signer)].field_0)) + (32 * uint8(idx)) + 96] = stor4[address(signer)][uint8(idx)].field_256
                mem[0] = address(signer)
                mem[32] = 4
                idx = idx + 1
                continue 
            mem[(_msize + 480) + (98 * uint256(stor4[address(signer)].field_0)) + 128] = uint256(stor2[address(signer)].field_0)
            mem[(_msize + 480) + (98 * uint256(stor4[address(signer)].field_0)) + 96] = 160
            mem[(_msize + 480) + (98 * uint256(stor4[address(signer)].field_0)) + 256] = stor2[address(signer)][1].length
            mem[(_msize + 480) + (98 * uint256(stor4[address(signer)].field_0)) + 288 len ceil32(stor2[address(signer)][1].length)] = mem[416 len ceil32(stor2[address(signer)][1].length)]
            if not stor2[address(signer)][1].length % 32:
                mem[(_msize + 480) + (98 * uint256(stor4[address(signer)].field_0)) + 160] = stor2[address(signer)][1].length + 192
                mem[stor2[address(signer)][1].length + (_msize + 480) + (98 * uint256(stor4[address(signer)].field_0)) + 288] = mem[_msize + 480]
                mem[stor2[address(signer)][1].length + (_msize + 480) + (98 * uint256(stor4[address(signer)].field_0)) + 320 len floor32(mem[_msize + 480])] = mem[(_msize + 480) + 32 len floor32(mem[_msize + 480])]
                mem[(32 * mem[_msize + 480]) + stor2[address(signer)][1].length + (_msize + 480) + (98 * uint256(stor4[address(signer)].field_0)) + 320] = mem[(_msize + 480) + (32 * uint256(stor4[address(signer)].field_0)) + 32]
                _4228 = mem[(_msize + 480) + (32 * uint256(stor4[address(signer)].field_0)) + 32]
                mem[(32 * mem[_msize + 480]) + stor2[address(signer)][1].length + (_msize + 480) + (98 * uint256(stor4[address(signer)].field_0)) + 352 len floor32(mem[(_msize + 480) + (32 * uint256(stor4[address(signer)].field_0)) + 32])] = mem[(_msize + 480) + (32 * uint256(stor4[address(signer)].field_0)) + 64 len floor32(mem[(_msize + 480) + (32 * uint256(stor4[address(signer)].field_0)) + 32])]
                mem[(32 * _4228) + (32 * mem[_msize + 480]) + stor2[address(signer)][1].length + (_msize + 480) + (98 * uint256(stor4[address(signer)].field_0)) + 352] = mem[(_msize + 480) + (64 * uint256(stor4[address(signer)].field_0)) + 64]
                mem[(32 * _4228) + (32 * mem[_msize + 480]) + stor2[address(signer)][1].length + (_msize + 480) + (98 * uint256(stor4[address(signer)].field_0)) + 384 len floor32(mem[(_msize + 480) + (64 * uint256(stor4[address(signer)].field_0)) + 64])] = mem[(_msize + 480) + (64 * uint256(stor4[address(signer)].field_0)) + 96 len floor32(mem[(_msize + 480) + (64 * uint256(stor4[address(signer)].field_0)) + 64])]
                return memory
                  from (_msize + 480) + (98 * uint256(stor4[address(signer)].field_0)) + 96
                   len (32 * mem[(_msize + 480) + (64 * uint256(stor4[address(signer)].field_0)) + 64]) + (32 * _4228) + (32 * mem[_msize + 480]) + stor2[address(signer)][1].length + 288
            mem[floor32(stor2[address(signer)][1].length) + (_msize + 480) + (98 * uint256(stor4[address(signer)].field_0)) + 288] = mem[floor32(stor2[address(signer)][1].length) + (_msize + 480) + (98 * uint256(stor4[address(signer)].field_0)) + -stor2[address(signer)][1].length % 32 + 320 len stor2[address(signer)][1].length % 32]
            mem[(_msize + 480) + (98 * uint256(stor4[address(signer)].field_0)) + 160] = floor32(stor2[address(signer)][1].length) + 224
            mem[floor32(stor2[address(signer)][1].length) + (_msize + 480) + (98 * uint256(stor4[address(signer)].field_0)) + 320] = mem[_msize + 480]
            mem[floor32(stor2[address(signer)][1].length) + (_msize + 480) + (98 * uint256(stor4[address(signer)].field_0)) + 352 len floor32(mem[_msize + 480])] = mem[(_msize + 480) + 32 len floor32(mem[_msize + 480])]
            mem[(32 * mem[_msize + 480]) + floor32(stor2[address(signer)][1].length) + (_msize + 480) + (98 * uint256(stor4[address(signer)].field_0)) + 352] = mem[(_msize + 480) + (32 * uint256(stor4[address(signer)].field_0)) + 32]
            _4231 = mem[(_msize + 480) + (32 * uint256(stor4[address(signer)].field_0)) + 32]
            mem[(32 * mem[_msize + 480]) + floor32(stor2[address(signer)][1].length) + (_msize + 480) + (98 * uint256(stor4[address(signer)].field_0)) + 384 len floor32(mem[(_msize + 480) + (32 * uint256(stor4[address(signer)].field_0)) + 32])] = mem[(_msize + 480) + (32 * uint256(stor4[address(signer)].field_0)) + 64 len floor32(mem[(_msize + 480) + (32 * uint256(stor4[address(signer)].field_0)) + 32])]
            mem[(32 * _4231) + (32 * mem[_msize + 480]) + floor32(stor2[address(signer)][1].length) + (_msize + 480) + (98 * uint256(stor4[address(signer)].field_0)) + 384] = mem[(_msize + 480) + (64 * uint256(stor4[address(signer)].field_0)) + 64]
            _4503 = mem[(_msize + 480) + (64 * uint256(stor4[address(signer)].field_0)) + 64]
            mem[(32 * _4231) + (32 * mem[_msize + 480]) + floor32(stor2[address(signer)][1].length) + (_msize + 480) + (98 * uint256(stor4[address(signer)].field_0)) + 416 len floor32(mem[(_msize + 480) + (64 * uint256(stor4[address(signer)].field_0)) + 64])] = mem[(_msize + 480) + (64 * uint256(stor4[address(signer)].field_0)) + 96 len floor32(mem[(_msize + 480) + (64 * uint256(stor4[address(signer)].field_0)) + 64])]
            return memory
              from (_msize + 480) + (98 * uint256(stor4[address(signer)].field_0)) + 96
               len (32 * _4503) + (32 * _4231) + (32 * mem[_msize + 480]) + floor32(stor2[address(signer)][1].length) + 320
        mem[(_msize + 480) + (32 * uint256(stor4[address(signer)].field_0)) + 64] = uint256(stor4[address(signer)].field_0)
        mem[64] = (_msize + 480) + (64 * uint256(stor4[address(signer)].field_0)) + 96
        mem[0] = address(signer)
        mem[32] = 4
        idx = 0
        while uint8(idx) < uint256(stor4[address(signer)].field_0):
            mem[32] = 4
            require uint8(idx) < uint256(stor4[address(signer)].field_0)
            mem[0] = sha3(address(signer), 4)
            require uint8(idx) < mem[_msize + 480]
            mem[(_msize + 480) + (32 * uint8(idx)) + 32] = uint256(stor4[address(signer)][uint8(idx)].field_0)
            require uint8(idx) < uint256(stor4[address(signer)].field_0)
            require uint8(idx) < mem[(_msize + 480) + (32 * uint256(stor4[address(signer)].field_0)) + 32]
            mem[(_msize + 480) + (32 * uint256(stor4[address(signer)].field_0)) + (32 * uint8(idx)) + 64] = uint256(stor4[address(signer)][uint8(idx)].field_512)
            require uint8(idx) < uint256(stor4[address(signer)].field_0)
            require uint8(idx) < mem[(_msize + 480) + (32 * uint256(stor4[address(signer)].field_0)) + 64]
            mem[(_msize + 480) + (32 * uint256(stor4[address(signer)].field_0)) + (32 * uint8(idx)) + 96] = stor4[address(signer)][uint8(idx)].field_256
            mem[0] = address(signer)
            mem[32] = 4
            idx = idx + 1
            continue 
        mem[(_msize + 480) + (64 * uint256(stor4[address(signer)].field_0)) + 128] = uint256(stor2[address(signer)].field_0)
        mem[(_msize + 480) + (64 * uint256(stor4[address(signer)].field_0)) + 96] = 160
        mem[(_msize + 480) + (64 * uint256(stor4[address(signer)].field_0)) + 256] = stor2[address(signer)][1].length
        mem[(_msize + 480) + (64 * uint256(stor4[address(signer)].field_0)) + 288 len ceil32(stor2[address(signer)][1].length)] = mem[416 len ceil32(stor2[address(signer)][1].length)]
        var50001 = ceil32(stor2[address(signer)][1].length)
        if not stor2[address(signer)][1].length % 32:
            mem[(_msize + 480) + (64 * uint256(stor4[address(signer)].field_0)) + 160] = stor2[address(signer)][1].length + 192
            mem[stor2[address(signer)][1].length + (_msize + 480) + (64 * uint256(stor4[address(signer)].field_0)) + 288] = mem[_msize + 480]
            mem[stor2[address(signer)][1].length + (_msize + 480) + (64 * uint256(stor4[address(signer)].field_0)) + 320 len floor32(mem[_msize + 480])] = mem[(_msize + 480) + 32 len floor32(mem[_msize + 480])]
            mem[(_msize + 480) + (64 * uint256(stor4[address(signer)].field_0)) + 192] = (32 * mem[_msize + 480]) + stor2[address(signer)][1].length + 224
            mem[(32 * mem[_msize + 480]) + stor2[address(signer)][1].length + (_msize + 480) + (64 * uint256(stor4[address(signer)].field_0)) + 320] = mem[(_msize + 480) + (32 * uint256(stor4[address(signer)].field_0)) + 32]
            _4234 = mem[(_msize + 480) + (32 * uint256(stor4[address(signer)].field_0)) + 32]
            mem[(32 * mem[_msize + 480]) + stor2[address(signer)][1].length + (_msize + 480) + (64 * uint256(stor4[address(signer)].field_0)) + 352 len floor32(mem[(_msize + 480) + (32 * uint256(stor4[address(signer)].field_0)) + 32])] = mem[(_msize + 480) + (32 * uint256(stor4[address(signer)].field_0)) + 64 len floor32(mem[(_msize + 480) + (32 * uint256(stor4[address(signer)].field_0)) + 32])]
            mem[(_msize + 480) + (64 * uint256(stor4[address(signer)].field_0)) + 224] = (32 * _4234) + (32 * mem[_msize + 480]) + stor2[address(signer)][1].length + 256
            mem[(32 * _4234) + (32 * mem[_msize + 480]) + stor2[address(signer)][1].length + (_msize + 480) + (64 * uint256(stor4[address(signer)].field_0)) + 352] = mem[(_msize + 480) + (32 * uint256(stor4[address(signer)].field_0)) + 64]
            _4506 = mem[(_msize + 480) + (32 * uint256(stor4[address(signer)].field_0)) + 64]
            mem[(32 * _4234) + (32 * mem[_msize + 480]) + stor2[address(signer)][1].length + (_msize + 480) + (64 * uint256(stor4[address(signer)].field_0)) + 384 len floor32(mem[(_msize + 480) + (32 * uint256(stor4[address(signer)].field_0)) + 64])] = mem[(_msize + 480) + (32 * uint256(stor4[address(signer)].field_0)) + 96 len floor32(mem[(_msize + 480) + (32 * uint256(stor4[address(signer)].field_0)) + 64])]
            return 160, 
                   uint256(stor2[address(signer)].field_0),
                   stor2[address(signer)][1].length + 192,
                   mem[_msize + (64 * uint256(stor4[address(signer)].field_0)) + 672 len 64],
                   stor2[address(signer)][1].length,
                   mem[_msize + (64 * uint256(stor4[address(signer)].field_0)) + 768 len (32 * _4506) + (32 * _4234) + (32 * mem[_msize + 480]) + stor2[address(signer)][1].length + 96]
        mem[floor32(stor2[address(signer)][1].length) + (_msize + 480) + (64 * uint256(stor4[address(signer)].field_0)) + 288] = mem[floor32(stor2[address(signer)][1].length) + (_msize + 480) + (64 * uint256(stor4[address(signer)].field_0)) + -stor2[address(signer)][1].length % 32 + 320 len stor2[address(signer)][1].length % 32]
        mem[(_msize + 480) + (64 * uint256(stor4[address(signer)].field_0)) + 160] = floor32(stor2[address(signer)][1].length) + 224
        mem[floor32(stor2[address(signer)][1].length) + (_msize + 480) + (64 * uint256(stor4[address(signer)].field_0)) + 320] = mem[_msize + 480]
        mem[floor32(stor2[address(signer)][1].length) + (_msize + 480) + (64 * uint256(stor4[address(signer)].field_0)) + 352 len floor32(mem[_msize + 480])] = mem[(_msize + 480) + 32 len floor32(mem[_msize + 480])]
        mem[(_msize + 480) + (64 * uint256(stor4[address(signer)].field_0)) + 192] = (32 * mem[_msize + 480]) + floor32(stor2[address(signer)][1].length) + 256
        mem[(32 * mem[_msize + 480]) + floor32(stor2[address(signer)][1].length) + (_msize + 480) + (64 * uint256(stor4[address(signer)].field_0)) + 352] = mem[(_msize + 480) + (32 * uint256(stor4[address(signer)].field_0)) + 32]
        _4237 = mem[(_msize + 480) + (32 * uint256(stor4[address(signer)].field_0)) + 32]
        mem[(32 * mem[_msize + 480]) + floor32(stor2[address(signer)][1].length) + (_msize + 480) + (64 * uint256(stor4[address(signer)].field_0)) + 384 len floor32(mem[(_msize + 480) + (32 * uint256(stor4[address(signer)].field_0)) + 32])] = mem[(_msize + 480) + (32 * uint256(stor4[address(signer)].field_0)) + 64 len floor32(mem[(_msize + 480) + (32 * uint256(stor4[address(signer)].field_0)) + 32])]
        mem[(_msize + 480) + (64 * uint256(stor4[address(signer)].field_0)) + 224] = (32 * _4237) + (32 * mem[_msize + 480]) + floor32(stor2[address(signer)][1].length) + 288
        mem[(32 * _4237) + (32 * mem[_msize + 480]) + floor32(stor2[address(signer)][1].length) + (_msize + 480) + (64 * uint256(stor4[address(signer)].field_0)) + 384] = mem[(_msize + 480) + (32 * uint256(stor4[address(signer)].field_0)) + 64]
        _4509 = mem[(_msize + 480) + (32 * uint256(stor4[address(signer)].field_0)) + 64]
        mem[(32 * _4237) + (32 * mem[_msize + 480]) + floor32(stor2[address(signer)][1].length) + (_msize + 480) + (64 * uint256(stor4[address(signer)].field_0)) + 416 len floor32(mem[(_msize + 480) + (32 * uint256(stor4[address(signer)].field_0)) + 64])] = mem[(_msize + 480) + (32 * uint256(stor4[address(signer)].field_0)) + 96 len floor32(mem[(_msize + 480) + (32 * uint256(stor4[address(signer)].field_0)) + 64])]
        return memory
          from (_msize + 480) + (64 * uint256(stor4[address(signer)].field_0)) + 96
           len (32 * _4509) + (32 * _4237) + (32 * mem[_msize + 480]) + floor32(stor2[address(signer)][1].length) + 320
    mem[_msize + 480] = uint256(stor4[address(signer)].field_0)
    if msize < (max(0, floor32(stor2[address(signer)][1].length - 1)) + 480) + (32 * uint256(stor4[address(signer)].field_0)) + 32:
        mem[(_msize + 480) + (32 * uint256(stor4[address(signer)].field_0)) + 32] = uint256(stor4[address(signer)].field_0)
        mem[64] = (_msize + 480) + (64 * uint256(stor4[address(signer)].field_0)) + 64
        mem[0] = address(signer)
        mem[32] = 4
        idx = 0
        while uint8(idx) < uint256(stor4[address(signer)].field_0):
            mem[32] = 4
            require uint8(idx) < uint256(stor4[address(signer)].field_0)
            mem[0] = sha3(address(signer), 4)
            require uint8(idx) < mem[_msize + 480]
            mem[(_msize + 480) + (32 * uint8(idx)) + 32] = uint256(stor4[address(signer)][uint8(idx)].field_0)
            mem[32] = 4
            require uint8(idx) < uint256(stor4[address(signer)].field_0)
            mem[0] = sha3(address(signer), 4)
            require uint8(idx) < mem[_msize + 480]
            mem[(_msize + 480) + (32 * uint8(idx)) + 32] = uint256(stor4[address(signer)][uint8(idx)].field_512)
            require uint8(idx) < uint256(stor4[address(signer)].field_0)
            require uint8(idx) < mem[(_msize + 480) + (32 * uint256(stor4[address(signer)].field_0)) + 32]
            mem[(_msize + 480) + (32 * uint256(stor4[address(signer)].field_0)) + (32 * uint8(idx)) + 64] = stor4[address(signer)][uint8(idx)].field_256
            mem[0] = address(signer)
            mem[32] = 4
            idx = idx + 1
            continue 
        mem[(_msize + 480) + (64 * uint256(stor4[address(signer)].field_0)) + 96] = uint256(stor2[address(signer)].field_0)
        mem[(_msize + 480) + (64 * uint256(stor4[address(signer)].field_0)) + 64] = 160
        mem[(_msize + 480) + (64 * uint256(stor4[address(signer)].field_0)) + 224] = stor2[address(signer)][1].length
        mem[(_msize + 480) + (64 * uint256(stor4[address(signer)].field_0)) + 256 len ceil32(stor2[address(signer)][1].length)] = mem[416 len ceil32(stor2[address(signer)][1].length)]
        var50001 = ceil32(stor2[address(signer)][1].length)
        if not stor2[address(signer)][1].length % 32:
            mem[(_msize + 480) + (64 * uint256(stor4[address(signer)].field_0)) + 128] = stor2[address(signer)][1].length + 192
            mem[stor2[address(signer)][1].length + (_msize + 480) + (64 * uint256(stor4[address(signer)].field_0)) + 256] = mem[_msize + 480]
            mem[stor2[address(signer)][1].length + (_msize + 480) + (64 * uint256(stor4[address(signer)].field_0)) + 288 len floor32(mem[_msize + 480])] = mem[(_msize + 480) + 32 len floor32(mem[_msize + 480])]
            mem[(_msize + 480) + (64 * uint256(stor4[address(signer)].field_0)) + 160] = (32 * mem[_msize + 480]) + stor2[address(signer)][1].length + 224
            mem[(32 * mem[_msize + 480]) + stor2[address(signer)][1].length + (_msize + 480) + (64 * uint256(stor4[address(signer)].field_0)) + 288] = mem[_msize + 480]
            _4240 = mem[_msize + 480]
            mem[(32 * mem[_msize + 480]) + stor2[address(signer)][1].length + (_msize + 480) + (64 * uint256(stor4[address(signer)].field_0)) + 320 len floor32(mem[_msize + 480])] = mem[(_msize + 480) + 32 len floor32(mem[_msize + 480])]
            mem[(32 * _4240) + (32 * mem[_msize + 480]) + stor2[address(signer)][1].length + (_msize + 480) + (64 * uint256(stor4[address(signer)].field_0)) + 320] = mem[(_msize + 480) + (32 * uint256(stor4[address(signer)].field_0)) + 32]
            _4512 = mem[(_msize + 480) + (32 * uint256(stor4[address(signer)].field_0)) + 32]
            mem[(32 * _4240) + (32 * mem[_msize + 480]) + stor2[address(signer)][1].length + (_msize + 480) + (64 * uint256(stor4[address(signer)].field_0)) + 352 len floor32(mem[(_msize + 480) + (32 * uint256(stor4[address(signer)].field_0)) + 32])] = mem[(_msize + 480) + (32 * uint256(stor4[address(signer)].field_0)) + 64 len floor32(mem[(_msize + 480) + (32 * uint256(stor4[address(signer)].field_0)) + 32])]
            return memory
              from (_msize + 480) + (64 * uint256(stor4[address(signer)].field_0)) + 64
               len (32 * _4512) + (32 * _4240) + (32 * mem[_msize + 480]) + stor2[address(signer)][1].length + 288
        mem[floor32(stor2[address(signer)][1].length) + (_msize + 480) + (64 * uint256(stor4[address(signer)].field_0)) + 256] = mem[floor32(stor2[address(signer)][1].length) + (_msize + 480) + (64 * uint256(stor4[address(signer)].field_0)) + -stor2[address(signer)][1].length % 32 + 288 len stor2[address(signer)][1].length % 32]
        mem[(_msize + 480) + (64 * uint256(stor4[address(signer)].field_0)) + 128] = floor32(stor2[address(signer)][1].length) + 224
        mem[floor32(stor2[address(signer)][1].length) + (_msize + 480) + (64 * uint256(stor4[address(signer)].field_0)) + 288] = mem[_msize + 480]
        mem[floor32(stor2[address(signer)][1].length) + (_msize + 480) + (64 * uint256(stor4[address(signer)].field_0)) + 320 len floor32(mem[_msize + 480])] = mem[(_msize + 480) + 32 len floor32(mem[_msize + 480])]
        mem[(_msize + 480) + (64 * uint256(stor4[address(signer)].field_0)) + 160] = (32 * mem[_msize + 480]) + floor32(stor2[address(signer)][1].length) + 256
        mem[(32 * mem[_msize + 480]) + floor32(stor2[address(signer)][1].length) + (_msize + 480) + (64 * uint256(stor4[address(signer)].field_0)) + 320] = mem[_msize + 480]
        _4243 = mem[_msize + 480]
        mem[(32 * mem[_msize + 480]) + floor32(stor2[address(signer)][1].length) + (_msize + 480) + (64 * uint256(stor4[address(signer)].field_0)) + 352 len floor32(mem[_msize + 480])] = mem[(_msize + 480) + 32 len floor32(mem[_msize + 480])]
        mem[(32 * _4243) + (32 * mem[_msize + 480]) + floor32(stor2[address(signer)][1].length) + (_msize + 480) + (64 * uint256(stor4[address(signer)].field_0)) + 352] = mem[(_msize + 480) + (32 * uint256(stor4[address(signer)].field_0)) + 32]
        _4515 = mem[(_msize + 480) + (32 * uint256(stor4[address(signer)].field_0)) + 32]
        mem[(32 * _4243) + (32 * mem[_msize + 480]) + floor32(stor2[address(signer)][1].length) + (_msize + 480) + (64 * uint256(stor4[address(signer)].field_0)) + 384 len floor32(mem[(_msize + 480) + (32 * uint256(stor4[address(signer)].field_0)) + 32])] = mem[(_msize + 480) + (32 * uint256(stor4[address(signer)].field_0)) + 64 len floor32(mem[(_msize + 480) + (32 * uint256(stor4[address(signer)].field_0)) + 32])]
        return memory
          from (_msize + 480) + (64 * uint256(stor4[address(signer)].field_0)) + 64
           len (32 * _4515) + (32 * _4243) + (32 * mem[_msize + 480]) + floor32(stor2[address(signer)][1].length) + 320
    mem[_msize + 480] = uint256(stor4[address(signer)].field_0)
    mem[64] = (_msize + 480) + (32 * uint256(stor4[address(signer)].field_0)) + 32
    mem[0] = address(signer)
    mem[32] = 4
    idx = 0
    while uint8(idx) < uint256(stor4[address(signer)].field_0):
        mem[32] = 4
        require uint8(idx) < uint256(stor4[address(signer)].field_0)
        mem[0] = sha3(address(signer), 4)
        require uint8(idx) < mem[_msize + 480]
        mem[(_msize + 480) + (32 * uint8(idx)) + 32] = uint256(stor4[address(signer)][uint8(idx)].field_0)
        mem[32] = 4
        require uint8(idx) < uint256(stor4[address(signer)].field_0)
        mem[0] = sha3(address(signer), 4)
        require uint8(idx) < mem[_msize + 480]
        mem[(_msize + 480) + (32 * uint8(idx)) + 32] = uint256(stor4[address(signer)][uint8(idx)].field_512)
        mem[32] = 4
        require uint8(idx) < uint256(stor4[address(signer)].field_0)
        mem[0] = sha3(address(signer), 4)
        require uint8(idx) < mem[_msize + 480]
        mem[(_msize + 480) + (32 * uint8(idx)) + 32] = stor4[address(signer)][uint8(idx)].field_256
        mem[0] = address(signer)
        mem[32] = 4
        idx = idx + 1
        continue 
    mem[(_msize + 480) + (32 * uint256(stor4[address(signer)].field_0)) + 64] = uint256(stor2[address(signer)].field_0)
    mem[(_msize + 480) + (32 * uint256(stor4[address(signer)].field_0)) + 32] = 160
    mem[(_msize + 480) + (32 * uint256(stor4[address(signer)].field_0)) + 192] = stor2[address(signer)][1].length
    mem[(_msize + 480) + (32 * uint256(stor4[address(signer)].field_0)) + 224 len ceil32(stor2[address(signer)][1].length)] = mem[416 len ceil32(stor2[address(signer)][1].length)]
    var51001 = ceil32(stor2[address(signer)][1].length)
    if not stor2[address(signer)][1].length % 32:
        mem[(_msize + 480) + (32 * uint256(stor4[address(signer)].field_0)) + 96] = stor2[address(signer)][1].length + 192
        mem[stor2[address(signer)][1].length + (_msize + 480) + (32 * uint256(stor4[address(signer)].field_0)) + 224] = mem[_msize + 480]
        mem[stor2[address(signer)][1].length + (_msize + 480) + (32 * uint256(stor4[address(signer)].field_0)) + 256 len floor32(mem[_msize + 480])] = mem[(_msize + 480) + 32 len floor32(mem[_msize + 480])]
        mem[(_msize + 480) + (32 * uint256(stor4[address(signer)].field_0)) + 128] = (32 * mem[_msize + 480]) + stor2[address(signer)][1].length + 224
        mem[(32 * mem[_msize + 480]) + stor2[address(signer)][1].length + (_msize + 480) + (32 * uint256(stor4[address(signer)].field_0)) + 256] = mem[_msize + 480]
        _4246 = mem[_msize + 480]
        mem[(32 * mem[_msize + 480]) + stor2[address(signer)][1].length + (_msize + 480) + (32 * uint256(stor4[address(signer)].field_0)) + 288 len floor32(mem[_msize + 480])] = mem[(_msize + 480) + 32 len floor32(mem[_msize + 480])]
        mem[(_msize + 480) + (32 * uint256(stor4[address(signer)].field_0)) + 160] = (32 * _4246) + (32 * mem[_msize + 480]) + stor2[address(signer)][1].length + 256
        mem[(32 * _4246) + (32 * mem[_msize + 480]) + stor2[address(signer)][1].length + (_msize + 480) + (32 * uint256(stor4[address(signer)].field_0)) + 288] = mem[_msize + 480]
        _4518 = mem[_msize + 480]
        mem[(32 * _4246) + (32 * mem[_msize + 480]) + stor2[address(signer)][1].length + (_msize + 480) + (32 * uint256(stor4[address(signer)].field_0)) + 320 len floor32(mem[_msize + 480])] = mem[(_msize + 480) + 32 len floor32(mem[_msize + 480])]
        return memory
          from (_msize + 480) + (32 * uint256(stor4[address(signer)].field_0)) + 32
           len (32 * _4518) + (32 * _4246) + (32 * mem[_msize + 480]) + stor2[address(signer)][1].length + 288
    mem[floor32(stor2[address(signer)][1].length) + (_msize + 480) + (32 * uint256(stor4[address(signer)].field_0)) + 224] = mem[floor32(stor2[address(signer)][1].length) + (_msize + 480) + (32 * uint256(stor4[address(signer)].field_0)) + -stor2[address(signer)][1].length % 32 + 256 len stor2[address(signer)][1].length % 32]
    mem[(_msize + 480) + (32 * uint256(stor4[address(signer)].field_0)) + 96] = floor32(stor2[address(signer)][1].length) + 224
    mem[floor32(stor2[address(signer)][1].length) + (_msize + 480) + (32 * uint256(stor4[address(signer)].field_0)) + 256] = mem[_msize + 480]
    mem[floor32(stor2[address(signer)][1].length) + (_msize + 480) + (32 * uint256(stor4[address(signer)].field_0)) + 288 len floor32(mem[_msize + 480])] = mem[(_msize + 480) + 32 len floor32(mem[_msize + 480])]
    mem[(_msize + 480) + (32 * uint256(stor4[address(signer)].field_0)) + 128] = (32 * mem[_msize + 480]) + floor32(stor2[address(signer)][1].length) + 256
    mem[(32 * mem[_msize + 480]) + floor32(stor2[address(signer)][1].length) + (_msize + 480) + (32 * uint256(stor4[address(signer)].field_0)) + 288] = mem[_msize + 480]
    _4249 = mem[_msize + 480]
    mem[(32 * mem[_msize + 480]) + floor32(stor2[address(signer)][1].length) + (_msize + 480) + (32 * uint256(stor4[address(signer)].field_0)) + 320 len floor32(mem[_msize + 480])] = mem[(_msize + 480) + 32 len floor32(mem[_msize + 480])]
    mem[(_msize + 480) + (32 * uint256(stor4[address(signer)].field_0)) + 160] = (32 * _4249) + (32 * mem[_msize + 480]) + floor32(stor2[address(signer)][1].length) + 288
    mem[(32 * _4249) + (32 * mem[_msize + 480]) + floor32(stor2[address(signer)][1].length) + (_msize + 480) + (32 * uint256(stor4[address(signer)].field_0)) + 320] = mem[_msize + 480]
    _4521 = mem[_msize + 480]
    mem[(32 * _4249) + (32 * mem[_msize + 480]) + floor32(stor2[address(signer)][1].length) + (_msize + 480) + (32 * uint256(stor4[address(signer)].field_0)) + 352 len floor32(mem[_msize + 480])] = mem[(_msize + 480) + 32 len floor32(mem[_msize + 480])]
    return memory
      from (_msize + 480) + (32 * uint256(stor4[address(signer)].field_0)) + 32
       len (32 * _4521) + (32 * _4249) + (32 * mem[_msize + 480]) + floor32(stor2[address(signer)][1].length) + 320
}



}
