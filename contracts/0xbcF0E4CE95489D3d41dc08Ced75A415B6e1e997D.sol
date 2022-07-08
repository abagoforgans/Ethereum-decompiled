contract main {




// =====================  Runtime code  =====================


const sub_2a9082e8(?) = ''

const sub_f3bc843e(?) = 'governance'


address resolverAddress;
mapping of uint8 stor1;
uint8 sub_07003bb4;
mapping of uint8 stor99;

function resolver() {
    return resolverAddress
}

function sub_07003bb4(?) {
    return bool(sub_07003bb4)
}

function _fallback() payable {
    revert
}

function sub_f20503d9(?) {
    require stor1['governance'][address(msg.sender)]
    stor1[7453306086405074802][address(arg1)] = 1
    emit RoleAdded(address arg1, string arg2):
                   address(arg1),
                   64,
                   8,
                   0,
}

function sub_7b7544ce(?) {
    require stor1[7453306086405074802][address(msg.sender)]
    require ext_code.size(arg1)
    call arg1.0x723fa4f with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_062851e8(?) {
    require stor1[7453306086405074802][address(msg.sender)]
    require ext_code.size(arg1)
    call arg1.0x54b55cf0 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_bbc2775f(?) {
    require stor1[7453306086405074802][address(msg.sender)]
    require ext_code.size(arg1)
    call arg1.0x64d4df04 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_dedddf21(?) {
    require stor1[7453306086405074802][address(msg.sender)]
    require ext_code.size(arg1)
    call arg1.0x1aacfeba with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_2a3f8780(?) {
    require stor1[7453306086405074802][address(msg.sender)]
    require arg1
    require ext_code.size(arg1)
    call arg1.0x21b139c1 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_bd5c368f(?) {
    require stor1[7453306086405074802][address(msg.sender)]
    require arg1
    require ext_code.size(arg1)
    call arg1.0xcab1344e with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_c00a9524(?) {
    require stor1[7453306086405074802][address(msg.sender)]
    require arg1
    require ext_code.size(arg1)
    call arg1.0x7405ccc7 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_0bed6437(?) {
    require stor1[7453306086405074802][address(msg.sender)]
    require ext_code.size(arg1)
    call arg1.setEthereumAddress(address arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_7b9ee156(?) {
    require stor1[7453306086405074802][address(msg.sender)]
    require arg1
    require ext_code.size(arg1)
    call arg1.setResolver(address arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_d593b12e(?) {
    require stor1[7453306086405074802][address(msg.sender)]
    require arg2
    require arg1
    require ext_code.size(arg1)
    call arg1.0x28fb72d1 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_d89d355f(?) {
    require stor1[7453306086405074802][address(msg.sender)]
    require arg1
    require ext_code.size(arg1)
    call arg1.setTokenManager(address arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_ed06adef(?) {
    require stor1[7453306086405074802][address(msg.sender)]
    require arg2 > 0
    require arg1
    require ext_code.size(arg1)
    call arg1.0x5a804400 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_98a7dab8(?) {
    require stor1[7453306086405074802][address(msg.sender)]
    require ext_code.size(arg1)
    call arg1.0xd1660c16 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x9e230385: address(arg2), arg1
}

function sub_78953e0c(?) {
    require stor1[7453306086405074802][address(msg.sender)]
    require arg2
    require arg1
    require ext_code.size(arg1)
    call arg1.setResolver(address arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function removeGovernor(address arg1) {
    require stor1['governance'][address(msg.sender)]
    require stor1[7453306086405074802][address(arg1)]
    stor1[7453306086405074802][address(arg1)] = 0
    emit RoleRemoved(address arg1, string arg2):
                     address(arg1),
                     64,
                     8,
                     0,
}

function sub_b892abd3(?) {
    require stor1[7453306086405074802][address(msg.sender)]
    if not arg1:
        revert with 0, 'TokenValidator address is not set'
    require ext_code.size(arg1)
    call arg1.addTokenToWhitelist(address arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_42d8f601(?) {
    require stor1[7453306086405074802][address(msg.sender)]
    if not arg1:
        revert with 0, 'TokenValidator address is not set'
    require ext_code.size(arg1)
    call arg1.removeTokenFromWhitelist(address arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_915c838d(?) {
    require stor1[7453306086405074802][address(msg.sender)]
    require arg1
    require ext_code.size(arg1)
    call arg1.0xbe2850b1 with:
         gas gas_remaining wei
        args 0, arg2, arg3, arg4, arg5, address(arg6), arg7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 0
}

function register(address arg1, string arg2, address arg3) {
    require stor1[7453306086405074802][address(msg.sender)]
    require ext_code.size(arg1)
    call arg1.register(string arg1, address arg2) with:
         gas gas_remaining wei
        args Array(len=arg2.length, data=arg2[all]), address(arg3)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_3d68e5d4(?) {
    require stor1[7453306086405074802][address(msg.sender)]
    require ext_code.size(arg1)
    call arg1.0x107b2d90 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit 0x8ac66363: msg.sender, arg2
}

function sub_86b1fb8c(?) {
    require stor1[7453306086405074802][address(msg.sender)]
    require ext_code.size(arg1)
    call arg1.setExchangeRate(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(arg2), address(arg3), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_dd43c3fd(?) {
    require stor1[7453306086405074802][address(msg.sender)]
    require ext_code.size(arg1)
    call arg1.setExchangeRate(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(arg2), address(arg3), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function sub_8fc4a57f(?) {
    require stor1[7453306086405074802][address(msg.sender)]
    if not arg1:
        revert with 0, 'TokenValidator address is not set'
    mem[(32 * arg2.length) + 196] = 32
    mem[(32 * arg2.length) + 228] = arg2.length
    mem[(32 * arg2.length) + 260 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    require ext_code.size(arg1)
    call arg1.0x80cfdfc2 with:
         gas gas_remaining wei
        args mem[(32 * arg2.length) + 196 len (96 * arg2.length) + 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function checkRole(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + 128] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 128] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
    mem[ceil32(arg2.length) + arg2.length + 128] = 1
    require stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]][address(arg1)]
}

function hasRole(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + 128] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 128] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
    mem[ceil32(arg2.length) + arg2.length + 128] = 1
    mem[ceil32(arg2.length) + 128] = bool(stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]][address(arg1)])
    return memory
      from ceil32(arg2.length) + 128
       len 32
}

function sub_7404fe3f(?) {
    require stor1[7453306086405074802][address(msg.sender)]
    require arg1
    mem[(32 * arg3.length) + (32 * arg2.length) + 324 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[(64 * arg2.length) + (32 * arg3.length) + 324] = arg3.length
    mem[(64 * arg2.length) + (32 * arg3.length) + 356 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    require ext_code.size(arg1)
    call arg1.0xf566ca90 with:
         gas gas_remaining wei
        args Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg3.length) + (32 * arg2.length) + floor32(arg2.length) + 324 len (32 * arg3.length) + (32 * arg2.length) + -floor32(arg2.length) + 32]), (32 * arg2.length) + 96
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_6cc6a983(?) {
    require stor1[7453306086405074802][address(msg.sender)]
    require arg1
    mem[(32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 452 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[(64 * arg2.length) + (32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + 452] = arg3.length
    mem[(64 * arg2.length) + (32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + 484 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[(64 * arg3.length) + (64 * arg2.length) + (32 * arg5.length) + (32 * arg4.length) + 484] = arg4.length
    mem[(64 * arg3.length) + (64 * arg2.length) + (32 * arg5.length) + (32 * arg4.length) + 516 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
    mem[(64 * arg4.length) + (64 * arg3.length) + (64 * arg2.length) + (32 * arg5.length) + 516] = arg5.length
    mem[(64 * arg4.length) + (64 * arg3.length) + (64 * arg2.length) + (32 * arg5.length) + 548 len floor32(arg5.length)] = call.data[arg5 + 36 len floor32(arg5.length)]
    require ext_code.size(arg1)
    call arg1.0x81c75e33 with:
         gas gas_remaining wei
        args Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + floor32(arg2.length) + 452 len (32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + -floor32(arg2.length) + 96]), (32 * arg2.length) + 160, (32 * arg3.length) + (32 * arg2.length) + 192, (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 224
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function init(address[] arg1) {
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require not sub_07003bb4
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _27 = mem[(32 * idx) + 128]
        _28 = mem[64]
        mem[64] = mem[64] + 64
        mem[_28] = 8
        mem[_28 + 32] = 0x676f7665726e6f72000000000000000000000000000000000000000000000000
        _29 = mem[64]
        t = _28 + 32
        u = mem[64]
        s = mem[_28]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[mem[64] + floor32(mem[_28])] = 256^(-(mem[_28] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[_28])] or mem[_28 + floor32(mem[_28]) + 32] and !(256^(-(mem[_28] % 32) + 32) - 1)
        mem[_29 + 8] = 1
        _47 = sha3(mem[mem[64] len _29 + -mem[64] + 40])
        mem[0] = address(_27)
        mem[32] = _47
        stor[_47][address(_27)] = 1
        _50 = mem[64]
        mem[mem[64]] = address(_27)
        mem[mem[64] + 32] = 64
        mem[mem[64] + 64] = mem[_28]
        _52 = mem[_28]
        s = 0
        while s < _52:
            mem[s + mem[64] + 96] = mem[s + _28 + 32]
            s = s + 32
            continue 
        if not _52 % 32:
            emit RoleAdded(address arg1, string arg2):
                           mem[mem[64] len _52 + _50 + -mem[64] + 96],
        else:
            mem[floor32(_52) + _50 + 96] = mem[floor32(_52) + _50 + -(_52 % 32) + 128 len _52 % 32]
            emit RoleAdded(address arg1, string arg2):
                           mem[mem[64] len floor32(_52) + _50 + -mem[64] + 128],
        idx = idx + 1
        continue 
    sub_07003bb4 = 1
    return 1
}



}
