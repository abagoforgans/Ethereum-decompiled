contract main {




// =====================  Runtime code  =====================


#
#  - sub_cb6e7b3d(?)
#
uint8 stor0;
address stor0;
address deployerAddress; offset 8
address operatorAddress;
address sub_cba89d58Address;
address configurationAddress;
address sub_bb1c653fAddress;

function sub_2f013a00(?) {
    return bool(uint8(stor0.field_0))
}

function destructor() {
    return deployerAddress
}

function operator() {
    return operatorAddress
}

function configuration() {
    return configurationAddress
}

function sub_bb1c653f(?) {
    return sub_bb1c653fAddress
}

function sub_cba89d58(?) {
    return sub_cba89d58Address
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

function disableSelfDestruction() {
    require deployerAddress == msg.sender
    uint8(stor0.field_0) = 1
    emit SelfDestructionDisabledEvent(msg.sender);
}

function sub_fca75a42(?) {
    require calldata.size - 4 >= 32
    require msg.sender == deployerAddress
    require arg1
    if sub_bb1c653fAddress != arg1:
        sub_bb1c653fAddress = arg1
        emit 0x5edf8127: sub_bb1c653fAddress, arg1
}

function setConfiguration(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == deployerAddress
    require arg1
    if configurationAddress != arg1:
        configurationAddress = arg1
        emit 0x634f61bf: configurationAddress, arg1
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

function setSignerManager(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == deployerAddress
    require arg1
    require arg1 != this.address
    if sub_cba89d58Address != arg1:
        sub_cba89d58Address = arg1
        emit SetSignerManagerEvent(sub_cba89d58Address, arg1);
}

function sub_041b6fa3(?) {
    require calldata.size - 4 >= 160
    require calldata.size - 36 >= 96
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, arg1, Mask(224, 0, arg1)), arg4 << 248, arg2, arg3) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    return (arg5 == address(signer))
}

function ethrecover(bytes32 arg1, uint8 arg2, bytes32 arg3, bytes32 arg4) {
    require calldata.size - 4 >= 128
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, uint32(arg1), Mask(224, 0, arg1)), arg2 << 248, arg3, arg4) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    return address(signer)
}

function isSignedBy(bytes32 arg1, uint8 arg2, bytes32 arg3, bytes32 arg4, address arg5) {
    require calldata.size - 4 >= 160
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, uint32(arg1), Mask(224, 0, arg1)), arg2 << 248, arg3, arg4) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    return (arg5 == address(signer))
}

function sub_d1d24c33(?) {
    require calldata.size - 4 >= 128
    require calldata.size - 36 >= 96
    require sub_cba89d58Address
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, arg1, Mask(224, 0, arg1)), arg4 << 248, arg2, arg3) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_cba89d58Address)
    call sub_cba89d58Address.0x7df73e27 with:
         gas gas_remaining wei
        args address(signer)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function isSignedByRegisteredSigner(bytes32 arg1, uint8 arg2, bytes32 arg3, bytes32 arg4) {
    require calldata.size - 4 >= 128
    require sub_cba89d58Address
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, uint32(arg1), Mask(224, 0, arg1)), arg2 << 248, arg3, arg4) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_cba89d58Address)
    call sub_cba89d58Address.0x7df73e27 with:
         gas gas_remaining wei
        args address(signer)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function sub_4a296e72(?) {
    require calldata.size - 4 >= 64
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
        _43 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        mem[_43] = cd[s]
        require calldata.size + -s - 32 >= 96
        _45 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        mem[_45] = cd[(s + 32)]
        require calldata.size + -s - 64 >= 64
        _47 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        mem[_47] = address(cd[(s + 64)])
        mem[_47 + 32] = cd[(s + 96)]
        mem[_45 + 32] = _47
        mem[_43 + 32] = _45
        mem[t] = _43
        idx = idx + 1
        s = s + 128
        t = t + 32
        continue 
    mem[_28] = _29
    mem[_24 + 96] = _28
    mem[224] = _24
    require calldata.size + -cd[4] - 196 >= 64
    _44 = mem[64]
    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
    mem[64] = mem[64] + 64
    mem[_44] = ('cd', 4)[5]
    mem[_44 + 32] = ('cd', 4)[6]
    mem[256] = _44
    require calldata.size + -cd[4] - 260 >= 256
    _46 = mem[64]
    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
    mem[64] = mem[64] + 64
    require calldata.size + -cd[4] - 260 >= 128
    _48 = mem[64]
    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
    mem[64] = mem[64] + 64
    mem[_48] = ('cd', 4)[7]
    require calldata.size + -cd[4] - 292 >= 96
    _49 = mem[64]
    require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
    mem[64] = mem[64] + 96
    mem[_49] = ('cd', 4)[8]
    mem[_49 + 32] = ('cd', 4)[9]
    mem[_49 + 64] = uint8(('cd', 4)[10])
    mem[_48 + 32] = _49
    mem[_46] = _48
    require calldata.size + -cd[4] - 388 >= 128
    _50 = mem[64]
    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
    mem[64] = mem[64] + 64
    mem[_50] = ('cd', 4)[11]
    require calldata.size + -cd[4] - 420 >= 96
    _51 = mem[64]
    require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
    mem[64] = mem[64] + 96
    mem[_51] = ('cd', 4)[12]
    mem[_51 + 32] = ('cd', 4)[13]
    mem[_51 + 64] = uint8(('cd', 4)[14])
    mem[_50 + 32] = _51
    mem[_46 + 32] = _50
    mem[288] = _46
    mem[320] = ('cd', 4)[15]
    mem[352] = ('cd', 4)[16]
    mem[mem[64]] = mem[_24 + 44 len 20] == address(cd[36])
    return memory
      from mem[64]
       len 32
}

function sub_ef04ec95(?) {
    require calldata.size - 4 >= 64
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
        _43 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        mem[_43] = cd[s]
        require calldata.size + -s - 32 >= 96
        _45 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        mem[_45] = cd[(s + 32)]
        require calldata.size + -s - 64 >= 64
        _47 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        mem[_47] = address(cd[(s + 64)])
        mem[_47 + 32] = cd[(s + 96)]
        mem[_45 + 32] = _47
        mem[_43 + 32] = _45
        mem[t] = _43
        idx = idx + 1
        s = s + 128
        t = t + 32
        continue 
    mem[_28] = _29
    mem[_24 + 96] = _28
    mem[224] = _24
    require calldata.size + -cd[4] - 196 >= 64
    _44 = mem[64]
    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
    mem[64] = mem[64] + 64
    mem[_44] = ('cd', 4)[5]
    mem[_44 + 32] = ('cd', 4)[6]
    mem[256] = _44
    require calldata.size + -cd[4] - 260 >= 256
    _46 = mem[64]
    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
    mem[64] = mem[64] + 64
    require calldata.size + -cd[4] - 260 >= 128
    _48 = mem[64]
    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
    mem[64] = mem[64] + 64
    mem[_48] = ('cd', 4)[7]
    require calldata.size + -cd[4] - 292 >= 96
    _49 = mem[64]
    require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
    mem[64] = mem[64] + 96
    mem[_49] = ('cd', 4)[8]
    mem[_49 + 32] = ('cd', 4)[9]
    mem[_49 + 64] = uint8(('cd', 4)[10])
    mem[_48 + 32] = _49
    mem[_46] = _48
    require calldata.size + -cd[4] - 388 >= 128
    _50 = mem[64]
    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
    mem[64] = mem[64] + 64
    mem[_50] = ('cd', 4)[11]
    require calldata.size + -cd[4] - 420 >= 96
    _51 = mem[64]
    require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
    mem[64] = mem[64] + 96
    mem[_51] = ('cd', 4)[12]
    mem[_51 + 32] = ('cd', 4)[13]
    mem[_51 + 64] = uint8(('cd', 4)[14])
    mem[_50 + 32] = _51
    mem[_46 + 32] = _50
    mem[288] = _46
    mem[320] = ('cd', 4)[15]
    mem[352] = ('cd', 4)[16]
    mem[mem[64]] = address(cd[36]) == mem[mem[192] + 44 len 20]
    return memory
      from mem[64]
       len 32
}

function sub_6ec06572(?) {
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
        _45 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        mem[_45] = cd[s]
        require calldata.size + -s - 32 >= 96
        _47 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        mem[_47] = cd[(s + 32)]
        require calldata.size + -s - 64 >= 64
        _49 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        mem[_49] = address(cd[(s + 64)])
        mem[_49 + 32] = cd[(s + 96)]
        mem[_47 + 32] = _49
        mem[_45 + 32] = _47
        mem[t] = _45
        idx = idx + 1
        s = s + 128
        t = t + 32
        continue 
    mem[_28] = _29
    mem[_24 + 96] = _28
    mem[224] = _24
    require calldata.size + -cd[4] - 196 >= 64
    _46 = mem[64]
    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
    mem[64] = mem[64] + 64
    mem[_46] = ('cd', 4)[5]
    mem[_46 + 32] = ('cd', 4)[6]
    mem[256] = _46
    require calldata.size + -cd[4] - 260 >= 256
    _48 = mem[64]
    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
    mem[64] = mem[64] + 64
    require calldata.size + -cd[4] - 260 >= 128
    _50 = mem[64]
    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
    mem[64] = mem[64] + 64
    mem[_50] = ('cd', 4)[7]
    require calldata.size + -cd[4] - 292 >= 96
    _51 = mem[64]
    require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
    mem[64] = mem[64] + 96
    mem[_51] = ('cd', 4)[8]
    mem[_51 + 32] = ('cd', 4)[9]
    mem[_51 + 64] = uint8(('cd', 4)[10])
    mem[_50 + 32] = _51
    mem[_48] = _50
    require calldata.size + -cd[4] - 388 >= 128
    _52 = mem[64]
    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
    mem[64] = mem[64] + 64
    mem[_52] = ('cd', 4)[11]
    require calldata.size + -cd[4] - 420 >= 96
    _53 = mem[64]
    require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
    mem[64] = mem[64] + 96
    mem[_53] = ('cd', 4)[12]
    mem[_53 + 32] = ('cd', 4)[13]
    mem[_53 + 64] = uint8(('cd', 4)[14])
    mem[_52 + 32] = _53
    mem[_48 + 32] = _52
    mem[288] = _48
    mem[320] = ('cd', 4)[15]
    mem[352] = ('cd', 4)[16]
    mem[mem[64]] = mem[_24 + 44 len 20] != mem[mem[192] + 44 len 20]
    return memory
      from mem[64]
       len 32
}

function sub_be22656e(?) {
    require calldata.size - 4 >= 64
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
        _47 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        mem[_47] = cd[s]
        require calldata.size + -s - 32 >= 96
        _49 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        mem[_49] = cd[(s + 32)]
        require calldata.size + -s - 64 >= 64
        _51 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        mem[_51] = address(cd[(s + 64)])
        mem[_51 + 32] = cd[(s + 96)]
        mem[_49 + 32] = _51
        mem[_47 + 32] = _49
        mem[t] = _47
        idx = idx + 1
        s = s + 128
        t = t + 32
        continue 
    mem[_28] = _29
    mem[_24 + 96] = _28
    mem[224] = _24
    require calldata.size + -cd[4] - 196 >= 64
    _48 = mem[64]
    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
    mem[64] = mem[64] + 64
    mem[_48] = ('cd', 4)[5]
    mem[_48 + 32] = ('cd', 4)[6]
    mem[256] = _48
    require calldata.size + -cd[4] - 260 >= 256
    _50 = mem[64]
    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
    mem[64] = mem[64] + 64
    require calldata.size + -cd[4] - 260 >= 128
    _52 = mem[64]
    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
    mem[64] = mem[64] + 64
    mem[_52] = ('cd', 4)[7]
    require calldata.size + -cd[4] - 292 >= 96
    _53 = mem[64]
    require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
    mem[64] = mem[64] + 96
    mem[_53] = ('cd', 4)[8]
    mem[_53 + 32] = ('cd', 4)[9]
    mem[_53 + 64] = uint8(('cd', 4)[10])
    mem[_52 + 32] = _53
    mem[_50] = _52
    require calldata.size + -cd[4] - 388 >= 128
    _54 = mem[64]
    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
    mem[64] = mem[64] + 64
    mem[_54] = ('cd', 4)[11]
    require calldata.size + -cd[4] - 420 >= 96
    _55 = mem[64]
    require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
    mem[64] = mem[64] + 96
    mem[_55] = ('cd', 4)[12]
    mem[_55 + 32] = ('cd', 4)[13]
    mem[_55 + 64] = uint8(('cd', 4)[14])
    mem[_54 + 32] = _55
    mem[_50 + 32] = _54
    mem[288] = _50
    mem[320] = ('cd', 4)[15]
    mem[352] = ('cd', 4)[16]
    if address(cd[36]) == mem[mem[192] + 44 len 20]:
        mem[mem[64]] = address(cd[36]) == mem[mem[192] + 44 len 20]
    else:
        mem[mem[64]] = mem[_24 + 44 len 20] == address(cd[36])
    return memory
      from mem[64]
       len 32
}

function sub_8ec768f5(?) {
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
        _57 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        mem[_57] = cd[s]
        require calldata.size + -s - 32 >= 96
        _59 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        mem[_59] = cd[(s + 32)]
        require calldata.size + -s - 64 >= 64
        _61 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        mem[_61] = address(cd[(s + 64)])
        mem[_61 + 32] = cd[(s + 96)]
        mem[_59 + 32] = _61
        mem[_57 + 32] = _59
        mem[t] = _57
        idx = idx + 1
        s = s + 128
        t = t + 32
        continue 
    mem[_28] = _29
    mem[_24 + 96] = _28
    mem[224] = _24
    require calldata.size + -cd[4] - 196 >= 64
    _58 = mem[64]
    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
    mem[64] = mem[64] + 64
    mem[_58] = ('cd', 4)[5]
    mem[_58 + 32] = ('cd', 4)[6]
    mem[256] = _58
    require calldata.size + -cd[4] - 260 >= 256
    _60 = mem[64]
    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
    mem[64] = mem[64] + 64
    require calldata.size + -cd[4] - 260 >= 128
    _62 = mem[64]
    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
    mem[64] = mem[64] + 64
    mem[_62] = ('cd', 4)[7]
    require calldata.size + -cd[4] - 292 >= 96
    _63 = mem[64]
    require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
    mem[64] = mem[64] + 96
    mem[_63] = ('cd', 4)[8]
    mem[_63 + 32] = ('cd', 4)[9]
    mem[_63 + 64] = uint8(('cd', 4)[10])
    mem[_62 + 32] = _63
    mem[_60] = _62
    require calldata.size + -cd[4] - 388 >= 128
    _64 = mem[64]
    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
    mem[64] = mem[64] + 64
    mem[_64] = ('cd', 4)[11]
    require calldata.size + -cd[4] - 420 >= 96
    _65 = mem[64]
    require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
    mem[64] = mem[64] + 96
    mem[_65] = ('cd', 4)[12]
    mem[_65 + 32] = ('cd', 4)[13]
    mem[_65 + 64] = uint8(('cd', 4)[14])
    mem[_64 + 32] = _65
    mem[_60 + 32] = _64
    mem[288] = _60
    mem[320] = ('cd', 4)[15]
    mem[352] = ('cd', 4)[16]
    if mem[mem[mem[mem[mem[192] + 96]] + 32] + 12 len 20] != mem[mem[160] + 12 len 20]:
        mem[mem[64]] = mem[mem[mem[mem[mem[192] + 96]] + 32] + 12 len 20] != mem[mem[160] + 12 len 20]
    else:
        mem[mem[64]] = mem[mem[160] + 32] != mem[mem[mem[mem[mem[192] + 96]] + 32] + 32]
    return memory
      from mem[64]
       len 32
}

function sub_ec48a9ca(?) {
    require calldata.size - 4 >= 96
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
        _50 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        mem[_50] = cd[s]
        require calldata.size + -s - 32 >= 96
        _52 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        mem[_52] = cd[(s + 32)]
        require calldata.size + -s - 64 >= 64
        _54 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        mem[_54] = address(cd[(s + 64)])
        mem[_54 + 32] = cd[(s + 96)]
        mem[_52 + 32] = _54
        mem[_50 + 32] = _52
        mem[t] = _50
        idx = idx + 1
        s = s + 128
        t = t + 32
        continue 
    mem[_28] = _29
    mem[_24 + 96] = _28
    mem[224] = _24
    require calldata.size + -cd[4] - 196 >= 64
    _51 = mem[64]
    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
    mem[64] = mem[64] + 64
    mem[_51] = ('cd', 4)[5]
    mem[_51 + 32] = ('cd', 4)[6]
    mem[256] = _51
    require calldata.size + -cd[4] - 260 >= 256
    _53 = mem[64]
    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
    mem[64] = mem[64] + 64
    require calldata.size + -cd[4] - 260 >= 128
    _55 = mem[64]
    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
    mem[64] = mem[64] + 64
    mem[_55] = ('cd', 4)[7]
    require calldata.size + -cd[4] - 292 >= 96
    _56 = mem[64]
    require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
    mem[64] = mem[64] + 96
    mem[_56] = ('cd', 4)[8]
    mem[_56 + 32] = ('cd', 4)[9]
    mem[_56 + 64] = uint8(('cd', 4)[10])
    mem[_55 + 32] = _56
    mem[_53] = _55
    require calldata.size + -cd[4] - 388 >= 128
    _57 = mem[64]
    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
    mem[64] = mem[64] + 64
    mem[_57] = ('cd', 4)[11]
    require calldata.size + -cd[4] - 420 >= 96
    _58 = mem[64]
    require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
    mem[64] = mem[64] + 96
    mem[_58] = ('cd', 4)[12]
    mem[_58 + 32] = ('cd', 4)[13]
    mem[_58 + 64] = uint8(('cd', 4)[14])
    mem[_57 + 32] = _58
    mem[_53 + 32] = _57
    mem[288] = _53
    mem[320] = ('cd', 4)[15]
    mem[352] = ('cd', 4)[16]
    require calldata.size - 36 >= 64
    _59 = mem[64]
    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
    mem[64] = mem[64] + 64
    mem[_59] = address(cd[36])
    mem[_59 + 32] = cd[68]
    if mem[mem[160] + 12 len 20] != address(cd[36]):
        mem[mem[64]] = mem[mem[160] + 12 len 20] == address(cd[36])
    else:
        mem[mem[64]] = cd[68] == mem[mem[160] + 32]
    return memory
      from mem[64]
       len 32
}

function sub_8049e482(?) {
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
        _65 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        mem[_65] = cd[s]
        require calldata.size + -s - 32 >= 96
        _67 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        mem[_67] = cd[(s + 32)]
        require calldata.size + -s - 64 >= 64
        _69 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        mem[_69] = address(cd[(s + 64)])
        mem[_69 + 32] = cd[(s + 96)]
        mem[_67 + 32] = _69
        mem[_65 + 32] = _67
        mem[t] = _65
        idx = idx + 1
        s = s + 128
        t = t + 32
        continue 
    mem[_28] = _29
    mem[_24 + 96] = _28
    mem[224] = _24
    require calldata.size + -cd[4] - 196 >= 64
    _66 = mem[64]
    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
    mem[64] = mem[64] + 64
    mem[_66] = ('cd', 4)[5]
    mem[_66 + 32] = ('cd', 4)[6]
    mem[256] = _66
    require calldata.size + -cd[4] - 260 >= 256
    _68 = mem[64]
    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
    mem[64] = mem[64] + 64
    require calldata.size + -cd[4] - 260 >= 128
    _70 = mem[64]
    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
    mem[64] = mem[64] + 64
    mem[_70] = ('cd', 4)[7]
    require calldata.size + -cd[4] - 292 >= 96
    _71 = mem[64]
    require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
    mem[64] = mem[64] + 96
    mem[_71] = ('cd', 4)[8]
    mem[_71 + 32] = ('cd', 4)[9]
    mem[_71 + 64] = uint8(('cd', 4)[10])
    mem[_70 + 32] = _71
    mem[_68] = _70
    require calldata.size + -cd[4] - 388 >= 128
    _72 = mem[64]
    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
    mem[64] = mem[64] + 64
    mem[_72] = ('cd', 4)[11]
    require calldata.size + -cd[4] - 420 >= 96
    _73 = mem[64]
    require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
    mem[64] = mem[64] + 96
    mem[_73] = ('cd', 4)[12]
    mem[_73 + 32] = ('cd', 4)[13]
    mem[_73 + 64] = uint8(('cd', 4)[14])
    mem[_72 + 32] = _73
    mem[_68 + 32] = _72
    mem[288] = _68
    mem[320] = ('cd', 4)[15]
    mem[352] = ('cd', 4)[16]
    if mem[mem[192] + 44 len 20] == mem[_24 + 44 len 20]:
        mem[mem[64]] = mem[mem[192] + 44 len 20] != mem[_24 + 44 len 20]
    else:
        if ('cd', 4)[5] < 0:
            require ('cd', 4)[5] + mem[mem[_24 + 64] + 32] < mem[mem[_24 + 64] + 32]
        else:
            if ('cd', 4)[5] + mem[mem[_24 + 64] + 32] < mem[mem[_24 + 64] + 32]:
                require ('cd', 4)[5] < 0
                require ('cd', 4)[5] + mem[mem[_24 + 64] + 32] < mem[mem[_24 + 64] + 32]
        mem[mem[64]] = mem[mem[_24 + 64]] == ('cd', 4)[5] + mem[mem[_24 + 64] + 32]
    return memory
      from mem[64]
       len 32
}

function sub_7cd0ab59(?) {
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
        _53 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        mem[_53] = cd[s]
        require calldata.size + -s - 32 >= 96
        _55 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        mem[_55] = cd[(s + 32)]
        require calldata.size + -s - 64 >= 64
        _57 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        mem[_57] = address(cd[(s + 64)])
        mem[_57 + 32] = cd[(s + 96)]
        mem[_55 + 32] = _57
        mem[_53 + 32] = _55
        mem[t] = _53
        idx = idx + 1
        s = s + 128
        t = t + 32
        continue 
    mem[_28] = _29
    mem[_24 + 96] = _28
    mem[224] = _24
    require calldata.size + -cd[4] - 196 >= 64
    _54 = mem[64]
    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
    mem[64] = mem[64] + 64
    mem[_54] = ('cd', 4)[5]
    mem[_54 + 32] = ('cd', 4)[6]
    mem[256] = _54
    require calldata.size + -cd[4] - 260 >= 256
    _56 = mem[64]
    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
    mem[64] = mem[64] + 64
    require calldata.size + -cd[4] - 260 >= 128
    _58 = mem[64]
    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
    mem[64] = mem[64] + 64
    mem[_58] = ('cd', 4)[7]
    require calldata.size + -cd[4] - 292 >= 96
    _59 = mem[64]
    require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
    mem[64] = mem[64] + 96
    mem[_59] = ('cd', 4)[8]
    mem[_59 + 32] = ('cd', 4)[9]
    mem[_59 + 64] = uint8(('cd', 4)[10])
    mem[_58 + 32] = _59
    mem[_56] = _58
    require calldata.size + -cd[4] - 388 >= 128
    _60 = mem[64]
    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
    mem[64] = mem[64] + 64
    mem[_60] = ('cd', 4)[11]
    require calldata.size + -cd[4] - 420 >= 96
    _61 = mem[64]
    require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
    mem[64] = mem[64] + 96
    mem[_61] = ('cd', 4)[12]
    mem[_61 + 32] = ('cd', 4)[13]
    mem[_61 + 64] = uint8(('cd', 4)[14])
    mem[_60 + 32] = _61
    mem[_56 + 32] = _60
    mem[288] = _56
    mem[320] = ('cd', 4)[15]
    mem[352] = ('cd', 4)[16]
    if mem[mem[192] + 44 len 20] == mem[_24 + 44 len 20]:
        mem[mem[64]] = mem[mem[192] + 44 len 20] != mem[_24 + 44 len 20]
    else:
        _67 = mem[mem[192] + 32]
        mem[mem[64] + 4] = mem[mem[192] + 44 len 20]
        require ext_code.size(sub_cba89d58Address)
        call sub_cba89d58Address.0x7df73e27 with:
             gas gas_remaining wei
            args address(_67)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _72 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[mem[64]] = not bool(mem[_72])
    return memory
      from mem[64]
       len 32
}

function sub_fe4be130(?) {
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
    _74 = mem[mem[160] + 32]
    mem[mem[64] + 36] = mem[mem[160] + 12 len 20]
    mem[mem[64] + 68] = _74
    require ext_code.size(configurationAddress)
    call configurationAddress.0xa329fad5 with:
         gas gas_remaining wei
        args ('cd', 4)[15], address(_73), _74
    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _77 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 64
    if mem[mem[mem[mem[mem[192] + 96]] + 32] + 12 len 20] != mem[_77 + 12 len 20]:
        mem[mem[64]] = mem[mem[mem[mem[mem[192] + 96]] + 32] + 12 len 20] == mem[_77 + 12 len 20]
    else:
        mem[mem[64]] = mem[_77 + 32] == mem[mem[mem[mem[mem[192] + 96]] + 32] + 32]
    return memory
      from mem[64]
       len 32
}

function sub_809ee2d5(?) {
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
        _229 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        mem[_229] = cd[s]
        require calldata.size + -s - 32 >= 96
        _231 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        mem[_231] = cd[(s + 32)]
        require calldata.size + -s - 64 >= 64
        _233 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        mem[_233] = address(cd[(s + 64)])
        mem[_233 + 32] = cd[(s + 96)]
        mem[_231 + 32] = _233
        mem[_229 + 32] = _231
        mem[t] = _229
        idx = idx + 1
        s = s + 128
        t = t + 32
        continue 
    mem[_28] = _29
    mem[_24 + 96] = _28
    mem[224] = _24
    require calldata.size + -cd[4] - 196 >= 64
    _230 = mem[64]
    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
    mem[64] = mem[64] + 64
    mem[_230] = ('cd', 4)[5]
    mem[_230 + 32] = ('cd', 4)[6]
    mem[256] = _230
    require calldata.size + -cd[4] - 260 >= 256
    _232 = mem[64]
    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
    mem[64] = mem[64] + 64
    require calldata.size + -cd[4] - 260 >= 128
    _234 = mem[64]
    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
    mem[64] = mem[64] + 64
    mem[_234] = ('cd', 4)[7]
    require calldata.size + -cd[4] - 292 >= 96
    _235 = mem[64]
    require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
    mem[64] = mem[64] + 96
    mem[_235] = ('cd', 4)[8]
    mem[_235 + 32] = ('cd', 4)[9]
    mem[_235 + 64] = uint8(('cd', 4)[10])
    mem[_234 + 32] = _235
    mem[_232] = _234
    require calldata.size + -cd[4] - 388 >= 128
    _236 = mem[64]
    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
    mem[64] = mem[64] + 64
    mem[_236] = ('cd', 4)[11]
    require calldata.size + -cd[4] - 420 >= 96
    _237 = mem[64]
    require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
    mem[64] = mem[64] + 96
    mem[_237] = ('cd', 4)[12]
    mem[_237 + 32] = ('cd', 4)[13]
    mem[_237 + 64] = uint8(('cd', 4)[14])
    mem[_236 + 32] = _237
    mem[_232 + 32] = _236
    mem[288] = _232
    mem[320] = ('cd', 4)[15]
    mem[352] = ('cd', 4)[16]
    require ext_code.size(0x5fcf3704016b90ded3c81d75613ceab0a6a26025)
    delegate 0x5fcf3704016b90ded3c81d75613ceab0a6a26025.PARTS_PER() with:
         gas gas_remaining wei
        args 
    mem[mem[64]] = delegate.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    _240 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _241 = mem[_240]
    _244 = mem[mem[160]]
    _245 = mem[mem[160] + 32]
    _246 = mem[128]
    mem[mem[64] + 4] = ('cd', 4)[15]
    mem[mem[64] + 36] = address(_244)
    mem[mem[64] + 68] = _245
    mem[mem[64] + 100] = _246
    require ext_code.size(configurationAddress)
    call configurationAddress.0x1b6eb59f with:
         gas gas_remaining wei
        args ('cd', 4)[15], address(_244), _245, _246
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _249 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if -1 == mem[128]:
        require mem[_249] != 0x8000000000000000000000000000000000000000000000000000000000000000
    if -1 == mem[_249]:
        require mem[128] != 0x8000000000000000000000000000000000000000000000000000000000000000
    if mem[_249]:
        require mem[_249]
        require mem[_249] * mem[128] / mem[_249] == mem[128]
    if mem[_249] * mem[128] == 0x8000000000000000000000000000000000000000000000000000000000000000:
        require _241 != -1
    require _241
    if 1 <= mem[_249] * mem[128] / _241:
        mem[mem[64]] = mem[_249] * mem[128] / _241 == mem[mem[mem[mem[192] + 96]]]
    else:
        mem[mem[64]] = 1 == mem[mem[mem[mem[192] + 96]]]
    return memory
      from mem[64]
       len 32
}

function sub_a08f115f(?) {
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
        _106 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        mem[_106] = cd[s]
        require calldata.size + -s - 32 >= 96
        _108 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        mem[_108] = cd[(s + 32)]
        require calldata.size + -s - 64 >= 64
        _110 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        mem[_110] = address(cd[(s + 64)])
        mem[_110 + 32] = cd[(s + 96)]
        mem[_108 + 32] = _110
        mem[_106 + 32] = _108
        mem[t] = _106
        idx = idx + 1
        s = s + 128
        t = t + 32
        continue 
    mem[_28] = _29
    mem[_24 + 96] = _28
    mem[224] = _24
    require calldata.size + -cd[4] - 196 >= 64
    _107 = mem[64]
    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
    mem[64] = mem[64] + 64
    mem[_107] = ('cd', 4)[5]
    mem[_107 + 32] = ('cd', 4)[6]
    mem[256] = _107
    require calldata.size + -cd[4] - 260 >= 256
    _109 = mem[64]
    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
    mem[64] = mem[64] + 64
    require calldata.size + -cd[4] - 260 >= 128
    _111 = mem[64]
    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
    mem[64] = mem[64] + 64
    mem[_111] = ('cd', 4)[7]
    require calldata.size + -cd[4] - 292 >= 96
    _112 = mem[64]
    require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
    mem[64] = mem[64] + 96
    mem[_112] = ('cd', 4)[8]
    mem[_112 + 32] = ('cd', 4)[9]
    mem[_112 + 64] = uint8(('cd', 4)[10])
    mem[_111 + 32] = _112
    mem[_109] = _111
    require calldata.size + -cd[4] - 388 >= 128
    _113 = mem[64]
    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
    mem[64] = mem[64] + 64
    mem[_113] = ('cd', 4)[11]
    require calldata.size + -cd[4] - 420 >= 96
    _114 = mem[64]
    require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
    mem[64] = mem[64] + 96
    mem[_114] = ('cd', 4)[12]
    mem[_114 + 32] = ('cd', 4)[13]
    mem[_114 + 64] = uint8(('cd', 4)[14])
    mem[_113 + 32] = _114
    mem[_109 + 32] = _113
    mem[288] = _109
    mem[320] = ('cd', 4)[15]
    mem[352] = ('cd', 4)[16]
    if mem[mem[192] + 44 len 20] == mem[_24 + 44 len 20]:
        mem[mem[64]] = mem[mem[192] + 44 len 20] != mem[_24 + 44 len 20]
    else:
        _120 = mem[mem[192] + 32]
        mem[mem[64] + 4] = mem[mem[192] + 44 len 20]
        require ext_code.size(sub_cba89d58Address)
        call sub_cba89d58Address.0x7df73e27 with:
             gas gas_remaining wei
            args address(_120)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _125 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_125]:
            mem[mem[64]] = not bool(mem[_125])
        else:
            if ('cd', 4)[5] < 0:
                require mem[mem[mem[192] + 64] + 32] - ('cd', 4)[5] > mem[mem[mem[192] + 64] + 32]
            else:
                if mem[mem[mem[192] + 64] + 32] - ('cd', 4)[5] > mem[mem[mem[192] + 64] + 32]:
                    require ('cd', 4)[5] < 0
                    require mem[mem[mem[192] + 64] + 32] - ('cd', 4)[5] > mem[mem[mem[192] + 64] + 32]
            if mem[mem[mem[mem[192] + 96]]] < 0:
                require mem[mem[mem[192] + 64] + 32] - ('cd', 4)[5] - mem[mem[mem[mem[192] + 96]]] > mem[mem[mem[192] + 64] + 32] - ('cd', 4)[5]
            else:
                if mem[mem[mem[192] + 64] + 32] - ('cd', 4)[5] - mem[mem[mem[mem[192] + 96]]] > mem[mem[mem[192] + 64] + 32] - ('cd', 4)[5]:
                    require mem[mem[mem[mem[192] + 96]]] < 0
                    require mem[mem[mem[192] + 64] + 32] - ('cd', 4)[5] - mem[mem[mem[mem[192] + 96]]] > mem[mem[mem[192] + 64] + 32] - ('cd', 4)[5]
            mem[mem[64]] = mem[mem[mem[192] + 64]] == mem[mem[mem[192] + 64] + 32] - ('cd', 4)[5] - mem[mem[mem[mem[192] + 96]]]
    return memory
      from mem[64]
       len 32
}

function sub_d7858faf(?) {
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
    _74 = mem[64]
    mem[mem[64]] = 0x33bc873500000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    mem[mem[64] + 36] = mem[96]
    mem[mem[64] + 68] = mem[128]
    mem[mem[64] + 100] = mem[mem[160] + 12 len 20]
    mem[mem[64] + 132] = mem[mem[160] + 32]
    mem[mem[64] + 164] = 576
    mem[mem[64] + 612] = mem[mem[192]]
    mem[mem[64] + 644] = mem[mem[192] + 44 len 20]
    _83 = mem[mem[192] + 64]
    mem[mem[64] + 676] = mem[mem[mem[192] + 64]]
    mem[mem[64] + 708] = mem[_83 + 32]
    _86 = mem[mem[192] + 96]
    mem[mem[64] + 740] = 160
    _87 = mem[_86]
    mem[mem[64] + 772] = mem[mem[_86]]
    _89 = mem[_87 + 32]
    mem[mem[64] + 804] = mem[mem[_87 + 32] + 12 len 20]
    mem[mem[64] + 836] = mem[_89 + 32]
    _92 = mem[_86 + 32]
    mem[mem[64] + 868] = 128
    _93 = mem[_92]
    mem[mem[64] + 900] = mem[_92]
    idx = 0
    s = _92 + 32
    t = mem[64] + 932
    while idx < _93:
        _123 = mem[s]
        mem[t] = mem[mem[s]]
        _127 = mem[_123 + 32]
        mem[t + 32] = mem[mem[_123 + 32]]
        _130 = mem[_127 + 32]
        mem[t + 64] = mem[mem[_127 + 32] + 12 len 20]
        mem[t + 96] = mem[_130 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 128
        continue 
    _125 = mem[224]
    mem[_74 + 196] = (128 * _93) + 896
    mem[_74 + (128 * _93) + 932] = mem[_125]
    mem[_74 + (128 * _93) + 964] = mem[_125 + 44 len 20]
    _132 = mem[_125 + 64]
    mem[_74 + (128 * _93) + 996] = mem[mem[_125 + 64]]
    mem[_74 + (128 * _93) + 1028] = mem[_132 + 32]
    _136 = mem[_125 + 96]
    mem[_74 + (128 * _93) + 1060] = 160
    _137 = mem[_136]
    mem[_74 + (128 * _93) + 1092] = 32
    _138 = mem[_137]
    mem[_74 + (128 * _93) + 1124] = mem[_137]
    idx = 0
    s = _137 + 32
    t = _74 + (128 * _93) + 1156
    while idx < _138:
        _169 = mem[s]
        mem[t] = mem[mem[s]]
        _173 = mem[_169 + 32]
        mem[t + 32] = mem[mem[_169 + 32]]
        _176 = mem[_173 + 32]
        mem[t + 64] = mem[mem[_173 + 32] + 12 len 20]
        mem[t + 96] = mem[_176 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 128
        continue 
    _171 = mem[256]
    mem[_74 + 228] = mem[mem[256]]
    mem[_74 + 260] = mem[_171 + 32]
    _178 = mem[288]
    _179 = mem[mem[288]]
    mem[_74 + 292] = mem[mem[mem[288]]]
    _182 = mem[_179 + 32]
    mem[_74 + 324] = mem[mem[_179 + 32]]
    mem[_74 + 356] = mem[_182 + 32]
    mem[_74 + 388] = mem[_182 + 95 len 1]
    _186 = mem[_178 + 32]
    mem[_74 + 420] = mem[mem[_178 + 32]]
    _188 = mem[_186 + 32]
    mem[_74 + 452] = mem[mem[_186 + 32]]
    mem[_74 + 484] = mem[_188 + 32]
    mem[_74 + 516] = mem[_188 + 95 len 1]
    mem[_74 + 548] = mem[320]
    mem[_74 + 580] = mem[352]
    require ext_code.size(sub_bb1c653fAddress)
    call sub_bb1c653fAddress.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _74 + (128 * _93) + (128 * _138) + -mem[64] + 1152]
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _195 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    mem[mem[64]] = mem[_195] == ('cd', 4)[7]
    return memory
      from mem[64]
       len 32
}

function sub_dfd5f8a3(?) {
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
    _74 = mem[64]
    mem[mem[64]] = 0x40e870e000000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    mem[mem[64] + 36] = mem[96]
    mem[mem[64] + 68] = mem[128]
    mem[mem[64] + 100] = mem[mem[160] + 12 len 20]
    mem[mem[64] + 132] = mem[mem[160] + 32]
    mem[mem[64] + 164] = 576
    mem[mem[64] + 612] = mem[mem[192]]
    mem[mem[64] + 644] = mem[mem[192] + 44 len 20]
    _83 = mem[mem[192] + 64]
    mem[mem[64] + 676] = mem[mem[mem[192] + 64]]
    mem[mem[64] + 708] = mem[_83 + 32]
    _86 = mem[mem[192] + 96]
    mem[mem[64] + 740] = 160
    _87 = mem[_86]
    mem[mem[64] + 772] = mem[mem[_86]]
    _89 = mem[_87 + 32]
    mem[mem[64] + 804] = mem[mem[_87 + 32] + 12 len 20]
    mem[mem[64] + 836] = mem[_89 + 32]
    _92 = mem[_86 + 32]
    mem[mem[64] + 868] = 128
    _93 = mem[_92]
    mem[mem[64] + 900] = mem[_92]
    idx = 0
    s = _92 + 32
    t = mem[64] + 932
    while idx < _93:
        _123 = mem[s]
        mem[t] = mem[mem[s]]
        _127 = mem[_123 + 32]
        mem[t + 32] = mem[mem[_123 + 32]]
        _130 = mem[_127 + 32]
        mem[t + 64] = mem[mem[_127 + 32] + 12 len 20]
        mem[t + 96] = mem[_130 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 128
        continue 
    _125 = mem[224]
    mem[_74 + 196] = (128 * _93) + 896
    mem[_74 + (128 * _93) + 932] = mem[_125]
    mem[_74 + (128 * _93) + 964] = mem[_125 + 44 len 20]
    _132 = mem[_125 + 64]
    mem[_74 + (128 * _93) + 996] = mem[mem[_125 + 64]]
    mem[_74 + (128 * _93) + 1028] = mem[_132 + 32]
    _136 = mem[_125 + 96]
    mem[_74 + (128 * _93) + 1060] = 160
    _137 = mem[_136]
    mem[_74 + (128 * _93) + 1092] = 32
    _138 = mem[_137]
    mem[_74 + (128 * _93) + 1124] = mem[_137]
    idx = 0
    s = _137 + 32
    t = _74 + (128 * _93) + 1156
    while idx < _138:
        _169 = mem[s]
        mem[t] = mem[mem[s]]
        _173 = mem[_169 + 32]
        mem[t + 32] = mem[mem[_169 + 32]]
        _176 = mem[_173 + 32]
        mem[t + 64] = mem[mem[_173 + 32] + 12 len 20]
        mem[t + 96] = mem[_176 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 128
        continue 
    _171 = mem[256]
    mem[_74 + 228] = mem[mem[256]]
    mem[_74 + 260] = mem[_171 + 32]
    _178 = mem[288]
    _179 = mem[mem[288]]
    mem[_74 + 292] = mem[mem[mem[288]]]
    _182 = mem[_179 + 32]
    mem[_74 + 324] = mem[mem[_179 + 32]]
    mem[_74 + 356] = mem[_182 + 32]
    mem[_74 + 388] = mem[_182 + 95 len 1]
    _186 = mem[_178 + 32]
    mem[_74 + 420] = mem[mem[_178 + 32]]
    _188 = mem[_186 + 32]
    mem[_74 + 452] = mem[mem[_186 + 32]]
    mem[_74 + 484] = mem[_188 + 32]
    mem[_74 + 516] = mem[_188 + 95 len 1]
    mem[_74 + 548] = mem[320]
    mem[_74 + 580] = mem[352]
    require ext_code.size(sub_bb1c653fAddress)
    call sub_bb1c653fAddress.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _74 + (128 * _93) + (128 * _138) + -mem[64] + 1152]
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _195 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    mem[mem[64]] = mem[_195] == ('cd', 4)[11]
    return memory
      from mem[64]
       len 32
}

function sub_a4683b1d(?) {
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
    _74 = mem[64]
    mem[mem[64]] = 0x33bc873500000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    mem[mem[64] + 36] = mem[96]
    mem[mem[64] + 68] = mem[128]
    mem[mem[64] + 100] = mem[mem[160] + 12 len 20]
    mem[mem[64] + 132] = mem[mem[160] + 32]
    mem[mem[64] + 164] = 576
    mem[mem[64] + 612] = mem[mem[192]]
    mem[mem[64] + 644] = mem[mem[192] + 44 len 20]
    _83 = mem[mem[192] + 64]
    mem[mem[64] + 676] = mem[mem[mem[192] + 64]]
    mem[mem[64] + 708] = mem[_83 + 32]
    _86 = mem[mem[192] + 96]
    mem[mem[64] + 740] = 160
    _87 = mem[_86]
    mem[mem[64] + 772] = mem[mem[_86]]
    _89 = mem[_87 + 32]
    mem[mem[64] + 804] = mem[mem[_87 + 32] + 12 len 20]
    mem[mem[64] + 836] = mem[_89 + 32]
    _92 = mem[_86 + 32]
    mem[mem[64] + 868] = 128
    _93 = mem[_92]
    mem[mem[64] + 900] = mem[_92]
    idx = 0
    s = _92 + 32
    t = mem[64] + 932
    while idx < _93:
        _121 = mem[s]
        mem[t] = mem[mem[s]]
        _125 = mem[_121 + 32]
        mem[t + 32] = mem[mem[_121 + 32]]
        _128 = mem[_125 + 32]
        mem[t + 64] = mem[mem[_125 + 32] + 12 len 20]
        mem[t + 96] = mem[_128 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 128
        continue 
    _123 = mem[224]
    mem[_74 + 196] = (128 * _93) + 896
    mem[_74 + (128 * _93) + 932] = mem[_123]
    mem[_74 + (128 * _93) + 964] = mem[_123 + 44 len 20]
    _130 = mem[_123 + 64]
    mem[_74 + (128 * _93) + 996] = mem[mem[_123 + 64]]
    mem[_74 + (128 * _93) + 1028] = mem[_130 + 32]
    _134 = mem[_123 + 96]
    mem[_74 + (128 * _93) + 1060] = 160
    _135 = mem[_134]
    mem[_74 + (128 * _93) + 1092] = 32
    _136 = mem[_135]
    mem[_74 + (128 * _93) + 1124] = mem[_135]
    idx = 0
    s = _135 + 32
    t = _74 + (128 * _93) + 1156
    while idx < _136:
        _192 = mem[s]
        mem[t] = mem[mem[s]]
        _196 = mem[_192 + 32]
        mem[t + 32] = mem[mem[_192 + 32]]
        _199 = mem[_196 + 32]
        mem[t + 64] = mem[mem[_196 + 32] + 12 len 20]
        mem[t + 96] = mem[_199 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 128
        continue 
    _194 = mem[256]
    mem[_74 + 228] = mem[mem[256]]
    mem[_74 + 260] = mem[_194 + 32]
    _201 = mem[288]
    _202 = mem[mem[288]]
    mem[_74 + 292] = mem[mem[mem[288]]]
    _205 = mem[_202 + 32]
    mem[_74 + 324] = mem[mem[_202 + 32]]
    mem[_74 + 356] = mem[_205 + 32]
    mem[_74 + 388] = mem[_205 + 95 len 1]
    _209 = mem[_201 + 32]
    mem[_74 + 420] = mem[mem[_201 + 32]]
    _211 = mem[_209 + 32]
    mem[_74 + 452] = mem[mem[_209 + 32]]
    mem[_74 + 484] = mem[_211 + 32]
    mem[_74 + 516] = mem[_211 + 95 len 1]
    mem[_74 + 548] = mem[320]
    mem[_74 + 580] = mem[352]
    require ext_code.size(sub_bb1c653fAddress)
    call sub_bb1c653fAddress.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _74 + (128 * _93) + (128 * _136) + -mem[64] + 1152]
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _218 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if mem[_218] != ('cd', 4)[7]:
        mem[mem[64]] = mem[_218] == ('cd', 4)[7]
        return memory
          from mem[64]
           len 32
    _222 = mem[mem[mem[288]]]
    _225 = mem[mem[192] + 32]
    _227 = mem[mem[mem[mem[288]] + 32] + 64]
    _228 = mem[mem[mem[mem[288]] + 32]]
    _229 = mem[mem[mem[mem[288]] + 32] + 32]
    _230 = mem[64]
    mem[64] = mem[64] + 64
    mem[_230] = 28
    mem[_230 + 32] = '\x19Ethereum Signed Message:\n32'
    _231 = mem[64]
    mem[mem[64] + 32 len 28] = Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32
    mem[mem[64] + 60] = _222
    _234 = mem[64]
    mem[mem[64]] = 60
    mem[64] = mem[64] + 92
    _235 = mem[_234]
    mem[_231 + 92 len floor32(mem[_234])] = mem[_234 + 32 len floor32(mem[_234])]
    mem[_231 + floor32(mem[_234]) + 92] = 256^(-(mem[_234] % 32) + 32) - 1 and mem[_231 + floor32(mem[_234]) + 92] or mem[_234 + floor32(mem[_234]) + 32] and !(256^(-(mem[_234] % 32) + 32) - 1)
    signer = erecover(sha3(mem[mem[64] len _231 + _235 + -mem[64] + 92]), _227 << 248, _228, _229) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    return (address(_225) == address(signer))
}

function sub_e415b393(?) {
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
    _74 = mem[64]
    mem[mem[64]] = 0x40e870e000000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    mem[mem[64] + 36] = mem[96]
    mem[mem[64] + 68] = mem[128]
    mem[mem[64] + 100] = mem[mem[160] + 12 len 20]
    mem[mem[64] + 132] = mem[mem[160] + 32]
    mem[mem[64] + 164] = 576
    mem[mem[64] + 612] = mem[mem[192]]
    mem[mem[64] + 644] = mem[mem[192] + 44 len 20]
    _83 = mem[mem[192] + 64]
    mem[mem[64] + 676] = mem[mem[mem[192] + 64]]
    mem[mem[64] + 708] = mem[_83 + 32]
    _86 = mem[mem[192] + 96]
    mem[mem[64] + 740] = 160
    _87 = mem[_86]
    mem[mem[64] + 772] = mem[mem[_86]]
    _89 = mem[_87 + 32]
    mem[mem[64] + 804] = mem[mem[_87 + 32] + 12 len 20]
    mem[mem[64] + 836] = mem[_89 + 32]
    _92 = mem[_86 + 32]
    mem[mem[64] + 868] = 128
    _93 = mem[_92]
    mem[mem[64] + 900] = mem[_92]
    idx = 0
    s = _92 + 32
    t = mem[64] + 932
    while idx < _93:
        _121 = mem[s]
        mem[t] = mem[mem[s]]
        _125 = mem[_121 + 32]
        mem[t + 32] = mem[mem[_121 + 32]]
        _128 = mem[_125 + 32]
        mem[t + 64] = mem[mem[_125 + 32] + 12 len 20]
        mem[t + 96] = mem[_128 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 128
        continue 
    _123 = mem[224]
    mem[_74 + 196] = (128 * _93) + 896
    mem[_74 + (128 * _93) + 932] = mem[_123]
    mem[_74 + (128 * _93) + 964] = mem[_123 + 44 len 20]
    _130 = mem[_123 + 64]
    mem[_74 + (128 * _93) + 996] = mem[mem[_123 + 64]]
    mem[_74 + (128 * _93) + 1028] = mem[_130 + 32]
    _134 = mem[_123 + 96]
    mem[_74 + (128 * _93) + 1060] = 160
    _135 = mem[_134]
    mem[_74 + (128 * _93) + 1092] = 32
    _136 = mem[_135]
    mem[_74 + (128 * _93) + 1124] = mem[_135]
    idx = 0
    s = _135 + 32
    t = _74 + (128 * _93) + 1156
    while idx < _136:
        _194 = mem[s]
        mem[t] = mem[mem[s]]
        _198 = mem[_194 + 32]
        mem[t + 32] = mem[mem[_194 + 32]]
        _201 = mem[_198 + 32]
        mem[t + 64] = mem[mem[_198 + 32] + 12 len 20]
        mem[t + 96] = mem[_201 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 128
        continue 
    _196 = mem[256]
    mem[_74 + 228] = mem[mem[256]]
    mem[_74 + 260] = mem[_196 + 32]
    _203 = mem[288]
    _204 = mem[mem[288]]
    mem[_74 + 292] = mem[mem[mem[288]]]
    _207 = mem[_204 + 32]
    mem[_74 + 324] = mem[mem[_204 + 32]]
    mem[_74 + 356] = mem[_207 + 32]
    mem[_74 + 388] = mem[_207 + 95 len 1]
    _211 = mem[_203 + 32]
    mem[_74 + 420] = mem[mem[_203 + 32]]
    _213 = mem[_211 + 32]
    mem[_74 + 452] = mem[mem[_211 + 32]]
    mem[_74 + 484] = mem[_213 + 32]
    mem[_74 + 516] = mem[_213 + 95 len 1]
    mem[_74 + 548] = mem[320]
    mem[_74 + 580] = mem[352]
    require ext_code.size(sub_bb1c653fAddress)
    call sub_bb1c653fAddress.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _74 + (128 * _93) + (128 * _136) + -mem[64] + 1152]
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _220 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if mem[_220] != ('cd', 4)[11]:
        mem[mem[64]] = mem[_220] == ('cd', 4)[11]
        return memory
          from mem[64]
           len 32
    _224 = mem[mem[mem[288] + 32]]
    _227 = mem[mem[mem[mem[288] + 32] + 32] + 64]
    _228 = mem[mem[mem[mem[288] + 32] + 32]]
    _229 = mem[mem[mem[mem[288] + 32] + 32] + 32]
    require sub_cba89d58Address
    _230 = mem[64]
    mem[64] = mem[64] + 64
    mem[_230] = 28
    mem[_230 + 32] = '\x19Ethereum Signed Message:\n32'
    _231 = mem[64]
    mem[mem[64] + 32 len 28] = Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32
    mem[mem[64] + 60] = _224
    _234 = mem[64]
    mem[mem[64]] = 60
    mem[64] = mem[64] + 92
    _235 = mem[_234]
    mem[_231 + 92 len floor32(mem[_234])] = mem[_234 + 32 len floor32(mem[_234])]
    mem[_231 + floor32(mem[_234]) + 92] = 256^(-(mem[_234] % 32) + 32) - 1 and mem[_231 + floor32(mem[_234]) + 92] or mem[_234 + floor32(mem[_234]) + 32] and !(256^(-(mem[_234] % 32) + 32) - 1)
    signer = erecover(sha3(mem[mem[64] len _231 + _235 + -mem[64] + 92]), _227 << 248, _228, _229) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_cba89d58Address)
    call sub_cba89d58Address.0x7df73e27 with:
         gas gas_remaining wei
        args address(signer)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function sub_a865476b(?) {
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
        _61 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        mem[_61] = cd[s]
        require calldata.size + -s - 32 >= 96
        _63 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        mem[_63] = cd[(s + 32)]
        require calldata.size + -s - 64 >= 64
        _65 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        mem[_65] = address(cd[(s + 64)])
        mem[_65 + 32] = cd[(s + 96)]
        mem[_63 + 32] = _65
        mem[_61 + 32] = _63
        mem[t] = _61
        idx = idx + 1
        s = s + 128
        t = t + 32
        continue 
    mem[_28] = _29
    mem[_24 + 96] = _28
    mem[224] = _24
    require calldata.size + -cd[4] - 196 >= 64
    _62 = mem[64]
    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
    mem[64] = mem[64] + 64
    mem[_62] = ('cd', 4)[5]
    mem[_62 + 32] = ('cd', 4)[6]
    mem[256] = _62
    require calldata.size + -cd[4] - 260 >= 256
    _64 = mem[64]
    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
    mem[64] = mem[64] + 64
    require calldata.size + -cd[4] - 260 >= 128
    _66 = mem[64]
    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
    mem[64] = mem[64] + 64
    mem[_66] = ('cd', 4)[7]
    require calldata.size + -cd[4] - 292 >= 96
    _67 = mem[64]
    require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
    mem[64] = mem[64] + 96
    mem[_67] = ('cd', 4)[8]
    mem[_67 + 32] = ('cd', 4)[9]
    mem[_67 + 64] = uint8(('cd', 4)[10])
    mem[_66 + 32] = _67
    mem[_64] = _66
    require calldata.size + -cd[4] - 388 >= 128
    _68 = mem[64]
    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
    mem[64] = mem[64] + 64
    mem[_68] = ('cd', 4)[11]
    require calldata.size + -cd[4] - 420 >= 96
    _69 = mem[64]
    require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
    mem[64] = mem[64] + 96
    mem[_69] = ('cd', 4)[12]
    mem[_69 + 32] = ('cd', 4)[13]
    mem[_69 + 64] = uint8(('cd', 4)[14])
    mem[_68 + 32] = _69
    mem[_64 + 32] = _68
    mem[288] = _64
    mem[320] = ('cd', 4)[15]
    mem[352] = ('cd', 4)[16]
    _73 = mem[64]
    mem[mem[64]] = 0x33bc873500000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    mem[mem[64] + 36] = mem[96]
    mem[mem[64] + 68] = mem[128]
    mem[mem[64] + 100] = mem[mem[160] + 12 len 20]
    mem[mem[64] + 132] = mem[mem[160] + 32]
    mem[mem[64] + 164] = 576
    mem[mem[64] + 612] = mem[mem[192]]
    mem[mem[64] + 644] = mem[mem[192] + 44 len 20]
    _82 = mem[mem[192] + 64]
    mem[mem[64] + 676] = mem[mem[mem[192] + 64]]
    mem[mem[64] + 708] = mem[_82 + 32]
    _85 = mem[mem[192] + 96]
    mem[mem[64] + 740] = 160
    _86 = mem[_85]
    mem[mem[64] + 772] = mem[mem[_85]]
    _88 = mem[_86 + 32]
    mem[mem[64] + 804] = mem[mem[_86 + 32] + 12 len 20]
    mem[mem[64] + 836] = mem[_88 + 32]
    _91 = mem[_85 + 32]
    mem[mem[64] + 868] = 128
    _92 = mem[_91]
    mem[mem[64] + 900] = mem[_91]
    idx = 0
    s = _91 + 32
    t = mem[64] + 932
    while idx < _92:
        _119 = mem[s]
        mem[t] = mem[mem[s]]
        _123 = mem[_119 + 32]
        mem[t + 32] = mem[mem[_119 + 32]]
        _126 = mem[_123 + 32]
        mem[t + 64] = mem[mem[_123 + 32] + 12 len 20]
        mem[t + 96] = mem[_126 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 128
        continue 
    _121 = mem[224]
    mem[_73 + 196] = (128 * _92) + 896
    mem[_73 + (128 * _92) + 932] = mem[_121]
    mem[_73 + (128 * _92) + 964] = mem[_121 + 44 len 20]
    _128 = mem[_121 + 64]
    mem[_73 + (128 * _92) + 996] = mem[mem[_121 + 64]]
    mem[_73 + (128 * _92) + 1028] = mem[_128 + 32]
    _132 = mem[_121 + 96]
    mem[_73 + (128 * _92) + 1060] = 160
    _133 = mem[_132]
    mem[_73 + (128 * _92) + 1092] = 32
    _134 = mem[_133]
    mem[_73 + (128 * _92) + 1124] = mem[_133]
    idx = 0
    s = _133 + 32
    t = _73 + (128 * _92) + 1156
    while idx < _134:
        _213 = mem[s]
        mem[t] = mem[mem[s]]
        _217 = mem[_213 + 32]
        mem[t + 32] = mem[mem[_213 + 32]]
        _220 = mem[_217 + 32]
        mem[t + 64] = mem[mem[_217 + 32] + 12 len 20]
        mem[t + 96] = mem[_220 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 128
        continue 
    _215 = mem[256]
    mem[_73 + 228] = mem[mem[256]]
    mem[_73 + 260] = mem[_215 + 32]
    _222 = mem[288]
    _223 = mem[mem[288]]
    mem[_73 + 292] = mem[mem[mem[288]]]
    _226 = mem[_223 + 32]
    mem[_73 + 324] = mem[mem[_223 + 32]]
    mem[_73 + 356] = mem[_226 + 32]
    mem[_73 + 388] = mem[_226 + 95 len 1]
    _230 = mem[_222 + 32]
    mem[_73 + 420] = mem[mem[_222 + 32]]
    _232 = mem[_230 + 32]
    mem[_73 + 452] = mem[mem[_230 + 32]]
    mem[_73 + 484] = mem[_232 + 32]
    mem[_73 + 516] = mem[_232 + 95 len 1]
    mem[_73 + 548] = mem[320]
    mem[_73 + 580] = mem[352]
    require ext_code.size(sub_bb1c653fAddress)
    call sub_bb1c653fAddress.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _73 + (128 * _92) + (128 * _134) + -mem[64] + 1152]
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _239 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if mem[_239] != ('cd', 4)[7]:
        mem[mem[64]] = mem[_239] == ('cd', 4)[7]
        return memory
          from mem[64]
           len 32
    _243 = mem[mem[mem[288]]]
    _246 = mem[mem[192] + 32]
    _247 = mem[mem[mem[mem[288]] + 32] + 64]
    _248 = mem[mem[mem[mem[288]] + 32]]
    _249 = mem[mem[mem[mem[288]] + 32] + 32]
    _251 = mem[64]
    mem[64] = mem[64] + 64
    mem[_251] = 28
    mem[_251 + 32] = '\x19Ethereum Signed Message:\n32'
    _252 = mem[64]
    mem[mem[64] + 32 len 28] = Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32
    mem[mem[64] + 60] = _243
    _255 = mem[64]
    mem[mem[64]] = 60
    mem[64] = mem[64] + 92
    _256 = mem[_255]
    mem[_252 + 92 len floor32(mem[_255])] = mem[_255 + 32 len floor32(mem[_255])]
    mem[_252 + floor32(mem[_255]) + 92] = 256^(-(mem[_255] % 32) + 32) - 1 and mem[_252 + floor32(mem[_255]) + 92] or mem[_255 + floor32(mem[_255]) + 32] and !(256^(-(mem[_255] % 32) + 32) - 1)
    _309 = mem[64]
    _310 = sha3(mem[mem[64] len _252 + _256 + -mem[64] + 92])
    mem[mem[64]] = 0
    mem[64] = mem[64] + 32
    mem[_309 + 32] = _310
    mem[_309 + 64] = uint8(_247)
    mem[_309 + 96] = _248
    mem[_309 + 128] = _249
    signer = erecover(_310, _247 << 248, _248, _249) 
    mem[_309] = signer
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if address(_246) != address(signer):
        return (address(_246) == address(signer))
    _318 = mem[mem[mem[288] + 32]]
    mem[_309 + 32] = 0x40e870e000000000000000000000000000000000000000000000000000000000
    mem[_309 + 36] = 32
    mem[_309 + 68] = mem[96]
    mem[_309 + 100] = mem[128]
    _323 = mem[160]
    mem[_309 + 132] = mem[mem[160] + 12 len 20]
    mem[_309 + 164] = mem[_323 + 32]
    _326 = mem[192]
    mem[_309 + 196] = 576
    mem[_309 + 644] = mem[_326]
    mem[_309 + 676] = mem[_326 + 44 len 20]
    _329 = mem[_326 + 64]
    mem[_309 + 708] = mem[mem[_326 + 64]]
    mem[_309 + 740] = mem[_329 + 32]
    _332 = mem[_326 + 96]
    mem[_309 + 772] = 160
    _333 = mem[_332]
    mem[_309 + 804] = mem[mem[_332]]
    _335 = mem[_333 + 32]
    mem[_309 + 836] = mem[mem[_333 + 32] + 12 len 20]
    mem[_309 + 868] = mem[_335 + 32]
    _338 = mem[_332 + 32]
    mem[_309 + 900] = 128
    _339 = mem[_338]
    mem[_309 + 932] = mem[_338]
    idx = 0
    s = _338 + 32
    t = _309 + 964
    while idx < _339:
        _392 = mem[s]
        mem[t] = mem[mem[s]]
        _396 = mem[_392 + 32]
        mem[t + 32] = mem[mem[_392 + 32]]
        _399 = mem[_396 + 32]
        mem[t + 64] = mem[mem[_396 + 32] + 12 len 20]
        mem[t + 96] = mem[_399 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 128
        continue 
    _394 = mem[224]
    mem[_309 + 228] = (128 * _339) + 896
    mem[_309 + (128 * _339) + 964] = mem[_394]
    mem[_309 + (128 * _339) + 996] = mem[_394 + 44 len 20]
    _401 = mem[_394 + 64]
    mem[_309 + (128 * _339) + 1028] = mem[mem[_394 + 64]]
    mem[_309 + (128 * _339) + 1060] = mem[_401 + 32]
    _405 = mem[_394 + 96]
    mem[_309 + (128 * _339) + 1092] = 160
    _406 = mem[_405]
    mem[_309 + (128 * _339) + 1124] = 32
    _407 = mem[_406]
    mem[_309 + (128 * _339) + 1156] = mem[_406]
    idx = 0
    s = _406 + 32
    t = _309 + (128 * _339) + 1188
    while idx < _407:
        _465 = mem[s]
        mem[t] = mem[mem[s]]
        _469 = mem[_465 + 32]
        mem[t + 32] = mem[mem[_465 + 32]]
        _472 = mem[_469 + 32]
        mem[t + 64] = mem[mem[_469 + 32] + 12 len 20]
        mem[t + 96] = mem[_472 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 128
        continue 
    _467 = mem[256]
    mem[_309 + 260] = mem[mem[256]]
    mem[_309 + 292] = mem[_467 + 32]
    _475 = mem[mem[288]]
    mem[_309 + 324] = mem[mem[mem[288]]]
    _478 = mem[_475 + 32]
    mem[_309 + 356] = mem[mem[_475 + 32]]
    mem[_309 + 388] = mem[_478 + 32]
    mem[_309 + 420] = mem[_478 + 95 len 1]
    _482 = mem[mem[288] + 32]
    mem[_309 + 452] = mem[mem[mem[288] + 32]]
    _484 = mem[_482 + 32]
    mem[_309 + 484] = mem[mem[_482 + 32]]
    mem[_309 + 516] = mem[_484 + 32]
    mem[_309 + 548] = mem[_484 + 95 len 1]
    mem[_309 + 580] = mem[320]
    mem[_309 + 612] = mem[352]
    require ext_code.size(sub_bb1c653fAddress)
    call sub_bb1c653fAddress.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _309 + (128 * _339) + (128 * _407) + -mem[64] + 1184]
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _491 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if mem[_491] != _318:
        mem[mem[64]] = mem[_491] == _318
        return memory
          from mem[64]
           len 32
    _495 = mem[mem[mem[288] + 32]]
    _497 = mem[mem[mem[mem[288] + 32] + 32] + 64]
    _498 = mem[mem[mem[mem[288] + 32] + 32]]
    _499 = mem[mem[mem[mem[288] + 32] + 32] + 32]
    require sub_cba89d58Address
    _501 = mem[64]
    mem[64] = mem[64] + 64
    mem[_501] = 28
    mem[_501 + 32] = '\x19Ethereum Signed Message:\n32'
    _502 = mem[64]
    mem[mem[64] + 32 len 28] = Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32
    mem[mem[64] + 60] = _495
    _505 = mem[64]
    mem[mem[64]] = 60
    mem[64] = mem[64] + 92
    _506 = mem[_505]
    mem[_502 + 92 len floor32(mem[_505])] = mem[_505 + 32 len floor32(mem[_505])]
    mem[_502 + floor32(mem[_505]) + 92] = 256^(-(mem[_505] % 32) + 32) - 1 and mem[_502 + floor32(mem[_505]) + 92] or mem[_505 + floor32(mem[_505]) + 32] and !(256^(-(mem[_505] % 32) + 32) - 1)
    signer = erecover(sha3(mem[mem[64] len _502 + _506 + -mem[64] + 92]), _497 << 248, _498, _499) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_cba89d58Address)
    call sub_cba89d58Address.0x7df73e27 with:
         gas gas_remaining wei
        args address(signer)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function sub_9912f642(?) {
    require calldata.size - 4 >= 128
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
        _43 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        mem[_43] = cd[s]
        require calldata.size + -s - 32 >= 96
        _45 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        mem[_45] = cd[(s + 32)]
        require calldata.size + -s - 64 >= 64
        _47 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        mem[_47] = address(cd[(s + 64)])
        mem[_47 + 32] = cd[(s + 96)]
        mem[_45 + 32] = _47
        mem[_43 + 32] = _45
        mem[t] = _43
        idx = idx + 1
        s = s + 128
        t = t + 32
        continue 
    mem[_28] = _29
    mem[_24 + 96] = _28
    mem[224] = _24
    require calldata.size + -cd[4] - 196 >= 64
    _44 = mem[64]
    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
    mem[64] = mem[64] + 64
    mem[_44] = ('cd', 4)[5]
    mem[_44 + 32] = ('cd', 4)[6]
    mem[256] = _44
    require calldata.size + -cd[4] - 260 >= 256
    _46 = mem[64]
    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
    mem[64] = mem[64] + 64
    require calldata.size + -cd[4] - 260 >= 128
    _48 = mem[64]
    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
    mem[64] = mem[64] + 64
    mem[_48] = ('cd', 4)[7]
    require calldata.size + -cd[4] - 292 >= 96
    _49 = mem[64]
    require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
    mem[64] = mem[64] + 96
    mem[_49] = ('cd', 4)[8]
    mem[_49 + 32] = ('cd', 4)[9]
    mem[_49 + 64] = uint8(('cd', 4)[10])
    mem[_48 + 32] = _49
    mem[_46] = _48
    require calldata.size + -cd[4] - 388 >= 128
    _50 = mem[64]
    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
    mem[64] = mem[64] + 64
    mem[_50] = ('cd', 4)[11]
    require calldata.size + -cd[4] - 420 >= 96
    _51 = mem[64]
    require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
    mem[64] = mem[64] + 96
    mem[_51] = ('cd', 4)[12]
    mem[_51 + 32] = ('cd', 4)[13]
    mem[_51 + 64] = uint8(('cd', 4)[14])
    mem[_50 + 32] = _51
    mem[_46 + 32] = _50
    mem[288] = _46
    mem[320] = ('cd', 4)[15]
    mem[352] = ('cd', 4)[16]
    require cd[36] < 2
    require cd[68] <= test266151307()
    require calldata.size + -cd[68] - 4 >= 576
    _52 = mem[64]
    require mem[64] + 288 >= mem[64] and mem[64] + 288 <= test266151307()
    mem[64] = mem[64] + 288
    mem[_52] = ('cd', 68).length
    mem[_52 + 32] = ('cd', 68)[0]
    require calldata.size + -cd[68] - 68 >= 64
    _53 = mem[64]
    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
    mem[64] = mem[64] + 64
    mem[_53] = address(('cd', 68)[1])
    mem[_53 + 32] = ('cd', 68)[2]
    mem[_52 + 64] = _53
    require ('cd', 68)[3] <= test266151307()
    require calldata.size + -cd[68] + -('cd', 68)[3] - 4 >= 160
    _54 = mem[64]
    require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
    mem[64] = mem[64] + 128
    mem[_54] = cd[(cd[68] + ('cd', 68)[3] + 4)]
    mem[_54 + 32] = address(cd[(cd[68] + ('cd', 68)[3] + 36)])
    require calldata.size + -cd[68] + -('cd', 68)[3] - 68 >= 64
    _55 = mem[64]
    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
    mem[64] = mem[64] + 64
    mem[_55] = cd[(cd[68] + ('cd', 68)[3] + 68)]
    mem[_55 + 32] = cd[(cd[68] + ('cd', 68)[3] + 100)]
    mem[_54 + 64] = _55
    require cd[(cd[68] + ('cd', 68)[3] + 132)] <= test266151307()
    require calldata.size + -cd[68] + -('cd', 68)[3] + -cd[(cd[68] + ('cd', 68)[3] + 132)] - 4 >= 128
    _56 = mem[64]
    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
    mem[64] = mem[64] + 64
    require calldata.size + -cd[68] + -('cd', 68)[3] + -cd[(cd[68] + ('cd', 68)[3] + 132)] - 4 >= 96
    _57 = mem[64]
    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
    mem[64] = mem[64] + 64
    mem[_57] = cd[(cd[68] + ('cd', 68)[3] + cd[(cd[68] + ('cd', 68)[3] + 132)] + 4)]
    require calldata.size + -cd[68] + -('cd', 68)[3] + -cd[(cd[68] + ('cd', 68)[3] + 132)] - 36 >= 64
    _58 = mem[64]
    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
    mem[64] = mem[64] + 64
    mem[_58] = address(cd[(cd[68] + ('cd', 68)[3] + cd[(cd[68] + ('cd', 68)[3] + 132)] + 36)])
    mem[_58 + 32] = cd[(cd[68] + ('cd', 68)[3] + cd[(cd[68] + ('cd', 68)[3] + 132)] + 68)]
    mem[_57 + 32] = _58
    mem[_56] = _57
    require cd[(cd[68] + ('cd', 68)[3] + cd[(cd[68] + ('cd', 68)[3] + 132)] + 100)] <= test266151307()
    require calldata.size > cd[68] + ('cd', 68)[3] + cd[(cd[68] + ('cd', 68)[3] + 132)] + cd[(cd[68] + ('cd', 68)[3] + cd[(cd[68] + ('cd', 68)[3] + 132)] + 100)] + 35
    require cd[(cd[68] + ('cd', 68)[3] + cd[(cd[68] + ('cd', 68)[3] + 132)] + cd[(cd[68] + ('cd', 68)[3] + cd[(cd[68] + ('cd', 68)[3] + 132)] + 100)] + 4)] <= test266151307()
    _59 = mem[64]
    require mem[64] + (32 * cd[(cd[68] + ('cd', 68)[3] + cd[(cd[68] + ('cd', 68)[3] + 132)] + cd[(cd[68] + ('cd', 68)[3] + cd[(cd[68] + ('cd', 68)[3] + 132)] + 100)] + 4)]) + 32 >= mem[64] and mem[64] + (32 * cd[(cd[68] + ('cd', 68)[3] + cd[(cd[68] + ('cd', 68)[3] + 132)] + cd[(cd[68] + ('cd', 68)[3] + cd[(cd[68] + ('cd', 68)[3] + 132)] + 100)] + 4)]) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * cd[(cd[68] + ('cd', 68)[3] + cd[(cd[68] + ('cd', 68)[3] + 132)] + cd[(cd[68] + ('cd', 68)[3] + cd[(cd[68] + ('cd', 68)[3] + 132)] + 100)] + 4)]) + 32
    mem[_59] = cd[(cd[68] + ('cd', 68)[3] + cd[(cd[68] + ('cd', 68)[3] + 132)] + cd[(cd[68] + ('cd', 68)[3] + cd[(cd[68] + ('cd', 68)[3] + 132)] + 100)] + 4)]
    require cd[68] + ('cd', 68)[3] + cd[(cd[68] + ('cd', 68)[3] + 132)] + cd[(cd[68] + ('cd', 68)[3] + cd[(cd[68] + ('cd', 68)[3] + 132)] + 100)] + (128 * cd[(cd[68] + ('cd', 68)[3] + cd[(cd[68] + ('cd', 68)[3] + 132)] + cd[(cd[68] + ('cd', 68)[3] + cd[(cd[68] + ('cd', 68)[3] + 132)] + 100)] + 4)]) + 36 <= calldata.size
    idx = 0
    s = cd[68] + ('cd', 68)[3] + cd[(cd[68] + ('cd', 68)[3] + 132)] + cd[(cd[68] + ('cd', 68)[3] + cd[(cd[68] + ('cd', 68)[3] + 132)] + 100)] + 36
    t = _59 + 32
    while idx < cd[(cd[68] + ('cd', 68)[3] + cd[(cd[68] + ('cd', 68)[3] + 132)] + cd[(cd[68] + ('cd', 68)[3] + cd[(cd[68] + ('cd', 68)[3] + 132)] + 100)] + 4)]:
        require calldata.size - s >= 128
        _96 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        mem[_96] = cd[s]
        require calldata.size + -s - 32 >= 96
        _98 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        mem[_98] = cd[(s + 32)]
        require calldata.size + -s - 64 >= 64
        _100 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        mem[_100] = address(cd[(s + 64)])
        mem[_100 + 32] = cd[(s + 96)]
        mem[_98 + 32] = _100
        mem[_96 + 32] = _98
        mem[t] = _96
        idx = idx + 1
        s = s + 128
        t = t + 32
        continue 
    mem[_56 + 32] = _59
    mem[_54 + 96] = _56
    mem[_52 + 96] = _54
    require ('cd', 68)[4] <= test266151307()
    require calldata.size + -cd[68] + -('cd', 68)[4] - 4 >= 160
    _97 = mem[64]
    require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
    mem[64] = mem[64] + 128
    mem[_97] = cd[(cd[68] + ('cd', 68)[4] + 4)]
    mem[_97 + 32] = address(cd[(cd[68] + ('cd', 68)[4] + 36)])
    require calldata.size + -cd[68] + -('cd', 68)[4] - 68 >= 64
    _99 = mem[64]
    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
    mem[64] = mem[64] + 64
    mem[_99] = cd[(cd[68] + ('cd', 68)[4] + 68)]
    mem[_99 + 32] = cd[(cd[68] + ('cd', 68)[4] + 100)]
    mem[_97 + 64] = _99
    require cd[(cd[68] + ('cd', 68)[4] + 132)] <= test266151307()
    require calldata.size + -cd[68] + -('cd', 68)[4] + -cd[(cd[68] + ('cd', 68)[4] + 132)] - 4 >= 32
    _101 = mem[64]
    require mem[64] + 32 >= mem[64] and mem[64] + 32 <= test266151307()
    mem[64] = mem[64] + 32
    require cd[(cd[68] + ('cd', 68)[4] + cd[(cd[68] + ('cd', 68)[4] + 132)] + 4)] <= test266151307()
    require calldata.size > cd[68] + ('cd', 68)[4] + cd[(cd[68] + ('cd', 68)[4] + 132)] + cd[(cd[68] + ('cd', 68)[4] + cd[(cd[68] + ('cd', 68)[4] + 132)] + 4)] + 35
    require cd[(cd[68] + ('cd', 68)[4] + cd[(cd[68] + ('cd', 68)[4] + 132)] + cd[(cd[68] + ('cd', 68)[4] + cd[(cd[68] + ('cd', 68)[4] + 132)] + 4)] + 4)] <= test266151307()
    _102 = mem[64]
    require mem[64] + (32 * cd[(cd[68] + ('cd', 68)[4] + cd[(cd[68] + ('cd', 68)[4] + 132)] + cd[(cd[68] + ('cd', 68)[4] + cd[(cd[68] + ('cd', 68)[4] + 132)] + 4)] + 4)]) + 32 >= mem[64] and mem[64] + (32 * cd[(cd[68] + ('cd', 68)[4] + cd[(cd[68] + ('cd', 68)[4] + 132)] + cd[(cd[68] + ('cd', 68)[4] + cd[(cd[68] + ('cd', 68)[4] + 132)] + 4)] + 4)]) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * cd[(cd[68] + ('cd', 68)[4] + cd[(cd[68] + ('cd', 68)[4] + 132)] + cd[(cd[68] + ('cd', 68)[4] + cd[(cd[68] + ('cd', 68)[4] + 132)] + 4)] + 4)]) + 32
    mem[_102] = cd[(cd[68] + ('cd', 68)[4] + cd[(cd[68] + ('cd', 68)[4] + 132)] + cd[(cd[68] + ('cd', 68)[4] + cd[(cd[68] + ('cd', 68)[4] + 132)] + 4)] + 4)]
    require cd[68] + ('cd', 68)[4] + cd[(cd[68] + ('cd', 68)[4] + 132)] + cd[(cd[68] + ('cd', 68)[4] + cd[(cd[68] + ('cd', 68)[4] + 132)] + 4)] + (128 * cd[(cd[68] + ('cd', 68)[4] + cd[(cd[68] + ('cd', 68)[4] + 132)] + cd[(cd[68] + ('cd', 68)[4] + cd[(cd[68] + ('cd', 68)[4] + 132)] + 4)] + 4)]) + 36 <= calldata.size
    idx = 0
    s = cd[68] + ('cd', 68)[4] + cd[(cd[68] + ('cd', 68)[4] + 132)] + cd[(cd[68] + ('cd', 68)[4] + cd[(cd[68] + ('cd', 68)[4] + 132)] + 4)] + 36
    t = _102 + 32
    while idx < cd[(cd[68] + ('cd', 68)[4] + cd[(cd[68] + ('cd', 68)[4] + 132)] + cd[(cd[68] + ('cd', 68)[4] + cd[(cd[68] + ('cd', 68)[4] + 132)] + 4)] + 4)]:
        require calldata.size - s >= 128
        _132 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        mem[_132] = cd[s]
        require calldata.size + -s - 32 >= 96
        _134 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        mem[_134] = cd[(s + 32)]
        require calldata.size + -s - 64 >= 64
        _136 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        mem[_136] = address(cd[(s + 64)])
        mem[_136 + 32] = cd[(s + 96)]
        mem[_134 + 32] = _136
        mem[_132 + 32] = _134
        mem[t] = _132
        idx = idx + 1
        s = s + 128
        t = t + 32
        continue 
    mem[_101] = _102
    mem[_97 + 96] = _101
    mem[_52 + 128] = _97
    require calldata.size + -cd[68] - 196 >= 64
    _133 = mem[64]
    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
    mem[64] = mem[64] + 64
    mem[_133] = ('cd', 68)[5]
    mem[_133 + 32] = ('cd', 68)[6]
    mem[_52 + 160] = _133
    require calldata.size + -cd[68] - 260 >= 256
    _135 = mem[64]
    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
    mem[64] = mem[64] + 64
    require calldata.size + -cd[68] - 260 >= 128
    _137 = mem[64]
    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
    mem[64] = mem[64] + 64
    mem[_137] = ('cd', 68)[7]
    require calldata.size + -cd[68] - 292 >= 96
    _138 = mem[64]
    require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
    mem[64] = mem[64] + 96
    mem[_138] = ('cd', 68)[8]
    mem[_138 + 32] = ('cd', 68)[9]
    mem[_138 + 64] = uint8(('cd', 68)[10])
    mem[_137 + 32] = _138
    mem[_135] = _137
    require calldata.size + -cd[68] - 388 >= 128
    _139 = mem[64]
    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
    mem[64] = mem[64] + 64
    mem[_139] = ('cd', 68)[11]
    require calldata.size + -cd[68] - 420 >= 96
    _140 = mem[64]
    require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
    mem[64] = mem[64] + 96
    mem[_140] = ('cd', 68)[12]
    mem[_140 + 32] = ('cd', 68)[13]
    mem[_140 + 64] = uint8(('cd', 68)[14])
    mem[_139 + 32] = _140
    mem[_135 + 32] = _139
    mem[_52 + 192] = _135
    mem[_52 + 224] = ('cd', 68)[15]
    mem[_52 + 256] = ('cd', 68)[16]
    require cd[100] < 2
    require cd[36] <= 1
    require cd[100] <= 1
    if not cd[36]:
        require mem[mem[192]] + 1 >= mem[mem[192]]
        if not cd[100]:
            mem[mem[64]] = mem[mem[192]] + 1 == mem[mem[_52 + 96]]
        else:
            mem[mem[64]] = mem[mem[192]] + 1 == mem[_97]
    else:
        require mem[mem[224]] + 1 >= mem[mem[224]]
        if not cd[100]:
            mem[mem[64]] = mem[mem[224]] + 1 == mem[mem[_52 + 96]]
        else:
            mem[mem[64]] = mem[mem[224]] + 1 == mem[_97]
    return memory
      from mem[64]
       len 32
}

function sub_143275bf(?) {
    require calldata.size - 4 >= 64
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
        _44 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        mem[_44] = cd[s]
        require calldata.size + -s - 32 >= 96
        _46 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        mem[_46] = cd[(s + 32)]
        require calldata.size + -s - 64 >= 64
        _48 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        mem[_48] = address(cd[(s + 64)])
        mem[_48 + 32] = cd[(s + 96)]
        mem[_46 + 32] = _48
        mem[_44 + 32] = _46
        mem[t] = _44
        idx = idx + 1
        s = s + 128
        t = t + 32
        continue 
    mem[_28] = _29
    mem[_24 + 96] = _28
    mem[224] = _24
    require calldata.size + -cd[4] - 196 >= 64
    _45 = mem[64]
    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
    mem[64] = mem[64] + 64
    mem[_45] = ('cd', 4)[5]
    mem[_45 + 32] = ('cd', 4)[6]
    mem[256] = _45
    require calldata.size + -cd[4] - 260 >= 256
    _47 = mem[64]
    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
    mem[64] = mem[64] + 64
    require calldata.size + -cd[4] - 260 >= 128
    _49 = mem[64]
    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
    mem[64] = mem[64] + 64
    mem[_49] = ('cd', 4)[7]
    require calldata.size + -cd[4] - 292 >= 96
    _50 = mem[64]
    require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
    mem[64] = mem[64] + 96
    mem[_50] = ('cd', 4)[8]
    mem[_50 + 32] = ('cd', 4)[9]
    mem[_50 + 64] = uint8(('cd', 4)[10])
    mem[_49 + 32] = _50
    mem[_47] = _49
    require calldata.size + -cd[4] - 388 >= 128
    _51 = mem[64]
    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
    mem[64] = mem[64] + 64
    mem[_51] = ('cd', 4)[11]
    require calldata.size + -cd[4] - 420 >= 96
    _52 = mem[64]
    require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
    mem[64] = mem[64] + 96
    mem[_52] = ('cd', 4)[12]
    mem[_52 + 32] = ('cd', 4)[13]
    mem[_52 + 64] = uint8(('cd', 4)[14])
    mem[_51 + 32] = _52
    mem[_47 + 32] = _51
    mem[288] = _47
    mem[320] = ('cd', 4)[15]
    mem[352] = ('cd', 4)[16]
    require cd[36] <= test266151307()
    require calldata.size + -cd[36] - 4 >= 576
    _53 = mem[64]
    require mem[64] + 288 >= mem[64] and mem[64] + 288 <= test266151307()
    mem[64] = mem[64] + 288
    mem[_53] = ('cd', 36).length
    mem[_53 + 32] = ('cd', 36)[0]
    require calldata.size + -cd[36] - 68 >= 64
    _54 = mem[64]
    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
    mem[64] = mem[64] + 64
    mem[_54] = address(('cd', 36)[1])
    mem[_54 + 32] = ('cd', 36)[2]
    mem[_53 + 64] = _54
    require ('cd', 36)[3] <= test266151307()
    require calldata.size + -cd[36] + -('cd', 36)[3] - 4 >= 160
    _55 = mem[64]
    require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
    mem[64] = mem[64] + 128
    mem[_55] = cd[(cd[36] + ('cd', 36)[3] + 4)]
    mem[_55 + 32] = address(cd[(cd[36] + ('cd', 36)[3] + 36)])
    require calldata.size + -cd[36] + -('cd', 36)[3] - 68 >= 64
    _56 = mem[64]
    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
    mem[64] = mem[64] + 64
    mem[_56] = cd[(cd[36] + ('cd', 36)[3] + 68)]
    mem[_56 + 32] = cd[(cd[36] + ('cd', 36)[3] + 100)]
    mem[_55 + 64] = _56
    require cd[(cd[36] + ('cd', 36)[3] + 132)] <= test266151307()
    require calldata.size + -cd[36] + -('cd', 36)[3] + -cd[(cd[36] + ('cd', 36)[3] + 132)] - 4 >= 128
    _57 = mem[64]
    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
    mem[64] = mem[64] + 64
    require calldata.size + -cd[36] + -('cd', 36)[3] + -cd[(cd[36] + ('cd', 36)[3] + 132)] - 4 >= 96
    _58 = mem[64]
    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
    mem[64] = mem[64] + 64
    mem[_58] = cd[(cd[36] + ('cd', 36)[3] + cd[(cd[36] + ('cd', 36)[3] + 132)] + 4)]
    require calldata.size + -cd[36] + -('cd', 36)[3] + -cd[(cd[36] + ('cd', 36)[3] + 132)] - 36 >= 64
    _59 = mem[64]
    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
    mem[64] = mem[64] + 64
    mem[_59] = address(cd[(cd[36] + ('cd', 36)[3] + cd[(cd[36] + ('cd', 36)[3] + 132)] + 36)])
    mem[_59 + 32] = cd[(cd[36] + ('cd', 36)[3] + cd[(cd[36] + ('cd', 36)[3] + 132)] + 68)]
    mem[_58 + 32] = _59
    mem[_57] = _58
    require cd[(cd[36] + ('cd', 36)[3] + cd[(cd[36] + ('cd', 36)[3] + 132)] + 100)] <= test266151307()
    require calldata.size > cd[36] + ('cd', 36)[3] + cd[(cd[36] + ('cd', 36)[3] + 132)] + cd[(cd[36] + ('cd', 36)[3] + cd[(cd[36] + ('cd', 36)[3] + 132)] + 100)] + 35
    require cd[(cd[36] + ('cd', 36)[3] + cd[(cd[36] + ('cd', 36)[3] + 132)] + cd[(cd[36] + ('cd', 36)[3] + cd[(cd[36] + ('cd', 36)[3] + 132)] + 100)] + 4)] <= test266151307()
    _60 = mem[64]
    require mem[64] + (32 * cd[(cd[36] + ('cd', 36)[3] + cd[(cd[36] + ('cd', 36)[3] + 132)] + cd[(cd[36] + ('cd', 36)[3] + cd[(cd[36] + ('cd', 36)[3] + 132)] + 100)] + 4)]) + 32 >= mem[64] and mem[64] + (32 * cd[(cd[36] + ('cd', 36)[3] + cd[(cd[36] + ('cd', 36)[3] + 132)] + cd[(cd[36] + ('cd', 36)[3] + cd[(cd[36] + ('cd', 36)[3] + 132)] + 100)] + 4)]) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * cd[(cd[36] + ('cd', 36)[3] + cd[(cd[36] + ('cd', 36)[3] + 132)] + cd[(cd[36] + ('cd', 36)[3] + cd[(cd[36] + ('cd', 36)[3] + 132)] + 100)] + 4)]) + 32
    mem[_60] = cd[(cd[36] + ('cd', 36)[3] + cd[(cd[36] + ('cd', 36)[3] + 132)] + cd[(cd[36] + ('cd', 36)[3] + cd[(cd[36] + ('cd', 36)[3] + 132)] + 100)] + 4)]
    require cd[36] + ('cd', 36)[3] + cd[(cd[36] + ('cd', 36)[3] + 132)] + cd[(cd[36] + ('cd', 36)[3] + cd[(cd[36] + ('cd', 36)[3] + 132)] + 100)] + (128 * cd[(cd[36] + ('cd', 36)[3] + cd[(cd[36] + ('cd', 36)[3] + 132)] + cd[(cd[36] + ('cd', 36)[3] + cd[(cd[36] + ('cd', 36)[3] + 132)] + 100)] + 4)]) + 36 <= calldata.size
    idx = 0
    s = cd[36] + ('cd', 36)[3] + cd[(cd[36] + ('cd', 36)[3] + 132)] + cd[(cd[36] + ('cd', 36)[3] + cd[(cd[36] + ('cd', 36)[3] + 132)] + 100)] + 36
    t = _60 + 32
    while idx < cd[(cd[36] + ('cd', 36)[3] + cd[(cd[36] + ('cd', 36)[3] + 132)] + cd[(cd[36] + ('cd', 36)[3] + cd[(cd[36] + ('cd', 36)[3] + 132)] + 100)] + 4)]:
        require calldata.size - s >= 128
        _220 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        mem[_220] = cd[s]
        require calldata.size + -s - 32 >= 96
        _222 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        mem[_222] = cd[(s + 32)]
        require calldata.size + -s - 64 >= 64
        _224 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        mem[_224] = address(cd[(s + 64)])
        mem[_224 + 32] = cd[(s + 96)]
        mem[_222 + 32] = _224
        mem[_220 + 32] = _222
        mem[t] = _220
        idx = idx + 1
        s = s + 128
        t = t + 32
        continue 
    mem[_57 + 32] = _60
    mem[_55 + 96] = _57
    mem[_53 + 96] = _55
    require ('cd', 36)[4] <= test266151307()
    require calldata.size + -cd[36] + -('cd', 36)[4] - 4 >= 160
    _221 = mem[64]
    require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
    mem[64] = mem[64] + 128
    mem[_221] = cd[(cd[36] + ('cd', 36)[4] + 4)]
    mem[_221 + 32] = address(cd[(cd[36] + ('cd', 36)[4] + 36)])
    require calldata.size + -cd[36] + -('cd', 36)[4] - 68 >= 64
    _223 = mem[64]
    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
    mem[64] = mem[64] + 64
    mem[_223] = cd[(cd[36] + ('cd', 36)[4] + 68)]
    mem[_223 + 32] = cd[(cd[36] + ('cd', 36)[4] + 100)]
    mem[_221 + 64] = _223
    require cd[(cd[36] + ('cd', 36)[4] + 132)] <= test266151307()
    require calldata.size + -cd[36] + -('cd', 36)[4] + -cd[(cd[36] + ('cd', 36)[4] + 132)] - 4 >= 32
    _225 = mem[64]
    require mem[64] + 32 >= mem[64] and mem[64] + 32 <= test266151307()
    mem[64] = mem[64] + 32
    require cd[(cd[36] + ('cd', 36)[4] + cd[(cd[36] + ('cd', 36)[4] + 132)] + 4)] <= test266151307()
    require calldata.size > cd[36] + ('cd', 36)[4] + cd[(cd[36] + ('cd', 36)[4] + 132)] + cd[(cd[36] + ('cd', 36)[4] + cd[(cd[36] + ('cd', 36)[4] + 132)] + 4)] + 35
    require cd[(cd[36] + ('cd', 36)[4] + cd[(cd[36] + ('cd', 36)[4] + 132)] + cd[(cd[36] + ('cd', 36)[4] + cd[(cd[36] + ('cd', 36)[4] + 132)] + 4)] + 4)] <= test266151307()
    _226 = mem[64]
    require mem[64] + (32 * cd[(cd[36] + ('cd', 36)[4] + cd[(cd[36] + ('cd', 36)[4] + 132)] + cd[(cd[36] + ('cd', 36)[4] + cd[(cd[36] + ('cd', 36)[4] + 132)] + 4)] + 4)]) + 32 >= mem[64] and mem[64] + (32 * cd[(cd[36] + ('cd', 36)[4] + cd[(cd[36] + ('cd', 36)[4] + 132)] + cd[(cd[36] + ('cd', 36)[4] + cd[(cd[36] + ('cd', 36)[4] + 132)] + 4)] + 4)]) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * cd[(cd[36] + ('cd', 36)[4] + cd[(cd[36] + ('cd', 36)[4] + 132)] + cd[(cd[36] + ('cd', 36)[4] + cd[(cd[36] + ('cd', 36)[4] + 132)] + 4)] + 4)]) + 32
    mem[_226] = cd[(cd[36] + ('cd', 36)[4] + cd[(cd[36] + ('cd', 36)[4] + 132)] + cd[(cd[36] + ('cd', 36)[4] + cd[(cd[36] + ('cd', 36)[4] + 132)] + 4)] + 4)]
    require cd[36] + ('cd', 36)[4] + cd[(cd[36] + ('cd', 36)[4] + 132)] + cd[(cd[36] + ('cd', 36)[4] + cd[(cd[36] + ('cd', 36)[4] + 132)] + 4)] + (128 * cd[(cd[36] + ('cd', 36)[4] + cd[(cd[36] + ('cd', 36)[4] + 132)] + cd[(cd[36] + ('cd', 36)[4] + cd[(cd[36] + ('cd', 36)[4] + 132)] + 4)] + 4)]) + 36 <= calldata.size
    idx = 0
    s = cd[36] + ('cd', 36)[4] + cd[(cd[36] + ('cd', 36)[4] + 132)] + cd[(cd[36] + ('cd', 36)[4] + cd[(cd[36] + ('cd', 36)[4] + 132)] + 4)] + 36
    t = _226 + 32
    while idx < cd[(cd[36] + ('cd', 36)[4] + cd[(cd[36] + ('cd', 36)[4] + 132)] + cd[(cd[36] + ('cd', 36)[4] + cd[(cd[36] + ('cd', 36)[4] + 132)] + 4)] + 4)]:
        require calldata.size - s >= 128
        _379 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        mem[_379] = cd[s]
        require calldata.size + -s - 32 >= 96
        _381 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        mem[_381] = cd[(s + 32)]
        require calldata.size + -s - 64 >= 64
        _383 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        mem[_383] = address(cd[(s + 64)])
        mem[_383 + 32] = cd[(s + 96)]
        mem[_381 + 32] = _383
        mem[_379 + 32] = _381
        mem[t] = _379
        idx = idx + 1
        s = s + 128
        t = t + 32
        continue 
    mem[_225] = _226
    mem[_221 + 96] = _225
    mem[_53 + 128] = _221
    require calldata.size + -cd[36] - 196 >= 64
    _380 = mem[64]
    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
    mem[64] = mem[64] + 64
    mem[_380] = ('cd', 36)[5]
    mem[_380 + 32] = ('cd', 36)[6]
    mem[_53 + 160] = _380
    require calldata.size + -cd[36] - 260 >= 256
    _382 = mem[64]
    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
    mem[64] = mem[64] + 64
    require calldata.size + -cd[36] - 260 >= 128
    _384 = mem[64]
    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
    mem[64] = mem[64] + 64
    mem[_384] = ('cd', 36)[7]
    require calldata.size + -cd[36] - 292 >= 96
    _385 = mem[64]
    require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
    mem[64] = mem[64] + 96
    mem[_385] = ('cd', 36)[8]
    mem[_385 + 32] = ('cd', 36)[9]
    mem[_385 + 64] = uint8(('cd', 36)[10])
    mem[_384 + 32] = _385
    mem[_382] = _384
    require calldata.size + -cd[36] - 388 >= 128
    _386 = mem[64]
    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
    mem[64] = mem[64] + 64
    mem[_386] = ('cd', 36)[11]
    require calldata.size + -cd[36] - 420 >= 96
    _387 = mem[64]
    require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
    mem[64] = mem[64] + 96
    mem[_387] = ('cd', 36)[12]
    mem[_387 + 32] = ('cd', 36)[13]
    mem[_387 + 64] = uint8(('cd', 36)[14])
    mem[_386 + 32] = _387
    mem[_382 + 32] = _386
    mem[_53 + 192] = _382
    mem[_53 + 224] = ('cd', 36)[15]
    mem[_53 + 256] = ('cd', 36)[16]
    _388 = mem[64]
    mem[64] = mem[64] + 96
    mem[_388] = 0
    _389 = mem[64]
    mem[64] = mem[64] + 64
    mem[_389] = 0
    mem[_389 + 32] = 0
    mem[_388 + 32] = _389
    _390 = mem[64]
    mem[64] = mem[64] + 96
    mem[_390] = 0
    _391 = mem[64]
    mem[64] = mem[64] + 64
    mem[_391] = 0
    mem[_391 + 32] = 0
    mem[_390 + 32] = _391
    _394 = mem[mem[mem[192] + 96] + 32]
    _398 = mem[mem[mem[mem[_53 + 96] + 96]] + 32]
    _399 = mem[64]
    mem[64] = mem[64] + 96
    mem[_399] = 0
    _400 = mem[64]
    mem[64] = mem[64] + 64
    mem[_400] = 0
    mem[_400 + 32] = 0
    mem[_399 + 32] = _400
    idx = 0
    while idx < mem[_394]:
        require idx < mem[_394]
        if mem[mem[mem[mem[_394 + (32 * idx) + 32] + 32] + 32] + 12 len 20] != mem[_398 + 12 len 20]:
            idx = idx + 1
            continue 
        require idx < mem[_394]
        if mem[mem[mem[mem[(32 * idx) + _394 + 32] + 32] + 32] + 32] != mem[_398 + 32]:
            idx = idx + 1
            continue 
        require idx < mem[_394]
        if mem[mem[_394 + (32 * idx) + 32]]:
            idx = idx + 1
            continue 
        require idx < mem[_394]
        _561 = mem[mem[(32 * idx) + _394 + 32] + 32]
        _575 = mem[mem[mem[_53 + 96] + 96] + 32]
        _577 = mem[mem[mem[mem[_53 + 96] + 96]] + 32]
        _582 = mem[64]
        mem[64] = mem[64] + 96
        mem[_582] = 0
        _584 = mem[64]
        mem[64] = mem[64] + 64
        mem[_584] = 0
        mem[_584 + 32] = 0
        mem[_582 + 32] = _584
        idx = 0
        while idx < mem[_575]:
            require idx < mem[_575]
            if mem[mem[mem[mem[_575 + (32 * idx) + 32] + 32] + 32] + 12 len 20] != mem[_577 + 12 len 20]:
                idx = idx + 1
                continue 
            require idx < mem[_575]
            if mem[mem[mem[mem[(32 * idx) + _575 + 32] + 32] + 32] + 32] != mem[_577 + 32]:
                idx = idx + 1
                continue 
            require idx < mem[_575]
            if mem[mem[_575 + (32 * idx) + 32]]:
                idx = idx + 1
                continue 
            require idx < mem[_575]
            if mem[mem[mem[mem[_53 + 96] + 96]]] < 0:
                require mem[mem[mem[mem[_53 + 96] + 96]]] + mem[_561] < mem[_561]
            else:
                if mem[mem[mem[mem[_53 + 96] + 96]]] + mem[_561] < mem[_561]:
                    require mem[mem[mem[mem[_53 + 96] + 96]]] < 0
                    require mem[mem[mem[mem[_53 + 96] + 96]]] + mem[_561] < mem[_561]
            mem[mem[64]] = mem[mem[mem[(32 * idx) + _575 + 32] + 32]] == mem[mem[mem[mem[_53 + 96] + 96]]] + mem[_561]
            return memory
              from mem[64]
               len 32
        _666 = mem[64]
        mem[64] = mem[64] + 64
        mem[_666] = 0
        mem[_666 + 32] = _577
        if mem[mem[mem[mem[_53 + 96] + 96]]] < 0:
            require mem[mem[mem[mem[_53 + 96] + 96]]] + mem[_561] < mem[_561]
        else:
            if mem[mem[mem[mem[_53 + 96] + 96]]] + mem[_561] < mem[_561]:
                require mem[mem[mem[mem[_53 + 96] + 96]]] < 0
                require mem[mem[mem[mem[_53 + 96] + 96]]] + mem[_561] < mem[_561]
        mem[mem[64]] = 0 == mem[mem[mem[mem[_53 + 96] + 96]]] + mem[_561]
        return memory
          from mem[64]
           len 32
    _532 = mem[64]
    mem[64] = mem[64] + 64
    mem[_532] = 0
    mem[_532 + 32] = _398
    _541 = mem[mem[mem[_53 + 96] + 96] + 32]
    _543 = mem[mem[mem[mem[_53 + 96] + 96]] + 32]
    _550 = mem[64]
    mem[64] = mem[64] + 96
    mem[_550] = 0
    _551 = mem[64]
    mem[64] = mem[64] + 64
    mem[_551] = 0
    mem[_551 + 32] = 0
    mem[_550 + 32] = _551
    idx = 0
    while idx < mem[_541]:
        require idx < mem[_541]
        if mem[mem[mem[mem[_541 + (32 * idx) + 32] + 32] + 32] + 12 len 20] != mem[_543 + 12 len 20]:
            idx = idx + 1
            continue 
        require idx < mem[_541]
        if mem[mem[mem[mem[(32 * idx) + _541 + 32] + 32] + 32] + 32] != mem[_543 + 32]:
            idx = idx + 1
            continue 
        require idx < mem[_541]
        if mem[mem[_541 + (32 * idx) + 32]]:
            idx = idx + 1
            continue 
        require idx < mem[_541]
        if mem[mem[mem[mem[_53 + 96] + 96]]] < 0:
            require mem[mem[mem[mem[_53 + 96] + 96]]] < 0
        else:
            if mem[mem[mem[mem[_53 + 96] + 96]]] < 0:
                require mem[mem[mem[mem[_53 + 96] + 96]]] < 0
                require mem[mem[mem[mem[_53 + 96] + 96]]] < 0
        mem[mem[64]] = mem[mem[mem[(32 * idx) + _541 + 32] + 32]] == mem[mem[mem[mem[_53 + 96] + 96]]]
        return memory
          from mem[64]
           len 32
    _663 = mem[64]
    mem[64] = mem[64] + 64
    mem[_663] = 0
    mem[_663 + 32] = _543
    if mem[mem[mem[mem[_53 + 96] + 96]]] < 0:
        require mem[mem[mem[mem[_53 + 96] + 96]]] < 0
    else:
        if mem[mem[mem[mem[_53 + 96] + 96]]] < 0:
            require mem[mem[mem[mem[_53 + 96] + 96]]] < 0
            require mem[mem[mem[mem[_53 + 96] + 96]]] < 0
    mem[mem[64]] = 0 == mem[mem[mem[mem[_53 + 96] + 96]]]
    return memory
      from mem[64]
       len 32
}



}
