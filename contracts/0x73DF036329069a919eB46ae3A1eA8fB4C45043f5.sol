contract main {




// =====================  Runtime code  =====================


#
#  - sub_9837636e(?)
#  - sub_f1868e8b(?)
#
address ensAddress;
address facAddress;
address sub_039fa760Address;
address sub_d165603fAddress;
array of uint256 sub_ef41afcd;
mapping of address stor8;

function sub_039fa760(?) {
    return sub_039fa760Address
}

function ens() {
    return ensAddress
}

function fac() {
    return facAddress
}

function sub_d165603f(?) {
    return sub_d165603fAddress
}

function sub_ef41afcd(?) {
    require arg1 < 4
    return sub_ef41afcd[arg1]
}

function _fallback() payable {
    revert
}

function latestVersionAppBase(bytes32 arg1) {
    require ext_code.size(ensAddress)
    call ensAddress.resolver(bytes32 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[100] = arg1
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).addr(bytes32 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 0xc36af46000000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getLatest() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 160
    require mem[224] <= 4294967296
    require mem[224] + 32 <= return_data.size
    require return_data.size >= mem[mem[224] + 96] + mem[224] + 32 and mem[mem[224] + 96] <= 4294967296
    mem[ceil32(return_data.size) + 96] = mem[204 len 20]
    return memory
      from ceil32(return_data.size) + 96
       len 32
}

function newToken(string arg1, string arg2) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 0x5b7b72c100000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 388 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 388] = arg2.length
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 420 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
        if not arg2.length % 32:
            require ext_code.size(sub_039fa760Address)
            call sub_039fa760Address.createCloneToken(address arg1, uint256 arg2, string arg3, uint8 arg4, string arg5, bool arg6) with:
                 gas gas_remaining wei
                args 0, 0, 192, 18, arg1.length + 224, 1, arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 388 len arg2.length + arg1.length + -ceil32(arg1.length) + 32]
        else:
            mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 420] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 452 len arg2.length % 32]
            require ext_code.size(sub_039fa760Address)
            call sub_039fa760Address.createCloneToken(address arg1, uint256 arg2, string arg3, uint8 arg4, string arg5, bool arg6) with:
                 gas gas_remaining wei
                args 0, 0, 192, 18, arg1.length + 224, 1, arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 388 len floor32(arg2.length) + arg1.length + -ceil32(arg1.length) + 64]
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 388] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg1.length % 32) + 420 len arg1.length % 32]
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 420] = arg2.length
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 452 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
        if not arg2.length % 32:
            require ext_code.size(sub_039fa760Address)
            call sub_039fa760Address.createCloneToken(address arg1, uint256 arg2, string arg3, uint8 arg4, string arg5, bool arg6) with:
                 gas gas_remaining wei
                args 0, 0, 192, 18, floor32(arg1.length) + 256, 1, arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 388 len arg2.length + floor32(arg1.length) + -ceil32(arg1.length) + 64]
        else:
            mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 452] = mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 484 len arg2.length % 32]
            require ext_code.size(sub_039fa760Address)
            call sub_039fa760Address.createCloneToken(address arg1, uint256 arg2, string arg3, uint8 arg4, string arg5, bool arg6) with:
                 gas gas_remaining wei
                args 0, 0, 192, 18, floor32(arg1.length) + 256, 1, arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 388 len floor32(arg2.length) + floor32(arg1.length) + -ceil32(arg1.length) + 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor8[address(msg.sender)] = address(ext_call.return_data[0])
    emit 0x7ab516ad: address(ext_call.return_data[0]), msg.sender
    return address(ext_call.return_data[0])
}



}
