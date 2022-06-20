contract main {




// =====================  Runtime code  =====================


address sub_d5fd9e66Address;
address sub_f2a2129bAddress;
uint256 sub_c7d93fd4;
array of uint256 sub_8ca7f51c;
mapping of uint256 params;
array of struct proposals;
address votingAddress;
uint256 PROCESSBY;

function PROCESSBY() {
    return PROCESSBY
}

function proposals(bytes32 arg1) {
    mem[128] = proposals[arg1][1].field_0
    idx = 128
    s = 0
    while proposals[arg1][1].length + 96 > idx:
        mem[idx + 32] = proposals[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return proposals[arg1].field_0, 
           Array(len=proposals[arg1][1].length, data=mem[128 len proposals[arg1][1].length]),
           proposals[arg1].field_512,
           proposals[arg1].field_768
}

function sub_56e1fb88(?) {
    return sub_d5fd9e66Address
}

function sub_5793b9cf(?) {
    return sub_f2a2129bAddress
}

function sub_8ca7f51c(?) {
    return sub_8ca7f51c[0 len sub_8ca7f51c.length]
}

function sub_c7d93fd4(?) {
    return sub_c7d93fd4
}

function sub_d5fd9e66(?) {
    return sub_d5fd9e66Address
}

function params(bytes32 arg1) {
    return params[arg1]
}

function sub_f2a2129b(?) {
    return sub_f2a2129bAddress
}

function voting() {
    return votingAddress
}

function _fallback() payable {
    revert
}

function propExists(bytes32 arg1) {
    return (proposals[arg1].field_512 > 0)
}

function sub_b0924d6e(?) {
    if sub_d5fd9e66Address != msg.sender:
        revert with 0, 'Sender is not Appellate'
    sub_c7d93fd4 = arg1
    sub_8ca7f51c[] = Array(len=arg2.length, data=arg2[all])
    emit 0x2f6679e9: arg1, Array(len=arg2.length, data=arg2[all])
}

function sub_55122425(?) {
    if sub_f2a2129bAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Sender is not Government Controller'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'newAppellate address must not be 0'
    sub_d5fd9e66Address = arg1
    emit 0x759a9d17: arg1
}

function sub_ffa1bdf0(?) {
    idx = 384
    s = 0
    while proposals[arg1][1].length + 352 > idx:
        mem[idx + 32] = proposals[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if proposals[arg1].field_0 <= 0:
        return (proposals[arg1].field_0 > 0)
    require ext_code.size(votingAddress)
    call votingAddress.pollEnded(uint256 arg1) with:
         gas gas_remaining wei
        args proposals[arg1].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function get(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + 128] = params[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]]
    return memory
      from ceil32(arg1.length) + 128
       len 32
}

function proposeReparameterization(string arg1, uint256 arg2) {
    mem[128 len arg1.length] = arg1[all]
    if sub_d5fd9e66Address != msg.sender:
        revert with 0, 'Sender is not Appellate'
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = !(256^(-(arg1.length % 32) + 32) - 1) and call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] or 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128]
    mem[ceil32(arg1.length) + arg1.length + 128] = arg2
    _362 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32])
    mem[ceil32(arg1.length) + 128] = 'appealVotePercentage'
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    if sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]) == sha3('appealVotePercentage'):
        if arg2 > 100:
            revert with 0, 'Percentage parameters must be less than or equal to 100'
    else:
        mem[ceil32(arg1.length) + 128] = 'appealChallengeVoteDispensationP'
        mem[ceil32(arg1.length) + 160] = 'ct'
        mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
        if sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]) == sha3('appealChallengeVoteDispensationP', 'ct'):
            if arg2 > 100:
                revert with 0, 'Percentage parameters must be less than or equal to 100'
    if proposals[_362].field_512 > 0:
        revert with 0, 'Proposed reparameterization already exists'
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    if params[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]] == arg2:
        revert with 0, 'Proposed reparameterization would not change parameter value'
    require ext_code.size(votingAddress)
    call votingAddress.startPoll(uint256 arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args params['appealVotePercentage'], params['govtPCommitStageLen'], params['govtPRevealStageLen']
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require params['govtPCommitStageLen'] + block.timestamp >= block.timestamp
    require params['govtPRevealStageLen'] >= 0
    require PROCESSBY >= 0
    proposals[_362].field_0 = ext_call.return_data[0]
    proposals[_362][1][].field_0 = Array(len=arg1.length, data=arg1[all])
    proposals[_362].field_512 = PROCESSBY + params['govtPRevealStageLen'] + params['govtPCommitStageLen'] + block.timestamp
    proposals[_362].field_768 = arg2
    emit 0x74adf299: Array(len=arg1.length, data=arg1[all]), arg2, _362, ext_call.return_data[0]
    return _362
}

function processProposal(bytes32 arg1) {
    mem[96] = 0
    mem[128] = 96
    mem[160] = 0
    mem[192] = 0
    mem[224] = proposals[arg1].field_0
    mem[352] = proposals[arg1][1].length
    mem[384] = proposals[arg1][1].field_0
    idx = 384
    s = 0
    while proposals[arg1][1].length + 352 > idx:
        mem[idx + 32] = proposals[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[256] = 352
    mem[288] = proposals[arg1].field_512
    mem[320] = proposals[arg1].field_768
    require proposals[arg1].field_0 > 0
    require ext_code.size(votingAddress)
    call votingAddress.pollEnded(uint256 arg1) with:
         gas gas_remaining wei
        args proposals[arg1].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    mem[32] = 5
    require ext_code.size(votingAddress)
    call votingAddress.isPassed(uint256 arg1) with:
         gas gas_remaining wei
        args proposals[arg1].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        emit 0xcbc6fb38: arg1, proposals[arg1].field_0
        proposals[arg1].field_0 = 0
        proposals[arg1].field_256 = 0
        if 31 < proposals[arg1][1].length:
            idx = 0
            while proposals[arg1][1].length + 31 / 32 > idx:
                proposals[arg1][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if proposals[arg1].field_512 <= block.timestamp:
            emit 0x571dcf79: arg1, proposals[arg1].field_0
            proposals[arg1].field_0 = 0
            proposals[arg1].field_256 = 0
            if 31 < proposals[arg1][1].length:
                idx = 0
                while proposals[arg1][1].length + 31 / 32 > idx:
                    proposals[arg1][idx + 1].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            mem[64] = (2 * ceil32(proposals[arg1][1].length)) + 416
            mem[ceil32(proposals[arg1][1].length) + 384] = proposals[arg1][1].length
            mem[0] = sha3(arg1, 5) + 1
            mem[ceil32(proposals[arg1][1].length) + 416] = proposals[arg1][1].field_0
            idx = ceil32(proposals[arg1][1].length) + 416
            s = 0
            while ceil32(proposals[arg1][1].length) + proposals[arg1][1].length + 384 > idx:
                mem[idx + 32] = proposals[arg1][s + 1].field_256
                idx = idx + 32
                s = s + 1
                continue 
            mem[(2 * ceil32(proposals[arg1][1].length)) + 416 len floor32(proposals[arg1][1].length)] = mem[ceil32(proposals[arg1][1].length) + 416 len floor32(proposals[arg1][1].length)]
            mem[(2 * ceil32(proposals[arg1][1].length)) + floor32(proposals[arg1][1].length) + 416] = mem[ceil32(proposals[arg1][1].length) + floor32(proposals[arg1][1].length) + -proposals[arg1][1].length % 32 + 448 len proposals[arg1][1].length % 32] or Mask(8 * -proposals[arg1][1].length % 32 + 32, -(8 * -proposals[arg1][1].length % 32 + 32) + 256, mem[(2 * ceil32(proposals[arg1][1].length)) + floor32(proposals[arg1][1].length) + 416])
            params[mem[(2 * ceil32(stor5[arg1][1].length)) + 416 len stor5[arg1][1].length]] = proposals[arg1].field_768
            mem[(2 * ceil32(proposals[arg1][1].length)) + 448] = proposals[arg1].field_768
            mem[(2 * ceil32(proposals[arg1][1].length)) + 416] = 64
            mem[(2 * ceil32(proposals[arg1][1].length)) + 480] = proposals[arg1][1].length
            if 0 < proposals[arg1][1].length:
                mem[(2 * ceil32(proposals[arg1][1].length)) + 512] = mem[ceil32(proposals[arg1][1].length) + 416]
                mem[(2 * ceil32(proposals[arg1][1].length)) + 544 len floor32(proposals[arg1][1].length - 1)] = mem[ceil32(proposals[arg1][1].length) + 448 len floor32(proposals[arg1][1].length - 1)]
            emit 0xe92bd4b7: Array(len=proposals[arg1][1].length, data=mem[(2 * ceil32(proposals[arg1][1].length)) + 512 len proposals[arg1][1].length]), proposals[arg1].field_768
            emit 0xe040346a: arg1, proposals[arg1].field_0
            proposals[arg1].field_0 = 0
            proposals[arg1].field_256 = 0
            if 31 < proposals[arg1][1].length:
                idx = 0
                while proposals[arg1][1].length + 31 / 32 > idx:
                    proposals[arg1][idx + 1].field_0 = 0
                    idx = idx + 1
                    continue 
    proposals[arg1].field_512 = 0
    proposals[arg1].field_768 = 0
}



}
