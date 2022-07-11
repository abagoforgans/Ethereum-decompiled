contract main {




// =====================  Runtime code  =====================


#
#  - sub_312aa825(?)
#  - sub_40e870e0(?)
#  - sub_c9f9d4ab(?)
#  - sub_dc072b95(?)
#  - sub_dd27efe2(?)
#  - sub_fff4bcc6(?)
#
uint8 stor0;
address stor0;
address deployerAddress; offset 8
address operatorAddress;

function sub_2f013a00(?) {
    return bool(uint8(stor0.field_0))
}

function destructor() {
    return deployerAddress
}

function operator() {
    return operatorAddress
}

function deployer() {
    return deployerAddress
}

function triggerSelfDestruction() {
    require deployerAddress == msg.sender
    require not uint8(stor0.field_0)
    emit TriggerSelfDestructionEvent(msg.sender);
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert
}

function hashAddress(address arg1) {
    require calldata.size - 4 >= 32
    return sha3(arg1)
}

function hashUint256(uint256 arg1) {
    require calldata.size - 4 >= 32
    return sha3(arg1)
}

function sub_15c74fe7(?) {
    require calldata.size - 4 >= 96
    require calldata.size - 36 >= 64
    return sha3(arg1, arg2, arg3)
}

function disableSelfDestruction() {
    require deployerAddress == msg.sender
    uint8(stor0.field_0) = 1
    emit SelfDestructionDisabledEvent(msg.sender);
}

function setOperator(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == operatorAddress
    require arg1
    require arg1 != this.address
    if operatorAddress != arg1:
        operatorAddress = arg1
        emit SetOperatorEvent(operatorAddress, arg1);
}

function setDeployer(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == deployerAddress
    require arg1
    require arg1 != this.address
    if deployerAddress != arg1:
        deployerAddress = arg1
        emit SetDeployerEvent(address(stor0.field_0), arg1);
}

function sub_f988ea12(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size > cd[4] + 35
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= test266151307()
    mem[64] = (32 * ('cd', 4).length) + 128
    mem[96] = ('cd', 4).length
    require cd[4] + (128 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require calldata.size - s >= 128
        _34 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        mem[_34] = cd[s]
        require calldata.size + -s - 32 >= 96
        _64 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        mem[_64] = cd[(s + 32)]
        require calldata.size + -s - 64 >= 64
        _65 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        mem[_65] = address(cd[(s + 64)])
        mem[_65 + 32] = cd[(s + 96)]
        mem[_64 + 32] = _65
        mem[_34 + 32] = _64
        mem[t] = _34
        idx = idx + 1
        s = s + 128
        t = t + 32
        continue 
    _66 = mem[96]
    idx = 0
    s = 0
    while idx < _66:
        require idx < mem[96]
        _70 = mem[mem[(32 * idx) + 128]]
        require idx < mem[96]
        _74 = mem[mem[mem[(32 * idx) + 128] + 32]]
        require idx < mem[96]
        _79 = mem[mem[mem[mem[(32 * idx) + 128] + 32] + 32]]
        require idx < mem[96]
        _84 = mem[mem[mem[mem[(32 * idx) + 128] + 32] + 32] + 32]
        _85 = mem[64]
        mem[mem[64] + 32] = s
        mem[mem[64] + 64] = _70
        mem[mem[64] + 96] = _74
        mem[mem[64] + 128] = address(_79)
        mem[mem[64] + 148] = _84
        _86 = mem[64]
        mem[mem[64]] = 148
        mem[64] = mem[64] + 180
        _88 = mem[_86]
        t = _86 + 32
        u = mem[64]
        s = mem[_86]
        while s >= 32:
            mem[u] = mem[t]
            _66 = mem[96]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[mem[64] + floor32(mem[_86])] = mem[mem[64] + floor32(mem[_86])] and 256^(-(mem[_86] % 32) + 32) - 1 or mem[_86 + floor32(mem[_86]) + 32] and !(256^(-(mem[_86] % 32) + 32) - 1)
        _66 = mem[96]
        idx = idx + 1
        s = sha3(mem[mem[64] len _85 + _88 + -mem[64] + 180])
        continue 
    return s
}

function sub_a9b03a6f(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size + -cd[4] - 4 >= 576
    mem[96] = ('cd', 4).length
    mem[128] = ('cd', 4)[0]
    require calldata.size + -cd[4] - 68 >= 64
    mem[384] = address(('cd', 4)[1])
    mem[416] = ('cd', 4)[2]
    mem[160] = 384
    require ('cd', 4)[3] <= test266151307()
    require calldata.size + -cd[4] + -('cd', 4)[3] - 4 >= 160
    mem[448] = cd[(cd[4] + ('cd', 4)[3] + 4)]
    mem[480] = address(cd[(cd[4] + ('cd', 4)[3] + 36)])
    require calldata.size + -cd[4] + -('cd', 4)[3] - 68 >= 64
    mem[576] = cd[(cd[4] + ('cd', 4)[3] + 68)]
    mem[608] = cd[(cd[4] + ('cd', 4)[3] + 100)]
    mem[512] = 576
    require cd[(cd[4] + ('cd', 4)[3] + 132)] <= test266151307()
    require calldata.size + -cd[4] + -('cd', 4)[3] + -cd[(cd[4] + ('cd', 4)[3] + 132)] - 4 >= 128
    require calldata.size + -cd[4] + -('cd', 4)[3] + -cd[(cd[4] + ('cd', 4)[3] + 132)] - 4 >= 96
    mem[704] = cd[(cd[4] + ('cd', 4)[3] + cd[(cd[4] + ('cd', 4)[3] + 132)] + 4)]
    require calldata.size + -cd[4] + -('cd', 4)[3] + -cd[(cd[4] + ('cd', 4)[3] + 132)] - 36 >= 64
    mem[768] = address(cd[(cd[4] + ('cd', 4)[3] + cd[(cd[4] + ('cd', 4)[3] + 132)] + 36)])
    mem[800] = cd[(cd[4] + ('cd', 4)[3] + cd[(cd[4] + ('cd', 4)[3] + 132)] + 68)]
    mem[736] = 768
    mem[640] = 704
    require cd[(cd[4] + ('cd', 4)[3] + cd[(cd[4] + ('cd', 4)[3] + 132)] + 100)] <= test266151307()
    require calldata.size > cd[4] + ('cd', 4)[3] + cd[(cd[4] + ('cd', 4)[3] + 132)] + cd[(cd[4] + ('cd', 4)[3] + cd[(cd[4] + ('cd', 4)[3] + 132)] + 100)] + 35
    require cd[(cd[4] + ('cd', 4)[3] + cd[(cd[4] + ('cd', 4)[3] + 132)] + cd[(cd[4] + ('cd', 4)[3] + cd[(cd[4] + ('cd', 4)[3] + 132)] + 100)] + 4)] <= test266151307()
    require (32 * cd[(cd[4] + ('cd', 4)[3] + cd[(cd[4] + ('cd', 4)[3] + 132)] + cd[(cd[4] + ('cd', 4)[3] + cd[(cd[4] + ('cd', 4)[3] + 132)] + 100)] + 4)]) + 864 >= 832 and (32 * cd[(cd[4] + ('cd', 4)[3] + cd[(cd[4] + ('cd', 4)[3] + 132)] + cd[(cd[4] + ('cd', 4)[3] + cd[(cd[4] + ('cd', 4)[3] + 132)] + 100)] + 4)]) + 864 <= test266151307()
    mem[64] = (32 * cd[(cd[4] + ('cd', 4)[3] + cd[(cd[4] + ('cd', 4)[3] + 132)] + cd[(cd[4] + ('cd', 4)[3] + cd[(cd[4] + ('cd', 4)[3] + 132)] + 100)] + 4)]) + 864
    mem[832] = cd[(cd[4] + ('cd', 4)[3] + cd[(cd[4] + ('cd', 4)[3] + 132)] + cd[(cd[4] + ('cd', 4)[3] + cd[(cd[4] + ('cd', 4)[3] + 132)] + 100)] + 4)]
    require cd[4] + ('cd', 4)[3] + cd[(cd[4] + ('cd', 4)[3] + 132)] + cd[(cd[4] + ('cd', 4)[3] + cd[(cd[4] + ('cd', 4)[3] + 132)] + 100)] + (128 * cd[(cd[4] + ('cd', 4)[3] + cd[(cd[4] + ('cd', 4)[3] + 132)] + cd[(cd[4] + ('cd', 4)[3] + cd[(cd[4] + ('cd', 4)[3] + 132)] + 100)] + 4)]) + 36 <= calldata.size
    idx = 0
    s = cd[4] + ('cd', 4)[3] + cd[(cd[4] + ('cd', 4)[3] + 132)] + cd[(cd[4] + ('cd', 4)[3] + cd[(cd[4] + ('cd', 4)[3] + 132)] + 100)] + 36
    t = 864
    while idx < cd[(cd[4] + ('cd', 4)[3] + cd[(cd[4] + ('cd', 4)[3] + 132)] + cd[(cd[4] + ('cd', 4)[3] + cd[(cd[4] + ('cd', 4)[3] + 132)] + 100)] + 4)]:
        require calldata.size - s >= 128
        _23 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        mem[_23] = cd[s]
        require calldata.size + -s - 32 >= 96
        _25 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        mem[_25] = cd[(s + 32)]
        require calldata.size + -s - 64 >= 64
        _27 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        mem[_27] = address(cd[(s + 64)])
        mem[_27 + 32] = cd[(s + 96)]
        mem[_25 + 32] = _27
        mem[_23 + 32] = _25
        mem[t] = _23
        idx = idx + 1
        s = s + 128
        t = t + 32
        continue 
    mem[672] = 832
    mem[544] = 640
    mem[192] = 448
    require ('cd', 4)[4] <= test266151307()
    require calldata.size + -cd[4] + -('cd', 4)[4] - 4 >= 160
    _24 = mem[64]
    require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
    mem[64] = mem[64] + 128
    mem[_24] = cd[(cd[4] + ('cd', 4)[4] + 4)]
    mem[_24 + 32] = address(cd[(cd[4] + ('cd', 4)[4] + 36)])
    require calldata.size + -cd[4] + -('cd', 4)[4] - 68 >= 64
    _26 = mem[64]
    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
    mem[64] = mem[64] + 64
    mem[_26] = cd[(cd[4] + ('cd', 4)[4] + 68)]
    mem[_26 + 32] = cd[(cd[4] + ('cd', 4)[4] + 100)]
    mem[_24 + 64] = _26
    require cd[(cd[4] + ('cd', 4)[4] + 132)] <= test266151307()
    require calldata.size + -cd[4] + -('cd', 4)[4] + -cd[(cd[4] + ('cd', 4)[4] + 132)] - 4 >= 32
    _28 = mem[64]
    require mem[64] + 32 >= mem[64] and mem[64] + 32 <= test266151307()
    mem[64] = mem[64] + 32
    require cd[(cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + 132)] + 4)] <= test266151307()
    require calldata.size > cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + 132)] + cd[(cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + 132)] + 4)] + 35
    require cd[(cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + 132)] + cd[(cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + 132)] + 4)] + 4)] <= test266151307()
    _29 = mem[64]
    require mem[64] + (32 * cd[(cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + 132)] + cd[(cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + 132)] + 4)] + 4)]) + 32 >= mem[64] and mem[64] + (32 * cd[(cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + 132)] + cd[(cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + 132)] + 4)] + 4)]) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * cd[(cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + 132)] + cd[(cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + 132)] + 4)] + 4)]) + 32
    mem[_29] = cd[(cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + 132)] + cd[(cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + 132)] + 4)] + 4)]
    require cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + 132)] + cd[(cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + 132)] + 4)] + (128 * cd[(cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + 132)] + cd[(cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + 132)] + 4)] + 4)]) + 36 <= calldata.size
    idx = 0
    s = cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + 132)] + cd[(cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + 132)] + 4)] + 36
    t = _29 + 32
    while idx < cd[(cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + 132)] + cd[(cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + 132)] + 4)] + 4)]:
        require calldata.size - s >= 128
        _62 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        mem[_62] = cd[s]
        require calldata.size + -s - 32 >= 96
        _64 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        mem[_64] = cd[(s + 32)]
        require calldata.size + -s - 64 >= 64
        _66 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        mem[_66] = address(cd[(s + 64)])
        mem[_66 + 32] = cd[(s + 96)]
        mem[_64 + 32] = _66
        mem[_62 + 32] = _64
        mem[t] = _62
        idx = idx + 1
        s = s + 128
        t = t + 32
        continue 
    mem[_28] = _29
    mem[_24 + 96] = _28
    mem[224] = _24
    require calldata.size + -cd[4] - 196 >= 64
    _63 = mem[64]
    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
    mem[64] = mem[64] + 64
    mem[_63] = ('cd', 4)[5]
    mem[_63 + 32] = ('cd', 4)[6]
    mem[256] = _63
    require calldata.size + -cd[4] - 260 >= 256
    _65 = mem[64]
    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
    mem[64] = mem[64] + 64
    require calldata.size + -cd[4] - 260 >= 128
    _67 = mem[64]
    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
    mem[64] = mem[64] + 64
    mem[_67] = ('cd', 4)[7]
    require calldata.size + -cd[4] - 292 >= 96
    _68 = mem[64]
    require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
    mem[64] = mem[64] + 96
    mem[_68] = ('cd', 4)[8]
    mem[_68 + 32] = ('cd', 4)[9]
    mem[_68 + 64] = uint8(('cd', 4)[10])
    mem[_67 + 32] = _68
    mem[_65] = _67
    require calldata.size + -cd[4] - 388 >= 128
    _69 = mem[64]
    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
    mem[64] = mem[64] + 64
    mem[_69] = ('cd', 4)[11]
    require calldata.size + -cd[4] - 420 >= 96
    _70 = mem[64]
    require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
    mem[64] = mem[64] + 96
    mem[_70] = ('cd', 4)[12]
    mem[_70 + 32] = ('cd', 4)[13]
    mem[_70 + 64] = uint8(('cd', 4)[14])
    mem[_69 + 32] = _70
    mem[_65 + 32] = _69
    mem[288] = _65
    mem[320] = ('cd', 4)[15]
    mem[352] = ('cd', 4)[16]
    _73 = mem[mem[160]]
    _75 = mem[mem[160] + 32]
    _76 = mem[64]
    mem[mem[64] + 32] = mem[128]
    mem[mem[64] + 64] = address(_73)
    mem[mem[64] + 84] = _75
    _77 = mem[64]
    mem[mem[64]] = 84
    mem[64] = mem[64] + 116
    _79 = mem[_77]
    if mem[_77] < 32:
        mem[_76 + 116] = mem[_76 + 116] and 256^(-mem[_77] + 32) - 1 or mem[_77 + 32] and !(256^(-mem[_77] + 32) - 1)
    else:
        mem[_76 + 116] = mem[_77 + 32]
        mem[_76 + 148 len floor32(_79 - 32)] = mem[_77 + 64 len floor32(_79 - 32)]
        mem[_76 + floor32(_79 - 32) + 148] = mem[_76 + floor32(_79 - 32) + 148] and 256^(-_79 + floor32(_79 - 32) + 64) - 1 or mem[_77 + floor32(_79 - 32) + 64] and !(256^(-_79 + floor32(_79 - 32) + 64) - 1)
    mem[_76 + 116] = sha3(mem[_76 + 116 len _79])
    return memory
      from _76 + 116
       len 32
}

function sub_33bc8735(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size + -cd[4] - 4 >= 576
    mem[96] = ('cd', 4).length
    mem[128] = ('cd', 4)[0]
    require calldata.size + -cd[4] - 68 >= 64
    mem[384] = address(('cd', 4)[1])
    mem[416] = ('cd', 4)[2]
    mem[160] = 384
    require ('cd', 4)[3] <= test266151307()
    require calldata.size + -cd[4] + -('cd', 4)[3] - 4 >= 160
    mem[448] = cd[(cd[4] + ('cd', 4)[3] + 4)]
    mem[480] = address(cd[(cd[4] + ('cd', 4)[3] + 36)])
    require calldata.size + -cd[4] + -('cd', 4)[3] - 68 >= 64
    mem[576] = cd[(cd[4] + ('cd', 4)[3] + 68)]
    mem[608] = cd[(cd[4] + ('cd', 4)[3] + 100)]
    mem[512] = 576
    require cd[(cd[4] + ('cd', 4)[3] + 132)] <= test266151307()
    require calldata.size + -cd[4] + -('cd', 4)[3] + -cd[(cd[4] + ('cd', 4)[3] + 132)] - 4 >= 128
    require calldata.size + -cd[4] + -('cd', 4)[3] + -cd[(cd[4] + ('cd', 4)[3] + 132)] - 4 >= 96
    mem[704] = cd[(cd[4] + ('cd', 4)[3] + cd[(cd[4] + ('cd', 4)[3] + 132)] + 4)]
    require calldata.size + -cd[4] + -('cd', 4)[3] + -cd[(cd[4] + ('cd', 4)[3] + 132)] - 36 >= 64
    mem[768] = address(cd[(cd[4] + ('cd', 4)[3] + cd[(cd[4] + ('cd', 4)[3] + 132)] + 36)])
    mem[800] = cd[(cd[4] + ('cd', 4)[3] + cd[(cd[4] + ('cd', 4)[3] + 132)] + 68)]
    mem[736] = 768
    mem[640] = 704
    require cd[(cd[4] + ('cd', 4)[3] + cd[(cd[4] + ('cd', 4)[3] + 132)] + 100)] <= test266151307()
    require calldata.size > cd[4] + ('cd', 4)[3] + cd[(cd[4] + ('cd', 4)[3] + 132)] + cd[(cd[4] + ('cd', 4)[3] + cd[(cd[4] + ('cd', 4)[3] + 132)] + 100)] + 35
    require cd[(cd[4] + ('cd', 4)[3] + cd[(cd[4] + ('cd', 4)[3] + 132)] + cd[(cd[4] + ('cd', 4)[3] + cd[(cd[4] + ('cd', 4)[3] + 132)] + 100)] + 4)] <= test266151307()
    require (32 * cd[(cd[4] + ('cd', 4)[3] + cd[(cd[4] + ('cd', 4)[3] + 132)] + cd[(cd[4] + ('cd', 4)[3] + cd[(cd[4] + ('cd', 4)[3] + 132)] + 100)] + 4)]) + 864 >= 832 and (32 * cd[(cd[4] + ('cd', 4)[3] + cd[(cd[4] + ('cd', 4)[3] + 132)] + cd[(cd[4] + ('cd', 4)[3] + cd[(cd[4] + ('cd', 4)[3] + 132)] + 100)] + 4)]) + 864 <= test266151307()
    mem[64] = (32 * cd[(cd[4] + ('cd', 4)[3] + cd[(cd[4] + ('cd', 4)[3] + 132)] + cd[(cd[4] + ('cd', 4)[3] + cd[(cd[4] + ('cd', 4)[3] + 132)] + 100)] + 4)]) + 864
    mem[832] = cd[(cd[4] + ('cd', 4)[3] + cd[(cd[4] + ('cd', 4)[3] + 132)] + cd[(cd[4] + ('cd', 4)[3] + cd[(cd[4] + ('cd', 4)[3] + 132)] + 100)] + 4)]
    require cd[4] + ('cd', 4)[3] + cd[(cd[4] + ('cd', 4)[3] + 132)] + cd[(cd[4] + ('cd', 4)[3] + cd[(cd[4] + ('cd', 4)[3] + 132)] + 100)] + (128 * cd[(cd[4] + ('cd', 4)[3] + cd[(cd[4] + ('cd', 4)[3] + 132)] + cd[(cd[4] + ('cd', 4)[3] + cd[(cd[4] + ('cd', 4)[3] + 132)] + 100)] + 4)]) + 36 <= calldata.size
    idx = 0
    s = cd[4] + ('cd', 4)[3] + cd[(cd[4] + ('cd', 4)[3] + 132)] + cd[(cd[4] + ('cd', 4)[3] + cd[(cd[4] + ('cd', 4)[3] + 132)] + 100)] + 36
    t = 864
    while idx < cd[(cd[4] + ('cd', 4)[3] + cd[(cd[4] + ('cd', 4)[3] + 132)] + cd[(cd[4] + ('cd', 4)[3] + cd[(cd[4] + ('cd', 4)[3] + 132)] + 100)] + 4)]:
        require calldata.size - s >= 128
        _23 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        mem[_23] = cd[s]
        require calldata.size + -s - 32 >= 96
        _25 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        mem[_25] = cd[(s + 32)]
        require calldata.size + -s - 64 >= 64
        _27 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        mem[_27] = address(cd[(s + 64)])
        mem[_27 + 32] = cd[(s + 96)]
        mem[_25 + 32] = _27
        mem[_23 + 32] = _25
        mem[t] = _23
        idx = idx + 1
        s = s + 128
        t = t + 32
        continue 
    mem[672] = 832
    mem[544] = 640
    mem[192] = 448
    require ('cd', 4)[4] <= test266151307()
    require calldata.size + -cd[4] + -('cd', 4)[4] - 4 >= 160
    _24 = mem[64]
    require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
    mem[64] = mem[64] + 128
    mem[_24] = cd[(cd[4] + ('cd', 4)[4] + 4)]
    mem[_24 + 32] = address(cd[(cd[4] + ('cd', 4)[4] + 36)])
    require calldata.size + -cd[4] + -('cd', 4)[4] - 68 >= 64
    _26 = mem[64]
    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
    mem[64] = mem[64] + 64
    mem[_26] = cd[(cd[4] + ('cd', 4)[4] + 68)]
    mem[_26 + 32] = cd[(cd[4] + ('cd', 4)[4] + 100)]
    mem[_24 + 64] = _26
    require cd[(cd[4] + ('cd', 4)[4] + 132)] <= test266151307()
    require calldata.size + -cd[4] + -('cd', 4)[4] + -cd[(cd[4] + ('cd', 4)[4] + 132)] - 4 >= 32
    _28 = mem[64]
    require mem[64] + 32 >= mem[64] and mem[64] + 32 <= test266151307()
    mem[64] = mem[64] + 32
    require cd[(cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + 132)] + 4)] <= test266151307()
    require calldata.size > cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + 132)] + cd[(cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + 132)] + 4)] + 35
    require cd[(cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + 132)] + cd[(cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + 132)] + 4)] + 4)] <= test266151307()
    _29 = mem[64]
    require mem[64] + (32 * cd[(cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + 132)] + cd[(cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + 132)] + 4)] + 4)]) + 32 >= mem[64] and mem[64] + (32 * cd[(cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + 132)] + cd[(cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + 132)] + 4)] + 4)]) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * cd[(cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + 132)] + cd[(cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + 132)] + 4)] + 4)]) + 32
    mem[_29] = cd[(cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + 132)] + cd[(cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + 132)] + 4)] + 4)]
    require cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + 132)] + cd[(cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + 132)] + 4)] + (128 * cd[(cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + 132)] + cd[(cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + 132)] + 4)] + 4)]) + 36 <= calldata.size
    idx = 0
    s = cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + 132)] + cd[(cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + 132)] + 4)] + 36
    t = _29 + 32
    while idx < cd[(cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + 132)] + cd[(cd[4] + ('cd', 4)[4] + cd[(cd[4] + ('cd', 4)[4] + 132)] + 4)] + 4)]:
        require calldata.size - s >= 128
        _234 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        mem[_234] = cd[s]
        require calldata.size + -s - 32 >= 96
        _236 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        mem[_236] = cd[(s + 32)]
        require calldata.size + -s - 64 >= 64
        _238 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        mem[_238] = address(cd[(s + 64)])
        mem[_238 + 32] = cd[(s + 96)]
        mem[_236 + 32] = _238
        mem[_234 + 32] = _236
        mem[t] = _234
        idx = idx + 1
        s = s + 128
        t = t + 32
        continue 
    mem[_28] = _29
    mem[_24 + 96] = _28
    mem[224] = _24
    require calldata.size + -cd[4] - 196 >= 64
    _235 = mem[64]
    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
    mem[64] = mem[64] + 64
    mem[_235] = ('cd', 4)[5]
    mem[_235 + 32] = ('cd', 4)[6]
    mem[256] = _235
    require calldata.size + -cd[4] - 260 >= 256
    _237 = mem[64]
    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
    mem[64] = mem[64] + 64
    require calldata.size + -cd[4] - 260 >= 128
    _239 = mem[64]
    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
    mem[64] = mem[64] + 64
    mem[_239] = ('cd', 4)[7]
    require calldata.size + -cd[4] - 292 >= 96
    _240 = mem[64]
    require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
    mem[64] = mem[64] + 96
    mem[_240] = ('cd', 4)[8]
    mem[_240 + 32] = ('cd', 4)[9]
    mem[_240 + 64] = uint8(('cd', 4)[10])
    mem[_239 + 32] = _240
    mem[_237] = _239
    require calldata.size + -cd[4] - 388 >= 128
    _241 = mem[64]
    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
    mem[64] = mem[64] + 64
    mem[_241] = ('cd', 4)[11]
    require calldata.size + -cd[4] - 420 >= 96
    _242 = mem[64]
    require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
    mem[64] = mem[64] + 96
    mem[_242] = ('cd', 4)[12]
    mem[_242 + 32] = ('cd', 4)[13]
    mem[_242 + 64] = uint8(('cd', 4)[14])
    mem[_241 + 32] = _242
    mem[_237 + 32] = _241
    mem[288] = _237
    mem[320] = ('cd', 4)[15]
    mem[352] = ('cd', 4)[16]
    _245 = mem[mem[160]]
    _247 = mem[mem[160] + 32]
    _248 = mem[64]
    mem[mem[64] + 32] = mem[128]
    mem[mem[64] + 64] = address(_245)
    mem[mem[64] + 84] = _247
    _249 = mem[64]
    mem[mem[64]] = 84
    mem[64] = mem[64] + 116
    _251 = mem[_249]
    if mem[_249] < 32:
        mem[_248 + 116] = mem[_248 + 116] and 256^(-mem[_249] + 32) - 1 or mem[_249 + 32] and !(256^(-mem[_249] + 32) - 1)
        _255 = sha3(mem[_248 + 116 len _251])
        mem[_248 + 148] = address(mem[mem[192] + 32])
        mem[_248 + 116] = 20
        mem[64] = _248 + 168
        mem[_248 + 168 len 20] = mem[_248 + 148 len 20]
        mem[_248 + 200] = address(mem[_24 + 32])
        return sha3(_255, sha3(mem[_248 + 148 len 20]), sha3(mem[_248 + 200 len 20]))
    mem[_248 + 116] = mem[_249 + 32]
    mem[_248 + 148 len floor32(_251 - 32)] = mem[_249 + 64 len floor32(_251 - 32)]
    mem[_248 + floor32(_251 - 32) + 148] = mem[_248 + floor32(_251 - 32) + 148] and 256^(-_251 + floor32(_251 - 32) + 64) - 1 or mem[_249 + floor32(_251 - 32) + 64] and !(256^(-_251 + floor32(_251 - 32) + 64) - 1)
    _456 = sha3(mem[_248 + 116 len _251])
    mem[_248 + 148] = address(mem[mem[192] + 32])
    mem[_248 + 116] = 20
    mem[64] = _248 + 168
    mem[_248 + 168 len 20] = mem[_248 + 148 len 20]
    mem[_248 + 200] = address(mem[_24 + 32])
    return sha3(_456, sha3(mem[_248 + 148 len 20]), sha3(mem[_248 + 200 len 20]))
}



}
