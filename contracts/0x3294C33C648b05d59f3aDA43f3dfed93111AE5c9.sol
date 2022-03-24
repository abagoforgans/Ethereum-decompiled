contract main {


// =======================  Init code  ======================


mapping of uint8 stor1;
mapping of uint8 stor2;

function _fallback() payable {
    stor1[address(msg.sender)] = 1
    stor2[address(msg.sender)] = 1
    return code.data[154 len 4687]
}



// =====================  Runtime code  =====================


const repoInterfaceVersion = 1


uint8 stor0;
array of uint8 stor1;
mapping of uint8 stor2;
array of struct refName;
array of uint256 ref;
array of uint256 snapshot;

function snapshotCount() payable {
    return snapshot.length
}

function getSnapshot(uint256 arg1) payable {
    return snapshot[arg1][0 len snapshot[arg1].length]
}

function refCount() payable {
    return refName.length
}

function isObsolete() payable {
    return bool(stor0)
}

function refName(uint256 arg1) payable {
    return uint256(refName[arg1][0 len refName[arg1].length].field_0)
}

function getRef(string arg1) payable {
    return ref[arg1[all]][0 len ref[arg1[all]].length]
}

function _fallback() payable {
  stop
}

function sub_b2761b8e(?) payable {
    require uint8(stor1[address(msg.sender)])
    stor0 = 1
}

function sub_80c75bb2(?) payable {
    require uint8(stor1[address(msg.sender)])
    if not arg2:
        stor2[address(arg1)] = 0
    else:
        uint8(stor1[address(arg1)]) = 0
}

function authorize(address arg1, bool arg2) payable {
    require uint8(stor1[address(msg.sender)])
    stor2[address(arg1)] = 1
    if arg2:
        uint8(stor1[address(arg1)]) = 1
}

function addSnapshot(string arg1) payable {
    require stor2[address(msg.sender)]
    snapshot.length++
    if not snapshot.length <= snapshot.length + 1:
        mem[0] = 5
        idx = snapshot.length + 1
        while sha3(5) + snapshot.length > idx + sha3(mem[0]):
            uint256(stor[idx + sha3(mem[0])].field_0) = 0
            if 31 < stor[idx + sha3(mem[0])].length:
                mem[0] = idx + sha3(mem[0])
                s = sha3(idx + sha3(mem[0]))
                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > s:
                    uint256(stor[s].field_0) = 0
                    s = s + 1
                    continue 
            idx = idx + 1
            continue 
    snapshot[snapshot.length][] = Array(len=arg1.length, data=arg1[all])
}

function deleteRef(string arg1) payable {
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[0] = msg.sender
    mem[32] = 2
    require stor2[address(msg.sender)]
    idx = 0
    while uint8(idx) < refName.length:
        mem[0] = 3
        _139 = mem[64]
        mem[64] = mem[64] + ceil32(refName[uint8(idx)].length) + 32
        mem[_139] = refName[uint8(idx)].length
        mem[0] = uint8(idx) + sha3(3)
        mem[_139 + 32] = uint256(refName[uint8(idx)].field_0)
        s = _139 + 32
        t = sha3(mem[0])
        while _139 + refName[uint8(idx)].length > s:
            mem[s + 32] = uint256(stor1[t])
            s = s + 32
            t = t + 1
            continue 
        _320 = mem[96]
        mem[mem[64] len mem[96]] = mem[128 len mem[96]]
        _322 = sha3(mem[mem[64] len _320])
        _324 = mem[_139]
        mem[mem[64] len mem[_139]] = mem[_139 + 32 len mem[_139]]
        if sha3(mem[mem[64] len _324]) != _322:
            idx = idx + 1
            continue 
        if uint8(idx) == -1:
            _365 = mem[64]
            mem[64] = mem[64] + 32
            mem[_365] = 0
            _367 = mem[96]
            mem[mem[64] len mem[96]] = mem[128 len mem[96]]
            mem[_367 + mem[64]] = 4
            _369 = sha3(mem[mem[64] len _367 + 32])
            mem[0] = sha3(mem[mem[64] len _367 + 32])
            bool(stor[_369].field_0) = 0
            uint255(stor[_369].field_1) = 0
            Mask(248, 0, stor[_369].field_8) = mem[_365 + 32 len 31]
            idx = sha3(mem[0])
            while sha3(mem[0]) + (stor[_369].length + 31 / 32) > idx:
                uint256(stor[idx].field_0) = 0
                idx = idx + 1
                continue 
        else:
            _372 = mem[64]
            mem[64] = mem[64] + 32
            mem[_372] = 0
            require uint8(idx) < refName.length
            mem[0] = uint8(idx) + sha3(3)
            bool(refName[uint8(idx)].field_0) = 0
            uint255(refName[uint8(idx)].field_1) = 0
            Mask(248, 0, refName[uint8(idx)].field_8) = mem[_372 + 32 len 31]
            s = sha3(uint8(idx) + sha3(3))
            while sha3(uint8(idx) + sha3(3)) + (refName[uint8(idx)].length + 31 / 32) > s:
                uint256(stor[s].field_0) = 0
                s = s + 1
                continue 
            _429 = mem[64]
            mem[64] = mem[64] + 32
            mem[_429] = 0
            _430 = mem[64]
            _431 = mem[96]
            mem[mem[64] len mem[96]] = mem[128 len mem[96]]
            mem[_431 + mem[64]] = 4
            _433 = sha3(mem[mem[64] len _431 + _430 + -mem[64] + 32])
            mem[0] = sha3(mem[mem[64] len _431 + _430 + -mem[64] + 32])
            bool(stor[_433].field_0) = 0
            uint255(stor[_433].field_1) = 0
            Mask(248, 0, stor[_433].field_8) = mem[_429 + 32 len 31]
            idx = sha3(mem[0])
            while sha3(mem[0]) + (stor[_433].length + 31 / 32) > idx:
                uint256(stor[idx].field_0) = 0
                idx = idx + 1
                continue 
    _140 = mem[64]
    mem[64] = mem[64] + 32
    mem[_140] = 0
    _142 = mem[96]
    mem[mem[64] len mem[96]] = mem[128 len mem[96]]
    mem[_142 + mem[64]] = 4
    _144 = sha3(mem[mem[64] len _142 + 32])
    mem[0] = sha3(mem[mem[64] len _142 + 32])
    bool(stor[_144].field_0) = 0
    uint255(stor[_144].field_1) = 0
    Mask(248, 0, stor[_144].field_8) = mem[_140 + 32 len 31]
    idx = 0
    while stor[_144].length + 31 / 32 > idx:
        uint256(stor[idx + sha3(mem[0])].field_0) = 0
        idx = idx + 1
        continue 
}

function setRef(string arg1, string arg2) payable {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[64] = ceil32(arg1.length) + ceil32(arg2.length) + 160
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[0] = msg.sender
    mem[32] = 2
    require stor2[address(msg.sender)]
    idx = 0
    while uint8(idx) < refName.length:
        mem[0] = 3
        _116 = mem[64]
        mem[64] = mem[64] + ceil32(refName[uint8(idx)].length) + 32
        mem[_116] = refName[uint8(idx)].length
        mem[0] = uint8(idx) + sha3(3)
        mem[_116 + 32] = uint256(refName[uint8(idx)].field_0)
        s = _116 + 32
        t = sha3(mem[0])
        while _116 + refName[uint8(idx)].length > s:
            mem[s + 32] = uint256(stor1[t])
            s = s + 32
            t = t + 1
            continue 
        _441 = mem[96]
        mem[mem[64] len mem[96]] = mem[128 len mem[96]]
        _443 = sha3(mem[mem[64] len _441])
        _445 = mem[_116]
        mem[mem[64] len mem[_116]] = mem[_116 + 32 len mem[_116]]
        if sha3(mem[mem[64] len _445]) != _443:
            idx = idx + 1
            continue 
        if uint8(idx) != -1:
            _506 = mem[64]
            _507 = mem[96]
            mem[mem[64] len mem[96]] = mem[128 len mem[96]]
            mem[_507 + mem[64]] = 4
            _509 = sha3(mem[mem[64] len _507 + _506 + -mem[64] + 32])
            mem[0] = sha3(mem[mem[64] len _507 + _506 + -mem[64] + 32])
            uint256(stor[_509].field_0) = (2 * mem[ceil32(arg1.length) + 128]) + 1
            s = sha3(mem[0])
            idx = ceil32(arg1.length) + 160
            while ceil32(arg1.length) + mem[ceil32(arg1.length) + 128] + 160 > idx:
                uint256(stor[s].field_0) = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = sha3(mem[0]) + (Mask(251, 0, mem[ceil32(arg1.length) + 128] + 31) >> 5)
            while sha3(mem[0]) + (stor[_509].length + 31 / 32) > idx:
                uint256(stor[idx].field_0) = 0
                idx = idx + 1
                continue 
        else:
            refName.length++
            if not refName.length > refName.length + 1:
                uint256(refName[refName.length].field_0) = (2 * mem[96]) + 1
                s = sha3(refName.length + sha3(3))
                idx = 128
                while mem[96] + 128 > idx:
                    uint256(stor[s].field_0) = mem[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = sha3(refName.length + sha3(3)) + (Mask(251, 0, mem[96] + 31) >> 5)
                while sha3(refName.length + sha3(3)) + (refName[refName.length].length + 31 / 32) > idx:
                    uint256(stor[idx].field_0) = 0
                    idx = idx + 1
                    continue 
                _834 = mem[64]
                _835 = mem[96]
                mem[mem[64] len mem[96]] = mem[128 len mem[96]]
                mem[_835 + mem[64]] = 4
                _837 = sha3(mem[mem[64] len _835 + _834 + -mem[64] + 32])
                mem[0] = sha3(mem[mem[64] len _835 + _834 + -mem[64] + 32])
                uint256(stor[_837].field_0) = (2 * mem[ceil32(arg1.length) + 128]) + 1
                s = sha3(mem[0])
                idx = ceil32(arg1.length) + 160
                while ceil32(arg1.length) + mem[ceil32(arg1.length) + 128] + 160 > idx:
                    uint256(stor[s].field_0) = mem[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = sha3(mem[0]) + (Mask(251, 0, mem[ceil32(arg1.length) + 128] + 31) >> 5)
                while sha3(mem[0]) + (stor[_837].length + 31 / 32) > idx:
                    uint256(stor[idx].field_0) = 0
                    idx = idx + 1
                    continue 
            else:
                mem[0] = 3
                idx = sha3(mem[0]) + refName.length + 1
                while sha3(3) + refName.length > idx:
                    uint256(stor[idx].field_0) = 0
                    if 31 < stor[idx].length:
                        mem[0] = idx
                        s = sha3(idx)
                        while sha3(idx) + (stor[idx].length + 31 / 32) > s:
                            uint256(stor[s].field_0) = 0
                            s = s + 1
                            continue 
                    idx = idx + 1
                    continue 
                uint256(refName[refName.length].field_0) = (2 * mem[96]) + 1
                s = sha3(refName.length + sha3(3))
                idx = 128
                while mem[96] + 128 > idx:
                    uint256(stor[s].field_0) = mem[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = sha3(refName.length + sha3(3)) + (Mask(251, 0, mem[96] + 31) >> 5)
                while sha3(refName.length + sha3(3)) + (refName[refName.length].length + 31 / 32) > idx:
                    uint256(stor[idx].field_0) = 0
                    idx = idx + 1
                    continue 
                _885 = mem[96]
                mem[mem[64] len mem[96]] = mem[128 len mem[96]]
                mem[_885 + mem[64]] = 4
                _887 = sha3(mem[mem[64] len _885 + 32])
                mem[0] = sha3(mem[mem[64] len _885 + 32])
                uint256(stor[_887].field_0) = (2 * mem[ceil32(arg1.length) + 128]) + 1
                s = sha3(mem[0])
                idx = ceil32(arg1.length) + 160
                while ceil32(arg1.length) + mem[ceil32(arg1.length) + 128] + 160 > idx:
                    uint256(stor[s].field_0) = mem[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = sha3(mem[0]) + (Mask(251, 0, mem[ceil32(arg1.length) + 128] + 31) >> 5)
                while sha3(mem[0]) + (stor[_887].length + 31 / 32) > idx:
                    uint256(stor[idx].field_0) = 0
                    idx = idx + 1
                    continue 
    refName.length++
    if not refName.length > refName.length + 1:
        uint256(refName[refName.length][].field_0) = Array(len=mem[96], data=mem[128 len mem[96]])
        _662 = mem[96]
        mem[mem[64] len mem[96]] = mem[128 len mem[96]]
        mem[_662 + mem[64]] = 4
        _664 = sha3(mem[mem[64] len _662 + 32])
        uint256(stor[sha3(_664)][].field_0) = Array(len=mem[ceil32(arg1.length) + 128], data=mem[ceil32(arg1.length) + 160 len mem[ceil32(arg1.length) + 128]])
    else:
        mem[0] = 3
        idx = refName.length + 1
        while sha3(3) + refName.length > idx + sha3(mem[0]):
            uint256(stor[idx + sha3(mem[0])].field_0) = 0
            if 31 < stor[idx + sha3(mem[0])].length:
                mem[0] = idx + sha3(mem[0])
                s = sha3(idx + sha3(mem[0]))
                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > s:
                    uint256(stor[s].field_0) = 0
                    s = s + 1
                    continue 
            idx = idx + 1
            continue 
        uint256(refName[refName.length][].field_0) = Array(len=mem[96], data=mem[128 len mem[96]])
        _822 = mem[64]
        _823 = mem[96]
        mem[mem[64] len mem[96]] = mem[128 len mem[96]]
        mem[_823 + mem[64]] = 4
        _825 = sha3(mem[mem[64] len _823 + _822 + -mem[64] + 32])
        uint256(stor[sha3(_825)][].field_0) = Array(len=mem[ceil32(arg1.length) + 128], data=mem[ceil32(arg1.length) + 160 len mem[ceil32(arg1.length) + 128]])
}



}
