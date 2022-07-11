contract main {




// =====================  Runtime code  =====================


#
#  - sub_c1c68165(?)
#
uint8 stor0;
address stor0;
address deployerAddress; offset 8
address operatorAddress;
address configurationAddress;
uint8 stor3; offset 160
address sub_19139092Address;
uint8 stor4; offset 160
address sub_e8ae41e3Address;
address sub_432737a9Address;
address sub_fa7424f2Address;
address sub_51d7cd61Address;

function sub_19139092(?) {
    return sub_19139092Address
}

function sub_240625d8(?) {
    return bool(stor4)
}

function sub_2f013a00(?) {
    return bool(uint8(stor0.field_0))
}

function sub_3e59b706(?) {
    return bool(stor3)
}

function sub_432737a9(?) {
    return sub_432737a9Address
}

function destructor() {
    return deployerAddress
}

function sub_51d7cd61(?) {
    return sub_51d7cd61Address
}

function operator() {
    return operatorAddress
}

function configuration() {
    return configurationAddress
}

function deployer() {
    return deployerAddress
}

function sub_e8ae41e3(?) {
    return sub_e8ae41e3Address
}

function sub_fa7424f2(?) {
    return sub_fa7424f2Address
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

function freezeWalletLocker() {
    require msg.sender == deployerAddress
    stor4 = 1
    emit FreezeWalletLockerEvent()
}

function freezeBalanceTracker() {
    require msg.sender == deployerAddress
    stor3 = 1
    emit FreezeBalanceTrackerEvent()
}

function disableSelfDestruction() {
    require deployerAddress == msg.sender
    uint8(stor0.field_0) = 1
    emit SelfDestructionDisabledEvent(msg.sender);
}

function sub_2aa1c9d9(?) {
    require calldata.size - 4 >= 32
    require msg.sender == deployerAddress
    require arg1
    sub_51d7cd61Address = arg1
    emit 0x4f712533: sub_51d7cd61Address, arg1
}

function sub_3a9a5169(?) {
    require calldata.size - 4 >= 32
    require msg.sender == deployerAddress
    require arg1
    sub_432737a9Address = arg1
    emit 0xc6df38d2: sub_432737a9Address, arg1
}

function sub_6ccb43c8(?) {
    require calldata.size - 4 >= 32
    require msg.sender == deployerAddress
    require arg1
    sub_fa7424f2Address = arg1
    emit 0xf21c1272: sub_fa7424f2Address, arg1
}

function setConfiguration(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == deployerAddress
    require arg1
    if configurationAddress != arg1:
        configurationAddress = arg1
        emit 0x634f61bf: configurationAddress, arg1
}

function sub_598b75ad(?) {
    require calldata.size - 4 >= 32
    require msg.sender == deployerAddress
    require arg1
    if sub_19139092Address != arg1:
        require not stor3
        sub_19139092Address = arg1
        emit 0xb2a91d3a: sub_19139092Address, arg1
}

function sub_892860b2(?) {
    require calldata.size - 4 >= 32
    require msg.sender == deployerAddress
    require arg1
    if sub_e8ae41e3Address != arg1:
        require not stor4
        sub_e8ae41e3Address = arg1
        emit 0xa44d361e: sub_e8ae41e3Address, arg1
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

function sub_16987929(?) {
    require calldata.size - 4 >= 96
    require ext_code.size(sub_fa7424f2Address)
    call sub_fa7424f2Address.0xc46fcd75 with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_42cb4587(?) {
    require calldata.size - 4 >= 96
    require ext_code.size(sub_fa7424f2Address)
    call sub_fa7424f2Address.0x600e461e with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_6de6a5d2(?) {
    require calldata.size - 4 >= 96
    require ext_code.size(sub_fa7424f2Address)
    call sub_fa7424f2Address.0x6e90a596 with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_adfb6778(?) {
    require calldata.size - 4 >= 96
    require ext_code.size(sub_fa7424f2Address)
    call sub_fa7424f2Address.0x1b90e3c1 with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_cdbf9419(?) {
    require calldata.size - 4 >= 96
    require ext_code.size(sub_fa7424f2Address)
    call sub_fa7424f2Address.0x2ee2ed25 with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_d5b68c62(?) {
    require calldata.size - 4 >= 96
    require ext_code.size(sub_fa7424f2Address)
    call sub_fa7424f2Address.0x8b4ed4c2 with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_fb1a825e(?) {
    require calldata.size - 4 >= 96
    require ext_code.size(sub_fa7424f2Address)
    call sub_fa7424f2Address.0x56ec9075 with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_3bebdcb5(?) {
    require calldata.size - 4 >= 96
    require ext_code.size(sub_fa7424f2Address)
    call sub_fa7424f2Address.0x5482c735 with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function sub_46d1d3c4(?) {
    require calldata.size - 4 >= 96
    require ext_code.size(sub_fa7424f2Address)
    call sub_fa7424f2Address.0x7ff81c37 with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function sub_7da5b11c(?) {
    require calldata.size - 4 >= 96
    require ext_code.size(sub_fa7424f2Address)
    call sub_fa7424f2Address.0xcf293aac with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function sub_bb9357de(?) {
    require calldata.size - 4 >= 96
    require ext_code.size(sub_fa7424f2Address)
    call sub_fa7424f2Address.0x3b238528 with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function sub_fcd30b02(?) {
    require calldata.size - 4 >= 96
    require ext_code.size(sub_fa7424f2Address)
    call sub_fa7424f2Address.0x56587229 with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function sub_0712abb0(?) {
    require calldata.size - 4 >= 96
    require ext_code.size(sub_fa7424f2Address)
    call sub_fa7424f2Address.0xb6e2fc33 with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] < 2
    return ext_call.return_data[0]
}

function sub_c19df1e4(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(sub_fa7424f2Address)
    call sub_fa7424f2Address.0x3b238528 with:
         gas gas_remaining wei
        args msg.sender, address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(sub_fa7424f2Address)
    call sub_fa7424f2Address.0x7ff81c37 with:
         gas gas_remaining wei
        args msg.sender, address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
    require ext_code.size(sub_fa7424f2Address)
    call sub_fa7424f2Address.0xa495a306 with:
         gas gas_remaining wei
        args msg.sender, address(arg1), arg2, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_fa7424f2Address)
    call sub_fa7424f2Address.0x2ee2ed25 with:
         gas gas_remaining wei
        args msg.sender, address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_fa7424f2Address)
    call sub_fa7424f2Address.0x600e461e with:
         gas gas_remaining wei
        args msg.sender, address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_fa7424f2Address)
    call sub_fa7424f2Address.0xc46fcd75 with:
         gas gas_remaining wei
        args msg.sender, address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x2f3367cd: msg.sender, ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], address(arg1), arg2
}

function sub_972fcee0(?) {
    require calldata.size - 4 >= 96
    require msg.sender == operatorAddress
    require ext_code.size(sub_fa7424f2Address)
    call sub_fa7424f2Address.0x3b238528 with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(sub_fa7424f2Address)
    call sub_fa7424f2Address.0x7ff81c37 with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
    require ext_code.size(sub_fa7424f2Address)
    call sub_fa7424f2Address.0xa495a306 with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_fa7424f2Address)
    call sub_fa7424f2Address.0x2ee2ed25 with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_fa7424f2Address)
    call sub_fa7424f2Address.0x600e461e with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_fa7424f2Address)
    call sub_fa7424f2Address.0xc46fcd75 with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x331a7a95: address(arg1), ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], address(arg2), arg3, msg.sender
}

function sub_ca7f47ed(?) {
    require calldata.size - 4 >= 96
    mem[96] = arg2
    mem[128] = arg3
    mem[160] = 0x2c1da19a00000000000000000000000000000000000000000000000000000000
    mem[164] = arg1
    mem[196] = arg2
    mem[228] = arg3
    require ext_code.size(sub_fa7424f2Address)
    call sub_fa7424f2Address.0x2c1da19a with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 160
    require return_data.size >= 32
    _7 = mem[160 len 4], address(arg1) << 64
    require mem[160 len 4], address(arg1) << 64 <= test266151307()
    require return_data.size + 160 > mem[160 len 4], address(arg1) << 64 + 191
    _8 = mem[mem[160 len 4], address(arg1) << 64 + 160]
    require mem[mem[160 len 4], address(arg1) << 64 + 160] <= test266151307()
    require ceil32(mem[mem[160 len 4], address(arg1) << 64 + 160]) + 32 >= 0 and ceil32(return_data.size) + ceil32(mem[mem[160 len 4], address(arg1) << 64 + 160]) + 192 <= test266151307()
    mem[64] = ceil32(return_data.size) + ceil32(mem[mem[160 len 4], address(arg1) << 64 + 160]) + 192
    mem[ceil32(return_data.size) + 160] = mem[mem[160 len 4], address(arg1) << 64 + 160]
    require _7 + _8 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192 len ceil32(_8)] = mem[_7 + 192 len ceil32(_8)]
    if ceil32(_8) <= _8:
        _22 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _8
        mem[mem[64] + 64 len ceil32(_8)] = mem[ceil32(return_data.size) + 192 len ceil32(_8)]
        if ceil32(_8) <= _8:
            return Array(len=_8, data=mem[mem[64] + 64 len ceil32(_8)])
        mem[_8 + mem[64] + 64] = 0
        return memory
          from mem[64]
           len _22 + ceil32(_8) + -mem[64] + 64
    mem[_8 + ceil32(return_data.size) + 192] = 0
    _23 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _8
    mem[mem[64] + 64 len ceil32(_8)] = mem[ceil32(return_data.size) + 192 len ceil32(_8)]
    if ceil32(_8) <= _8:
        return Array(len=_8, data=mem[mem[64] + 64 len ceil32(_8)])
    mem[_8 + mem[64] + 64] = 0
    return memory
      from mem[64]
       len _23 + ceil32(_8) + -mem[64] + 64
}

function sub_ed8a829d(?) {
    require calldata.size - 4 >= 64
    require cd[36] <= test266151307()
    require calldata.size + -cd[36] - 4 >= 576
    mem[96] = ('cd', 36).length
    mem[128] = ('cd', 36)[0]
    require calldata.size + -cd[36] - 68 >= 64
    mem[384] = address(('cd', 36)[1])
    mem[416] = ('cd', 36)[2]
    mem[160] = 384
    require ('cd', 36)[3] <= test266151307()
    require calldata.size + -cd[36] + -('cd', 36)[3] - 4 >= 160
    mem[448] = cd[(cd[36] + ('cd', 36)[3] + 4)]
    mem[480] = address(cd[(cd[36] + ('cd', 36)[3] + 36)])
    require calldata.size + -cd[36] + -('cd', 36)[3] - 68 >= 64
    mem[576] = cd[(cd[36] + ('cd', 36)[3] + 68)]
    mem[608] = cd[(cd[36] + ('cd', 36)[3] + 100)]
    mem[512] = 576
    require cd[(cd[36] + ('cd', 36)[3] + 132)] <= test266151307()
    require calldata.size + -cd[36] + -('cd', 36)[3] + -cd[(cd[36] + ('cd', 36)[3] + 132)] - 4 >= 128
    require calldata.size + -cd[36] + -('cd', 36)[3] + -cd[(cd[36] + ('cd', 36)[3] + 132)] - 4 >= 96
    mem[704] = cd[(cd[36] + ('cd', 36)[3] + cd[(cd[36] + ('cd', 36)[3] + 132)] + 4)]
    require calldata.size + -cd[36] + -('cd', 36)[3] + -cd[(cd[36] + ('cd', 36)[3] + 132)] - 36 >= 64
    mem[768] = address(cd[(cd[36] + ('cd', 36)[3] + cd[(cd[36] + ('cd', 36)[3] + 132)] + 36)])
    mem[800] = cd[(cd[36] + ('cd', 36)[3] + cd[(cd[36] + ('cd', 36)[3] + 132)] + 68)]
    mem[736] = 768
    mem[640] = 704
    require cd[(cd[36] + ('cd', 36)[3] + cd[(cd[36] + ('cd', 36)[3] + 132)] + 100)] <= test266151307()
    require calldata.size > cd[36] + ('cd', 36)[3] + cd[(cd[36] + ('cd', 36)[3] + 132)] + cd[(cd[36] + ('cd', 36)[3] + cd[(cd[36] + ('cd', 36)[3] + 132)] + 100)] + 35
    require cd[(cd[36] + ('cd', 36)[3] + cd[(cd[36] + ('cd', 36)[3] + 132)] + cd[(cd[36] + ('cd', 36)[3] + cd[(cd[36] + ('cd', 36)[3] + 132)] + 100)] + 4)] <= test266151307()
    require (32 * cd[(cd[36] + ('cd', 36)[3] + cd[(cd[36] + ('cd', 36)[3] + 132)] + cd[(cd[36] + ('cd', 36)[3] + cd[(cd[36] + ('cd', 36)[3] + 132)] + 100)] + 4)]) + 864 >= 832 and (32 * cd[(cd[36] + ('cd', 36)[3] + cd[(cd[36] + ('cd', 36)[3] + 132)] + cd[(cd[36] + ('cd', 36)[3] + cd[(cd[36] + ('cd', 36)[3] + 132)] + 100)] + 4)]) + 864 <= test266151307()
    mem[64] = (32 * cd[(cd[36] + ('cd', 36)[3] + cd[(cd[36] + ('cd', 36)[3] + 132)] + cd[(cd[36] + ('cd', 36)[3] + cd[(cd[36] + ('cd', 36)[3] + 132)] + 100)] + 4)]) + 864
    mem[832] = cd[(cd[36] + ('cd', 36)[3] + cd[(cd[36] + ('cd', 36)[3] + 132)] + cd[(cd[36] + ('cd', 36)[3] + cd[(cd[36] + ('cd', 36)[3] + 132)] + 100)] + 4)]
    require cd[36] + ('cd', 36)[3] + cd[(cd[36] + ('cd', 36)[3] + 132)] + cd[(cd[36] + ('cd', 36)[3] + cd[(cd[36] + ('cd', 36)[3] + 132)] + 100)] + (128 * cd[(cd[36] + ('cd', 36)[3] + cd[(cd[36] + ('cd', 36)[3] + 132)] + cd[(cd[36] + ('cd', 36)[3] + cd[(cd[36] + ('cd', 36)[3] + 132)] + 100)] + 4)]) + 36 <= calldata.size
    idx = 0
    s = cd[36] + ('cd', 36)[3] + cd[(cd[36] + ('cd', 36)[3] + 132)] + cd[(cd[36] + ('cd', 36)[3] + cd[(cd[36] + ('cd', 36)[3] + 132)] + 100)] + 36
    t = 864
    while idx < cd[(cd[36] + ('cd', 36)[3] + cd[(cd[36] + ('cd', 36)[3] + 132)] + cd[(cd[36] + ('cd', 36)[3] + cd[(cd[36] + ('cd', 36)[3] + 132)] + 100)] + 4)]:
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
    require ('cd', 36)[4] <= test266151307()
    require calldata.size + -cd[36] + -('cd', 36)[4] - 4 >= 160
    _24 = mem[64]
    require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
    mem[64] = mem[64] + 128
    mem[_24] = cd[(cd[36] + ('cd', 36)[4] + 4)]
    mem[_24 + 32] = address(cd[(cd[36] + ('cd', 36)[4] + 36)])
    require calldata.size + -cd[36] + -('cd', 36)[4] - 68 >= 64
    _26 = mem[64]
    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
    mem[64] = mem[64] + 64
    mem[_26] = cd[(cd[36] + ('cd', 36)[4] + 68)]
    mem[_26 + 32] = cd[(cd[36] + ('cd', 36)[4] + 100)]
    mem[_24 + 64] = _26
    require cd[(cd[36] + ('cd', 36)[4] + 132)] <= test266151307()
    require calldata.size + -cd[36] + -('cd', 36)[4] + -cd[(cd[36] + ('cd', 36)[4] + 132)] - 4 >= 32
    _28 = mem[64]
    require mem[64] + 32 >= mem[64] and mem[64] + 32 <= test266151307()
    mem[64] = mem[64] + 32
    require cd[(cd[36] + ('cd', 36)[4] + cd[(cd[36] + ('cd', 36)[4] + 132)] + 4)] <= test266151307()
    require calldata.size > cd[36] + ('cd', 36)[4] + cd[(cd[36] + ('cd', 36)[4] + 132)] + cd[(cd[36] + ('cd', 36)[4] + cd[(cd[36] + ('cd', 36)[4] + 132)] + 4)] + 35
    require cd[(cd[36] + ('cd', 36)[4] + cd[(cd[36] + ('cd', 36)[4] + 132)] + cd[(cd[36] + ('cd', 36)[4] + cd[(cd[36] + ('cd', 36)[4] + 132)] + 4)] + 4)] <= test266151307()
    _29 = mem[64]
    require mem[64] + (32 * cd[(cd[36] + ('cd', 36)[4] + cd[(cd[36] + ('cd', 36)[4] + 132)] + cd[(cd[36] + ('cd', 36)[4] + cd[(cd[36] + ('cd', 36)[4] + 132)] + 4)] + 4)]) + 32 >= mem[64] and mem[64] + (32 * cd[(cd[36] + ('cd', 36)[4] + cd[(cd[36] + ('cd', 36)[4] + 132)] + cd[(cd[36] + ('cd', 36)[4] + cd[(cd[36] + ('cd', 36)[4] + 132)] + 4)] + 4)]) + 32 <= test266151307()
    mem[64] = mem[64] + (32 * cd[(cd[36] + ('cd', 36)[4] + cd[(cd[36] + ('cd', 36)[4] + 132)] + cd[(cd[36] + ('cd', 36)[4] + cd[(cd[36] + ('cd', 36)[4] + 132)] + 4)] + 4)]) + 32
    mem[_29] = cd[(cd[36] + ('cd', 36)[4] + cd[(cd[36] + ('cd', 36)[4] + 132)] + cd[(cd[36] + ('cd', 36)[4] + cd[(cd[36] + ('cd', 36)[4] + 132)] + 4)] + 4)]
    require cd[36] + ('cd', 36)[4] + cd[(cd[36] + ('cd', 36)[4] + 132)] + cd[(cd[36] + ('cd', 36)[4] + cd[(cd[36] + ('cd', 36)[4] + 132)] + 4)] + (128 * cd[(cd[36] + ('cd', 36)[4] + cd[(cd[36] + ('cd', 36)[4] + 132)] + cd[(cd[36] + ('cd', 36)[4] + cd[(cd[36] + ('cd', 36)[4] + 132)] + 4)] + 4)]) + 36 <= calldata.size
    idx = 0
    s = cd[36] + ('cd', 36)[4] + cd[(cd[36] + ('cd', 36)[4] + 132)] + cd[(cd[36] + ('cd', 36)[4] + cd[(cd[36] + ('cd', 36)[4] + 132)] + 4)] + 36
    t = _29 + 32
    while idx < cd[(cd[36] + ('cd', 36)[4] + cd[(cd[36] + ('cd', 36)[4] + 132)] + cd[(cd[36] + ('cd', 36)[4] + cd[(cd[36] + ('cd', 36)[4] + 132)] + 4)] + 4)]:
        require calldata.size - s >= 128
        _60 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        mem[_60] = cd[s]
        require calldata.size + -s - 32 >= 96
        _62 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        mem[_62] = cd[(s + 32)]
        require calldata.size + -s - 64 >= 64
        _64 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        mem[_64] = address(cd[(s + 64)])
        mem[_64 + 32] = cd[(s + 96)]
        mem[_62 + 32] = _64
        mem[_60 + 32] = _62
        mem[t] = _60
        idx = idx + 1
        s = s + 128
        t = t + 32
        continue 
    mem[_28] = _29
    mem[_24 + 96] = _28
    mem[224] = _24
    require calldata.size + -cd[36] - 196 >= 64
    _61 = mem[64]
    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
    mem[64] = mem[64] + 64
    mem[_61] = ('cd', 36)[5]
    mem[_61 + 32] = ('cd', 36)[6]
    mem[256] = _61
    require calldata.size + -cd[36] - 260 >= 256
    _63 = mem[64]
    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
    mem[64] = mem[64] + 64
    require calldata.size + -cd[36] - 260 >= 128
    _65 = mem[64]
    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
    mem[64] = mem[64] + 64
    mem[_65] = ('cd', 36)[7]
    require calldata.size + -cd[36] - 292 >= 96
    _66 = mem[64]
    require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
    mem[64] = mem[64] + 96
    mem[_66] = ('cd', 36)[8]
    mem[_66 + 32] = ('cd', 36)[9]
    mem[_66 + 64] = uint8(('cd', 36)[10])
    mem[_65 + 32] = _66
    mem[_63] = _65
    require calldata.size + -cd[36] - 388 >= 128
    _67 = mem[64]
    require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
    mem[64] = mem[64] + 64
    mem[_67] = ('cd', 36)[11]
    require calldata.size + -cd[36] - 420 >= 96
    _68 = mem[64]
    require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
    mem[64] = mem[64] + 96
    mem[_68] = ('cd', 36)[12]
    mem[_68 + 32] = ('cd', 36)[13]
    mem[_68 + 64] = uint8(('cd', 36)[14])
    mem[_67 + 32] = _68
    mem[_63 + 32] = _67
    mem[288] = _63
    mem[320] = ('cd', 36)[15]
    mem[352] = ('cd', 36)[16]
    require ext_code.size(configurationAddress)
    call configurationAddress.0xf71e860f with:
         gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _71 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_71]
    _73 = mem[64]
    mem[mem[64]] = 0x6926832c00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = address(cd[4])
    mem[mem[64] + 36] = 96
    mem[mem[64] + 100] = mem[96]
    mem[mem[64] + 132] = mem[128]
    mem[mem[64] + 164] = mem[mem[160] + 12 len 20]
    mem[mem[64] + 196] = mem[mem[160] + 32]
    mem[mem[64] + 228] = 576
    mem[mem[64] + 676] = mem[mem[192]]
    mem[mem[64] + 708] = mem[mem[192] + 44 len 20]
    _82 = mem[mem[192] + 64]
    mem[mem[64] + 740] = mem[mem[mem[192] + 64]]
    mem[mem[64] + 772] = mem[_82 + 32]
    _85 = mem[mem[192] + 96]
    mem[mem[64] + 804] = 160
    _86 = mem[_85]
    mem[mem[64] + 836] = mem[mem[_85]]
    _88 = mem[_86 + 32]
    mem[mem[64] + 868] = mem[mem[_86 + 32] + 12 len 20]
    mem[mem[64] + 900] = mem[_88 + 32]
    _91 = mem[_85 + 32]
    mem[mem[64] + 932] = 128
    _92 = mem[_91]
    mem[mem[64] + 964] = mem[_91]
    idx = 0
    s = _91 + 32
    t = mem[64] + 996
    while idx < _92:
        _112 = mem[s]
        mem[t] = mem[mem[s]]
        _116 = mem[_112 + 32]
        mem[t + 32] = mem[mem[_112 + 32]]
        _119 = mem[_116 + 32]
        mem[t + 64] = mem[mem[_116 + 32] + 12 len 20]
        mem[t + 96] = mem[_119 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 128
        continue 
    mem[_73 + 260] = (128 * _92) + 896
    mem[_73 + (128 * _92) + 996] = mem[mem[224]]
    mem[_73 + (128 * _92) + 1028] = mem[mem[224] + 44 len 20]
    _121 = mem[mem[224] + 64]
    mem[_73 + (128 * _92) + 1060] = mem[mem[mem[224] + 64]]
    mem[_73 + (128 * _92) + 1092] = mem[_121 + 32]
    _125 = mem[mem[224] + 96]
    mem[_73 + (128 * _92) + 1124] = 160
    _126 = mem[_125]
    mem[_73 + (128 * _92) + 1156] = 32
    _127 = mem[_126]
    mem[_73 + (128 * _92) + 1188] = mem[_126]
    idx = 0
    s = _126 + 32
    t = _73 + (128 * _92) + 1220
    while idx < _127:
        _179 = mem[s]
        mem[t] = mem[mem[s]]
        _183 = mem[_179 + 32]
        mem[t + 32] = mem[mem[_179 + 32]]
        _186 = mem[_183 + 32]
        mem[t + 64] = mem[mem[_183 + 32] + 12 len 20]
        mem[t + 96] = mem[_186 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 128
        continue 
    mem[_73 + 292] = mem[mem[256]]
    mem[_73 + 324] = mem[mem[256] + 32]
    _189 = mem[mem[288]]
    mem[_73 + 356] = mem[mem[mem[288]]]
    _192 = mem[_189 + 32]
    mem[_73 + 388] = mem[mem[_189 + 32]]
    mem[_73 + 420] = mem[_192 + 32]
    mem[_73 + 452] = mem[_192 + 95 len 1]
    _196 = mem[mem[288] + 32]
    mem[_73 + 484] = mem[mem[mem[288] + 32]]
    _198 = mem[_196 + 32]
    mem[_73 + 516] = mem[mem[_196 + 32]]
    mem[_73 + 548] = mem[_198 + 32]
    mem[_73 + 580] = mem[_198 + 95 len 1]
    mem[_73 + 612] = mem[320]
    mem[_73 + 644] = mem[352]
    mem[_73 + 68] = msg.sender
    require ext_code.size(sub_432737a9Address)
    call sub_432737a9Address.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _73 + (128 * _92) + (128 * _127) + -mem[64] + 1216]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _205 = mem[160]
    mem[mem[64]] = 0x2ee2ed2500000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = address(cd[4])
    mem[mem[64] + 36] = mem[_205 + 12 len 20]
    mem[mem[64] + 68] = mem[_205 + 32]
    require ext_code.size(sub_fa7424f2Address)
    call sub_fa7424f2Address.0x2ee2ed25 with:
         gas gas_remaining wei
        args address(cd[4]), mem[mem[64] + 36 len 64]
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _210 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _211 = mem[_210]
    _212 = mem[160]
    mem[mem[64]] = 0x600e461e00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = address(cd[4])
    mem[mem[64] + 36] = mem[_212 + 12 len 20]
    mem[mem[64] + 68] = mem[_212 + 32]
    require ext_code.size(sub_fa7424f2Address)
    call sub_fa7424f2Address.0x600e461e with:
         gas gas_remaining wei
        args address(cd[4]), mem[mem[64] + 36 len 64]
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _217 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _218 = mem[_217]
    _219 = mem[160]
    mem[mem[64]] = 0xc46fcd7500000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = address(cd[4])
    mem[mem[64] + 36] = mem[_219 + 12 len 20]
    mem[mem[64] + 68] = mem[_219 + 32]
    require ext_code.size(sub_fa7424f2Address)
    call sub_fa7424f2Address.0xc46fcd75 with:
         gas gas_remaining wei
        args address(cd[4]), mem[mem[64] + 36 len 64]
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _224 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    emit 0x816c32ad: address(cd[4]), _211, _218, mem[_224], address(mem[mem[160]]), mem[mem[160] + 32], msg.sender
}

function sub_f7b87617(?) {
    require calldata.size - 4 >= 128
    require msg.sender == operatorAddress
    require ext_code.size(configurationAddress)
    call configurationAddress.0xb6bf4176 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require block.number >= ext_call.return_data[0]
    require ext_code.size(sub_fa7424f2Address)
    call sub_fa7424f2Address.0x3b238528 with:
         gas gas_remaining wei
        args address(arg1), address(arg3), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(sub_fa7424f2Address)
        call sub_fa7424f2Address.0x5482c735 with:
             gas gas_remaining wei
            args address(arg1), address(arg3), arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    require ext_code.size(sub_19139092Address)
    call sub_19139092Address.0xded11310 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_19139092Address)
    call sub_19139092Address.lastFungibleRecord(address arg1, bytes32 arg2, address arg3, uint256 arg4) with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0], address(arg3), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(sub_19139092Address)
    call sub_19139092Address.0x4652ec74 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_19139092Address)
    call sub_19139092Address.lastFungibleRecord(address arg1, bytes32 arg2, address arg3, uint256 arg4) with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0], address(arg3), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[0] < 0:
        require 2 * ext_call.return_data[0] < ext_call.return_data[0]
    else:
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            require ext_call.return_data[0] < 0
            require 2 * ext_call.return_data[0] < ext_call.return_data[0]
    require ext_code.size(0xff948c236c8d4dfcd0168bf243314c8ff8ec967)
    delegate 0xff948c236c8d4dfcd0168bf243314c8ff8ec967.clampMin(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[32], ext_call.return_data[32]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_51d7cd61Address)
    call sub_51d7cd61Address.0x3b238528 with:
         gas gas_remaining wei
        args address(arg1), address(arg3), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(sub_fa7424f2Address)
        call sub_fa7424f2Address.0x3b238528 with:
             gas gas_remaining wei
            args address(arg1), address(arg3), arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if arg2 < 0:
                require (2 * ext_call.return_data[0]) - arg2 > 2 * ext_call.return_data[0]
            else:
                if (2 * ext_call.return_data[0]) - arg2 > 2 * ext_call.return_data[0]:
                    require arg2 < 0
                    require (2 * ext_call.return_data[0]) - arg2 > 2 * ext_call.return_data[0]
            require ext_code.size(sub_fa7424f2Address)
            call sub_fa7424f2Address.0xba515288 with:
                 gas gas_remaining wei
                args address(arg1), 0, arg2, (2 * ext_call.return_data[0]) - arg2, address(arg3), arg4, delegate.return_data[0], 0
        else:
            require ext_code.size(sub_fa7424f2Address)
            call sub_fa7424f2Address.0x2ee2ed25 with:
                 gas gas_remaining wei
                args address(arg1), address(arg3), arg4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0xff948c236c8d4dfcd0168bf243314c8ff8ec967)
            delegate 0xff948c236c8d4dfcd0168bf243314c8ff8ec967.clampMin(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0, ext_call.return_data[0]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if arg2 < 0:
                require (2 * ext_call.return_data[0]) - arg2 > 2 * ext_call.return_data[0]
            else:
                if (2 * ext_call.return_data[0]) - arg2 > 2 * ext_call.return_data[0]:
                    require arg2 < 0
                    require (2 * ext_call.return_data[0]) - arg2 > 2 * ext_call.return_data[0]
            require ext_code.size(sub_fa7424f2Address)
            call sub_fa7424f2Address.0xba515288 with:
                 gas gas_remaining wei
                args address(arg1), delegate.return_data[0], arg2, (2 * ext_call.return_data[0]) - arg2, address(arg3), arg4, delegate.return_data[0], 0
    else:
        require ext_code.size(sub_51d7cd61Address)
        call sub_51d7cd61Address.0x7ff81c37 with:
             gas gas_remaining wei
            args address(arg1), address(arg3), arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_51d7cd61Address)
        if ext_call.return_data[0]:
            call sub_51d7cd61Address.0x2ee2ed25 with:
                 gas gas_remaining wei
                args address(arg1), address(arg3), arg4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_fa7424f2Address)
            call sub_fa7424f2Address.0x3b238528 with:
                 gas gas_remaining wei
                args address(arg1), address(arg3), arg4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if arg2 < 0:
                    require (2 * ext_call.return_data[0]) - arg2 > 2 * ext_call.return_data[0]
                else:
                    if (2 * ext_call.return_data[0]) - arg2 > 2 * ext_call.return_data[0]:
                        require arg2 < 0
                        require (2 * ext_call.return_data[0]) - arg2 > 2 * ext_call.return_data[0]
                require ext_code.size(sub_fa7424f2Address)
                call sub_fa7424f2Address.0xba515288 with:
                     gas gas_remaining wei
                    args address(arg1), ext_call.return_data[0], arg2, (2 * ext_call.return_data[0]) - arg2, address(arg3), arg4, delegate.return_data[0], 0
            else:
                require ext_code.size(sub_fa7424f2Address)
                call sub_fa7424f2Address.0x2ee2ed25 with:
                     gas gas_remaining wei
                    args address(arg1), address(arg3), arg4
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0xff948c236c8d4dfcd0168bf243314c8ff8ec967)
                delegate 0xff948c236c8d4dfcd0168bf243314c8ff8ec967.clampMin(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], ext_call.return_data[0]
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if arg2 < 0:
                    require (2 * ext_call.return_data[0]) - arg2 > 2 * ext_call.return_data[0]
                else:
                    if (2 * ext_call.return_data[0]) - arg2 > 2 * ext_call.return_data[0]:
                        require arg2 < 0
                        require (2 * ext_call.return_data[0]) - arg2 > 2 * ext_call.return_data[0]
                require ext_code.size(sub_fa7424f2Address)
                call sub_fa7424f2Address.0xba515288 with:
                     gas gas_remaining wei
                    args address(arg1), delegate.return_data[0], arg2, (2 * ext_call.return_data[0]) - arg2, address(arg3), arg4, delegate.return_data[0], 0
        else:
            call sub_51d7cd61Address.0x8ab3e965 with:
                 gas gas_remaining wei
                args address(arg1), address(arg3), arg4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_51d7cd61Address)
            call sub_51d7cd61Address.0x600e461e with:
                 gas gas_remaining wei
                args address(arg1), address(arg3), arg4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_51d7cd61Address)
            call sub_51d7cd61Address.0x2ee2ed25 with:
                 gas gas_remaining wei
                args address(arg1), address(arg3), arg4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_fa7424f2Address)
            call sub_fa7424f2Address.0x3b238528 with:
                 gas gas_remaining wei
                args address(arg1), address(arg3), arg4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if ext_call.return_data[0] < 0:
                    require 2 * ext_call.return_data[0] < ext_call.return_data[0]
                else:
                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                        require ext_call.return_data[0] < 0
                        require 2 * ext_call.return_data[0] < ext_call.return_data[0]
                if arg2 < 0:
                    require arg2 + (2 * ext_call.return_data[0]) < 2 * ext_call.return_data[0]
                else:
                    if arg2 + (2 * ext_call.return_data[0]) < 2 * ext_call.return_data[0]:
                        require arg2 < 0
                        require arg2 + (2 * ext_call.return_data[0]) < 2 * ext_call.return_data[0]
                if arg2 + (2 * ext_call.return_data[0]) < 0:
                    require -arg2 > 2 * ext_call.return_data[0]
                else:
                    if -arg2 > 2 * ext_call.return_data[0]:
                        require arg2 + (2 * ext_call.return_data[0]) < 0
                        require -arg2 > 2 * ext_call.return_data[0]
                require ext_code.size(sub_fa7424f2Address)
                call sub_fa7424f2Address.0xba515288 with:
                     gas gas_remaining wei
                    args address(arg1), ext_call.return_data[0], arg2, -arg2, address(arg3), arg4, delegate.return_data[0], 0
            else:
                require ext_code.size(sub_fa7424f2Address)
                call sub_fa7424f2Address.0x2ee2ed25 with:
                     gas gas_remaining wei
                    args address(arg1), address(arg3), arg4
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0xff948c236c8d4dfcd0168bf243314c8ff8ec967)
                delegate 0xff948c236c8d4dfcd0168bf243314c8ff8ec967.clampMin(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], ext_call.return_data[0]
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < 0:
                    require 2 * ext_call.return_data[0] < ext_call.return_data[0]
                else:
                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                        require ext_call.return_data[0] < 0
                        require 2 * ext_call.return_data[0] < ext_call.return_data[0]
                if arg2 < 0:
                    require arg2 + (2 * ext_call.return_data[0]) < 2 * ext_call.return_data[0]
                else:
                    if arg2 + (2 * ext_call.return_data[0]) < 2 * ext_call.return_data[0]:
                        require arg2 < 0
                        require arg2 + (2 * ext_call.return_data[0]) < 2 * ext_call.return_data[0]
                if arg2 + (2 * ext_call.return_data[0]) < 0:
                    require -arg2 > 2 * ext_call.return_data[0]
                else:
                    if -arg2 > 2 * ext_call.return_data[0]:
                        require arg2 + (2 * ext_call.return_data[0]) < 0
                        require -arg2 > 2 * ext_call.return_data[0]
                require ext_code.size(sub_fa7424f2Address)
                call sub_fa7424f2Address.0xba515288 with:
                     gas gas_remaining wei
                    args address(arg1), delegate.return_data[0], arg2, -arg2, address(arg3), arg4, delegate.return_data[0], 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_fa7424f2Address)
    call sub_fa7424f2Address.0x2ee2ed25 with:
         gas gas_remaining wei
        args address(arg1), address(arg3), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_fa7424f2Address)
    call sub_fa7424f2Address.0xc46fcd75 with:
         gas gas_remaining wei
        args address(arg1), address(arg3), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x1c1550c8: address(arg1), ext_call.return_data[0], arg2, ext_call.return_data[0], address(arg3), arg4, msg.sender
}



}
