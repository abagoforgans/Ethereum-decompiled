contract main {




// =====================  Runtime code  =====================


#
#  - sub_2344a493(?)
#  - sub_db30fd10(?)
#
uint8 stor0;
address stor0;
address deployerAddress; offset 8
address operatorAddress;
address configurationAddress;
address validatorAddress;
address sub_e754476fAddress;
uint8 stor5; offset 160
address sub_bf24e7d0Address;
address sub_3bd7857fAddress;
uint8 stor7; offset 160
address sub_e8ae41e3Address;
address sub_51d7cd61Address;
address sub_25c84441Address;
address sub_95ff296dAddress;
address sub_f1aa7734Address;

function sub_240625d8(?) {
    return bool(stor7)
}

function sub_25c84441(?) {
    return sub_25c84441Address
}

function sub_2f013a00(?) {
    return bool(uint8(stor0.field_0))
}

function validator() {
    return validatorAddress
}

function sub_3bd7857f(?) {
    return sub_3bd7857fAddress
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

function sub_8e9d6cbd(?) {
    return bool(stor5)
}

function sub_95ff296d(?) {
    return sub_95ff296dAddress
}

function sub_bf24e7d0(?) {
    return sub_bf24e7d0Address
}

function deployer() {
    return deployerAddress
}

function sub_e754476f(?) {
    return sub_e754476fAddress
}

function sub_e8ae41e3(?) {
    return sub_e8ae41e3Address
}

function sub_f1aa7734(?) {
    return sub_f1aa7734Address
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
    stor7 = 1
    emit FreezeWalletLockerEvent()
}

function freezeCommunityVote() {
    require msg.sender == deployerAddress
    stor5 = 1
    emit FreezeCommunityVoteEvent()
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

function sub_404e896f(?) {
    require calldata.size - 4 >= 32
    require msg.sender == deployerAddress
    require arg1
    sub_25c84441Address = arg1
    emit 0x6d473515: sub_25c84441Address, arg1
}

function sub_e71dcc31(?) {
    require calldata.size - 4 >= 32
    require msg.sender == deployerAddress
    require arg1
    sub_f1aa7734Address = arg1
    emit 0x8b279c2b: sub_f1aa7734Address, arg1
}

function sub_f152dd38(?) {
    require calldata.size - 4 >= 32
    require msg.sender == deployerAddress
    require arg1
    sub_95ff296dAddress = arg1
    emit 0xe0d0aee1: sub_95ff296dAddress, arg1
}

function sub_01370d06(?) {
    require calldata.size - 4 >= 32
    require msg.sender == deployerAddress
    require arg1
    if sub_3bd7857fAddress != arg1:
        sub_3bd7857fAddress = arg1
        emit 0x7998fa7b: sub_3bd7857fAddress, arg1
}

function sub_b71ded2f(?) {
    require calldata.size - 4 >= 32
    require msg.sender == deployerAddress
    require arg1
    if sub_e754476fAddress != arg1:
        sub_e754476fAddress = arg1
        emit 0x4d96d2a0: sub_e754476fAddress, arg1
}

function setValidator(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == deployerAddress
    require arg1
    if validatorAddress != arg1:
        validatorAddress = arg1
        emit 0x1882af94: validatorAddress, arg1
}

function setConfiguration(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == deployerAddress
    require arg1
    if configurationAddress != arg1:
        configurationAddress = arg1
        emit 0x634f61bf: configurationAddress, arg1
}

function sub_892860b2(?) {
    require calldata.size - 4 >= 32
    require msg.sender == deployerAddress
    require arg1
    if sub_e8ae41e3Address != arg1:
        require not stor7
        sub_e8ae41e3Address = arg1
        emit 0xa44d361e: sub_e8ae41e3Address, arg1
}

function sub_e86ab8f6(?) {
    require calldata.size - 4 >= 32
    require msg.sender == deployerAddress
    require arg1
    if sub_bf24e7d0Address != arg1:
        require not stor5
        sub_bf24e7d0Address = arg1
        emit 0x624c4d42: sub_bf24e7d0Address, arg1
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

function sub_8c6913bc(?) {
    require ext_code.size(sub_25c84441Address)
    call sub_25c84441Address.0x8c6913bc with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_f345fb44(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_25c84441Address)
    call sub_25c84441Address.0xf345fb44 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_c0ffe1b4(?) {
    require calldata.size - 4 >= 64
    mem[96] = 96
    mem[128] = 0
    mem[352] = 0
    mem[384] = 0
    mem[416] = 0
    mem[160] = 352
    mem[448] = 0
    mem[480] = 0
    mem[512] = 0
    mem[192] = 448
    mem[544] = 0xc0ffe1b400000000000000000000000000000000000000000000000000000000
    mem[548] = arg1
    mem[580] = arg2
    require ext_code.size(sub_25c84441Address)
    call sub_25c84441Address.0xc0ffe1b4 with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[544 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _7 = mem[544 len 4], address(arg1) << 64
    require mem[544 len 4], address(arg1) << 64 <= test266151307()
    require return_data.size - mem[544 len 4], address(arg1) << 64 >= 256
    require bool(ceil32(return_data.size) + 672 <= test266151307())
    mem[64] = ceil32(return_data.size) + 672
    _9 = mem[mem[544 len 4], address(arg1) << 64 + 544]
    require mem[mem[544 len 4], address(arg1) << 64 + 544] <= test266151307()
    require return_data.size + 544 > mem[544 len 4], address(arg1) << 64 + mem[mem[544 len 4], address(arg1) << 64 + 544] + 575
    _10 = mem[mem[544 len 4], address(arg1) << 64 + mem[mem[544 len 4], address(arg1) << 64 + 544] + 544]
    require mem[mem[544 len 4], address(arg1) << 64 + mem[mem[544 len 4], address(arg1) << 64 + 544] + 544] <= test266151307()
    require ceil32(mem[mem[544 len 4], address(arg1) << 64 + mem[mem[544 len 4], address(arg1) << 64 + 544] + 544]) + 160 >= 128 and ceil32(return_data.size) + ceil32(mem[mem[544 len 4], address(arg1) << 64 + mem[mem[544 len 4], address(arg1) << 64 + 544] + 544]) + 704 <= test266151307()
    mem[64] = ceil32(return_data.size) + ceil32(mem[mem[544 len 4], address(arg1) << 64 + mem[mem[544 len 4], address(arg1) << 64 + 544] + 544]) + 704
    mem[ceil32(return_data.size) + 672] = _10
    require mem[544 len 4], address(arg1) << 64 + _9 + _10 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 704 len ceil32(_10)] = mem[mem[544 len 4], address(arg1) << 64 + _9 + 576 len ceil32(_10)]
    if ceil32(_10) <= _10:
        mem[ceil32(return_data.size) + 544] = ceil32(return_data.size) + 672
        mem[ceil32(return_data.size) + 576] = mem[_7 + 576]
        require return_data.size + -_7 - 64 >= 96
        _82 = mem[64]
        require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
        mem[64] = mem[64] + 96
        mem[_82] = mem[_7 + 608]
        mem[_82 + 32] = mem[_7 + 652 len 20]
        mem[_82 + 64] = bool(mem[_7 + 672])
        mem[ceil32(return_data.size) + 608] = _82
        require return_data.size + -_7 - 160 >= 96
        _90 = mem[64]
        require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
        mem[64] = mem[64] + 96
        mem[_90] = mem[_7 + 704]
        mem[_90 + 32] = mem[_7 + 748 len 20]
        mem[_90 + 64] = bool(mem[_7 + 768])
        mem[ceil32(return_data.size) + 640] = _90
        mem[mem[64]] = 32
        mem[mem[64] + 32] = 256
        mem[mem[64] + 288] = _10
        mem[mem[64] + 320 len ceil32(_10)] = mem[ceil32(return_data.size) + 704 len ceil32(_10)]
        if ceil32(_10) > _10:
            mem[_10 + mem[64] + 320] = 0
        mem[mem[64] + 64] = mem[ceil32(return_data.size) + 576]
        mem[mem[64] + 96] = mem[_82]
        mem[mem[64] + 128] = mem[_82 + 44 len 20]
        mem[mem[64] + 160] = bool(mem[_82 + 64])
        mem[mem[64] + 192] = mem[_90]
        mem[mem[64] + 224] = mem[_90 + 44 len 20]
        mem[mem[64] + 256] = bool(mem[_90 + 64])
    else:
        mem[_10 + ceil32(return_data.size) + 704] = 0
        mem[ceil32(return_data.size) + 544] = ceil32(return_data.size) + 672
        mem[ceil32(return_data.size) + 576] = mem[_7 + 576]
        require return_data.size + -_7 - 64 >= 96
        _83 = mem[64]
        require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
        mem[64] = mem[64] + 96
        mem[_83] = mem[_7 + 608]
        mem[_83 + 32] = mem[_7 + 652 len 20]
        mem[_83 + 64] = bool(mem[_7 + 672])
        mem[ceil32(return_data.size) + 608] = _83
        require return_data.size + -_7 - 160 >= 96
        _91 = mem[64]
        require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
        mem[64] = mem[64] + 96
        mem[_91] = mem[_7 + 704]
        mem[_91 + 32] = mem[_7 + 748 len 20]
        mem[_91 + 64] = bool(mem[_7 + 768])
        mem[ceil32(return_data.size) + 640] = _91
        mem[mem[64]] = 32
        mem[mem[64] + 32] = 256
        mem[mem[64] + 288] = _10
        mem[mem[64] + 320 len ceil32(_10)] = mem[ceil32(return_data.size) + 704 len ceil32(_10)]
        if ceil32(_10) > _10:
            mem[_10 + mem[64] + 320] = 0
        mem[mem[64] + 64] = mem[ceil32(return_data.size) + 576]
        mem[mem[64] + 96] = mem[_83]
        mem[mem[64] + 128] = mem[_83 + 44 len 20]
        mem[mem[64] + 160] = bool(mem[_83 + 64])
        mem[mem[64] + 192] = mem[_91]
        mem[mem[64] + 224] = mem[_91 + 44 len 20]
        mem[mem[64] + 256] = bool(mem[_91 + 64])
    return 32, 256, mem[mem[64] + 64 len 224], _10, mem[mem[64] + 320 len ceil32(_10)]
}

function sub_d2f08936(?) {
    require calldata.size - 4 >= 64
    mem[96] = 96
    mem[128] = 0
    mem[352] = 0
    mem[384] = 0
    mem[416] = 0
    mem[160] = 352
    mem[448] = 0
    mem[480] = 0
    mem[512] = 0
    mem[192] = 448
    mem[544] = 0xd2f0893600000000000000000000000000000000000000000000000000000000
    mem[548] = arg1
    mem[580] = arg2
    require ext_code.size(sub_25c84441Address)
    call sub_25c84441Address.0xd2f08936 with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[544 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _7 = mem[544 len 4], address(arg1) << 64
    require mem[544 len 4], address(arg1) << 64 <= test266151307()
    require return_data.size - mem[544 len 4], address(arg1) << 64 >= 256
    require bool(ceil32(return_data.size) + 672 <= test266151307())
    mem[64] = ceil32(return_data.size) + 672
    _9 = mem[mem[544 len 4], address(arg1) << 64 + 544]
    require mem[mem[544 len 4], address(arg1) << 64 + 544] <= test266151307()
    require return_data.size + 544 > mem[544 len 4], address(arg1) << 64 + mem[mem[544 len 4], address(arg1) << 64 + 544] + 575
    _10 = mem[mem[544 len 4], address(arg1) << 64 + mem[mem[544 len 4], address(arg1) << 64 + 544] + 544]
    require mem[mem[544 len 4], address(arg1) << 64 + mem[mem[544 len 4], address(arg1) << 64 + 544] + 544] <= test266151307()
    require ceil32(mem[mem[544 len 4], address(arg1) << 64 + mem[mem[544 len 4], address(arg1) << 64 + 544] + 544]) + 160 >= 128 and ceil32(return_data.size) + ceil32(mem[mem[544 len 4], address(arg1) << 64 + mem[mem[544 len 4], address(arg1) << 64 + 544] + 544]) + 704 <= test266151307()
    mem[64] = ceil32(return_data.size) + ceil32(mem[mem[544 len 4], address(arg1) << 64 + mem[mem[544 len 4], address(arg1) << 64 + 544] + 544]) + 704
    mem[ceil32(return_data.size) + 672] = _10
    require mem[544 len 4], address(arg1) << 64 + _9 + _10 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 704 len ceil32(_10)] = mem[mem[544 len 4], address(arg1) << 64 + _9 + 576 len ceil32(_10)]
    if ceil32(_10) <= _10:
        mem[ceil32(return_data.size) + 544] = ceil32(return_data.size) + 672
        mem[ceil32(return_data.size) + 576] = mem[_7 + 576]
        require return_data.size + -_7 - 64 >= 96
        _82 = mem[64]
        require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
        mem[64] = mem[64] + 96
        mem[_82] = mem[_7 + 608]
        mem[_82 + 32] = mem[_7 + 652 len 20]
        mem[_82 + 64] = bool(mem[_7 + 672])
        mem[ceil32(return_data.size) + 608] = _82
        require return_data.size + -_7 - 160 >= 96
        _90 = mem[64]
        require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
        mem[64] = mem[64] + 96
        mem[_90] = mem[_7 + 704]
        mem[_90 + 32] = mem[_7 + 748 len 20]
        mem[_90 + 64] = bool(mem[_7 + 768])
        mem[ceil32(return_data.size) + 640] = _90
        mem[mem[64]] = 32
        mem[mem[64] + 32] = 256
        mem[mem[64] + 288] = _10
        mem[mem[64] + 320 len ceil32(_10)] = mem[ceil32(return_data.size) + 704 len ceil32(_10)]
        if ceil32(_10) > _10:
            mem[_10 + mem[64] + 320] = 0
        mem[mem[64] + 64] = mem[ceil32(return_data.size) + 576]
        mem[mem[64] + 96] = mem[_82]
        mem[mem[64] + 128] = mem[_82 + 44 len 20]
        mem[mem[64] + 160] = bool(mem[_82 + 64])
        mem[mem[64] + 192] = mem[_90]
        mem[mem[64] + 224] = mem[_90 + 44 len 20]
        mem[mem[64] + 256] = bool(mem[_90 + 64])
    else:
        mem[_10 + ceil32(return_data.size) + 704] = 0
        mem[ceil32(return_data.size) + 544] = ceil32(return_data.size) + 672
        mem[ceil32(return_data.size) + 576] = mem[_7 + 576]
        require return_data.size + -_7 - 64 >= 96
        _83 = mem[64]
        require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
        mem[64] = mem[64] + 96
        mem[_83] = mem[_7 + 608]
        mem[_83 + 32] = mem[_7 + 652 len 20]
        mem[_83 + 64] = bool(mem[_7 + 672])
        mem[ceil32(return_data.size) + 608] = _83
        require return_data.size + -_7 - 160 >= 96
        _91 = mem[64]
        require mem[64] + 96 >= mem[64] and mem[64] + 96 <= test266151307()
        mem[64] = mem[64] + 96
        mem[_91] = mem[_7 + 704]
        mem[_91 + 32] = mem[_7 + 748 len 20]
        mem[_91 + 64] = bool(mem[_7 + 768])
        mem[ceil32(return_data.size) + 640] = _91
        mem[mem[64]] = 32
        mem[mem[64] + 32] = 256
        mem[mem[64] + 288] = _10
        mem[mem[64] + 320 len ceil32(_10)] = mem[ceil32(return_data.size) + 704 len ceil32(_10)]
        if ceil32(_10) > _10:
            mem[_10 + mem[64] + 320] = 0
        mem[mem[64] + 64] = mem[ceil32(return_data.size) + 576]
        mem[mem[64] + 96] = mem[_83]
        mem[mem[64] + 128] = mem[_83 + 44 len 20]
        mem[mem[64] + 160] = bool(mem[_83 + 64])
        mem[mem[64] + 192] = mem[_91]
        mem[mem[64] + 224] = mem[_91 + 44 len 20]
        mem[mem[64] + 256] = bool(mem[_91 + 64])
    return 32, 256, mem[mem[64] + 64 len 224], _10, mem[mem[64] + 320 len ceil32(_10)]
}



}
