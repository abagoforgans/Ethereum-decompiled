contract main {




// =====================  Runtime code  =====================


#
#  - processProposal(bytes32 arg1)
#  - challengeReparameterization(bytes32 arg1)
#
mapping of uint256 params;
mapping of struct challenges;
mapping of struct proposals;
address tokenAddress;
address votingAddress;
uint256 PROCESSBY;

function PROCESSBY() {
    return PROCESSBY
}

function proposals(bytes32 arg1) {
    mem[128] = proposals[arg1][3].field_0
    idx = 128
    s = 0
    while proposals[arg1][3].length + 96 > idx:
        mem[idx + 32] = proposals[arg1][s + 3].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return proposals[arg1].field_0, 
           proposals[arg1].field_256,
           proposals[arg1].field_512,
           Array(len=proposals[arg1][3].length, data=mem[128 len proposals[arg1][3].length]),
           proposals[arg1].field_1024,
           proposals[arg1].field_1280,
           proposals[arg1].field_1536
}

function challenges(uint256 arg1) {
    return challenges[arg1].field_0, 
           challenges[arg1].field_256,
           bool(challenges[arg1].field_416),
           challenges[arg1].field_512,
           challenges[arg1].field_768
}

function tokenClaims(uint256 arg1, address arg2) {
    return bool(challenges[arg1][4][address(arg2)].field_0)
}

function params(bytes32 arg1) {
    return params[arg1]
}

function token() {
    return tokenAddress
}

function voting() {
    return votingAddress
}

function _fallback() payable {
    revert
}

function propExists(bytes32 arg1) {
    return (proposals[arg1].field_1280 > 0)
}

function voterReward(address arg1, uint256 arg2, uint256 arg3) {
    require ext_code.size(votingAddress)
    call votingAddress.0xb43bd069 with:
         gas gas_remaining wei
        args address(arg1), arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require challenges[arg2].field_768
    return (ext_call.return_data[0] * challenges[arg2].field_0 / challenges[arg2].field_768)
}

function canBeSet(bytes32 arg1) {
    idx = 576
    s = 0
    while proposals[arg1][3].length + 544 > idx:
        mem[idx + 32] = proposals[arg1][s + 3].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if block.timestamp <= proposals[arg1].field_0:
        return (block.timestamp > proposals[arg1].field_0)
    if block.timestamp >= proposals[arg1].field_1280:
        return (block.timestamp < proposals[arg1].field_1280)
    return not proposals[arg1].field_256
}

function challengeWinnerReward(uint256 arg1) {
    require ext_code.size(votingAddress)
    call votingAddress.getTotalNumberOfTokensForWinningOption(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        return ((2 * challenges[arg1].field_512) - challenges[arg1].field_0)
    return (2 * challenges[arg1].field_512)
}

function challengeCanBeResolved(bytes32 arg1) {
    idx = 736
    s = 0
    while proposals[arg1][3].length + 704 > idx:
        mem[idx + 32] = proposals[arg1][s + 3].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if proposals[arg1].field_256 <= 0:
        return (proposals[arg1].field_256 > 0)
    if challenges[stor2[arg1].field_256].field_416:
        return not bool(challenges[stor2[arg1].field_256].field_416)
    require ext_code.size(votingAddress)
    call votingAddress.0xee684830 with:
         gas gas_remaining wei
        args proposals[arg1].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function get(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[(2 * floor32(arg1.length)) + ceil32(arg1.length) + 192 len arg1.length % 32] = mem[ceil32(arg1.length) + -(arg1.length % 32) + floor32(arg1.length) + 192 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 160] = params[call.data[arg1 + 36 len floor32(arg1.length)]][mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length) + 160 len arg1.length % 32]]
    return memory
      from arg1.length + ceil32(arg1.length) + 160
       len 32
}

function claimReward(uint256 arg1, uint256 arg2) {
    require not challenges[arg1][4][address(msg.sender)].field_0
    require bool(challenges[arg1].field_416) == 1
    require ext_code.size(votingAddress)
    call votingAddress.0xb43bd069 with:
         gas gas_remaining wei
        args msg.sender, arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(votingAddress)
    call votingAddress.0xb43bd069 with:
         gas gas_remaining wei
        args msg.sender, arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require challenges[arg1].field_768
    challenges[arg1].field_768 -= ext_call.return_data[0]
    challenges[arg1].field_0 -= ext_call.return_data[0] * challenges[arg1].field_0 / challenges[arg1].field_768
    challenges[arg1][4][address(msg.sender)].field_0 = 1
    emit _RewardClaimed((ext_call.return_data[0] * challenges[arg1].field_0 / challenges[arg1].field_768), arg1, msg.sender);
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0] * challenges[arg1].field_0 / challenges[arg1].field_768
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function proposeReparameterization(string arg1, uint256 arg2) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = 11
    mem[ceil32(arg1.length) + 160] = 'pMinDeposit'
    mem[ceil32(arg1.length) + 235 len 0] = None
    mem[ceil32(arg1.length) + 267 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 299 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 267] = arg2
    mem[arg1.length + ceil32(arg1.length) + 299 len floor32(arg1.length + 32)] = call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 267 len floor32(arg1.length + 32) - floor32(arg1.length)]
    mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length + 32) + -(arg1.length + 32 % 32) + 331 len arg1.length + 32 % 32] = mem[ceil32(arg1.length) + -(arg1.length + 32 % 32) + floor32(arg1.length + 32) + 299 len arg1.length + 32 % 32]
    _1968 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 267 len floor32(arg1.length + 32) - floor32(arg1.length)], mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length + 32) + 299 len arg1.length + -floor32(arg1.length + 32) + 32])
    mem[arg1.length + ceil32(arg1.length) + 378 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[(2 * floor32(arg1.length)) + ceil32(arg1.length) + 410 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[(2 * arg1.length) + ceil32(arg1.length) + 378 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[(2 * floor32(arg1.length)) + arg1.length + ceil32(arg1.length) + 410 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    if sha3(mem[(2 * arg1.length) + ceil32(arg1.length) + 378 len arg1.length]) != sha3(Mask(120, 16, 'dispensationPct') >> 16):
        mem[(2 * arg1.length) + ceil32(arg1.length) + 410] = 'pDispensationPct'
        mem[(2 * arg1.length) + ceil32(arg1.length) + 378] = 16
        mem[(2 * arg1.length) + ceil32(arg1.length) + 426 len 0] = None
        mem[(2 * arg1.length) + ceil32(arg1.length) + 442 len 16] = uint128('pDispensationPct')
        mem[(2 * arg1.length) + ceil32(arg1.length) + 458 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[(2 * arg1.length) + ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 490 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
        mem[(2 * arg1.length) + ceil32(arg1.length) + 426] = arg1.length
        mem[(3 * arg1.length) + ceil32(arg1.length) + 458 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[(3 * arg1.length) + ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 490 len arg1.length % 32] = mem[(2 * arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + floor32(arg1.length) + 490 len arg1.length % 32]
        if sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[(3 * arg1.length) + ceil32(arg1.length) + floor32(arg1.length) + 458 len arg1.length % 32]) != sha3(uint128('pDispensationPct')):
            require proposals[_1968].field_1280 <= 0
            mem[(3 * arg1.length) + ceil32(arg1.length) + 490 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
            mem[(3 * arg1.length) + ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 522 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
            mem[(4 * arg1.length) + ceil32(arg1.length) + 490 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
            mem[(2 * floor32(arg1.length)) + (3 * arg1.length) + ceil32(arg1.length) + 522 len arg1.length % 32] = mem[(3 * arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + floor32(arg1.length) + 522 len arg1.length % 32]
            require params[mem[(4 * arg1.length) + ceil32(arg1.length) + 490 len arg1.length]] != arg2
            mem[(4 * arg1.length) + ceil32(arg1.length) + 824 len 0] = None
            require block.timestamp + params[mem[(4 * arg1.length) + ceil32(arg1.length) + 824 len 4]][Mask(80, 32, 'pApplyStageLen') >> 32] >= block.timestamp
            # nil
        else:
            require arg2 <= 100
            require proposals[_1968].field_1280 <= 0
            mem[(3 * arg1.length) + ceil32(arg1.length) + 490 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
            mem[(3 * arg1.length) + ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 522 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
            mem[(4 * arg1.length) + ceil32(arg1.length) + 490 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
            mem[(2 * floor32(arg1.length)) + (3 * arg1.length) + ceil32(arg1.length) + 522 len arg1.length % 32] = mem[(3 * arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + floor32(arg1.length) + 522 len arg1.length % 32]
            require params[mem[(4 * arg1.length) + ceil32(arg1.length) + 490 len arg1.length]] != arg2
            mem[(4 * arg1.length) + ceil32(arg1.length) + 824 len 0] = None
            require block.timestamp + params[mem[(4 * arg1.length) + ceil32(arg1.length) + 824 len 4]][Mask(80, 32, 'pApplyStageLen') >> 32] >= block.timestamp
            # nil
    else:
        require arg2 <= 100
        require proposals[_1968].field_1280 <= 0
        mem[(2 * arg1.length) + ceil32(arg1.length) + 410 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[(2 * arg1.length) + ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 442 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
        mem[(3 * arg1.length) + ceil32(arg1.length) + 410 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[(2 * floor32(arg1.length)) + (2 * arg1.length) + ceil32(arg1.length) + 442 len arg1.length % 32] = mem[(2 * arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + floor32(arg1.length) + 442 len arg1.length % 32]
        require params[call.data[arg1 + 36 len floor32(arg1.length)]][mem[(3 * arg1.length) + ceil32(arg1.length) + floor32(arg1.length) + 410 len arg1.length % 32]] != arg2
        mem[(3 * arg1.length) + ceil32(arg1.length) + 744 len 0] = None
        require block.timestamp + params[mem[(3 * arg1.length) + ceil32(arg1.length) + 744 len 4]][Mask(80, 32, 'pApplyStageLen') >> 32] >= block.timestamp
        mem[(3 * arg1.length) + ceil32(arg1.length) + 855 len 0] = None
        mem[(3 * arg1.length) + ceil32(arg1.length) + 966 len 0] = None
        mem[(3 * arg1.length) + ceil32(arg1.length) + 1076 len 0] = None
        require block.timestamp + params[mem[(3 * arg1.length) + ceil32(arg1.length) + 1076 len 4]][Mask(80, 32, 'pApplyStageLen') >> 32] >= block.timestamp
        require params[mem[(3 * arg1.length) + ceil32(arg1.length) + 966 len 2]][Mask(104, 16, 'pCommitStageLen') >> 16] >= 0
        require params[mem[(3 * arg1.length) + ceil32(arg1.length) + 855 len 2]][Mask(104, 16, 'pRevealStageLen') >> 16] >= 0
        require PROCESSBY >= 0
        proposals[_1968].field_0 = block.timestamp + params[mem[(3 * arg1.length) + ceil32(arg1.length) + 744 len 4]][Mask(80, 32, 'pApplyStageLen') >> 32]
        proposals[_1968].field_256 = 0
        proposals[_1968].field_512 = params[mem[ceil32(arg1.length) + 235 len 10]][Mask(8, 80, 'pMinDeposit') >> 80]
        proposals[_1968][3][].field_0 = Array(len=arg1.length, data=arg1[all])
        proposals[_1968].field_1024 = msg.sender
        proposals[_1968].field_1280 = block.timestamp + params[mem[(3 * arg1.length) + ceil32(arg1.length) + 1076 len 4]][Mask(80, 32, 'pApplyStageLen') >> 32] + params[mem[(3 * arg1.length) + ceil32(arg1.length) + 966 len 2]][Mask(104, 16, 'pCommitStageLen') >> 16] + params[mem[(3 * arg1.length) + ceil32(arg1.length) + 855 len 2]][Mask(104, 16, 'pRevealStageLen') >> 16] + PROCESSBY
        proposals[_1968].field_1536 = arg2
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), params[mem[ceil32(arg1.length) + 235 len 10]][Mask(8, 80, 'pMinDeposit') >> 80]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        # nil
}



}
