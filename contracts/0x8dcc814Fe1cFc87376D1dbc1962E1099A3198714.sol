contract main {




// =====================  Runtime code  =====================


#
#  - vote(uint256 arg1)
#  - sub_8039f028(?)
#  - sub_8d5b4067(?)
#
const contractName = 'VotingContract'


address owner;
uint256 stor3;
address stor4;
address stor5;
uint256 sub_83823557;

function sub_83823557(?) {
    return sub_83823557
}

function owner() {
    return owner
}

function _fallback() payable {
  stop
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function register() {
    require msg.sender == owner
    require ext_code.size(stor5)
    call stor5.register(bytes32 arg1, string arg2, string arg3) with:
         gas gas_remaining wei
        args stor3, 96, 160, 13, 'VotingFeature' << 152, 1, uint8('1')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_73da75f9(?) {
    require ext_code.size(stor4)
    call stor4.getUint(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(Mask(216, 0, 'VotingContract', 'VotingCounter', 0))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_76e07094(?) {
    require ext_code.size(stor5)
    call stor5.0x1289c178 with:
         gas gas_remaining wei
        args Array(len=12, data='TokenFeature')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    sub_83823557 = arg1
}

function sub_8271453b(?) {
    require ext_code.size(stor4)
    call stor4.getUint(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3('VotingContract', Mask(144, 112, 'VotingVoteCounter') >> 112 / 256)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getVote(uint256 arg1) {
    require ext_code.size(stor4)
    call stor4.getAddress(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(sha3(sha3(Mask(192, 64, 'VotingContract', Mask(144, 112, 'VotingVote') >> 112) >> 64), arg1), 'voter')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor4)
    call stor4.getUint(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(sha3(sha3(Mask(192, 64, 'VotingContract', Mask(144, 112, 'VotingVote') >> 112) >> 64), arg1), 'proposal')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor4)
    call stor4.getUint(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(sha3(sha3(Mask(192, 64, 'VotingContract', Mask(144, 112, 'VotingVote') >> 112) >> 64), arg1), 'voterBalance')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return arg1, address(ext_call.return_data[0]), ext_call.return_data[0], ext_call.return_data[0]
}

function getProposal(uint256 arg1) {
    mem[96] = 0
    mem[128] = 96
    mem[160] = 0
    mem[288] = 14
    mem[320] = 'VotingContract'
    mem[384 len 14] = 'VotingContract'
    mem[398] = 'VotingProposal'
    mem[352] = 28
    mem[444] = sha3(Mask(224, 32, 'VotingContract', Mask(144, 112, 'VotingProposal') >> 112) >> 32)
    mem[476] = arg1
    mem[412] = 64
    mem[192] = arg1
    mem[540] = sha3(sha3(Mask(224, 32, 'VotingContract', Mask(144, 112, 'VotingProposal') >> 112) >> 32), arg1)
    mem[572] = 'subject'
    mem[508] = 39
    mem[611 len 7] = 'subject'
    mem[579] = 0xc031a18000000000000000000000000000000000000000000000000000000000
    mem[583] = sha3(sha3(sha3(Mask(224, 32, 'VotingContract', Mask(144, 112, 'VotingProposal') >> 112) >> 32), arg1), 'subject')
    require ext_code.size(stor4)
    call stor4.getBytes(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(sha3(sha3(Mask(224, 32, 'VotingContract', Mask(144, 112, 'VotingProposal') >> 112) >> 32), arg1), 'subject')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[579 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 579
    require return_data.size >= 32
    require mem[579 len 4], Mask(224, 32, sha3(sha3(sha3(Mask(224, 32, 'VotingContract', Mask(144, 112, 'VotingProposal') >> 112) >> 32), arg1), 'subject')) >> 32 <= 4294967296
    require mem[579 len 4], Mask(224, 32, sha3(sha3(sha3(Mask(224, 32, 'VotingContract', Mask(144, 112, 'VotingProposal') >> 112) >> 32), arg1), 'subject')) >> 32 + 32 <= return_data.size
    require return_data.size >= mem[mem[579 len 4], Mask(224, 32, sha3(sha3(sha3(Mask(224, 32, 'VotingContract', Mask(144, 112, 'VotingProposal') >> 112) >> 32), arg1), 'subject')) >> 32 + 579] + mem[579 len 4], Mask(224, 32, sha3(sha3(sha3(Mask(224, 32, 'VotingContract', Mask(144, 112, 'VotingProposal') >> 112) >> 32), arg1), 'subject')) >> 32 + 32 and mem[mem[579 len 4], Mask(224, 32, sha3(sha3(sha3(Mask(224, 32, 'VotingContract', Mask(144, 112, 'VotingProposal') >> 112) >> 32), arg1), 'subject')) >> 32 + 579] <= 4294967296
    mem[224] = mem[579 len 4], Mask(224, 32, sha3(sha3(sha3(Mask(224, 32, 'VotingContract', Mask(144, 112, 'VotingProposal') >> 112) >> 32), arg1), 'subject')) >> 32 + 579
    mem[ceil32(return_data.size) + 611] = sha3(sha3(Mask(224, 32, 'VotingContract', Mask(144, 112, 'VotingProposal') >> 112) >> 32), arg1)
    mem[ceil32(return_data.size) + 643] = 'voting'
    mem[ceil32(return_data.size) + 579] = 38
    mem[64] = ceil32(return_data.size) + 649
    require ext_code.size(stor4)
    call stor4.getUint(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(sha3(sha3(Mask(224, 32, 'VotingContract', Mask(144, 112, 'VotingProposal') >> 112) >> 32), arg1), 'voting')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[256] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 649] = arg1
    mem[ceil32(return_data.size) + 713] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 681] = 96
    mem[ceil32(return_data.size) + 745] = mem[mem[224]]
    _272 = mem[mem[224]]
    mem[ceil32(return_data.size) + 777 len ceil32(mem[mem[224]])] = mem[mem[224] + 32 len ceil32(mem[mem[224]])]
    if not _272 % 32:
        return arg1, 96, ext_call.return_data[0], mem[ceil32(return_data.size) + 745 len _272 + 32]
    mem[floor32(_272) + ceil32(return_data.size) + 777] = mem[floor32(_272) + ceil32(return_data.size) + -(_272 % 32) + 809 len _272 % 32]
    return arg1, 96, ext_call.return_data[0], mem[ceil32(return_data.size) + 745 len floor32(_272) + 64]
}

function getVoting(uint256 arg1) {
    mem[96] = 0
    mem[128] = 96
    mem[160] = 96
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    mem[288] = 0
    mem[320] = 0
    mem[544] = 0
    mem[576] = 0
    mem[608] = 14
    mem[640] = 'VotingContract'
    mem[704 len 14] = 'VotingContract'
    mem[718] = 'Voting'
    mem[672] = 20
    mem[724 len 0] = None
    mem[756] = sha3(address('VotingContract', 'Voting', 0))
    mem[788] = arg1
    mem[724] = 64
    mem[352] = arg1
    mem[852] = sha3(sha3(address('VotingContract', 'Voting', 0)), arg1)
    mem[884] = 'subject'
    mem[820] = 39
    mem[923 len 7] = 'subject'
    mem[891] = 0x986e791a00000000000000000000000000000000000000000000000000000000
    mem[895] = sha3(sha3(sha3(address('VotingContract', 'Voting', 0)), arg1), 'subject')
    require ext_code.size(stor4)
    call stor4.getString(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(sha3(sha3(address('VotingContract', 'Voting', 0)), arg1), 'subject')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[891 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 891
    require return_data.size >= 32
    require mem[891 len 4], Mask(224, 32, sha3(sha3(sha3(address('VotingContract', 'Voting', 0)), arg1), 'subject')) >> 32 <= 4294967296
    require mem[891 len 4], Mask(224, 32, sha3(sha3(sha3(address('VotingContract', 'Voting', 0)), arg1), 'subject')) >> 32 + 32 <= return_data.size
    require return_data.size >= mem[mem[891 len 4], Mask(224, 32, sha3(sha3(sha3(address('VotingContract', 'Voting', 0)), arg1), 'subject')) >> 32 + 891] + mem[891 len 4], Mask(224, 32, sha3(sha3(sha3(address('VotingContract', 'Voting', 0)), arg1), 'subject')) >> 32 + 32 and mem[mem[891 len 4], Mask(224, 32, sha3(sha3(sha3(address('VotingContract', 'Voting', 0)), arg1), 'subject')) >> 32 + 891] <= 4294967296
    mem[384] = mem[891 len 4], Mask(224, 32, sha3(sha3(sha3(address('VotingContract', 'Voting', 0)), arg1), 'subject')) >> 32 + 891
    mem[ceil32(return_data.size) + 923] = sha3(sha3(address('VotingContract', 'Voting', 0)), arg1)
    mem[ceil32(return_data.size) + 955] = 'description'
    mem[ceil32(return_data.size) + 891] = 43
    mem[ceil32(return_data.size) + 998 len 11] = 'description'
    mem[ceil32(return_data.size) + 966] = 0x986e791a00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 970] = sha3(sha3(sha3(address('VotingContract', 'Voting', 0)), arg1), 'description')
    require ext_code.size(stor4)
    call stor4.getString(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(sha3(sha3(address('VotingContract', 'Voting', 0)), arg1), 'description')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 966 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 966
    require return_data.size >= 32
    require mem[ceil32(return_data.size) + 966 len 4], Mask(224, 32, sha3(sha3(sha3(address('VotingContract', 'Voting', 0)), arg1), 'description')) >> 32 <= 4294967296
    require mem[ceil32(return_data.size) + 966 len 4], Mask(224, 32, sha3(sha3(sha3(address('VotingContract', 'Voting', 0)), arg1), 'description')) >> 32 + 32 <= return_data.size
    require return_data.size >= mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 966 len 4], Mask(224, 32, sha3(sha3(sha3(address('VotingContract', 'Voting', 0)), arg1), 'description')) >> 32 + 966] + mem[ceil32(return_data.size) + 966 len 4], Mask(224, 32, sha3(sha3(sha3(address('VotingContract', 'Voting', 0)), arg1), 'description')) >> 32 + 32 and mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 966 len 4], Mask(224, 32, sha3(sha3(sha3(address('VotingContract', 'Voting', 0)), arg1), 'description')) >> 32 + 966] <= 4294967296
    mem[416] = ceil32(return_data.size) + mem[ceil32(return_data.size) + 966 len 4], Mask(224, 32, sha3(sha3(sha3(address('VotingContract', 'Voting', 0)), arg1), 'description')) >> 32 + 966
    mem[(2 * ceil32(return_data.size)) + 998] = sha3(sha3(address('VotingContract', 'Voting', 0)), arg1)
    mem[(2 * ceil32(return_data.size)) + 1030] = 'creator'
    mem[(2 * ceil32(return_data.size)) + 966] = 39
    require ext_code.size(stor4)
    call stor4.getAddress(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(sha3(sha3(address('VotingContract', 'Voting', 0)), arg1), 'creator')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[448] = address(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 1069] = sha3(sha3(address('VotingContract', 'Voting', 0)), arg1)
    mem[(2 * ceil32(return_data.size)) + 1101] = 'deadlineBlock'
    mem[(2 * ceil32(return_data.size)) + 1037] = 45
    mem[(2 * ceil32(return_data.size)) + 1114] = sha3(sha3(address('VotingContract', 'Voting', 0)), arg1)
    mem[(2 * ceil32(return_data.size)) + 1146 len 13] = 'deadlineBlock'
    require ext_code.size(stor4)
    call stor4.getUint(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(mem[(2 * ceil32(return_data.size)) + 1114 len ceil32(return_data.size) + 45])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[480] = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 1146] = sha3(sha3(address('VotingContract', 'Voting', 0)), arg1)
    mem[(2 * ceil32(return_data.size)) + 1178] = 'resolvedTime'
    mem[(2 * ceil32(return_data.size)) + 1114] = 44
    mem[(2 * ceil32(return_data.size)) + 1190] = sha3(sha3(address('VotingContract', 'Voting', 0)), arg1)
    mem[(2 * ceil32(return_data.size)) + 1222 len 12] = 'resolvedTime'
    require ext_code.size(stor4)
    call stor4.getUint(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(mem[(2 * ceil32(return_data.size)) + 1190 len ceil32(return_data.size) + 44])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[512] = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 1222] = sha3(sha3(address('VotingContract', 'Voting', 0)), arg1)
    mem[(2 * ceil32(return_data.size)) + 1254] = 'passed'
    mem[(2 * ceil32(return_data.size)) + 1190] = 38
    mem[(2 * ceil32(return_data.size)) + 1260] = sha3(sha3(address('VotingContract', 'Voting', 0)), arg1)
    mem[(2 * ceil32(return_data.size)) + 1292 len 6] = 'passed'
    require ext_code.size(stor4)
    call stor4.getBool(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(mem[(2 * ceil32(return_data.size)) + 1260 len ceil32(return_data.size) + 38])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[544] = bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 1292] = sha3(sha3(address('VotingContract', 'Voting', 0)), arg1)
    mem[(2 * ceil32(return_data.size)) + 1324] = 'voteSum'
    mem[(2 * ceil32(return_data.size)) + 1260] = 39
    mem[64] = (2 * ceil32(return_data.size)) + 1331
    mem[(2 * ceil32(return_data.size)) + 1331] = sha3(sha3(address('VotingContract', 'Voting', 0)), arg1)
    mem[(2 * ceil32(return_data.size)) + 1363 len 7] = 'voteSum'
    require ext_code.size(stor4)
    call stor4.getInt(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(mem[(2 * ceil32(return_data.size)) + 1331 len ceil32(return_data.size) + 39])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[576] = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 1331] = arg1
    mem[(2 * ceil32(return_data.size)) + 1427] = address(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 1459] = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 1491] = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 1523] = bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 1555] = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 1363] = 256
    mem[(2 * ceil32(return_data.size)) + 1587] = mem[mem[384]]
    _801 = mem[mem[384]]
    mem[(2 * ceil32(return_data.size)) + 1619 len ceil32(mem[mem[384]])] = mem[mem[384] + 32 len ceil32(mem[mem[384]])]
    if not _801 % 32:
        mem[(2 * ceil32(return_data.size)) + 1395] = _801 + 288
        mem[_801 + (2 * ceil32(return_data.size)) + 1619] = mem[mem[416]]
        _818 = mem[mem[416]]
        mem[_801 + (2 * ceil32(return_data.size)) + 1651 len ceil32(mem[mem[416]])] = mem[mem[416] + 32 len ceil32(mem[mem[416]])]
        if not _818 % 32:
            return memory
              from (2 * ceil32(return_data.size)) + 1331
               len _818 + _801 + ceil32(return_data.size) + 320
        mem[floor32(_818) + _801 + (2 * ceil32(return_data.size)) + 1651] = mem[floor32(_818) + _801 + (2 * ceil32(return_data.size)) + -(_818 % 32) + 1683 len _818 % 32]
        return memory
          from (2 * ceil32(return_data.size)) + 1331
           len floor32(_818) + _801 + ceil32(return_data.size) + 352
    mem[floor32(_801) + (2 * ceil32(return_data.size)) + 1619] = mem[floor32(_801) + (2 * ceil32(return_data.size)) + -(_801 % 32) + 1651 len _801 % 32]
    mem[(2 * ceil32(return_data.size)) + 1395] = floor32(_801) + 320
    mem[floor32(_801) + (2 * ceil32(return_data.size)) + 1651] = mem[mem[416]]
    _821 = mem[mem[416]]
    mem[floor32(_801) + (2 * ceil32(return_data.size)) + 1683 len ceil32(mem[mem[416]])] = mem[mem[416] + 32 len ceil32(mem[mem[416]])]
    if not _821 % 32:
        return memory
          from (2 * ceil32(return_data.size)) + 1331
           len _821 + floor32(_801) + ceil32(return_data.size) + 352
    mem[floor32(_821) + floor32(_801) + (2 * ceil32(return_data.size)) + 1683] = mem[floor32(_821) + floor32(_801) + (2 * ceil32(return_data.size)) + -(_821 % 32) + 1715 len _821 % 32]
    return memory
      from (2 * ceil32(return_data.size)) + 1331
       len floor32(_821) + floor32(_801) + ceil32(return_data.size) + 384
}

function sub_4cb98f59(?) {
    mem[160] = 96
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    mem[288] = 0
    mem[320] = 0
    mem[352] = 14
    mem[384] = 'VotingContract'
    mem[448 len 14] = 'VotingContract'
    mem[462] = 'Voting'
    mem[416] = 20
    mem[468 len 0] = None
    mem[500] = sha3(address('VotingContract', 'Voting', 0))
    mem[532] = arg1
    mem[468] = 64
    mem[96] = arg1
    mem[596] = sha3(sha3(address('VotingContract', 'Voting', 0)), arg1)
    mem[628] = 'subject'
    mem[564] = 39
    mem[667 len 7] = 'subject'
    mem[635] = 0x986e791a00000000000000000000000000000000000000000000000000000000
    mem[639] = sha3(sha3(sha3(address('VotingContract', 'Voting', 0)), arg1), 'subject')
    require ext_code.size(stor4)
    call stor4.getString(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(sha3(sha3(address('VotingContract', 'Voting', 0)), arg1), 'subject')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[635 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 635
    require return_data.size >= 32
    require mem[635 len 4], Mask(224, 32, sha3(sha3(sha3(address('VotingContract', 'Voting', 0)), arg1), 'subject')) >> 32 <= 4294967296
    require mem[635 len 4], Mask(224, 32, sha3(sha3(sha3(address('VotingContract', 'Voting', 0)), arg1), 'subject')) >> 32 + 32 <= return_data.size
    require return_data.size >= mem[mem[635 len 4], Mask(224, 32, sha3(sha3(sha3(address('VotingContract', 'Voting', 0)), arg1), 'subject')) >> 32 + 635] + mem[635 len 4], Mask(224, 32, sha3(sha3(sha3(address('VotingContract', 'Voting', 0)), arg1), 'subject')) >> 32 + 32 and mem[mem[635 len 4], Mask(224, 32, sha3(sha3(sha3(address('VotingContract', 'Voting', 0)), arg1), 'subject')) >> 32 + 635] <= 4294967296
    mem[128] = mem[635 len 4], Mask(224, 32, sha3(sha3(sha3(address('VotingContract', 'Voting', 0)), arg1), 'subject')) >> 32 + 635
    mem[ceil32(return_data.size) + 667] = sha3(sha3(address('VotingContract', 'Voting', 0)), arg1)
    mem[ceil32(return_data.size) + 699] = 'description'
    mem[ceil32(return_data.size) + 635] = 43
    mem[ceil32(return_data.size) + 742 len 11] = 'description'
    mem[ceil32(return_data.size) + 710] = 0x986e791a00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 714] = sha3(sha3(sha3(address('VotingContract', 'Voting', 0)), arg1), 'description')
    require ext_code.size(stor4)
    call stor4.getString(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(sha3(sha3(address('VotingContract', 'Voting', 0)), arg1), 'description')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 710 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 710
    require return_data.size >= 32
    require mem[ceil32(return_data.size) + 710 len 4], Mask(224, 32, sha3(sha3(sha3(address('VotingContract', 'Voting', 0)), arg1), 'description')) >> 32 <= 4294967296
    require mem[ceil32(return_data.size) + 710 len 4], Mask(224, 32, sha3(sha3(sha3(address('VotingContract', 'Voting', 0)), arg1), 'description')) >> 32 + 32 <= return_data.size
    require return_data.size >= mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 710 len 4], Mask(224, 32, sha3(sha3(sha3(address('VotingContract', 'Voting', 0)), arg1), 'description')) >> 32 + 710] + mem[ceil32(return_data.size) + 710 len 4], Mask(224, 32, sha3(sha3(sha3(address('VotingContract', 'Voting', 0)), arg1), 'description')) >> 32 + 32 and mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 710 len 4], Mask(224, 32, sha3(sha3(sha3(address('VotingContract', 'Voting', 0)), arg1), 'description')) >> 32 + 710] <= 4294967296
    mem[160] = ceil32(return_data.size) + mem[ceil32(return_data.size) + 710 len 4], Mask(224, 32, sha3(sha3(sha3(address('VotingContract', 'Voting', 0)), arg1), 'description')) >> 32 + 710
    mem[(2 * ceil32(return_data.size)) + 742] = sha3(sha3(address('VotingContract', 'Voting', 0)), arg1)
    mem[(2 * ceil32(return_data.size)) + 774] = 'creator'
    mem[(2 * ceil32(return_data.size)) + 710] = 39
    require ext_code.size(stor4)
    call stor4.getAddress(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(sha3(sha3(address('VotingContract', 'Voting', 0)), arg1), 'creator')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[192] = address(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 813] = sha3(sha3(address('VotingContract', 'Voting', 0)), arg1)
    mem[(2 * ceil32(return_data.size)) + 845] = 'deadlineBlock'
    mem[(2 * ceil32(return_data.size)) + 781] = 45
    mem[(2 * ceil32(return_data.size)) + 858] = sha3(sha3(address('VotingContract', 'Voting', 0)), arg1)
    mem[(2 * ceil32(return_data.size)) + 890 len 13] = 'deadlineBlock'
    require ext_code.size(stor4)
    call stor4.getUint(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(mem[(2 * ceil32(return_data.size)) + 858 len ceil32(return_data.size) + 45])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[224] = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 890] = sha3(sha3(address('VotingContract', 'Voting', 0)), arg1)
    mem[(2 * ceil32(return_data.size)) + 922] = 'resolvedTime'
    mem[(2 * ceil32(return_data.size)) + 858] = 44
    mem[(2 * ceil32(return_data.size)) + 934] = sha3(sha3(address('VotingContract', 'Voting', 0)), arg1)
    mem[(2 * ceil32(return_data.size)) + 966 len 12] = 'resolvedTime'
    require ext_code.size(stor4)
    call stor4.getUint(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(mem[(2 * ceil32(return_data.size)) + 934 len ceil32(return_data.size) + 44])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[256] = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 966] = sha3(sha3(address('VotingContract', 'Voting', 0)), arg1)
    mem[(2 * ceil32(return_data.size)) + 998] = 'passed'
    mem[(2 * ceil32(return_data.size)) + 934] = 38
    mem[(2 * ceil32(return_data.size)) + 1004] = sha3(sha3(address('VotingContract', 'Voting', 0)), arg1)
    mem[(2 * ceil32(return_data.size)) + 1036 len 6] = 'passed'
    require ext_code.size(stor4)
    call stor4.getBool(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(mem[(2 * ceil32(return_data.size)) + 1004 len ceil32(return_data.size) + 38])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[288] = bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 1036] = sha3(sha3(address('VotingContract', 'Voting', 0)), arg1)
    mem[(2 * ceil32(return_data.size)) + 1068] = 'voteSum'
    mem[(2 * ceil32(return_data.size)) + 1004] = 39
    mem[(2 * ceil32(return_data.size)) + 1075] = sha3(sha3(address('VotingContract', 'Voting', 0)), arg1)
    mem[(2 * ceil32(return_data.size)) + 1107 len 7] = 'voteSum'
    require ext_code.size(stor4)
    call stor4.getInt(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(mem[(2 * ceil32(return_data.size)) + 1075 len ceil32(return_data.size) + 39])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[320] = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 1139] = 96
    mem[(2 * ceil32(return_data.size)) + 1171] = 0
    mem[(2 * ceil32(return_data.size)) + 1203] = 0
    mem[(2 * ceil32(return_data.size)) + 1235] = 0
    mem[(2 * ceil32(return_data.size)) + 1267] = 0
    mem[(2 * ceil32(return_data.size)) + 1299] = 0
    mem[(2 * ceil32(return_data.size)) + 1331] = 14
    mem[(2 * ceil32(return_data.size)) + 1363] = 'VotingContract'
    mem[(2 * ceil32(return_data.size)) + 1427 len 14] = 'VotingContract'
    mem[(2 * ceil32(return_data.size)) + 1441] = 'Voting'
    mem[(2 * ceil32(return_data.size)) + 1395] = 20
    mem[(2 * ceil32(return_data.size)) + 1447 len 0] = None
    mem[(2 * ceil32(return_data.size)) + 1467 len 12] = 'Voting' % 281474976710656, mem[(2 * ceil32(return_data.size)) + 1473 len 6]
    mem[(2 * ceil32(return_data.size)) + 1447 len 20] = address('VotingContract', 'Voting', 0)
    mem[(2 * ceil32(return_data.size)) + 1479] = sha3(mem[(2 * ceil32(return_data.size)) + 1447 len ceil32(return_data.size) + 20])
    mem[(2 * ceil32(return_data.size)) + 1511] = arg1
    mem[(2 * ceil32(return_data.size)) + 1447] = 64
    mem[(2 * ceil32(return_data.size)) + 1543 len 64] = mem[(2 * ceil32(return_data.size)) + 1479], arg1
    _2902 = sha3(mem[(2 * ceil32(return_data.size)) + 1543 len ceil32(return_data.size) + 64])
    mem[(2 * ceil32(return_data.size)) + 1075] = arg1
    mem[(2 * ceil32(return_data.size)) + 1575] = sha3(mem[(2 * ceil32(return_data.size)) + 1543 len ceil32(return_data.size) + 64])
    mem[(2 * ceil32(return_data.size)) + 1607] = 'subject'
    mem[(2 * ceil32(return_data.size)) + 1543] = 39
    mem[(2 * ceil32(return_data.size)) + 1614] = mem[(2 * ceil32(return_data.size)) + 1575]
    mem[(2 * ceil32(return_data.size)) + 1646 len 7] = 'subject'
    _3099 = sha3(mem[(2 * ceil32(return_data.size)) + 1614 len ceil32(return_data.size) + 39])
    mem[(2 * ceil32(return_data.size)) + 1614] = 0x986e791a00000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 1618] = _3099
    require ext_code.size(stor4)
    call stor4.getString(bytes32 arg1) with:
         gas gas_remaining wei
        args _3099
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 1614 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 1614
    require return_data.size >= 32
    require mem[(2 * ceil32(return_data.size)) + 1614 len 4], Mask(224, 32, _3099) >> 32 <= 4294967296
    require mem[(2 * ceil32(return_data.size)) + 1614 len 4], Mask(224, 32, _3099) >> 32 + 32 <= return_data.size
    require return_data.size >= mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 1614 len 4], Mask(224, 32, _3099) >> 32 + 1614] + mem[(2 * ceil32(return_data.size)) + 1614 len 4], Mask(224, 32, _3099) >> 32 + 32 and mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 1614 len 4], Mask(224, 32, _3099) >> 32 + 1614] <= 4294967296
    mem[(2 * ceil32(return_data.size)) + 1107] = (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 1614 len 4], Mask(224, 32, _3099) >> 32 + 1614
    mem[(4 * ceil32(return_data.size)) + 1646] = _2902
    mem[(4 * ceil32(return_data.size)) + 1678] = 'description'
    mem[(4 * ceil32(return_data.size)) + 1614] = 43
    mem[(4 * ceil32(return_data.size)) + 1721 len 11] = 'description'
    mem[(4 * ceil32(return_data.size)) + 1689] = 0x986e791a00000000000000000000000000000000000000000000000000000000
    mem[(4 * ceil32(return_data.size)) + 1693] = sha3(_2902, 'description')
    require ext_code.size(stor4)
    call stor4.getString(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(_2902, 'description')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(4 * ceil32(return_data.size)) + 1689 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 1689
    require return_data.size >= 32
    require mem[(4 * ceil32(return_data.size)) + 1689 len 4], Mask(224, 32, sha3(_2902, 'description')) >> 32 <= 4294967296
    require mem[(4 * ceil32(return_data.size)) + 1689 len 4], Mask(224, 32, sha3(_2902, 'description')) >> 32 + 32 <= return_data.size
    require return_data.size >= mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 1689 len 4], Mask(224, 32, sha3(_2902, 'description')) >> 32 + 1689] + mem[(4 * ceil32(return_data.size)) + 1689 len 4], Mask(224, 32, sha3(_2902, 'description')) >> 32 + 32 and mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 1689 len 4], Mask(224, 32, sha3(_2902, 'description')) >> 32 + 1689] <= 4294967296
    require ext_code.size(stor4)
    call stor4.getAddress(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(_2902, 'creator')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor4)
    call stor4.getUint(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(_2902, 'deadlineBlock', mem[(6 * ceil32(return_data.size)) + 1882 len 9 * ceil32(return_data.size)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor4)
    call stor4.getUint(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(_2902, 'resolvedTime', mem[(6 * ceil32(return_data.size)) + 1957 len 9 * ceil32(return_data.size)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor4)
    call stor4.getBool(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(_2902, 'passed', mem[(6 * ceil32(return_data.size)) + 2021 len 9 * ceil32(return_data.size)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor4)
    call stor4.getInt(bytes32 arg1) with:
         gas gas_remaining wei
        args sha3(_2902, 'voteSum', mem[(6 * ceil32(return_data.size)) + 2093 len 9 * ceil32(return_data.size)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] < block.number
    require not ext_call.return_data[0]
    require ext_code.size(stor5)
    call stor5.0x1289c178 with:
         gas gas_remaining wei
        args Array(len=12, data='TokenFeature', mem[(6 * ceil32(return_data.size)) + 2154 len 9 * ceil32(return_data.size)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    # nil
}



}
