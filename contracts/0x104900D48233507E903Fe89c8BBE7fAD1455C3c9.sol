contract main {




// =====================  Runtime code  =====================


#
#  - sub_43965f80(?)
#
const sub_25a6c7fc(?) = 0

const sub_370fea34(?) = sha3(0x9065c3e7f7b7ef1ef4e53d2d0b8e0cef02874ab020c1ece79d5f0d3d0111c0ba, sha3(Mask(40, 216, 'vault') >> 216))

const sub_4905b0fb(?) = (48 * 24 * 3600)

const sub_548f640f(?) = (48 * 24 * 3600)

const sub_6422fe71(?) = sha3(0x9065c3e7f7b7ef1ef4e53d2d0b8e0cef02874ab020c1ece79d5f0d3d0111c0ba, sha3(Mask(56, 200, 'finance') >> 200))

const sub_726ddb2a(?) = 0

const sub_968eb6d4(?) = sha3(0x9065c3e7f7b7ef1ef4e53d2d0b8e0cef02874ab020c1ece79d5f0d3d0111c0ba, sha3(Mask(40, 216, 'agent') >> 216))

const sub_974c5137(?) = 0

const sub_9e50030b(?) = 5 * 10^17

const sub_a0c1cce5(?) = 7889400

const sub_aa163503(?) = 5 * 10^17

const sub_b8db3bbd(?) = sha3(0x9065c3e7f7b7ef1ef4e53d2d0b8e0cef02874ab020c1ece79d5f0d3d0111c0ba, sha3(Mask(104, 152, 'token-manager') >> 152))

const sub_baa87038(?) = (48 * 24 * 3600)

const sub_c08921f7(?) = sha3(0x9065c3e7f7b7ef1ef4e53d2d0b8e0cef02874ab020c1ece79d5f0d3d0111c0ba, sha3(Mask(48, 208, 'voting') >> 208))

const sub_f811e962(?) = 666666666666666666


address ensAddress;
address facAddress;
address sub_039fa760Address;
mapping of address stor3;

function sub_039fa760(?) {
    return sub_039fa760Address
}

function ens() {
    return ensAddress
}

function fac() {
    return facAddress
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

function sub_f7db274b(?) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require ext_code.size(facAddress)
    call facAddress.newDAO(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).acl() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).APP_MANAGER_ROLE() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).createPermission(address arg1, address arg2, bytes32 arg3, address arg4) with:
         gas gas_remaining wei
        args address(this.address), address(ext_call.return_data[0]), ext_call.return_data[0], this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg2.length) + (32 * arg1.length) + 448] = sha3('vault')
    mem[(32 * arg2.length) + (32 * arg1.length) + 480 len 64] = 0x9065c3e7f7b7ef1ef4e53d2d0b8e0cef02874ab020c1ece79d5f0d3d0111c0ba, sha3('vault')
    require ext_code.size(ensAddress)
    call ensAddress.resolver(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(0x9065c3e7f7b7ef1ef4e53d2d0b8e0cef02874ab020c1ece79d5f0d3d0111c0ba, sha3('vault'))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * arg2.length) + (32 * arg1.length) + 484] = sha3(0x9065c3e7f7b7ef1ef4e53d2d0b8e0cef02874ab020c1ece79d5f0d3d0111c0ba, sha3('vault'))
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).addr(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(0x9065c3e7f7b7ef1ef4e53d2d0b8e0cef02874ab020c1ece79d5f0d3d0111c0ba, sha3('vault'))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * arg2.length) + (32 * arg1.length) + 480] = 0xc36af46000000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getLatest() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg2.length) + (32 * arg1.length) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 480
    require return_data.size >= 160
    require mem[(32 * arg2.length) + (32 * arg1.length) + 608] <= 4294967296
    require mem[(32 * arg2.length) + (32 * arg1.length) + 608] + 32 <= return_data.size
    require return_data.size >= mem[(32 * arg2.length) + (32 * arg1.length) + mem[(32 * arg2.length) + (32 * arg1.length) + 608] + 480] + mem[(32 * arg2.length) + (32 * arg1.length) + 608] + 32 and mem[(32 * arg2.length) + (32 * arg1.length) + mem[(32 * arg2.length) + (32 * arg1.length) + 608] + 480] <= 4294967296
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).newAppInstance(bytes32 arg1, address arg2, bytes arg3, bool arg4) with:
         gas gas_remaining wei
        args sha3(0x9065c3e7f7b7ef1ef4e53d2d0b8e0cef02874ab020c1ece79d5f0d3d0111c0ba, sha3('vault')), address(mem[(32 * arg2.length) + (32 * arg1.length) + 576]), 128, 1, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit InstalledApp(address(ext_call.return_data[0]), sha3(0x9065c3e7f7b7ef1ef4e53d2d0b8e0cef02874ab020c1ece79d5f0d3d0111c0ba, sha3(0)));
    mem[(32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 960] = sha3('finance')
    mem[(32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 992 len 64] = 0x9065c3e7f7b7ef1ef4e53d2d0b8e0cef02874ab020c1ece79d5f0d3d0111c0ba, sha3('finance')
    require ext_code.size(ensAddress)
    call ensAddress.resolver(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(0x9065c3e7f7b7ef1ef4e53d2d0b8e0cef02874ab020c1ece79d5f0d3d0111c0ba, sha3('finance'))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 996] = sha3(0x9065c3e7f7b7ef1ef4e53d2d0b8e0cef02874ab020c1ece79d5f0d3d0111c0ba, sha3('finance'))
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).addr(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(0x9065c3e7f7b7ef1ef4e53d2d0b8e0cef02874ab020c1ece79d5f0d3d0111c0ba, sha3('finance'))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 992] = 0xc36af46000000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getLatest() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 992 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * arg2.length) + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 992
    require return_data.size >= 160
    require mem[(32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 1120] <= 4294967296
    require mem[(32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 1120] + 32 <= return_data.size
    require return_data.size >= mem[(32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + mem[(32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 1120] + 992] + mem[(32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 1120] + 32 and mem[(32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + mem[(32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 1120] + 992] <= 4294967296
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).newAppInstance(bytes32 arg1, address arg2) with:
         gas gas_remaining wei
        args sha3(0x9065c3e7f7b7ef1ef4e53d2d0b8e0cef02874ab020c1ece79d5f0d3d0111c0ba, sha3('finance')), mem[(32 * arg2.length) + (32 * arg1.length) + ceil32(return_data.size) + 1100 len 20]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * arg2.length) + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 1152 len 64] = 0x9065c3e7f7b7ef1ef4e53d2d0b8e0cef02874ab020c1ece79d5f0d3d0111c0ba, sha3('finance')
    emit InstalledApp(address(ext_call.return_data[0]), sha3(mem[(32 * arg2.length) + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 1152 len ceil32(return_data.size) + 64]));
    mem[(32 * arg2.length) + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 1284] = 0
    mem[(32 * arg2.length) + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 1316] = 0
    mem[(32 * arg2.length) + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 1380] = 0
    mem[(32 * arg2.length) + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 1444] = 1
    mem[(32 * arg2.length) + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 1348] = 192
    mem[(32 * arg2.length) + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 1476] = 24
    mem[(32 * arg2.length) + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 1508] = Mask(192, 0, 'Melon General Membership')
    mem[(32 * arg2.length) + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 1412] = 256
    mem[(32 * arg2.length) + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 1540] = 3
    mem[(32 * arg2.length) + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 1572] = 'MGM' % 16777216
    require ext_code.size(sub_039fa760Address)
    call sub_039fa760Address.createCloneToken(address arg1, uint256 arg2, string arg3, uint8 arg4, string arg5, bool arg6) with:
         gas gas_remaining wei
        args mem[(32 * arg2.length) + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 1284 len ceil32(return_data.size) + 320]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit DeployToken(address(ext_call.return_data[0]));
    mem[(32 * arg2.length) + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 1440 len 64] = 0x9065c3e7f7b7ef1ef4e53d2d0b8e0cef02874ab020c1ece79d5f0d3d0111c0ba, sha3('token-manager')
    _37749 = sha3(mem[(32 * arg2.length) + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 1440 len ceil32(return_data.size) + 64])
    mem[(32 * arg2.length) + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 1504 len 0] = None
    mem[(32 * arg2.length) + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 1517 len 19] = Mask(120, 0, 'Melon General Membership') << 32
    mem[(32 * arg2.length) + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 1504 len 13] = 'token-manager'
    mem[(32 * arg2.length) + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 1536] = 0x9065c3e7f7b7ef1ef4e53d2d0b8e0cef02874ab020c1ece79d5f0d3d0111c0ba
    mem[(32 * arg2.length) + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 1568] = sha3(mem[(32 * arg2.length) + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 1504 len ceil32(return_data.size) + 13])
    mem[(32 * arg2.length) + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 1600 len 64] = 0x9065c3e7f7b7ef1ef4e53d2d0b8e0cef02874ab020c1ece79d5f0d3d0111c0ba, mem[(32 * arg2.length) + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 1568]
    _42357 = sha3(mem[(32 * arg2.length) + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 1600 len ceil32(return_data.size) + 64])
    require ext_code.size(ensAddress)
    call ensAddress.resolver(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(mem[(32 * arg2.length) + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 1600 len ceil32(return_data.size) + 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * arg2.length) + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 1604] = sha3(mem[(32 * arg2.length) + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 1600 len ceil32(return_data.size) + 64])
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).addr(bytes32 arg1) with:
         gas gas_remaining wei
        args _42357
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * arg2.length) + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 1600] = 0xc36af46000000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getLatest() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg2.length) + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 1600 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require mem[(32 * arg2.length) + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 1728] <= 4294967296
    require mem[(32 * arg2.length) + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 1728] + 32 <= return_data.size
    require return_data.size >= mem[(32 * arg2.length) + (32 * arg1.length) + (2 * ceil32(return_data.size)) + mem[(32 * arg2.length) + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 1728] + 1600] + mem[(32 * arg2.length) + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 1728] + 32 and mem[(32 * arg2.length) + (32 * arg1.length) + (2 * ceil32(return_data.size)) + mem[(32 * arg2.length) + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 1728] + 1600] <= 4294967296
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).newAppInstance(bytes32 arg1, address arg2) with:
         gas gas_remaining wei
        args _37749, mem[(32 * arg2.length) + (32 * arg1.length) + (2 * ceil32(return_data.size)) + 1708 len 20]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    # nil
}

function sub_875ae6e4(?) {
    mem[0] = address(cd[4])
    mem[32] = 3
    require msg.sender == stor3[address(cd[4])]
    require ext_code.size(address(cd[4]))
    call address(cd[4]).acl() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(cd[68]))
    call address(cd[68]).'<bLu' with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).createPermission(address arg1, address arg2, bytes32 arg3, address arg4) with:
         gas gas_remaining wei
        args 0, 0, address(cd[68]), ext_call.return_data[0], address(cd[68])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(cd[68]))
    call address(cd[68]).0x62de7e5a with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).createPermission(address arg1, address arg2, bytes32 arg3, address arg4) with:
         gas gas_remaining wei
        args 0, 0, address(cd[68]), ext_call.return_data[0], address(cd[68])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96] = 6
    mem[128] = 'voting'
    mem[160 len 0] = None
    mem[192] = 0x9065c3e7f7b7ef1ef4e53d2d0b8e0cef02874ab020c1ece79d5f0d3d0111c0ba
    mem[224] = sha3('voting')
    mem[160] = 64
    mem[256] = 6
    mem[288] = 'voting'
    mem[320 len 0] = None
    mem[352] = 0x9065c3e7f7b7ef1ef4e53d2d0b8e0cef02874ab020c1ece79d5f0d3d0111c0ba
    mem[384] = sha3('voting')
    mem[320] = 64
    mem[416 len 64] = 0x9065c3e7f7b7ef1ef4e53d2d0b8e0cef02874ab020c1ece79d5f0d3d0111c0ba, sha3('voting')
    require ext_code.size(ensAddress)
    call ensAddress.resolver(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(0x9065c3e7f7b7ef1ef4e53d2d0b8e0cef02874ab020c1ece79d5f0d3d0111c0ba, sha3('voting'))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[420] = sha3(0x9065c3e7f7b7ef1ef4e53d2d0b8e0cef02874ab020c1ece79d5f0d3d0111c0ba, sha3('voting'))
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).addr(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(0x9065c3e7f7b7ef1ef4e53d2d0b8e0cef02874ab020c1ece79d5f0d3d0111c0ba, sha3('voting'))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[416] = 0xc36af46000000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getLatest() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[416 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require mem[544] <= 4294967296
    require mem[544] + 32 <= return_data.size
    require return_data.size >= mem[mem[544] + 416] + mem[544] + 32 and mem[mem[544] + 416] <= 4294967296
    require ext_code.size(address(cd[4]))
    call address(cd[4]).newAppInstance(bytes32 arg1, address arg2) with:
         gas gas_remaining wei
        args sha3(0x9065c3e7f7b7ef1ef4e53d2d0b8e0cef02874ab020c1ece79d5f0d3d0111c0ba, sha3('voting')), mem[524 len 20]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 416] = 6
    mem[ceil32(return_data.size) + 448] = 'voting'
    mem[ceil32(return_data.size) + 480 len 0] = None
    mem[ceil32(return_data.size) + 512] = 0x9065c3e7f7b7ef1ef4e53d2d0b8e0cef02874ab020c1ece79d5f0d3d0111c0ba
    mem[ceil32(return_data.size) + 544] = sha3(0, Mask(16, 208, 'voting') >> 208)
    mem[ceil32(return_data.size) + 480] = 64
    emit InstalledApp(address(ext_call.return_data[0]), sha3(0x9065c3e7f7b7ef1ef4e53d2d0b8e0cef02874ab020c1ece79d5f0d3d0111c0ba, sha3(0, Mask(16, 208, 'voting') >> 208)));
    mem[ceil32(return_data.size) + 576] = 23
    mem[ceil32(return_data.size) + 608] = 'Melon Technical Council'
    mem[ceil32(return_data.size) + 640] = 3
    mem[ceil32(return_data.size) + 672] = 'MTC'
    require ext_code.size(sub_039fa760Address)
    call sub_039fa760Address.createCloneToken(address arg1, uint256 arg2, string arg3, uint8 arg4, string arg5, bool arg6) with:
         gas gas_remaining wei
        args 0, 0, 192, 0, 256, 1, 23, 'Melon Technical Council' << 72, 3, 'MTC' % 16777216
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit DeployToken(address(ext_call.return_data[0]));
    mem[ceil32(return_data.size) + 704] = 13
    mem[ceil32(return_data.size) + 736] = 'token-manager'
    mem[ceil32(return_data.size) + 768 len 0] = None
    mem[ceil32(return_data.size) + 800] = 0x9065c3e7f7b7ef1ef4e53d2d0b8e0cef02874ab020c1ece79d5f0d3d0111c0ba
    mem[ceil32(return_data.size) + 832] = sha3('token-manager')
    mem[ceil32(return_data.size) + 768] = 64
    mem[ceil32(return_data.size) + 864] = 13
    mem[ceil32(return_data.size) + 896] = 'token-manager'
    mem[ceil32(return_data.size) + 928 len 0] = None
    mem[ceil32(return_data.size) + 960] = 0x9065c3e7f7b7ef1ef4e53d2d0b8e0cef02874ab020c1ece79d5f0d3d0111c0ba
    mem[ceil32(return_data.size) + 992] = sha3('token-manager')
    mem[ceil32(return_data.size) + 928] = 64
    mem[ceil32(return_data.size) + 1024 len 64] = 0x9065c3e7f7b7ef1ef4e53d2d0b8e0cef02874ab020c1ece79d5f0d3d0111c0ba, sha3('token-manager')
    require ext_code.size(ensAddress)
    call ensAddress.resolver(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(0x9065c3e7f7b7ef1ef4e53d2d0b8e0cef02874ab020c1ece79d5f0d3d0111c0ba, sha3('token-manager'))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 1028] = sha3(0x9065c3e7f7b7ef1ef4e53d2d0b8e0cef02874ab020c1ece79d5f0d3d0111c0ba, sha3('token-manager'))
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).addr(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(0x9065c3e7f7b7ef1ef4e53d2d0b8e0cef02874ab020c1ece79d5f0d3d0111c0ba, sha3('token-manager'))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 1024] = 0xc36af46000000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getLatest() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 1024 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 1024
    require return_data.size >= 160
    require mem[ceil32(return_data.size) + 1152] <= 4294967296
    require mem[ceil32(return_data.size) + 1152] + 32 <= return_data.size
    require return_data.size >= mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 1152] + 1024] + mem[ceil32(return_data.size) + 1152] + 32 and mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 1152] + 1024] <= 4294967296
    require ext_code.size(address(cd[4]))
    call address(cd[4]).newAppInstance(bytes32 arg1, address arg2) with:
         gas gas_remaining wei
        args sha3(0x9065c3e7f7b7ef1ef4e53d2d0b8e0cef02874ab020c1ece79d5f0d3d0111c0ba, sha3('token-manager')), mem[ceil32(return_data.size) + 1132 len 20]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 1184 len 64] = 0x9065c3e7f7b7ef1ef4e53d2d0b8e0cef02874ab020c1ece79d5f0d3d0111c0ba, sha3('token-manager')
    emit InstalledApp(address(ext_call.return_data[0]), sha3(mem[(2 * ceil32(return_data.size)) + 1184 len ceil32(return_data.size) + 64]));
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).CREATE_VOTES_ROLE() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 1188] = address(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 1220] = address(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 1252] = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 1284] = address(ext_call.return_data[0])
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).createPermission(address arg1, address arg2, bytes32 arg3, address arg4) with:
         gas gas_remaining wei
        args mem[(2 * ceil32(return_data.size)) + 1188 len ceil32(return_data.size) + 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x3c624c75 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 1188] = address(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 1220] = address(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 1252] = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 1284] = address(ext_call.return_data[0])
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).createPermission(address arg1, address arg2, bytes32 arg3, address arg4) with:
         gas gas_remaining wei
        args mem[(2 * ceil32(return_data.size)) + 1188 len ceil32(return_data.size) + 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x62de7e5a with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 1188] = address(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 1220] = address(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 1252] = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 1284] = address(ext_call.return_data[0])
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).createPermission(address arg1, address arg2, bytes32 arg3, address arg4) with:
         gas gas_remaining wei
        args mem[(2 * ceil32(return_data.size)) + 1188 len ceil32(return_data.size) + 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).ISSUE_ROLE() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 1188] = address(cd[68])
    mem[(2 * ceil32(return_data.size)) + 1220] = address(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 1252] = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 1284] = address(cd[68])
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).createPermission(address arg1, address arg2, bytes32 arg3, address arg4) with:
         gas gas_remaining wei
        args mem[(2 * ceil32(return_data.size)) + 1188 len ceil32(return_data.size) + 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).ASSIGN_ROLE() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 1188] = address(cd[68])
    mem[(2 * ceil32(return_data.size)) + 1220] = address(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 1252] = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 1284] = address(cd[68])
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).createPermission(address arg1, address arg2, bytes32 arg3, address arg4) with:
         gas gas_remaining wei
        args mem[(2 * ceil32(return_data.size)) + 1188 len ceil32(return_data.size) + 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).BURN_ROLE() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 1188] = address(cd[68])
    mem[(2 * ceil32(return_data.size)) + 1220] = address(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 1252] = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 1284] = address(cd[68])
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).createPermission(address arg1, address arg2, bytes32 arg3, address arg4) with:
         gas gas_remaining wei
        args mem[(2 * ceil32(return_data.size)) + 1188 len ceil32(return_data.size) + 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).changeController(address arg1) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 1188] = address(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 1220] = 0
    mem[(2 * ceil32(return_data.size)) + 1252] = 1
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).initialize(address arg1, bool arg2, uint256 arg3) with:
         gas gas_remaining wei
        args mem[(2 * ceil32(return_data.size)) + 1188 len ceil32(return_data.size) + 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 1188] = address(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 1220] = 5 * 10^17
    mem[(2 * ceil32(return_data.size)) + 1252] = 0
    mem[(2 * ceil32(return_data.size)) + 1284] = 48 * 24 * 3600
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).initialize(address arg1, uint64 arg2, uint64 arg3, uint64 arg4) with:
         gas gas_remaining wei
        args mem[(2 * ceil32(return_data.size)) + 1188 len ceil32(return_data.size) + 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).MINT_ROLE() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 1188] = this.address
    mem[(2 * ceil32(return_data.size)) + 1220] = address(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 1252] = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 1284] = this.address
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).createPermission(address arg1, address arg2, bytes32 arg3, address arg4) with:
         gas gas_remaining wei
        args mem[(2 * ceil32(return_data.size)) + 1188 len ceil32(return_data.size) + 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    idx = 0
    while idx < ('cd', 100).length:
        mem[(2 * ceil32(return_data.size)) + 1184] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 1188] = address(cd[((32 * idx) + cd[100] + 36)])
        mem[(2 * ceil32(return_data.size)) + 1220] = 1
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).mint(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args mem[(2 * ceil32(return_data.size)) + 1188 len ceil32(return_data.size) + 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).MINT_ROLE() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 1188] = address(cd[68])
    mem[(2 * ceil32(return_data.size)) + 1220] = address(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 1252] = ext_call.return_data[0]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).grantPermission(address arg1, address arg2, bytes32 arg3) with:
         gas gas_remaining wei
        args mem[(2 * ceil32(return_data.size)) + 1188 len ceil32(return_data.size) + 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 1188] = this.address
    mem[(2 * ceil32(return_data.size)) + 1220] = address(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 1252] = ext_call.return_data[0]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).revokePermission(address arg1, address arg2, bytes32 arg3) with:
         gas gas_remaining wei
        args mem[(2 * ceil32(return_data.size)) + 1188 len ceil32(return_data.size) + 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 1188] = address(cd[68])
    mem[(2 * ceil32(return_data.size)) + 1220] = address(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 1252] = ext_call.return_data[0]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).setPermissionManager(address arg1, address arg2, bytes32 arg3) with:
         gas gas_remaining wei
        args mem[(2 * ceil32(return_data.size)) + 1188 len ceil32(return_data.size) + 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 1248 len 0] = None
    mem[(2 * ceil32(return_data.size)) + 1253 len 27] = ext_call.return_data[1 len 27]
    mem[(2 * ceil32(return_data.size)) + 1248 len 5] = 'agent'
    mem[(2 * ceil32(return_data.size)) + 1280] = 0x9065c3e7f7b7ef1ef4e53d2d0b8e0cef02874ab020c1ece79d5f0d3d0111c0ba
    mem[(2 * ceil32(return_data.size)) + 1312] = sha3(mem[(2 * ceil32(return_data.size)) + 1248 len ceil32(return_data.size) + 5])
    mem[(2 * ceil32(return_data.size)) + 1344 len 64] = 0x9065c3e7f7b7ef1ef4e53d2d0b8e0cef02874ab020c1ece79d5f0d3d0111c0ba, mem[(2 * ceil32(return_data.size)) + 1312]
    _17861 = sha3(mem[(2 * ceil32(return_data.size)) + 1344 len ceil32(return_data.size) + 64])
    mem[(2 * ceil32(return_data.size)) + 1408 len 0] = None
    mem[(2 * ceil32(return_data.size)) + 1408 len 5] = 'agent'
    mem[(2 * ceil32(return_data.size)) + 1440] = 0x9065c3e7f7b7ef1ef4e53d2d0b8e0cef02874ab020c1ece79d5f0d3d0111c0ba
    mem[(2 * ceil32(return_data.size)) + 1472] = sha3(mem[(2 * ceil32(return_data.size)) + 1408 len ceil32(return_data.size) + 5])
    mem[(2 * ceil32(return_data.size)) + 1504 len 64] = 0x9065c3e7f7b7ef1ef4e53d2d0b8e0cef02874ab020c1ece79d5f0d3d0111c0ba, mem[(2 * ceil32(return_data.size)) + 1472]
    _19077 = sha3(mem[(2 * ceil32(return_data.size)) + 1504 len ceil32(return_data.size) + 64])
    require ext_code.size(ensAddress)
    call ensAddress.resolver(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(mem[(2 * ceil32(return_data.size)) + 1504 len ceil32(return_data.size) + 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 1508] = sha3(mem[(2 * ceil32(return_data.size)) + 1504 len ceil32(return_data.size) + 64])
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).addr(bytes32 arg1) with:
         gas gas_remaining wei
        args _19077
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 1504] = 0xc36af46000000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getLatest() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 1504 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 1504
    require return_data.size >= 160
    require mem[(2 * ceil32(return_data.size)) + 1632] <= 4294967296
    require mem[(2 * ceil32(return_data.size)) + 1632] + 32 <= return_data.size
    require return_data.size >= mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 1632] + 1504] + mem[(2 * ceil32(return_data.size)) + 1632] + 32 and mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 1632] + 1504] <= 4294967296
    require ext_code.size(address(cd[4]))
    call address(cd[4]).newAppInstance(bytes32 arg1, address arg2) with:
         gas gas_remaining wei
        args _17861, mem[(2 * ceil32(return_data.size)) + 1612 len 20]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    # nil
}



}
