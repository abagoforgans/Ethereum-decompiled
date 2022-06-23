contract main {




// =====================  Runtime code  =====================


const sub_61b6d9b0(?) = 2

const sub_a919176b(?) = 3

const sub_b3e37348(?) = 1


mapping of uint8 stor0;
mapping of uint8 stor1;
mapping of uint8 stor2;
address sub_ce011ef5Address;
address sub_514904b5Address;
address sub_ac2ab114Address;
address kycAddress;
address sub_ba6a8715Address;
address sub_9511f9f3Address;
address sub_1ea4c115Address;
address lotteryConfigAddress;
address sub_4d4e6ef0Address;
address sub_15059fbaAddress;
address sub_abaf8208Address;
address randaoAddress;
address sub_da803ac2Address;

function sub_15059fba(?) {
    return sub_15059fbaAddress
}

function sub_1a69c8b2(?) {
    return bool(stor1[arg1])
}

function sub_1ea4c115(?) {
    return sub_1ea4c115Address
}

function sub_4d4e6ef0(?) {
    return sub_4d4e6ef0Address
}

function sub_514904b5(?) {
    return sub_514904b5Address
}

function randao() {
    return randaoAddress
}

function kyc() {
    return kycAddress
}

function sub_9511f9f3(?) {
    return sub_9511f9f3Address
}

function sub_9d6ad02e(?) {
    return bool(stor2[arg1])
}

function sub_abaf8208(?) {
    return sub_abaf8208Address
}

function sub_ac2ab114(?) {
    return sub_ac2ab114Address
}

function sub_ba6a8715(?) {
    return sub_ba6a8715Address
}

function sub_ce011ef5(?) {
    return sub_ce011ef5Address
}

function sub_da803ac2(?) {
    return sub_da803ac2Address
}

function sub_dc94964e(?) {
    return bool(stor0[arg1])
}

function lotteryConfig() {
    return lotteryConfigAddress
}

function _fallback() payable {
    revert
}

function sub_aacdbe0f(?) {
    require msg.sender == sub_514904b5Address
    kycAddress = arg1
    emit 0xdbe19fcf: arg1
}

function sub_91e6239d(?) {
    require msg.sender == sub_514904b5Address
    randaoAddress = arg1
    emit 0x4bc6841b: arg1
}

function sub_129da56a(?) {
    require msg.sender == sub_514904b5Address
    sub_abaf8208Address = arg1
    emit 0x1f65078a: arg1
}

function sub_17ce4607(?) {
    require msg.sender == sub_514904b5Address
    sub_da803ac2Address = arg1
    emit 0x17dcf551: arg1
}

function sub_1e12d5fe(?) {
    require msg.sender == sub_514904b5Address
    sub_9511f9f3Address = arg1
    emit 0x10545b78: arg1
}

function sub_1e6f256f(?) {
    require msg.sender == sub_ce011ef5Address
    sub_ac2ab114Address = arg1
    emit 0x35bf68dc: arg1
}

function sub_2e014390(?) {
    require msg.sender == sub_ce011ef5Address
    sub_ce011ef5Address = arg1
    emit 0x7b482a48: arg1
}

function sub_38b5a890(?) {
    require msg.sender == sub_514904b5Address
    sub_1ea4c115Address = arg1
    emit 0x915f0430: arg1
}

function sub_6f03548b(?) {
    require msg.sender == sub_ce011ef5Address
    sub_514904b5Address = arg1
    emit 0x34e7e012: arg1
}

function sub_977126ea(?) {
    require msg.sender == sub_514904b5Address
    sub_4d4e6ef0Address = arg1
    emit 0xefe1fec3: arg1
}

function sub_a6e6cdf6(?) {
    require msg.sender == sub_514904b5Address
    sub_15059fbaAddress = arg1
    emit 0xc388616c: arg1
}

function sub_ae858ffa(?) {
    require msg.sender == sub_514904b5Address
    sub_ba6a8715Address = arg1
    emit 0xd27837a5: arg1
}

function sub_cc8a26b4(?) {
    require msg.sender == sub_514904b5Address
    lotteryConfigAddress = arg1
    emit 0x2ab8e87c: arg1
}

function sub_f51ed02a(?) {
    require msg.sender == sub_ce011ef5Address
    if arg1 == 1:
        stor0[address(arg2)] = 0
    else:
        if arg1 == 2:
            stor1[address(arg2)] = 0
        else:
            if arg1 != 3:
                return 0
            stor2[address(arg2)] = 0
    emit 0xd51e3361: arg1, arg2
    return 1
}

function sub_ffcd9e4e(?) {
    require msg.sender == sub_ce011ef5Address
    if arg1 == 1:
        stor0[address(arg2)] = 1
    else:
        if arg1 == 2:
            stor1[address(arg2)] = 1
        else:
            if arg1 != 3:
                return 0
            stor2[address(arg2)] = 1
    emit 0xfe27f2c1: arg1, arg2
    return 1
}

function sub_9f078fbd(?) {
    require msg.sender == sub_514904b5Address
    kycAddress = arg1
    sub_ba6a8715Address = arg2
    sub_9511f9f3Address = arg3
    sub_1ea4c115Address = arg4
    lotteryConfigAddress = arg5
    sub_4d4e6ef0Address = arg6
    sub_15059fbaAddress = arg7
    sub_abaf8208Address = arg8
    randaoAddress = arg9
    sub_da803ac2Address = arg10
    emit 0xa2e90d44: address(arg1), address(arg2), address(arg3), address(arg4), arg5, address(arg6), address(arg7), address(arg8), address(arg9), arg10
}

function sub_e13f7fec(?) {
    require msg.sender == sub_514904b5Address
    mem[(32 * arg1.length) + 228 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    require ext_code.size(sub_1ea4c115Address)
    call sub_1ea4c115Address.0xe13f7fec with:
         gas gas_remaining wei
        args Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 228 len (32 * arg1.length) - floor32(arg1.length)]), address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_2d00a151(?) {
    require msg.sender == sub_514904b5Address
    require ext_code.size(kycAddress)
    call kycAddress.0x2d00a1 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_ba6a8715Address)
    call sub_ba6a8715Address.0x2d00a1 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_9511f9f3Address)
    call sub_9511f9f3Address.0x2d00a1 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_1ea4c115Address)
    call sub_1ea4c115Address.0x2d00a1 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(lotteryConfigAddress)
    call lotteryConfigAddress.0x2d00a1 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_4d4e6ef0Address)
    call sub_4d4e6ef0Address.0x2d00a1 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_15059fbaAddress)
    call sub_15059fbaAddress.0x2d00a1 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_abaf8208Address)
    call sub_abaf8208Address.0x2d00a1 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xf95f032b: arg1
}



}
