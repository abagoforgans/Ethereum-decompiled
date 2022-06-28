contract main {




// =====================  Runtime code  =====================


#
#  - sub_c9a3b1af(?)
#
uint8 sub_c969b686;
uint8 DEPOSITS_KEPT; offset 8
array of uint256 stor1;
uint256 sub_c3f3db97;
uint256 sub_1f3adc0f;
uint256 sub_43fbbec3;
uint256 genesis;
address operatorAddress;
array of uint256 stor7;
array of uint256 stor8;
array of uint256 stor9;
array of uint256 sub_fe11584e;
uint256 sub_edce3ed3;
mapping of struct sub_37f8288b;
mapping of struct sub_5a71f916;
array of struct sub_3fc988ba;
array of struct sub_054c7626;
array of struct sub_f918889f;
mapping of uint64 sub_127bf410;
array of address sub_9100f3fb;
array of address stor43880275961168830825126493365946484747370565303400739422783595429428448060688;

function sub_054c7626(?) {
    require arg2 < 5
    return sub_054c7626[address(arg1)][2 * uint8(arg2)].field_0, sub_054c7626[address(arg1)][2 * uint8(arg2)].field_256
}

function sub_127bf410(?) {
    return sub_127bf410[address(arg1)]
}

function sub_1f3adc0f(?) {
    return sub_1f3adc0f
}

function DEPOSITS_KEPT() {
    return DEPOSITS_KEPT
}

function sub_37f8288b(?) {
    require sub_37f8288b[address(arg1)][address(arg3)][address(arg2)].field_0 <= 3
    return sub_37f8288b[address(arg1)][address(arg3)][address(arg2)].field_0, 
           sub_37f8288b[address(arg1)][address(arg3)][address(arg2)].field_256,
           sub_37f8288b[address(arg1)][address(arg3)][address(arg2)].field_512,
           sub_37f8288b[address(arg1)][address(arg3)][address(arg2)].field_768,
           sub_37f8288b[address(arg1)][address(arg3)][address(arg2)].field_1024,
           sub_37f8288b[address(arg1)][address(arg3)][address(arg2)].field_1280,
           sub_37f8288b[address(arg1)][address(arg3)][address(arg2)].field_1536,
           sub_37f8288b[address(arg1)][address(arg3)][address(arg2)].field_1792,
           sub_37f8288b[address(arg1)][address(arg3)][address(arg2)].field_2048
}

function sub_3fc988ba(?) {
    require arg2 < 5
    return sub_3fc988ba[address(arg1)][2 * uint8(arg2)].field_0, sub_3fc988ba[address(arg1)][2 * uint8(arg2)].field_256
}

function sub_43fbbec3(?) {
    return sub_43fbbec3
}

function operator() {
    return operatorAddress
}

function sub_5a71f916(?) {
    require arg3 < 3
    return sub_5a71f916[address(arg1)][address(arg2)][2 * uint8(arg3)].field_0, 
           sub_5a71f916[address(arg1)][address(arg2)][2 * uint8(arg3)].field_256
}

function sub_9100f3fb(?) {
    require arg1 < sub_9100f3fb.length
    return address(sub_9100f3fb[arg1])
}

function genesis() {
    return genesis
}

function sub_c3f3db97(?) {
    return sub_c3f3db97
}

function sub_c969b686(?) {
    return sub_c969b686
}

function sub_cda89b7a(?) {
    return bool(sub_5a71f916[address(arg1)][address(arg2)].field_1792)
}

function sub_e5770177(?) {
    return stor1.length
}

function sub_edce3ed3(?) {
    return sub_edce3ed3
}

function sub_f918889f(?) {
    require arg2 < 5
    return sub_f918889f[address(arg1)][2 * uint8(arg2)].field_0, sub_f918889f[address(arg1)][2 * uint8(arg2)].field_256
}

function sub_fe11584e(?) {
    require arg1 < 5
    return sub_fe11584e[arg1]
}

function _fallback() payable {
  stop
}

function sub_718bb228(?) {
    require arg1 < 5
    return stor7[arg1], stor8[arg1], stor9[arg1]
}

function sub_3bb810c0(?) {
    require msg.sender == operatorAddress
    require not sub_127bf410[address(arg1)]
    sub_127bf410[address(arg1)] = uint64(sub_9100f3fb.length)
    sub_9100f3fb.length++
    stor6103[stor34.length] = arg1
}

function getLiveChallenges(uint256 arg1) {
    if sub_c969b686 <= 0:
        revert with 0, '%'
    require sub_c969b686
    require arg1 % sub_c969b686 < 5
    if arg1 == stor7[arg1 % uint8(stor0.field_0)]:
        return stor9[arg1 % uint8(stor0.field_0)]
    else:
        return 0
}

function currentEra() {
    require ext_code.size(0x6d7ea7e859f6d7f10e7a4cc26d4ecf0ff53ee9e3)
    delegate 0x6d7ea7e859f6d7f10e7a4cc26d4ecf0ff53ee9e3.0x87d5cab9 with:
         gas gas_remaining wei
        args 0
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function sub_229b5f92(?) {
    require ext_code.size(0x6d7ea7e859f6d7f10e7a4cc26d4ecf0ff53ee9e3)
    delegate 0x6d7ea7e859f6d7f10e7a4cc26d4ecf0ff53ee9e3.0x26df6e49 with:
         gas gas_remaining wei
        args 0
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function sub_3943bd17(?) {
    if DEPOSITS_KEPT <= 0:
        revert with 0, '%'
    require DEPOSITS_KEPT
    require uint8(arg3 % DEPOSITS_KEPT) < 3
    if sub_5a71f916[address(arg1)][address(arg2)][2 * uint8(arg3 % uint8(stor0.field_8))].field_0 == arg3:
        return sub_5a71f916[address(arg1)][address(arg2)][2 * uint8(arg3 % uint8(stor0.field_8))].field_256
    else:
        return 0
}

function sub_4bbd714c(?) {
    require ext_code.size(0x6d7ea7e859f6d7f10e7a4cc26d4ecf0ff53ee9e3)
    delegate 0x6d7ea7e859f6d7f10e7a4cc26d4ecf0ff53ee9e3.0x207cbaba with:
         gas gas_remaining wei
        args 0, address(arg1), arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function sub_35e89491(?) {
    require ext_code.size(0x6d7ea7e859f6d7f10e7a4cc26d4ecf0ff53ee9e3)
    delegate 0x6d7ea7e859f6d7f10e7a4cc26d4ecf0ff53ee9e3.0xa7e478ba with:
         gas gas_remaining wei
        args 0, 0, address(arg1), address(arg2), arg3
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function sub_89f91f0d(?) {
    require ext_code.size(0x6d7ea7e859f6d7f10e7a4cc26d4ecf0ff53ee9e3)
    delegate 0x6d7ea7e859f6d7f10e7a4cc26d4ecf0ff53ee9e3.0xe7f24bad with:
         gas gas_remaining wei
        args 0, address(arg1), arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return delegate.return_data[0], delegate.return_data[32]
}

function sub_a4ec6b65(?) {
    require ext_code.size(0xc7aee36324e54a8cf412423e6abc25ed2397a6ef)
    delegate 0xc7aee36324e54a8cf412423e6abc25ed2397a6ef.0x8f2dc76e with:
         gas gas_remaining wei
        args 0, 0, address(arg1), arg2, arg3, address(arg4), arg5, arg6, arg7
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(delegate.return_data[0])
}

function sub_7fe03ad6(?) {
    require ext_code.size(0xc7aee36324e54a8cf412423e6abc25ed2397a6ef)
    delegate 0xc7aee36324e54a8cf412423e6abc25ed2397a6ef.0xd40c28d3 with:
         gas gas_remaining wei
        args 0, address(arg1), address(arg2), call.data[68 len 64], call.data[132 len 64], arg3
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return delegate.return_data[0 len 64]
}

function signedMessageECRECOVER(bytes32 arg1, bytes32 arg2, bytes32 arg3, uint8 arg4) {
    require ext_code.size(0x6d7ea7e859f6d7f10e7a4cc26d4ecf0ff53ee9e3)
    delegate 0x6d7ea7e859f6d7f10e7a4cc26d4ecf0ff53ee9e3.0x8e9f9072 with:
         gas gas_remaining wei
        args 0, uint32(arg1), arg2, arg3, arg4
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[12 len 20]
}

function sub_37a40dd7(?) {
    require ext_code.size(0xc7aee36324e54a8cf412423e6abc25ed2397a6ef)
    delegate 0xc7aee36324e54a8cf412423e6abc25ed2397a6ef.0xed4ecc3f with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3 << 192, arg4, arg5, call.data[164 len 64], address(arg6), arg7, arg8, arg9
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function hasMissedCheckpointSubmission() {
    require ext_code.size(0x6d7ea7e859f6d7f10e7a4cc26d4ecf0ff53ee9e3)
    delegate 0x6d7ea7e859f6d7f10e7a4cc26d4ecf0ff53ee9e3.0x26df6e49 with:
         gas gas_remaining wei
        args 0
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_edce3ed3 > delegate.return_data[0]:
        revert with 0, '-'
    return (delegate.return_data[0] - sub_edce3ed3 > 1)
}

function sub_cf5a287d(?) {
    mem[(32 * arg2.length) + 292 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    require ext_code.size(0xe22f60803f25a80831e1446a73a82b32f98510f2)
    delegate 0xe22f60803f25a80831e1446a73a82b32f98510f2.0xcf5a287d with:
         gas gas_remaining wei
        args arg1, Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg2.length) + floor32(arg2.length) + 292 len (32 * arg2.length) - floor32(arg2.length)]), arg3, arg4
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(delegate.return_data[0])
}

function sub_a76aca05(?) {
    mem[(32 * arg4.length) + 420 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
    require ext_code.size(0xe22f60803f25a80831e1446a73a82b32f98510f2)
    delegate 0xe22f60803f25a80831e1446a73a82b32f98510f2.0xa76aca05 with:
         gas gas_remaining wei
        args arg1 << 192, arg2, arg3, Array(len=call.data[arg4 + 36 len floor32(arg4.length)], data=mem[(32 * arg4.length) + floor32(arg4.length) + 420 len (32 * arg4.length) - floor32(arg4.length)]), call.data[132 len 64], arg4.length
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function sub_a5a56919(?) payable {
    require ext_code.size(0xc7aee36324e54a8cf412423e6abc25ed2397a6ef)
    delegate 0xc7aee36324e54a8cf412423e6abc25ed2397a6ef.0x98c66d82 with:
         gas gas_remaining wei
        args 0, address(arg1), arg2, arg3 << 192, call.data[100 len 64], arg4, arg5, arg6
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    if gas_remaining > gas_remaining:
        revert with 0, '-'
    if 25 * stor1.length / 25 != stor1.length:
        revert with 0, '*'
    if msg.value < 25 * stor1.length:
        revert with 0, 'r'
    if 25 * block.gasprice / 25 != block.gasprice:
        revert with 0, '*'
    if msg.value < 25 * block.gasprice:
        revert with 0, 'r'
    call operatorAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function hasOutstandingChallenges() {
    require ext_code.size(0x6d7ea7e859f6d7f10e7a4cc26d4ecf0ff53ee9e3)
    delegate 0x6d7ea7e859f6d7f10e7a4cc26d4ecf0ff53ee9e3.0x26df6e49 with:
         gas gas_remaining wei
        args 0
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 1 > delegate.return_data[0]:
        revert with 0, '-'
    require ext_code.size(0x6d7ea7e859f6d7f10e7a4cc26d4ecf0ff53ee9e3)
    delegate 0x6d7ea7e859f6d7f10e7a4cc26d4ecf0ff53ee9e3.0x378a4719 with:
         gas gas_remaining wei
        args 0, delegate.return_data[0] - 1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if delegate.return_data[0] <= 0:
        return (delegate.return_data[0] > 0)
    require ext_code.size(0x6d7ea7e859f6d7f10e7a4cc26d4ecf0ff53ee9e3)
    delegate 0x6d7ea7e859f6d7f10e7a4cc26d4ecf0ff53ee9e3.0x87d5cab9 with:
         gas gas_remaining wei
        args 0
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (delegate.return_data[0] > sub_1f3adc0f)
}

function sub_a4a80768(?) payable {
    mem[(32 * arg2.length) + 516] = 0
    mem[(32 * arg2.length) + 548] = arg1
    mem[(32 * arg2.length) + 580 len 64] = call.data[36 len 64]
    mem[(32 * arg2.length) + 644 len 64] = call.data[100 len 64]
    mem[(32 * arg2.length) + 708 len 96] = call.data[164 len 96]
    mem[(32 * arg2.length) + 836 len 64] = call.data[292 len 64]
    mem[(32 * arg2.length) + 900 len 96] = call.data[356 len 96]
    mem[(32 * arg2.length) + 996] = arg3
    mem[(32 * arg2.length) + 804] = 512
    mem[(32 * arg2.length) + 1028] = arg2.length
    mem[(32 * arg2.length) + 1060 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    require ext_code.size(0xc7aee36324e54a8cf412423e6abc25ed2397a6ef)
    delegate 0xc7aee36324e54a8cf412423e6abc25ed2397a6ef.0xcd05f9c0 with:
         gas gas_remaining wei
        args mem[(32 * arg2.length) + 516 len (96 * arg2.length) + 544]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    if gas_remaining > gas_remaining:
        revert with 0, '-'
    if msg.value < 0:
        revert with 0, 'r'
    if msg.value < 0:
        revert with 0, 'r'
    call operatorAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_a4c6e184(?) {
    mem[(32 * arg7.length) + (32 * arg6.length) + (32 * arg5.length) + 580 len floor32(arg5.length)] = call.data[arg5 + 36 len floor32(arg5.length)]
    mem[(64 * arg5.length) + (32 * arg7.length) + (32 * arg6.length) + 580] = arg6.length
    mem[(64 * arg5.length) + (32 * arg7.length) + (32 * arg6.length) + 612 len floor32(arg6.length)] = call.data[arg6 + 36 len floor32(arg6.length)]
    mem[(64 * arg6.length) + (64 * arg5.length) + (32 * arg7.length) + 612] = arg7.length
    mem[(64 * arg6.length) + (64 * arg5.length) + (32 * arg7.length) + 644 len floor32(arg7.length)] = call.data[arg7 + 36 len floor32(arg7.length)]
    require ext_code.size(0xe22f60803f25a80831e1446a73a82b32f98510f2)
    delegate 0xe22f60803f25a80831e1446a73a82b32f98510f2.0xa4c6e184 with:
         gas gas_remaining wei
        args arg1 << 192, arg2 << 192, arg3, arg4, Array(len=call.data[arg5 + 36 len floor32(arg5.length)], data=mem[(32 * arg7.length) + (32 * arg6.length) + (32 * arg5.length) + floor32(arg5.length) + 580 len (32 * arg7.length) + (32 * arg6.length) + (32 * arg5.length) + -floor32(arg5.length) + 64]), (32 * arg5.length) + 320, (32 * arg6.length) + (32 * arg5.length) + 352, call.data[228 len 64], arg5.length
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function sub_4aa76699(?) {
    mem[(32 * arg6.length) + (32 * arg5.length) + (32 * arg4.length) + 900 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
    mem[(64 * arg4.length) + (32 * arg6.length) + (32 * arg5.length) + 900] = arg5.length
    mem[(64 * arg4.length) + (32 * arg6.length) + (32 * arg5.length) + 932 len floor32(arg5.length)] = call.data[arg5 + 36 len floor32(arg5.length)]
    mem[(64 * arg5.length) + (64 * arg4.length) + (32 * arg6.length) + 932] = arg6.length
    mem[(64 * arg5.length) + (64 * arg4.length) + (32 * arg6.length) + 964 len floor32(arg6.length)] = call.data[arg6 + 36 len floor32(arg6.length)]
    require ext_code.size(0xc7aee36324e54a8cf412423e6abc25ed2397a6ef)
    delegate 0xc7aee36324e54a8cf412423e6abc25ed2397a6ef.0x793ecd24 with:
         gas gas_remaining wei
        args 0, address(arg1), address(arg2), call.data[68 len 64], arg3 << 192, call.data[164 len 96], 448, (32 * arg4.length) + 480, (32 * arg5.length) + (32 * arg4.length) + 512, call.data[356 len 64], arg4.length, call.data[arg4 + 36 len floor32(arg4.length)], mem[(32 * arg6.length) + (32 * arg5.length) + (32 * arg4.length) + floor32(arg4.length) + 900 len (32 * arg6.length) + (32 * arg5.length) + (32 * arg4.length) + -floor32(arg4.length) + 64]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(delegate.return_data[0])
}

function sub_48bd62e7(?) {
    require ext_code.size(0x6d7ea7e859f6d7f10e7a4cc26d4ecf0ff53ee9e3)
    delegate 0x6d7ea7e859f6d7f10e7a4cc26d4ecf0ff53ee9e3.0x26df6e49 with:
         gas gas_remaining wei
        args 0
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_c969b686 <= 0:
        revert with 0, '%'
    require sub_c969b686
    require uint8(delegate.return_data[0] % sub_c969b686) < 5
    if sub_c969b686 <= 0:
        revert with 0, '%'
    require sub_c969b686
    require sub_edce3ed3 % sub_c969b686 < 5
    require ext_code.size(0x6d7ea7e859f6d7f10e7a4cc26d4ecf0ff53ee9e3)
    delegate 0x6d7ea7e859f6d7f10e7a4cc26d4ecf0ff53ee9e3.0x26df6e49 with:
         gas gas_remaining wei
        args 0
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_edce3ed3 > delegate.return_data[0]:
        revert with 0, '-'
    if sub_c969b686 <= 0:
        revert with 0, '%'
    require sub_c969b686
    require delegate.return_data[0] % sub_c969b686 < 5
    if delegate.return_data[0] == stor7[delegate.return_data[0] % uint8(stor0.field_0)]:
        return sub_fe11584e[uint8(delegate.return_data[0] % uint8(stor0.field_0))], 
               sub_edce3ed3,
               stor8[stor27 % uint8(stor0.field_0)],
               sub_edce3ed3 == delegate.return_data[0],
               delegate.return_data[0] - sub_edce3ed3 > 1,
               stor9[delegate.return_data[0] % uint8(stor0.field_0)]
    return sub_fe11584e[uint8(delegate.return_data[0] % uint8(stor0.field_0))], 
           sub_edce3ed3,
           stor8[stor27 % uint8(stor0.field_0)],
           sub_edce3ed3 == delegate.return_data[0],
           delegate.return_data[0] - sub_edce3ed3 > 1,
           0
}

function sub_6c09559e(?) {
    require ext_code.size(0x6d7ea7e859f6d7f10e7a4cc26d4ecf0ff53ee9e3)
    delegate 0x6d7ea7e859f6d7f10e7a4cc26d4ecf0ff53ee9e3.0x26df6e49 with:
         gas gas_remaining wei
        args 0
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 1 > delegate.return_data[0]:
        revert with 0, '-'
    require ext_code.size(0x6d7ea7e859f6d7f10e7a4cc26d4ecf0ff53ee9e3)
    delegate 0x6d7ea7e859f6d7f10e7a4cc26d4ecf0ff53ee9e3.0x378a4719 with:
         gas gas_remaining wei
        args 0, delegate.return_data[0] - 1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x6d7ea7e859f6d7f10e7a4cc26d4ecf0ff53ee9e3)
    if delegate.return_data[0] > 0:
        delegate 0x6d7ea7e859f6d7f10e7a4cc26d4ecf0ff53ee9e3.0x87d5cab9 with:
             gas gas_remaining wei
            args 0
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if delegate.return_data[0] > sub_1f3adc0f:
            revert with 0, 'p'
    delegate 0x6d7ea7e859f6d7f10e7a4cc26d4ecf0ff53ee9e3.0x26df6e49 with:
         gas gas_remaining wei
        args 0
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_edce3ed3 > delegate.return_data[0]:
        revert with 0, '-'
    if delegate.return_data[0] - sub_edce3ed3 > 1:
        revert with 0, 'p'
    require ext_code.size(0xb5ebdfd003870d53c68f91a7c7380a3494dd64b8)
    delegate 0xb5ebdfd003870d53c68f91a7c7380a3494dd64b8.0xdeb435c5 with:
         gas gas_remaining wei
        args 0, 0, address(arg1), arg2, arg3, arg4, arg5, arg6
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function deposit(address arg1, address arg2, uint256 arg3) payable {
    require ext_code.size(0x6d7ea7e859f6d7f10e7a4cc26d4ecf0ff53ee9e3)
    delegate 0x6d7ea7e859f6d7f10e7a4cc26d4ecf0ff53ee9e3.0x26df6e49 with:
         gas gas_remaining wei
        args 0
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 1 > delegate.return_data[0]:
        revert with 0, '-'
    require ext_code.size(0x6d7ea7e859f6d7f10e7a4cc26d4ecf0ff53ee9e3)
    delegate 0x6d7ea7e859f6d7f10e7a4cc26d4ecf0ff53ee9e3.0x378a4719 with:
         gas gas_remaining wei
        args 0, delegate.return_data[0] - 1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x6d7ea7e859f6d7f10e7a4cc26d4ecf0ff53ee9e3)
    if delegate.return_data[0] > 0:
        delegate 0x6d7ea7e859f6d7f10e7a4cc26d4ecf0ff53ee9e3.0x87d5cab9 with:
             gas gas_remaining wei
            args 0
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if delegate.return_data[0] > sub_1f3adc0f:
            revert with 0, 'p'
    delegate 0x6d7ea7e859f6d7f10e7a4cc26d4ecf0ff53ee9e3.0x26df6e49 with:
         gas gas_remaining wei
        args 0
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_edce3ed3 > delegate.return_data[0]:
        revert with 0, '-'
    if delegate.return_data[0] - sub_edce3ed3 > 1:
        revert with 0, 'p'
    require ext_code.size(0xb76f519effec3e1149c61cc76d5b6d157228fae)
    delegate 0xb76f519effec3e1149c61cc76d5b6d157228fae.0x15a0be9e with:
         gas gas_remaining wei
        args 0, 0, address(arg1), address(arg2), arg3
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_6e611615(?) {
    require ext_code.size(0x6d7ea7e859f6d7f10e7a4cc26d4ecf0ff53ee9e3)
    delegate 0x6d7ea7e859f6d7f10e7a4cc26d4ecf0ff53ee9e3.0x26df6e49 with:
         gas gas_remaining wei
        args 0
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 1 > delegate.return_data[0]:
        revert with 0, '-'
    require ext_code.size(0x6d7ea7e859f6d7f10e7a4cc26d4ecf0ff53ee9e3)
    delegate 0x6d7ea7e859f6d7f10e7a4cc26d4ecf0ff53ee9e3.0x378a4719 with:
         gas gas_remaining wei
        args 0, delegate.return_data[0] - 1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x6d7ea7e859f6d7f10e7a4cc26d4ecf0ff53ee9e3)
    if delegate.return_data[0] > 0:
        delegate 0x6d7ea7e859f6d7f10e7a4cc26d4ecf0ff53ee9e3.0x87d5cab9 with:
             gas gas_remaining wei
            args 0
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if delegate.return_data[0] > sub_1f3adc0f:
            revert with 0, 'p'
    delegate 0x6d7ea7e859f6d7f10e7a4cc26d4ecf0ff53ee9e3.0x26df6e49 with:
         gas gas_remaining wei
        args 0
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_edce3ed3 > delegate.return_data[0]:
        revert with 0, '-'
    if delegate.return_data[0] - sub_edce3ed3 > 1:
        revert with 0, 'p'
    require ext_code.size(0xb5ebdfd003870d53c68f91a7c7380a3494dd64b8)
    delegate 0xb5ebdfd003870d53c68f91a7c7380a3494dd64b8.0x2569bb31 with:
         gas gas_remaining wei
        args 0, address(arg1), arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function sub_e94a6873(?) {
    require msg.sender == operatorAddress
    require ext_code.size(0x6d7ea7e859f6d7f10e7a4cc26d4ecf0ff53ee9e3)
    delegate 0x6d7ea7e859f6d7f10e7a4cc26d4ecf0ff53ee9e3.0x26df6e49 with:
         gas gas_remaining wei
        args 0
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 1 > delegate.return_data[0]:
        revert with 0, '-'
    require ext_code.size(0x6d7ea7e859f6d7f10e7a4cc26d4ecf0ff53ee9e3)
    delegate 0x6d7ea7e859f6d7f10e7a4cc26d4ecf0ff53ee9e3.0x378a4719 with:
         gas gas_remaining wei
        args 0, delegate.return_data[0] - 1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x6d7ea7e859f6d7f10e7a4cc26d4ecf0ff53ee9e3)
    if delegate.return_data[0] > 0:
        delegate 0x6d7ea7e859f6d7f10e7a4cc26d4ecf0ff53ee9e3.0x87d5cab9 with:
             gas gas_remaining wei
            args 0
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if delegate.return_data[0] > sub_1f3adc0f:
            revert with 0, 'p'
    delegate 0x6d7ea7e859f6d7f10e7a4cc26d4ecf0ff53ee9e3.0x26df6e49 with:
         gas gas_remaining wei
        args 0
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_edce3ed3 > delegate.return_data[0]:
        revert with 0, '-'
    if delegate.return_data[0] - sub_edce3ed3 > 1:
        revert with 0, 'p'
    require ext_code.size(0xb5ebdfd003870d53c68f91a7c7380a3494dd64b8)
    delegate 0xb5ebdfd003870d53c68f91a7c7380a3494dd64b8.0xcb277315 with:
         gas gas_remaining wei
        args 0, 0, address(arg1), address(arg2), arg3, arg4, arg5, arg6, arg7
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_eb7480ba(?) {
    require ext_code.size(0x6d7ea7e859f6d7f10e7a4cc26d4ecf0ff53ee9e3)
    delegate 0x6d7ea7e859f6d7f10e7a4cc26d4ecf0ff53ee9e3.0x26df6e49 with:
         gas gas_remaining wei
        args 0
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 1 > delegate.return_data[0]:
        revert with 0, '-'
    require ext_code.size(0x6d7ea7e859f6d7f10e7a4cc26d4ecf0ff53ee9e3)
    delegate 0x6d7ea7e859f6d7f10e7a4cc26d4ecf0ff53ee9e3.0x378a4719 with:
         gas gas_remaining wei
        args 0, delegate.return_data[0] - 1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x6d7ea7e859f6d7f10e7a4cc26d4ecf0ff53ee9e3)
    if delegate.return_data[0] <= 0:
        delegate 0x6d7ea7e859f6d7f10e7a4cc26d4ecf0ff53ee9e3.0x26df6e49 with:
             gas gas_remaining wei
            args 0
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if sub_edce3ed3 > delegate.return_data[0]:
            revert with 0, '-'
        if delegate.return_data[0] - sub_edce3ed3 <= 1:
            revert with 0, 'f'
    else:
        delegate 0x6d7ea7e859f6d7f10e7a4cc26d4ecf0ff53ee9e3.0x87d5cab9 with:
             gas gas_remaining wei
            args 0
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if delegate.return_data[0] <= sub_1f3adc0f:
            require ext_code.size(0x6d7ea7e859f6d7f10e7a4cc26d4ecf0ff53ee9e3)
            delegate 0x6d7ea7e859f6d7f10e7a4cc26d4ecf0ff53ee9e3.0x26df6e49 with:
                 gas gas_remaining wei
                args 0
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if sub_edce3ed3 > delegate.return_data[0]:
                revert with 0, '-'
            if delegate.return_data[0] - sub_edce3ed3 <= 1:
                revert with 0, 'f'
    require ext_code.size(0xe3ded877570e8094120f6350d47638292d42c84d)
    delegate 0xe3ded877570e8094120f6350d47638292d42c84d.0x20d26c3c with:
         gas gas_remaining wei
        args 0, address(arg1), arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function sub_9966da19(?) {
    mem[96] = arg3.length
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 128] = arg4.length
    mem[(32 * arg3.length) + 160 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg4.length) + (32 * arg3.length) + 160] = arg5.length
    mem[(32 * arg4.length) + (32 * arg3.length) + 192 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    mem[64] = (32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + 288
    s = (32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + 192
    idx = 0
    while idx < 3:
        _8 = mem[64]
        mem[64] = mem[64] + 64
        mem[_8 len 64] = call.data[(64 * idx) + 164 len 64]
        mem[s] = _8
        s = s + 32
        idx = idx + 1
        continue 
    _6 = mem[64]
    mem[64] = mem[64] + 192
    mem[_6 len 192] = call.data[356 len 192]
    _7 = mem[64]
    mem[64] = mem[64] + 64
    mem[_7 len 64] = call.data[548 len 64]
    _9 = mem[64]
    mem[mem[64]] = 0xf27f816a00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 0
    mem[mem[64] + 36] = arg1
    mem[mem[64] + 68] = arg2
    s = mem[64] + 196
    idx = 0
    while idx < 3:
        t = 0
        while t < 64:
            mem[2 * t] = mem[t + mem[(32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + (32 * idx) + 192]]
            t = t + 32
            continue 
        t = 128
        idx = idx + 1
        continue 
    idx = 0
    while idx < 192:
        mem[2 * idx] = mem[idx + _6]
        idx = idx + 32
        continue 
    mem[384 len 64] = mem[_7 len 64]
    mem[_9 + 100] = -_9 + 444
    mem[448] = mem[96]
    mem[480 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[_9 + 132] = (32 * mem[96]) + -_9 + 476
    mem[(32 * mem[96]) + 480] = mem[(32 * arg3.length) + 128]
    _31 = mem[(32 * arg3.length) + 128]
    mem[(32 * mem[96]) + 512 len floor32(mem[(32 * arg3.length) + 128])] = mem[(32 * arg3.length) + 160 len floor32(mem[(32 * arg3.length) + 128])]
    mem[_9 + 164] = (32 * _31) + (32 * mem[96]) + -_9 + 508
    mem[(32 * _31) + (32 * mem[96]) + 512] = mem[(32 * arg4.length) + (32 * arg3.length) + 160]
    _39 = mem[(32 * arg4.length) + (32 * arg3.length) + 160]
    mem[(32 * _31) + (32 * mem[96]) + 544 len floor32(mem[(32 * arg4.length) + (32 * arg3.length) + 160])] = mem[(32 * arg4.length) + (32 * arg3.length) + 192 len floor32(mem[(32 * arg4.length) + (32 * arg3.length) + 160])]
    require ext_code.size(0xc7aee36324e54a8cf412423e6abc25ed2397a6ef)
    delegate 0xc7aee36324e54a8cf412423e6abc25ed2397a6ef.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len (32 * _39) + (32 * _31) + (32 * mem[96]) + -mem[64] + 540]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_2073722b(?) {
    mem[96 len 64] = call.data[36 len 64]
    mem[160] = arg3.length
    mem[192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 192] = arg4.length
    mem[(32 * arg3.length) + 224 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg4.length) + (32 * arg3.length) + 224] = arg5.length
    mem[(32 * arg4.length) + (32 * arg3.length) + 256 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    mem[64] = (32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + 352
    s = (32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + 256
    idx = 0
    while idx < 3:
        _9 = mem[64]
        mem[64] = mem[64] + 64
        mem[_9 len 64] = call.data[(64 * idx) + 228 len 64]
        mem[s] = _9
        s = s + 32
        idx = idx + 1
        continue 
    _7 = mem[64]
    mem[64] = mem[64] + 64
    mem[_7 len 64] = call.data[420 len 64]
    _8 = mem[64]
    mem[64] = (32 * arg6.length) + mem[64] + 32
    mem[_8] = arg6.length
    mem[_8 + 32 len 32 * arg6.length] = call.data[arg6 + 36 len 32 * arg6.length]
    _10 = mem[64]
    mem[mem[64]] = 0x5a2f177c00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 0
    mem[mem[64] + 36] = arg1
    mem[mem[64] + 68 len 64] = mem[96 len 64]
    mem[mem[64] + 132] = arg2
    s = mem[64] + 260
    idx = 0
    while idx < 3:
        t = 0
        while t < 64:
            mem[2 * t] = mem[t + mem[(32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + (32 * idx) + 256]]
            t = t + 32
            continue 
        t = 128
        idx = idx + 1
        continue 
    idx = 0
    while idx < 64:
        mem[2 * idx] = mem[idx + _7]
        idx = idx + 32
        continue 
    mem[_10 + 164] = -_10 + 156
    mem[_10 + 196] = (32 * mem[160]) + -_10 + 188
    mem[(32 * mem[160]) + 192] = mem[(32 * arg3.length) + 192]
    _35 = mem[(32 * arg3.length) + 192]
    mem[(32 * mem[160]) + 224 len floor32(mem[(32 * arg3.length) + 192])] = mem[(32 * arg3.length) + 224 len floor32(mem[(32 * arg3.length) + 192])]
    mem[_10 + 228] = (32 * _35) + (32 * mem[160]) + -_10 + 220
    mem[(32 * _35) + (32 * mem[160]) + 224] = mem[(32 * arg4.length) + (32 * arg3.length) + 224]
    _46 = mem[(32 * arg4.length) + (32 * arg3.length) + 224]
    mem[(32 * _35) + (32 * mem[160]) + 256 len floor32(mem[(32 * arg4.length) + (32 * arg3.length) + 224])] = mem[(32 * arg4.length) + (32 * arg3.length) + 256 len floor32(mem[(32 * arg4.length) + (32 * arg3.length) + 224])]
    mem[128] = (32 * _46) + (32 * _35) + (32 * mem[160]) + -_10 + 252
    mem[(32 * _46) + (32 * _35) + (32 * mem[160]) + 256] = mem[_8]
    _54 = mem[_8]
    mem[(32 * _46) + (32 * _35) + (32 * mem[160]) + 288 len floor32(mem[_8])] = mem[_8 + 32 len floor32(mem[_8])]
    require ext_code.size(0xc7aee36324e54a8cf412423e6abc25ed2397a6ef)
    delegate 0xc7aee36324e54a8cf412423e6abc25ed2397a6ef.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len (32 * _54) + (32 * _46) + (32 * _35) + (32 * mem[160]) + -mem[64] + 284]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_cd7391e1(?) {
    mem[96 len 64] = call.data[36 len 64]
    mem[160] = arg3.length
    mem[192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 192] = arg4.length
    mem[(32 * arg3.length) + 224 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg4.length) + (32 * arg3.length) + 224] = arg5.length
    mem[(32 * arg4.length) + (32 * arg3.length) + 256 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    mem[64] = (32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + 352
    s = (32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + 256
    idx = 0
    while idx < 3:
        _9 = mem[64]
        mem[64] = mem[64] + 64
        mem[_9 len 64] = call.data[(64 * idx) + 228 len 64]
        mem[s] = _9
        s = s + 32
        idx = idx + 1
        continue 
    _7 = mem[64]
    mem[64] = mem[64] + 64
    mem[_7 len 64] = call.data[420 len 64]
    _8 = mem[64]
    mem[64] = (32 * arg6.length) + mem[64] + 32
    mem[_8] = arg6.length
    mem[_8 + 32 len 32 * arg6.length] = call.data[arg6 + 36 len 32 * arg6.length]
    _10 = mem[64]
    mem[mem[64]] = 0x391f040100000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 0
    mem[mem[64] + 36] = arg1
    mem[mem[64] + 68 len 64] = mem[96 len 64]
    mem[mem[64] + 132] = arg2
    s = mem[64] + 260
    idx = 0
    while idx < 3:
        t = 0
        while t < 64:
            mem[2 * t] = mem[t + mem[(32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + (32 * idx) + 256]]
            t = t + 32
            continue 
        t = 128
        idx = idx + 1
        continue 
    idx = 0
    while idx < 64:
        mem[2 * idx] = mem[idx + _7]
        idx = idx + 32
        continue 
    mem[_10 + 164] = -_10 + 156
    mem[_10 + 196] = (32 * mem[160]) + -_10 + 188
    mem[(32 * mem[160]) + 192] = mem[(32 * arg3.length) + 192]
    _35 = mem[(32 * arg3.length) + 192]
    mem[(32 * mem[160]) + 224 len floor32(mem[(32 * arg3.length) + 192])] = mem[(32 * arg3.length) + 224 len floor32(mem[(32 * arg3.length) + 192])]
    mem[_10 + 228] = (32 * _35) + (32 * mem[160]) + -_10 + 220
    mem[(32 * _35) + (32 * mem[160]) + 224] = mem[(32 * arg4.length) + (32 * arg3.length) + 224]
    _46 = mem[(32 * arg4.length) + (32 * arg3.length) + 224]
    mem[(32 * _35) + (32 * mem[160]) + 256 len floor32(mem[(32 * arg4.length) + (32 * arg3.length) + 224])] = mem[(32 * arg4.length) + (32 * arg3.length) + 256 len floor32(mem[(32 * arg4.length) + (32 * arg3.length) + 224])]
    mem[128] = (32 * _46) + (32 * _35) + (32 * mem[160]) + -_10 + 252
    mem[(32 * _46) + (32 * _35) + (32 * mem[160]) + 256] = mem[_8]
    _54 = mem[_8]
    mem[(32 * _46) + (32 * _35) + (32 * mem[160]) + 288 len floor32(mem[_8])] = mem[_8 + 32 len floor32(mem[_8])]
    require ext_code.size(0xc7aee36324e54a8cf412423e6abc25ed2397a6ef)
    delegate 0xc7aee36324e54a8cf412423e6abc25ed2397a6ef.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len (32 * _54) + (32 * _46) + (32 * _35) + (32 * mem[160]) + -mem[64] + 284]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_d723a962(?) payable {
    mem[96 len 64] = call.data[36 len 64]
    mem[160] = arg3.length
    mem[192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 192] = arg4.length
    mem[(32 * arg3.length) + 224 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg4.length) + (32 * arg3.length) + 224] = arg5.length
    mem[(32 * arg4.length) + (32 * arg3.length) + 256 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    mem[64] = (32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + 352
    s = (32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + 256
    idx = 0
    while idx < 3:
        _8 = mem[64]
        mem[64] = mem[64] + 64
        mem[_8 len 64] = call.data[(64 * idx) + 228 len 64]
        mem[s] = _8
        s = s + 32
        idx = idx + 1
        continue 
    _7 = mem[64]
    mem[64] = mem[64] + 96
    mem[_7 len 96] = call.data[420 len 96]
    _9 = mem[64]
    mem[mem[64]] = 0x29df9fec00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 0
    mem[mem[64] + 36] = arg1
    mem[mem[64] + 68 len 64] = mem[96 len 64]
    mem[mem[64] + 132] = arg2
    s = mem[64] + 260
    idx = 0
    while idx < 3:
        t = 0
        while t < 64:
            mem[2 * t] = mem[t + mem[(32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + (32 * idx) + 256]]
            t = t + 32
            continue 
        t = 128
        idx = idx + 1
        continue 
    idx = 0
    while idx < 96:
        mem[2 * idx] = mem[idx + _7]
        idx = idx + 32
        continue 
    mem[192] = arg6
    mem[_9 + 164] = -_9 + 220
    mem[224] = mem[160]
    mem[256 len floor32(mem[160])] = mem[192 len floor32(mem[160])]
    mem[_9 + 196] = (32 * mem[160]) + -_9 + 252
    mem[(32 * mem[160]) + 256] = mem[(32 * arg3.length) + 192]
    _38 = mem[(32 * arg3.length) + 192]
    mem[(32 * mem[160]) + 288 len floor32(mem[(32 * arg3.length) + 192])] = mem[(32 * arg3.length) + 224 len floor32(mem[(32 * arg3.length) + 192])]
    mem[_9 + 228] = (32 * _38) + (32 * mem[160]) + -_9 + 284
    mem[(32 * _38) + (32 * mem[160]) + 288] = mem[(32 * arg4.length) + (32 * arg3.length) + 224]
    _53 = mem[(32 * arg4.length) + (32 * arg3.length) + 224]
    mem[(32 * _38) + (32 * mem[160]) + 320 len floor32(mem[(32 * arg4.length) + (32 * arg3.length) + 224])] = mem[(32 * arg4.length) + (32 * arg3.length) + 256 len floor32(mem[(32 * arg4.length) + (32 * arg3.length) + 224])]
    require ext_code.size(0xc7aee36324e54a8cf412423e6abc25ed2397a6ef)
    delegate 0xc7aee36324e54a8cf412423e6abc25ed2397a6ef.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len (32 * _53) + (32 * _38) + (32 * mem[160]) + -mem[64] + 316]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    if gas_remaining > gas_remaining:
        revert with 0, '-'
    if msg.value < 0:
        revert with 0, 'r'
    if msg.value < 0:
        revert with 0, 'r'
    call operatorAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_6b6a2115(?) {
    require msg.sender == operatorAddress
    require ext_code.size(0x6d7ea7e859f6d7f10e7a4cc26d4ecf0ff53ee9e3)
    delegate 0x6d7ea7e859f6d7f10e7a4cc26d4ecf0ff53ee9e3.0x26df6e49 with:
         gas gas_remaining wei
        args 0
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 1 > delegate.return_data[0]:
        revert with 0, '-'
    require ext_code.size(0x6d7ea7e859f6d7f10e7a4cc26d4ecf0ff53ee9e3)
    delegate 0x6d7ea7e859f6d7f10e7a4cc26d4ecf0ff53ee9e3.0x378a4719 with:
         gas gas_remaining wei
        args 0, delegate.return_data[0] - 1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x6d7ea7e859f6d7f10e7a4cc26d4ecf0ff53ee9e3)
    if delegate.return_data[0] > 0:
        delegate 0x6d7ea7e859f6d7f10e7a4cc26d4ecf0ff53ee9e3.0x87d5cab9 with:
             gas gas_remaining wei
            args 0
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if delegate.return_data[0] > sub_1f3adc0f:
            revert with 0, 'p'
    delegate 0x6d7ea7e859f6d7f10e7a4cc26d4ecf0ff53ee9e3.0x26df6e49 with:
         gas gas_remaining wei
        args 0
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_edce3ed3 > delegate.return_data[0]:
        revert with 0, '-'
    if delegate.return_data[0] - sub_edce3ed3 > 1:
        revert with 0, 'p'
    require ext_code.size(0x6d7ea7e859f6d7f10e7a4cc26d4ecf0ff53ee9e3)
    delegate 0x6d7ea7e859f6d7f10e7a4cc26d4ecf0ff53ee9e3.0x26df6e49 with:
         gas gas_remaining wei
        args 0
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 1 > delegate.return_data[0]:
        revert with 0, '-'
    if sub_c969b686 <= 0:
        revert with 0, '%'
    require sub_c969b686
    require delegate.return_data[0] - 1 % sub_c969b686 < 5
    if sub_fe11584e[delegate.return_data[0] - 1 % uint8(stor0.field_0)] != arg1:
        revert with 0, 'b'
    if 1 > delegate.return_data[0]:
        revert with 0, '-'
    require ext_code.size(0x6d7ea7e859f6d7f10e7a4cc26d4ecf0ff53ee9e3)
    delegate 0x6d7ea7e859f6d7f10e7a4cc26d4ecf0ff53ee9e3.0x378a4719 with:
         gas gas_remaining wei
        args 0, delegate.return_data[0] - 1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if delegate.return_data[0]:
        revert with 0, 'c'
    if delegate.return_data[0] <= sub_edce3ed3:
        revert with 0, 'd'
    sub_edce3ed3 = delegate.return_data[0]
    require ext_code.size(0x6d7ea7e859f6d7f10e7a4cc26d4ecf0ff53ee9e3)
    delegate 0x6d7ea7e859f6d7f10e7a4cc26d4ecf0ff53ee9e3.0xe72b5713 with:
         gas gas_remaining wei
        args 0, delegate.return_data[0], delegate.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor1[delegate.return_data[0]] = arg2
    emit 0xcc7a428e: arg2, delegate.return_data[0]
}

function sub_90386b48(?) {
    mem[96 len 64] = call.data[4 len 64]
    mem[160] = arg3.length
    mem[192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 192] = arg4.length
    mem[(32 * arg3.length) + 224 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg4.length) + (32 * arg3.length) + 224] = arg5.length
    mem[(32 * arg4.length) + (32 * arg3.length) + 256 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    mem[(32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + 256] = arg6.length
    mem[(32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + 288 len 32 * arg6.length] = call.data[arg6 + 36 len 32 * arg6.length]
    mem[64] = (32 * arg6.length) + (32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + 384
    s = (32 * arg6.length) + (32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + 288
    idx = 0
    while idx < 3:
        _9 = mem[64]
        mem[64] = mem[64] + 64
        mem[_9 len 64] = call.data[(64 * idx) + 260 len 64]
        mem[s] = _9
        s = s + 32
        idx = idx + 1
        continue 
    _8 = mem[64]
    mem[64] = mem[64] + 96
    mem[_8 len 96] = call.data[484 len 96]
    _10 = mem[64]
    mem[mem[64]] = 0xe508c63c00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 0
    mem[mem[64] + 36 len 64] = mem[96 len 64]
    mem[mem[64] + 100] = arg1
    mem[mem[64] + 132] = arg2
    s = mem[64] + 292
    idx = 0
    while idx < 3:
        t = 0
        while t < 64:
            mem[2 * t] = mem[t + mem[(32 * arg6.length) + (32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + (32 * idx) + 288]]
            t = t + 32
            continue 
        t = 128
        idx = idx + 1
        continue 
    mem[s] = arg7
    idx = 0
    while idx < 96:
        mem[(2 * idx) + 32] = mem[idx + _8]
        idx = idx + 32
        continue 
    mem[_10 + 164] = -_10 + 220
    mem[224] = mem[160]
    mem[256 len floor32(mem[160])] = mem[192 len floor32(mem[160])]
    mem[_10 + 196] = (32 * mem[160]) + -_10 + 252
    mem[(32 * mem[160]) + 256] = mem[(32 * arg3.length) + 192]
    _35 = mem[(32 * arg3.length) + 192]
    mem[(32 * mem[160]) + 288 len floor32(mem[(32 * arg3.length) + 192])] = mem[(32 * arg3.length) + 224 len floor32(mem[(32 * arg3.length) + 192])]
    mem[_10 + 228] = (32 * _35) + (32 * mem[160]) + -_10 + 284
    mem[(32 * _35) + (32 * mem[160]) + 288] = mem[(32 * arg4.length) + (32 * arg3.length) + 224]
    _46 = mem[(32 * arg4.length) + (32 * arg3.length) + 224]
    mem[(32 * _35) + (32 * mem[160]) + 320 len floor32(mem[(32 * arg4.length) + (32 * arg3.length) + 224])] = mem[(32 * arg4.length) + (32 * arg3.length) + 256 len floor32(mem[(32 * arg4.length) + (32 * arg3.length) + 224])]
    mem[_10 + 260] = (32 * _46) + (32 * _35) + (32 * mem[160]) + -_10 + 316
    mem[(32 * _46) + (32 * _35) + (32 * mem[160]) + 320] = mem[(32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + 256]
    _54 = mem[(32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + 256]
    mem[(32 * _46) + (32 * _35) + (32 * mem[160]) + 352 len floor32(mem[(32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + 256])] = mem[(32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + 288 len floor32(mem[(32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + 256])]
    require ext_code.size(0xc7aee36324e54a8cf412423e6abc25ed2397a6ef)
    delegate 0xc7aee36324e54a8cf412423e6abc25ed2397a6ef.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len (32 * _54) + (32 * _46) + (32 * _35) + (32 * mem[160]) + -mem[64] + 348]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_892c2172(?) payable {
    mem[96 len 64] = call.data[36 len 64]
    mem[160 len 64] = call.data[100 len 64]
    mem[224 len 96] = call.data[164 len 96]
    mem[320] = arg2.length
    mem[352 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 352] = arg3.length
    mem[(32 * arg2.length) + 384 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + (32 * arg2.length) + 384] = arg4.length
    mem[(32 * arg3.length) + (32 * arg2.length) + 416 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[64] = (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 544
    s = (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 416
    idx = 0
    while idx < 4:
        _10 = mem[64]
        mem[64] = mem[64] + 64
        mem[_10 len 64] = call.data[(64 * idx) + 356 len 64]
        mem[s] = _10
        s = s + 32
        idx = idx + 1
        continue 
    _9 = mem[64]
    mem[64] = (32 * arg5.length) + mem[64] + 32
    mem[_9] = arg5.length
    mem[_9 + 32 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    _11 = mem[64]
    mem[mem[64]] = 0xb8c8f62100000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 0
    mem[mem[64] + 36] = arg1
    mem[mem[64] + 68 len 64] = mem[96 len 64]
    mem[mem[64] + 132 len 64] = mem[160 len 64]
    mem[mem[64] + 196 len 96] = mem[224 len 96]
    s = mem[64] + 388
    idx = 0
    while idx < 4:
        t = 0
        while t < 64:
            mem[2 * t] = mem[t + mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * idx) + 416]]
            t = t + 32
            continue 
        t = 128
        idx = idx + 1
        continue 
    mem[_11 + 292] = s + -_11 + 28
    mem[s + 32] = mem[320]
    _22 = mem[320]
    idx = 0
    while idx < 32 * _22:
        mem[(2 * idx) + 64] = mem[idx + 352]
        idx = idx + 32
        continue 
    mem[_11 + 324] = (32 * _22) + floor32(_22) + -_11 + 60
    mem[(32 * _22) + floor32(_22) + 64] = mem[(32 * arg2.length) + 352]
    _44 = mem[(32 * arg2.length) + 352]
    mem[(32 * _22) + floor32(_22) + 96 len floor32(mem[(32 * arg2.length) + 352])] = mem[(32 * arg2.length) + 384 len floor32(mem[(32 * arg2.length) + 352])]
    mem[_11 + 356] = (32 * _44) + (32 * _22) + floor32(_22) + -_11 + 92
    mem[(32 * _44) + (32 * _22) + floor32(_22) + 96] = mem[(32 * arg3.length) + (32 * arg2.length) + 384]
    _63 = mem[(32 * arg3.length) + (32 * arg2.length) + 384]
    mem[(32 * _44) + (32 * _22) + floor32(_22) + 128 len floor32(mem[(32 * arg3.length) + (32 * arg2.length) + 384])] = mem[(32 * arg3.length) + (32 * arg2.length) + 416 len floor32(mem[(32 * arg3.length) + (32 * arg2.length) + 384])]
    mem[floor32(_22)] = (32 * _63) + (32 * _44) + (32 * _22) + floor32(_22) + -_11 + 124
    mem[(32 * _63) + (32 * _44) + (32 * _22) + floor32(_22) + 128] = mem[_9]
    _78 = mem[_9]
    mem[(32 * _63) + (32 * _44) + (32 * _22) + floor32(_22) + 160 len floor32(mem[_9])] = mem[_9 + 32 len floor32(mem[_9])]
    require ext_code.size(0xc7aee36324e54a8cf412423e6abc25ed2397a6ef)
    delegate 0xc7aee36324e54a8cf412423e6abc25ed2397a6ef.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len (32 * _78) + (32 * _63) + (32 * _44) + (32 * _22) + floor32(_22) + -mem[64] + 156]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    if gas_remaining > gas_remaining:
        revert with 0, '-'
    if msg.value < 0:
        revert with 0, 'r'
    if msg.value < 0:
        revert with 0, 'r'
    call operatorAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_e3556d8c(?) payable {
    mem[96 len 64] = call.data[4 len 64]
    mem[160 len 96] = call.data[68 len 96]
    mem[256] = arg1.length
    mem[288 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 288] = arg2.length
    mem[(32 * arg1.length) + 320 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + (32 * arg1.length) + 320] = arg3.length
    mem[(32 * arg2.length) + (32 * arg1.length) + 352 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 352] = arg4.length
    mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 384 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[64] = (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 480
    s = (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 384
    idx = 0
    while idx < 3:
        _11 = mem[64]
        mem[64] = mem[64] + 64
        mem[_11 len 64] = call.data[(64 * idx) + 292 len 64]
        mem[s] = _11
        s = s + 32
        idx = idx + 1
        continue 
    _9 = mem[64]
    mem[64] = mem[64] + 128
    mem[_9 len 128] = call.data[484 len 128]
    _10 = mem[64]
    mem[64] = mem[64] + 96
    mem[_10 len 96] = call.data[612 len 96]
    _12 = mem[64]
    mem[mem[64]] = 0x5de7f84000000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 0
    mem[mem[64] + 36 len 64] = mem[96 len 64]
    mem[mem[64] + 100 len 96] = mem[160 len 96]
    s = mem[64] + 324
    idx = 0
    while idx < 3:
        t = 0
        while t < 64:
            mem[2 * t] = mem[t + mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 384]]
            t = t + 32
            continue 
        t = 128
        idx = idx + 1
        continue 
    idx = 0
    while idx < 128:
        mem[2 * idx] = mem[idx + _9]
        idx = idx + 32
        continue 
    mem[256 len 96] = mem[_10 len 96]
    mem[_12 + 196] = -_12 + 348
    mem[352] = mem[256]
    _27 = mem[256]
    mem[384 len floor32(mem[256])] = mem[288 len floor32(mem[256])]
    mem[_12 + 228] = (32 * mem[256]) + -_12 + 380
    mem[(32 * _27) + 384] = mem[(32 * arg1.length) + 288]
    _57 = mem[(32 * arg1.length) + 288]
    mem[(32 * _27) + 416 len floor32(mem[(32 * arg1.length) + 288])] = mem[(32 * arg1.length) + 320 len floor32(mem[(32 * arg1.length) + 288])]
    mem[_12 + 260] = (32 * _57) + (32 * _27) + -_12 + 412
    mem[(32 * _57) + (32 * _27) + 416] = mem[(32 * arg2.length) + (32 * arg1.length) + 320]
    _84 = mem[(32 * arg2.length) + (32 * arg1.length) + 320]
    mem[(32 * _57) + (32 * _27) + 448 len floor32(mem[(32 * arg2.length) + (32 * arg1.length) + 320])] = mem[(32 * arg2.length) + (32 * arg1.length) + 352 len floor32(mem[(32 * arg2.length) + (32 * arg1.length) + 320])]
    mem[_12 + 292] = (32 * _84) + (32 * _57) + (32 * _27) + -_12 + 444
    mem[(32 * _84) + (32 * _57) + (32 * _27) + 448] = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 352]
    _108 = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 352]
    if 0 >= 32 * mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 352]:
        require ext_code.size(0xc7aee36324e54a8cf412423e6abc25ed2397a6ef)
        delegate 0xc7aee36324e54a8cf412423e6abc25ed2397a6ef.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len (32 * mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 352]) + (32 * _84) + (32 * _57) + (32 * _27) + -mem[64] + 476]
    else:
        mem[(32 * _84) + (32 * _57) + (32 * _27) + 480] = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 384]
        mem[(32 * _84) + (32 * _57) + (32 * _27) + 512 len floor32((32 * _108) - 1)] = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 416 len floor32((32 * _108) - 1)]
        require ext_code.size(0xc7aee36324e54a8cf412423e6abc25ed2397a6ef)
        delegate 0xc7aee36324e54a8cf412423e6abc25ed2397a6ef.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len (32 * _108) + (32 * _84) + (32 * _57) + (32 * _27) + -mem[64] + 476]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    if gas_remaining > gas_remaining:
        revert with 0, '-'
    if msg.value < 0:
        revert with 0, 'r'
    if msg.value < 0:
        revert with 0, 'r'
    call operatorAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_74eb9bc9(?) {
    mem[(32 * arg5.length) + (32 * arg4.length) + 256 len 32 * arg6.length] = call.data[arg6 + 36 len 32 * arg6.length]
    mem[(32 * arg6.length) + (32 * arg5.length) + (32 * arg4.length) + 256 len 64] = call.data[260 len 64]
    mem[(32 * arg6.length) + (32 * arg5.length) + (32 * arg4.length) + 320 len 96] = call.data[324 len 96]
    require ext_code.size(0x6d7ea7e859f6d7f10e7a4cc26d4ecf0ff53ee9e3)
    delegate 0x6d7ea7e859f6d7f10e7a4cc26d4ecf0ff53ee9e3.0x26df6e49 with:
         gas gas_remaining wei
        args 0
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 1 > delegate.return_data[0]:
        revert with 0, '-'
    require ext_code.size(0x6d7ea7e859f6d7f10e7a4cc26d4ecf0ff53ee9e3)
    delegate 0x6d7ea7e859f6d7f10e7a4cc26d4ecf0ff53ee9e3.0x378a4719 with:
         gas gas_remaining wei
        args 0, delegate.return_data[0] - 1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x6d7ea7e859f6d7f10e7a4cc26d4ecf0ff53ee9e3)
    if delegate.return_data[0] <= 0:
        delegate 0x6d7ea7e859f6d7f10e7a4cc26d4ecf0ff53ee9e3.0x26df6e49 with:
             gas gas_remaining wei
            args 0
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if sub_edce3ed3 > delegate.return_data[0]:
            revert with 0, '-'
        if delegate.return_data[0] - sub_edce3ed3 <= 1:
            revert with 0, 'f'
    else:
        delegate 0x6d7ea7e859f6d7f10e7a4cc26d4ecf0ff53ee9e3.0x87d5cab9 with:
             gas gas_remaining wei
            args 0
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if delegate.return_data[0] <= sub_1f3adc0f:
            require ext_code.size(0x6d7ea7e859f6d7f10e7a4cc26d4ecf0ff53ee9e3)
            delegate 0x6d7ea7e859f6d7f10e7a4cc26d4ecf0ff53ee9e3.0x26df6e49 with:
                 gas gas_remaining wei
                args 0
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if sub_edce3ed3 > delegate.return_data[0]:
                revert with 0, '-'
            if delegate.return_data[0] - sub_edce3ed3 <= 1:
                revert with 0, 'f'
    mem[(32 * arg6.length) + (32 * arg5.length) + (32 * arg4.length) + 416] = 0x8b19f83400000000000000000000000000000000000000000000000000000000
    mem[(32 * arg6.length) + (32 * arg5.length) + (32 * arg4.length) + 420] = 0
    mem[(32 * arg6.length) + (32 * arg5.length) + (32 * arg4.length) + 452] = arg1
    mem[(32 * arg6.length) + (32 * arg5.length) + (32 * arg4.length) + 484] = arg2
    mem[(32 * arg6.length) + (32 * arg5.length) + (32 * arg4.length) + 516 len 64] = call.data[68 len 64]
    mem[(32 * arg6.length) + (32 * arg5.length) + (32 * arg4.length) + 580] = arg3
    mem[(32 * arg6.length) + (32 * arg5.length) + (32 * arg4.length) + 708 len 64] = call.data[260 len 64]
    mem[(32 * arg6.length) + (32 * arg5.length) + (32 * arg4.length) + 772 len 96] = call.data[324 len 96]
    mem[(32 * arg6.length) + (32 * arg5.length) + (32 * arg4.length) + 612] = 448
    mem[(32 * arg6.length) + (32 * arg5.length) + (32 * arg4.length) + 868] = arg4.length
    mem[(32 * arg6.length) + (32 * arg5.length) + (32 * arg4.length) + 900 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
    mem[(32 * arg6.length) + (32 * arg5.length) + (32 * arg4.length) + 644] = (32 * arg4.length) + 480
    mem[(64 * arg4.length) + (32 * arg6.length) + (32 * arg5.length) + 900] = arg5.length
    mem[(64 * arg4.length) + (32 * arg6.length) + (32 * arg5.length) + 932 len floor32(arg5.length)] = call.data[arg5 + 36 len floor32(arg5.length)]
    mem[(32 * arg6.length) + (32 * arg5.length) + (32 * arg4.length) + 676] = (32 * arg5.length) + (32 * arg4.length) + 512
    mem[(64 * arg5.length) + (64 * arg4.length) + (32 * arg6.length) + 932] = arg6.length
    if 0 < 32 * arg6.length:
        mem[(64 * arg5.length) + (64 * arg4.length) + (32 * arg6.length) + 964] = mem[(32 * arg5.length) + (32 * arg4.length) + 256]
        mem[(64 * arg5.length) + (64 * arg4.length) + (32 * arg6.length) + 996 len floor32((32 * arg6.length) - 1)] = mem[(32 * arg5.length) + (32 * arg4.length) + 288 len floor32((32 * arg6.length) - 1)]
    require ext_code.size(0xe3ded877570e8094120f6350d47638292d42c84d)
    delegate 0xe3ded877570e8094120f6350d47638292d42c84d.0x8b19f834 with:
         gas gas_remaining wei
        args 0, address(arg1), address(arg2), call.data[68 len 64], arg3 << 192, 448, (32 * arg4.length) + 480, (32 * arg5.length) + (32 * arg4.length) + 512, call.data[260 len 64], call.data[324 len 96], arg4.length, call.data[arg4 + 36 len floor32(arg4.length)], mem[(32 * arg6.length) + (32 * arg5.length) + (32 * arg4.length) + floor32(arg4.length) + 900 len (32 * arg6.length) + (32 * arg5.length) + (32 * arg4.length) + -floor32(arg4.length) + 64]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function sub_a4e571dc(?) {
    if sub_c969b686 <= 0:
        revert with 0, '%'
    require sub_c969b686
    require uint8(arg1 % sub_c969b686) < 5
    require uint8(arg1 % sub_c969b686) < 5
    require uint8(arg1 % sub_c969b686) < 5
    if sub_054c7626[address(arg2)][2 * uint8(arg1 % uint8(stor0.field_0))].field_0 == arg1:
        if sub_f918889f[address(arg2)][2 * uint8(arg1 % uint8(stor0.field_0))].field_0 == arg1:
            if sub_3fc988ba[address(arg2)][2 * uint8(arg1 % uint8(stor0.field_0))].field_0 == arg1:
                if this.address == arg2:
                    return sub_054c7626[address(arg2)][2 * uint8(arg1 % uint8(stor0.field_0))].field_256, 
                           sub_f918889f[address(arg2)][2 * uint8(arg1 % uint8(stor0.field_0))].field_256,
                           sub_3fc988ba[address(arg2)][2 * uint8(arg1 % uint8(stor0.field_0))].field_256,
                           eth.balance(this.address)
                require ext_code.size(arg2)
                call arg2.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                return sub_054c7626[address(arg2)][2 * uint8(arg1 % uint8(stor0.field_0))].field_256, 
                       sub_f918889f[address(arg2)][2 * uint8(arg1 % uint8(stor0.field_0))].field_256,
                       sub_3fc988ba[address(arg2)][2 * uint8(arg1 % uint8(stor0.field_0))].field_256,
                       ext_call.return_data[0]
            if this.address == arg2:
                return sub_054c7626[address(arg2)][2 * uint8(arg1 % uint8(stor0.field_0))].field_256, 
                       sub_f918889f[address(arg2)][2 * uint8(arg1 % uint8(stor0.field_0))].field_256,
                       0,
                       eth.balance(this.address)
            require ext_code.size(arg2)
            call arg2.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            return sub_054c7626[address(arg2)][2 * uint8(arg1 % uint8(stor0.field_0))].field_256, 
                   sub_f918889f[address(arg2)][2 * uint8(arg1 % uint8(stor0.field_0))].field_256,
                   0,
                   ext_call.return_data[0]
        if sub_3fc988ba[address(arg2)][2 * uint8(arg1 % uint8(stor0.field_0))].field_0 == arg1:
            if this.address == arg2:
                return sub_054c7626[address(arg2)][2 * uint8(arg1 % uint8(stor0.field_0))].field_256, 
                       0,
                       sub_3fc988ba[address(arg2)][2 * uint8(arg1 % uint8(stor0.field_0))].field_256,
                       eth.balance(this.address)
            require ext_code.size(arg2)
            call arg2.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            return sub_054c7626[address(arg2)][2 * uint8(arg1 % uint8(stor0.field_0))].field_256, 
                   0,
                   sub_3fc988ba[address(arg2)][2 * uint8(arg1 % uint8(stor0.field_0))].field_256,
                   ext_call.return_data[0]
        if this.address == arg2:
            return sub_054c7626[address(arg2)][2 * uint8(arg1 % uint8(stor0.field_0))].field_256, 0, 0, eth.balance(this.address)
        require ext_code.size(arg2)
        call arg2.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return sub_054c7626[address(arg2)][2 * uint8(arg1 % uint8(stor0.field_0))].field_256, 0, 0, ext_call.return_data[0]
    if sub_f918889f[address(arg2)][2 * uint8(arg1 % uint8(stor0.field_0))].field_0 == arg1:
        if sub_3fc988ba[address(arg2)][2 * uint8(arg1 % uint8(stor0.field_0))].field_0 == arg1:
            if this.address == arg2:
                return 0, 
                       sub_f918889f[address(arg2)][2 * uint8(arg1 % uint8(stor0.field_0))].field_256,
                       sub_3fc988ba[address(arg2)][2 * uint8(arg1 % uint8(stor0.field_0))].field_256,
                       eth.balance(this.address)
            require ext_code.size(arg2)
            call arg2.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            return 0, 
                   sub_f918889f[address(arg2)][2 * uint8(arg1 % uint8(stor0.field_0))].field_256,
                   sub_3fc988ba[address(arg2)][2 * uint8(arg1 % uint8(stor0.field_0))].field_256,
                   ext_call.return_data[0]
        if this.address == arg2:
            return 0, sub_f918889f[address(arg2)][2 * uint8(arg1 % uint8(stor0.field_0))].field_256, 0, eth.balance(this.address)
        require ext_code.size(arg2)
        call arg2.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return 0, sub_f918889f[address(arg2)][2 * uint8(arg1 % uint8(stor0.field_0))].field_256, 0, ext_call.return_data[0]
    if sub_3fc988ba[address(arg2)][2 * uint8(arg1 % uint8(stor0.field_0))].field_0 == arg1:
        if this.address == arg2:
            return 0, 0, sub_3fc988ba[address(arg2)][2 * uint8(arg1 % uint8(stor0.field_0))].field_256, eth.balance(this.address)
        require ext_code.size(arg2)
        call arg2.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return 0, 0, sub_3fc988ba[address(arg2)][2 * uint8(arg1 % uint8(stor0.field_0))].field_256, ext_call.return_data[0]
    if this.address == arg2:
        return 0, 0, 0, eth.balance(this.address)
    require ext_code.size(arg2)
    call arg2.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 0, 0, 0, ext_call.return_data[0]
}

function sub_3d26efdb(?) payable {
    mem[96 len 64] = call.data[36 len 64]
    mem[160] = arg3.length
    mem[192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 192] = arg4.length
    mem[(32 * arg3.length) + 224 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg4.length) + (32 * arg3.length) + 224] = arg5.length
    mem[(32 * arg4.length) + (32 * arg3.length) + 256 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    mem[64] = (32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + 320
    s = (32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + 256
    idx = 0
    while idx < 2:
        _7 = mem[64]
        mem[64] = mem[64] + 64
        mem[_7 len 64] = call.data[(64 * idx) + 228 len 64]
        mem[s] = _7
        s = s + 32
        idx = idx + 1
        continue 
    if 100100 * stor1.length / 100100 != stor1.length:
        revert with 0, '*'
    if msg.value < 100100 * stor1.length:
        revert with 0, 'r'
    if 100100 * block.gasprice / 100100 != block.gasprice:
        revert with 0, '*'
    if msg.value < 100100 * block.gasprice:
        revert with 0, 'r'
    call operatorAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x6d7ea7e859f6d7f10e7a4cc26d4ecf0ff53ee9e3)
    delegate 0x6d7ea7e859f6d7f10e7a4cc26d4ecf0ff53ee9e3.0x26df6e49 with:
         gas gas_remaining wei
        args 0
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 1 > delegate.return_data[0]:
        revert with 0, '-'
    require ext_code.size(0x6d7ea7e859f6d7f10e7a4cc26d4ecf0ff53ee9e3)
    delegate 0x6d7ea7e859f6d7f10e7a4cc26d4ecf0ff53ee9e3.0x378a4719 with:
         gas gas_remaining wei
        args 0, delegate.return_data[0] - 1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x6d7ea7e859f6d7f10e7a4cc26d4ecf0ff53ee9e3)
    if delegate.return_data[0] <= 0:
        delegate 0x6d7ea7e859f6d7f10e7a4cc26d4ecf0ff53ee9e3.0x26df6e49 with:
             gas gas_remaining wei
            args 0
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if sub_edce3ed3 > delegate.return_data[0]:
            revert with 0, '-'
        if delegate.return_data[0] - sub_edce3ed3 > 1:
            revert with 0, 'p'
        _43 = mem[64]
        mem[mem[64]] = 0xce91995000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 0
        mem[mem[64] + 36] = arg1
        mem[mem[64] + 68 len 64] = mem[96 len 64]
        mem[mem[64] + 132] = arg2
        s = mem[64] + 260
        idx = 0
        while idx < 2:
            t = 0
            while t < 64:
                mem[2 * t] = mem[t + mem[(32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + (32 * idx) + 256]]
                t = t + 32
                continue 
            t = 128
            idx = idx + 1
            continue 
        mem[s] = arg6
        mem[_43 + 164] = s + -_43 + 28
        mem[s + 32] = mem[160]
        _62 = mem[160]
        idx = 0
        while idx < 32 * _62:
            mem[(2 * idx) + 64] = mem[idx + 192]
            idx = idx + 32
            continue 
        mem[_43 + 196] = (32 * _62) + floor32(_62) + -_43 + 60
        mem[(32 * _62) + floor32(_62) + 64] = mem[(32 * arg3.length) + 192]
        _86 = mem[(32 * arg3.length) + 192]
        mem[(32 * _62) + floor32(_62) + 96 len floor32(mem[(32 * arg3.length) + 192])] = mem[(32 * arg3.length) + 224 len floor32(mem[(32 * arg3.length) + 192])]
        mem[_43 + 228] = (32 * _86) + (32 * _62) + floor32(_62) + -_43 + 92
        mem[(32 * _86) + (32 * _62) + floor32(_62) + 96] = mem[(32 * arg4.length) + (32 * arg3.length) + 224]
        _104 = mem[(32 * arg4.length) + (32 * arg3.length) + 224]
        mem[(32 * _86) + (32 * _62) + floor32(_62) + 128 len floor32(mem[(32 * arg4.length) + (32 * arg3.length) + 224])] = mem[(32 * arg4.length) + (32 * arg3.length) + 256 len floor32(mem[(32 * arg4.length) + (32 * arg3.length) + 224])]
        require ext_code.size(0xb5ebdfd003870d53c68f91a7c7380a3494dd64b8)
        delegate 0xb5ebdfd003870d53c68f91a7c7380a3494dd64b8.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len (32 * _104) + (32 * _86) + (32 * _62) + floor32(_62) + -mem[64] + 124]
    else:
        delegate 0x6d7ea7e859f6d7f10e7a4cc26d4ecf0ff53ee9e3.0x87d5cab9 with:
             gas gas_remaining wei
            args 0
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if delegate.return_data[0] > sub_1f3adc0f:
            revert with 0, 'p'
        require ext_code.size(0x6d7ea7e859f6d7f10e7a4cc26d4ecf0ff53ee9e3)
        delegate 0x6d7ea7e859f6d7f10e7a4cc26d4ecf0ff53ee9e3.0x26df6e49 with:
             gas gas_remaining wei
            args 0
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if sub_edce3ed3 > delegate.return_data[0]:
            revert with 0, '-'
        if delegate.return_data[0] - sub_edce3ed3 > 1:
            revert with 0, 'p'
        _49 = mem[64]
        mem[mem[64]] = 0xce91995000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 0
        mem[mem[64] + 36] = arg1
        mem[mem[64] + 68 len 64] = mem[96 len 64]
        mem[mem[64] + 132] = arg2
        s = mem[64] + 260
        idx = 0
        while idx < 2:
            t = 0
            while t < 64:
                mem[2 * t] = mem[t + mem[(32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + (32 * idx) + 256]]
                t = t + 32
                continue 
            t = 128
            idx = idx + 1
            continue 
        mem[s] = arg6
        mem[_49 + 164] = s + -_49 + 28
        mem[s + 32] = mem[160]
        _65 = mem[160]
        idx = 0
        while idx < 32 * _65:
            mem[(2 * idx) + 64] = mem[idx + 192]
            idx = idx + 32
            continue 
        mem[_49 + 196] = (32 * _65) + floor32(_65) + -_49 + 60
        mem[(32 * _65) + floor32(_65) + 64] = mem[(32 * arg3.length) + 192]
        _90 = mem[(32 * arg3.length) + 192]
        mem[(32 * _65) + floor32(_65) + 96 len floor32(mem[(32 * arg3.length) + 192])] = mem[(32 * arg3.length) + 224 len floor32(mem[(32 * arg3.length) + 192])]
        mem[_49 + 228] = (32 * _90) + (32 * _65) + floor32(_65) + -_49 + 92
        mem[(32 * _90) + (32 * _65) + floor32(_65) + 96] = mem[(32 * arg4.length) + (32 * arg3.length) + 224]
        _107 = mem[(32 * arg4.length) + (32 * arg3.length) + 224]
        mem[(32 * _90) + (32 * _65) + floor32(_65) + 128 len floor32(mem[(32 * arg4.length) + (32 * arg3.length) + 224])] = mem[(32 * arg4.length) + (32 * arg3.length) + 256 len floor32(mem[(32 * arg4.length) + (32 * arg3.length) + 224])]
        require ext_code.size(0xb5ebdfd003870d53c68f91a7c7380a3494dd64b8)
        delegate 0xb5ebdfd003870d53c68f91a7c7380a3494dd64b8.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len (32 * _107) + (32 * _90) + (32 * _65) + floor32(_65) + -mem[64] + 124]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}



}
