contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;

function _fallback() payable {
    stor1 = 0x24f929f9ab84f1c540b8ff1f67728246bfec12e1
    stor2 = 0x778e763c4a09c74b2de221b4d3c92d8c7f27a038
    stor4 = 3 * 10^18
    stor5 = 7500000000 * 10^18
    stor6 = 1559831508
    stor7 = 1848
    stor8 = 25
    stor9 = 10
    stor10 = 200
    stor11 = 25
    stor12 = 100
    stor13 = 100
    stor14 = 15
    require not msg.value
    stor0 = msg.sender
    return code.data[341 len 10426]
}



// =====================  Runtime code  =====================


#
#  - sub_3a800814(?)
#  - _fallback()
#
address stor0;
address adminAddress;
address tokenRewardAddress;
uint256 jigoutuighanamount;
uint256 jigoutuighaneth;
uint256 jigoutuihuanlimit;
uint256 jigoutuihuantimelimit;
uint256 bili;
uint256 sub_c9765597;
uint256 sub_bf00fadd;
uint256 layer;
uint256 sub_9f180501;
uint256 sub_b915c5ea;
uint256 sub_43af8fc9;
uint256 sub_723a952d;

function bili() {
    return bili
}

function jigoutuighaneth() {
    return jigoutuighaneth
}

function sub_43af8fc9(?) {
    return sub_43af8fc9
}

function jigoutuighanamount() {
    return jigoutuighanamount
}

function jigoutuihuanlimit() {
    return jigoutuihuanlimit
}

function tokenReward() {
    return tokenRewardAddress
}

function sub_723a952d(?) {
    return sub_723a952d
}

function layer() {
    return layer
}

function sub_9f180501(?) {
    return sub_9f180501
}

function jigoutuihuantimelimit() {
    return jigoutuihuantimelimit
}

function sub_b915c5ea(?) {
    return sub_b915c5ea
}

function sub_bf00fadd(?) {
    return sub_bf00fadd
}

function sub_c9765597(?) {
    return sub_c9765597
}

function admin() {
    return adminAddress
}

function sub_0f42577a(?) {
    if stor0 != msg.sender:
        require msg.sender == adminAddress
    bili = arg1
    sub_c9765597 = arg2
    sub_bf00fadd = arg3
    layer = arg4
}

function sub_bb0d56ba(?) {
    if stor0 != msg.sender:
        require msg.sender == adminAddress
    jigoutuighaneth = arg1
    jigoutuihuanlimit = arg2
    jigoutuihuantimelimit = arg3
}

function sub_f782059e(?) {
    if stor0 != msg.sender:
        require msg.sender == adminAddress
    sub_9f180501 = arg1
    sub_b915c5ea = arg2
    sub_43af8fc9 = arg3
    sub_723a952d = arg4
}

function transferOwnership(address arg1) {
    if stor0 != msg.sender:
        require msg.sender == adminAddress
    require arg1
    emit OwnershipTransferred(stor0, arg1);
    adminAddress = arg1
}

function sub_56bb78ab(?) {
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.userinfos(address arg1) with:
         gas gas_remaining wei
        args arg1
    require ext_call.success
    return ext_call.return_data[64]
}

function sub_cf6f8375(?) {
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.userinfos(address arg1) with:
         gas gas_remaining wei
        args arg1
    require ext_call.success
    return ext_call.return_data[32]
}

function sub_d81dee44(?) {
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.userinfos(address arg1) with:
         gas gas_remaining wei
        args arg1
    require ext_call.success
    return ext_call.return_data[96]
}

function sub_553dd8cb(?) {
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.userinfos(address arg1) with:
         gas gas_remaining wei
        args arg1
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function sub_4c6c7432(?) {
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.userinfos(address arg1) with:
         gas gas_remaining wei
        args arg1
    require ext_call.success
    return ext_call.return_data[184 len 8]
}

function sub_568eb374(?) {
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.userinfos(address arg1) with:
         gas gas_remaining wei
        args arg1
    require ext_call.success
    return ext_call.return_data[152 len 8]
}

function sub_a16f818a(?) {
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.userinfos(address arg1) with:
         gas gas_remaining wei
        args arg1
    require ext_call.success
    return ext_call.return_data[216 len 8]
}

function sub_efcf9e49(?) {
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.userinfos(address arg1) with:
         gas gas_remaining wei
        args arg1
    require ext_call.success
    return bool(ext_call.return_data[288])
}

function sub_96508708(?) {
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.userinfos(address arg1) with:
         gas gas_remaining wei
        args arg1
    require ext_call.success
    return ext_call.return_data[236 len 20]
}

function sub_bd245486(?) {
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.userinfos(address arg1) with:
         gas gas_remaining wei
        args arg1
    require ext_call.success
    return ext_call.return_data[268 len 20]
}

function sub_7d977b13(?) {
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.userinfos(address arg1) with:
         gas gas_remaining wei
        args arg1
    require ext_call.success
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.userinfos(address arg1) with:
         gas gas_remaining wei
        args arg1
    require ext_call.success
    require ext_code.size(tokenRewardAddress)
    if address(ext_call.return_data[224]):
        call tokenRewardAddress.exchange(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(ext_call.return_data[224]), arg2 * sub_c9765597 / 1000
        require ext_call.success
        jigoutuighanamount += arg2 * sub_c9765597 / 1000
    call tokenRewardAddress.userinfos(address arg1) with:
         gas gas_remaining wei
        args address(ext_call.return_data[224])
    require ext_call.success
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.userinfos(address arg1) with:
         gas gas_remaining wei
        args address(ext_call.return_data[224])
    require ext_call.success
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.userinfos(address arg1) with:
         gas gas_remaining wei
        args address(ext_call.return_data[224])
    require ext_call.success
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.userinfos(address arg1) with:
         gas gas_remaining wei
        args address(ext_call.return_data[224])
    require ext_call.success
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.userinfos(address arg1) with:
         gas gas_remaining wei
        args address(ext_call.return_data[224])
    require ext_call.success
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.userinfos(address arg1) with:
         gas gas_remaining wei
        args address(ext_call.return_data[224])
    require ext_call.success
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.userinfos(address arg1) with:
         gas gas_remaining wei
        args address(ext_call.return_data[224])
    require ext_call.success
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.userinfos(address arg1) with:
         gas gas_remaining wei
        args address(ext_call.return_data[224])
    require ext_call.success
    require ext_code.size(tokenRewardAddress)
    if uint64(ext_call.return_data[192] + 1) > 3:
        call tokenRewardAddress.setuserinfo(address arg1, bool arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint64 arg6, uint64 arg7, uint64 arg8, address arg9, address arg10, bool arg11) with:
             gas gas_remaining wei
            args 0, 0, bool(ext_call.return_data[0]), 0, ext_call.return_data[64], ext_call.return_data[96], ext_call.return_data[128] << 192, ext_call.return_data[160] << 192, ext_call.return_data[192] + 1 << 192, address(ext_call.return_data[224]), address(ext_call.return_data[256]), 0
    else:
        call tokenRewardAddress.userinfos(address arg1) with:
             gas gas_remaining wei
            args address(ext_call.return_data[224])
        require ext_call.success
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.userinfos(address arg1) with:
             gas gas_remaining wei
            args address(ext_call.return_data[224])
        require ext_call.success
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.setuserinfo(address arg1, bool arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint64 arg6, uint64 arg7, uint64 arg8, address arg9, address arg10, bool arg11) with:
             gas gas_remaining wei
            args 0, 0, bool(ext_call.return_data[0]), ext_call.return_data[32], ext_call.return_data[64], ext_call.return_data[96], ext_call.return_data[128] << 192, ext_call.return_data[160] << 192, ext_call.return_data[192] + 1 << 192, address(ext_call.return_data[224]), address(ext_call.return_data[256]), bool(ext_call.return_data[288])
    require ext_call.success
    if address(ext_call.return_data[256]):
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.exchange(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(ext_call.return_data[256]), arg2 * sub_bf00fadd / 1000
        require ext_call.success
        jigoutuighanamount += arg2 * sub_bf00fadd / 1000
}



}
