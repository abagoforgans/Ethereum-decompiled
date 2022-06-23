contract main {




// =====================  Runtime code  =====================


#
#  - sub_1a5a78a5(?)
#  - transfer(address arg1, uint256 arg2)
#  - getMember(uint256 arg1)
#  - getTransfer(uint256 arg1)
#  - sub_c4769517(?)
#  - isMember()
#  - sub_f5ef565e(?)
#
const decimals = 0

const contractName = 'BasicContract'


address owner;
uint256 stor3;
address stor4;
address stor5;
array of struct stor6;
array of address stor7;

function owner() {
    return owner
}

function sub_91a3c7d2(?) {
    return stor7.length
}

function sub_ce458581(?) {
    return bool(stor6[address(arg1)].field_512)
}

function _fallback() payable {
  stop
}

function sub_69a7ddf7(?) {
    if arg1 != 0xc3dfe4821ba10d359123270e50c22ccf8c31a00e:
        return 0
    return 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getTransferCount() {
    require ext_code.size(stor4)
    call stor4.getUint(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(Mask(248, 0, 'BasicContract', 'TokenTransferCount', 0))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function balanceOf(address arg1) {
    require ext_code.size(stor4)
    call stor4.getUint(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(sha3(Mask(200, 0, 'BasicContract', 'TokenBalance', 0)), arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_8d07ac2f(?) {
    require ext_code.size(stor4)
    call stor4.getUint(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(Mask(208, 48, 'BasicContract', Mask(152, 104, 'MemberCounter') >> 104) >> 48)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function totalSupply() {
    require ext_code.size(stor4)
    call stor4.getUint(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(Mask(232, 24, 'BasicContract', Mask(152, 104, 'TokenTotalSupply') >> 104) >> 24)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_34ce4826(?) {
    require ext_code.size(stor4)
    call stor4.getBool(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(Mask(216, 40, 'BasicContract', Mask(152, 104, 'InitiatedToken') >> 104) >> 40)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function register() {
    require msg.sender == owner
    require ext_code.size(stor5)
    call stor5.register(bytes32 arg1, string arg2, string arg3) with:
         gas gas_remaining wei
        args stor3, 96, 160, 13, 'MemberFeature' << 152, 1, uint8('1')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor5)
    call stor5.register(bytes32 arg1, string arg2, string arg3) with:
         gas gas_remaining wei
        args stor3, 96, 160, 12, 'TokenFeature' << 160, 1, uint8('1')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function name() {
    mem[96] = 13
    mem[128] = 'BasicContract'
    mem[192 len 13] = 'BasicContract'
    mem[205] = 'TokenName'
    mem[160] = 22
    mem[214 len 0] = None
    mem[214] = 0x986e791a00000000000000000000000000000000000000000000000000000000
    mem[218] = sha3(Mask(176, 0, 'BasicContract', 'TokenName', 0))
    require ext_code.size(stor4)
    call stor4.getString(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(Mask(176, 0, 'BasicContract', 'TokenName', 0))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[214 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 214
    require return_data.size >= 32
    _31 = mem[214 len 4], Mask(224, 32, sha3(Mask(176, 0, 'BasicContract', 'TokenName', 0))) >> 32
    require mem[214 len 4], Mask(224, 32, sha3(Mask(176, 0, 'BasicContract', 'TokenName', 0))) >> 32 <= 4294967296
    require mem[214 len 4], Mask(224, 32, sha3(Mask(176, 0, 'BasicContract', 'TokenName', 0))) >> 32 + 32 <= return_data.size
    require return_data.size >= mem[mem[214 len 4], Mask(224, 32, sha3(Mask(176, 0, 'BasicContract', 'TokenName', 0))) >> 32 + 214] + mem[214 len 4], Mask(224, 32, sha3(Mask(176, 0, 'BasicContract', 'TokenName', 0))) >> 32 + 32 and mem[mem[214 len 4], Mask(224, 32, sha3(Mask(176, 0, 'BasicContract', 'TokenName', 0))) >> 32 + 214] <= 4294967296
    mem[ceil32(return_data.size) + 214] = 32
    mem[ceil32(return_data.size) + 246] = mem[_31 + 214]
    _35 = mem[_31 + 214]
    mem[ceil32(return_data.size) + 278 len ceil32(mem[_31 + 214])] = mem[_31 + 246 len ceil32(mem[_31 + 214])]
    if not _35 % 32:
        return 32, mem[ceil32(return_data.size) + 246 len _35 + 32]
    mem[floor32(_35) + ceil32(return_data.size) + 278] = mem[floor32(_35) + ceil32(return_data.size) + -(_35 % 32) + 310 len _35 % 32]
    return 32, mem[ceil32(return_data.size) + 246 len floor32(_35) + 64]
}

function symbol() {
    mem[96] = 13
    mem[128] = 'BasicContract'
    mem[192 len 13] = 'BasicContract'
    mem[205] = 'TokenSymbol'
    mem[160] = 24
    mem[216] = 0x986e791a00000000000000000000000000000000000000000000000000000000
    mem[220] = sha3(Mask(192, 64, 'BasicContract', Mask(152, 104, 'TokenSymbol') >> 104) >> 64)
    require ext_code.size(stor4)
    call stor4.getString(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(Mask(192, 64, 'BasicContract', Mask(152, 104, 'TokenSymbol') >> 104) >> 64)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[216 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 216
    require return_data.size >= 32
    _21 = mem[216 len 4], Mask(224, 32, sha3(Mask(192, 64, 'BasicContract', Mask(152, 104, 'TokenSymbol') >> 104) >> 64)) >> 32
    require mem[216 len 4], Mask(224, 32, sha3(Mask(192, 64, 'BasicContract', Mask(152, 104, 'TokenSymbol') >> 104) >> 64)) >> 32 <= 4294967296
    require mem[216 len 4], Mask(224, 32, sha3(Mask(192, 64, 'BasicContract', Mask(152, 104, 'TokenSymbol') >> 104) >> 64)) >> 32 + 32 <= return_data.size
    require return_data.size >= mem[mem[216 len 4], Mask(224, 32, sha3(Mask(192, 64, 'BasicContract', Mask(152, 104, 'TokenSymbol') >> 104) >> 64)) >> 32 + 216] + mem[216 len 4], Mask(224, 32, sha3(Mask(192, 64, 'BasicContract', Mask(152, 104, 'TokenSymbol') >> 104) >> 64)) >> 32 + 32 and mem[mem[216 len 4], Mask(224, 32, sha3(Mask(192, 64, 'BasicContract', Mask(152, 104, 'TokenSymbol') >> 104) >> 64)) >> 32 + 216] <= 4294967296
    mem[ceil32(return_data.size) + 216] = 32
    mem[ceil32(return_data.size) + 248] = mem[_21 + 216]
    _28 = mem[_21 + 216]
    mem[ceil32(return_data.size) + 280 len ceil32(mem[_21 + 216])] = mem[_21 + 248 len ceil32(mem[_21 + 216])]
    if not _28 % 32:
        return 32, mem[ceil32(return_data.size) + 248 len _28 + 32]
    mem[floor32(_28) + ceil32(return_data.size) + 280] = mem[floor32(_28) + ceil32(return_data.size) + -(_28 % 32) + 312 len _28 % 32]
    return 32, mem[ceil32(return_data.size) + 248 len floor32(_28) + 64]
}

function sub_4854637f(?) {
    require ext_code.size(stor4)
    call stor4.getBool(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(Mask(216, 40, 'BasicContract', Mask(152, 104, 'InitiatedToken') >> 104) >> 40)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
    require ext_code.size(stor5)
    call stor5.0x8da5cb5b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == msg.sender
    require ext_code.size(stor4)
    call stor4.setString(bytes32 arg1, string arg2) with:
         gas gas_remaining wei
        args sha3(Mask(176, 0, 'BasicContract', 'TokenName', 0)), Array(len=arg1.length, data=arg1[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor4)
    call stor4.setString(bytes32 arg1, string arg2) with:
         gas gas_remaining wei
        args sha3(Mask(192, 0, 'BasicContract', 'TokenSymbol', 0)), Array(len=arg2.length, data=arg2[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor4)
    call stor4.setUint(bytes32 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sha3(Mask(232, 0, 'BasicContract', 'TokenTotalSupply', 0)), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor4)
    call stor4.setBool(bytes32 arg1, bool arg2) with:
         gas gas_remaining wei
        args sha3(Mask(216, 0, 'BasicContract', 'InitiatedToken', 0)), 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor5)
    call stor5.0x1289c178 with:
         gas gas_remaining wei
        args Array(len=13, data='VotingFeature')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x76e07094 with:
         gas gas_remaining wei
        args arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_80fb948c(?) {
    require arg1 < stor7.length
    mem[96] = stor6[stor7[arg1]].length
    mem[128] = stor6[stor7[arg1]].field_0
    idx = 128
    s = 0
    while stor6[stor7[arg1]].length + 96 > idx:
        mem[idx + 32] = stor6[stor7[arg1]][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[32] = 6
    mem[64] = ceil32(stor6[stor7[arg1]].length) + ceil32(stor6[stor7[arg1]][1].length) + 160
    mem[ceil32(stor6[stor7[arg1]].length) + 128] = stor6[stor7[arg1]][1].length
    mem[0] = sha3(stor7[arg1], 6) + 1
    mem[ceil32(stor6[stor7[arg1]].length) + 160] = stor6[stor7[arg1]][1].field_0
    idx = ceil32(stor6[stor7[arg1]].length) + 160
    s = 0
    while ceil32(stor6[stor7[arg1]].length) + stor6[stor7[arg1]][1].length + 128 > idx:
        mem[idx + 32] = stor6[stor7[arg1]][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor6[stor7[arg1]].length) + ceil32(stor6[stor7[arg1]][1].length) + 160] = stor7[arg1]
    mem[ceil32(stor6[stor7[arg1]].length) + ceil32(stor6[stor7[arg1]][1].length) + 192] = 96
    mem[ceil32(stor6[stor7[arg1]].length) + ceil32(stor6[stor7[arg1]][1].length) + 256] = stor6[stor7[arg1]].length
    mem[ceil32(stor6[stor7[arg1]].length) + ceil32(stor6[stor7[arg1]][1].length) + 288 len ceil32(stor6[stor7[arg1]].length)] = mem[128 len ceil32(stor6[stor7[arg1]].length)]
    mem[ceil32(stor6[stor7[arg1]].length) + ceil32(stor6[stor7[arg1]][1].length) + 224] = stor6[stor7[arg1]].length + 128
    mem[stor6[stor7[arg1]].length + ceil32(stor6[stor7[arg1]].length) + ceil32(stor6[stor7[arg1]][1].length) + 288] = stor6[stor7[arg1]][1].length
    mem[stor6[stor7[arg1]].length + ceil32(stor6[stor7[arg1]].length) + ceil32(stor6[stor7[arg1]][1].length) + 320 len ceil32(stor6[stor7[arg1]][1].length)] = mem[ceil32(stor6[stor7[arg1]].length) + 160 len ceil32(stor6[stor7[arg1]][1].length)]
    if not stor6[stor7[arg1]][1].length % 32:
        return stor7[arg1], 
               Array(len=stor6[stor7[arg1]].length, data=mem[128 len ceil32(stor6[stor7[arg1]].length)], mem[(2 * ceil32(stor6[stor7[arg1]].length)) + ceil32(stor6[stor7[arg1]][1].length) + 288 len stor6[stor7[arg1]][1].length + stor6[stor7[arg1]].length + -ceil32(stor6[stor7[arg1]].length) + 32]),
               stor6[stor7[arg1]].length + 128
    mem[floor32(stor6[stor7[arg1]][1].length) + stor6[stor7[arg1]].length + ceil32(stor6[stor7[arg1]].length) + ceil32(stor6[stor7[arg1]][1].length) + 320] = mem[floor32(stor6[stor7[arg1]][1].length) + stor6[stor7[arg1]].length + ceil32(stor6[stor7[arg1]].length) + ceil32(stor6[stor7[arg1]][1].length) + -stor6[stor7[arg1]][1].length % 32 + 352 len stor6[stor7[arg1]][1].length % 32]
    return stor7[arg1], 
           Array(len=stor6[stor7[arg1]].length, data=mem[128 len ceil32(stor6[stor7[arg1]].length)], mem[(2 * ceil32(stor6[stor7[arg1]].length)) + ceil32(stor6[stor7[arg1]][1].length) + 288 len floor32(stor6[stor7[arg1]][1].length) + stor6[stor7[arg1]].length + -ceil32(stor6[stor7[arg1]].length) + 64]),
           stor6[stor7[arg1]].length + 128
}



}
