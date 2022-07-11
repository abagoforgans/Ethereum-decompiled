contract main {




// =====================  Runtime code  =====================


#
#  - processProposal(bytes32 arg1)
#  - sub_92b1f227(?)
#  - proposeReparameterization(string arg1, uint256 arg2)
#  - sub_e337fb5c(?)
#
mapping of address params;
mapping of struct challenges;
mapping of struct proposals;
address tokenAddress;
address votingAddress;
uint256 sub_bc806d0b;
address sub_276f1c41Address;
array of struct sub_0fed1274;
mapping of struct sub_b776f569;
uint8 stor60;

function sub_0fed1274(?) payable {
    require calldata.size - 4 >= 64
    require arg2 < sub_0fed1274[arg1].field_0
    require sub_0fed1274[arg1][arg2].field_512 <= 2
    return sub_0fed1274[arg1][arg2].field_0, 
           sub_0fed1274[arg1][arg2].field_256,
           sub_0fed1274[arg1][arg2].field_512,
           bool(sub_0fed1274[arg1][arg2].field_520)
}

function sub_276f1c41(?) payable {
    return sub_276f1c41Address
}

function proposals(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
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

function sub_4348f5cd(?) payable {
    require calldata.size - 4 >= 32
    return bool(sub_b776f569[address(arg1)].field_0)
}

function challenges(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return challenges[arg1].field_0, 
           challenges[arg1].field_256,
           bool(challenges[arg1].field_416),
           challenges[arg1].field_512,
           challenges[arg1].field_768
}

function tokenClaims(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return bool(challenges[arg1][4][address(arg2)].field_0)
}

function sub_b776f569(?) payable {
    require calldata.size - 4 >= 32
    require sub_b776f569[arg1].field_512 <= 2
    return sub_b776f569[arg1].field_0, 
           sub_b776f569[arg1].field_256,
           sub_b776f569[arg1].field_512,
           bool(sub_b776f569[arg1].field_520)
}

function sub_bc806d0b(?) payable {
    return sub_bc806d0b
}

function params(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return uint256(params[arg1])
}

function sub_f37c41c7(?) payable {
    require calldata.size - 4 >= 32
    return sub_0fed1274[address(arg1)].field_0
}

function token() payable {
    return tokenAddress
}

function voting() payable {
    return votingAddress
}

function _fallback() payable {
    revert
}

function propExists(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return (proposals[arg1].field_1280 > 0)
}

function renounceOwnership() payable {
    mem[192 len 0] = None
    require msg.sender == address(params[mem[192 len 6]])
    stor60 = 1
}

function initializeGovernor(address arg1) payable {
    require calldata.size - 4 >= 32
    if sub_276f1c41Address:
        revert with 0, 'already initialized'
    sub_276f1c41Address = arg1
}

function transferGovernor(address arg1) payable {
    require calldata.size - 4 >= 32
    if sub_276f1c41Address != msg.sender:
        revert with 0, 'only current gov can transfer'
    sub_276f1c41Address = arg1
}

function canBeSet(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
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
    return not bool(proposals[arg1].field_256)
}

function challengeWinnerReward(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(votingAddress)
    staticcall votingAddress.getTotalNumberOfTokensForWinningOption(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return (2 * challenges[arg1].field_512)
    require challenges[arg1].field_0 <= 2 * challenges[arg1].field_512
    return ((2 * challenges[arg1].field_512) - challenges[arg1].field_0)
}

function voterReward(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(votingAddress)
    staticcall votingAddress.getNumPassingTokens(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if challenges[arg2].field_768:
            return (0 / challenges[arg2].field_768)
    else:
        if challenges[arg2].field_0 * ext_call.return_data[0] / ext_call.return_data[0] == challenges[arg2].field_0:
            if challenges[arg2].field_768:
                return (challenges[arg2].field_0 * ext_call.return_data[0] / challenges[arg2].field_768)
    revert
}

function challengeCanBeResolved(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    idx = 576
    s = 0
    while proposals[arg1][3].length + 544 > idx:
        mem[idx + 32] = proposals[arg1][s + 3].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if proposals[arg1].field_256 <= 0:
        return (proposals[arg1].field_256 > 0)
    if challenges[stor53[arg1].field_256].field_416:
        return not bool(challenges[stor53[arg1].field_256].field_416)
    require ext_code.size(votingAddress)
    staticcall votingAddress.pollEnded(uint256 arg1) with:
            gas gas_remaining wei
           args proposals[arg1].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function get(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[ceil32(arg1.length) + 128] = arg1.length
    mem[arg1.length + ceil32(arg1.length) + 160] = uint256(params[mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]])
    return memory
      from arg1.length + ceil32(arg1.length) + 160
       len 32
}

function sub_8400657e(?) payable {
    require calldata.size - 4 >= 32
    if sub_276f1c41Address != msg.sender:
        revert with 0, 'Only governor can resolve'
    if not sub_b776f569[address(arg1)].field_520:
        revert with 0xfe08c379a0000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x63616e6e6f74207265736f6c766520616e20756e616363657074656420616374696f00,
                    mem[199 len 29]
    sub_0fed1274[address(arg1)].field_0++
    sub_0fed1274[address(arg1)][sub_0fed1274[address(arg1)].field_0].field_0 = sub_b776f569[address(arg1)].field_0
    sub_0fed1274[address(arg1)][sub_0fed1274[address(arg1)].field_0].field_256 = sub_b776f569[address(arg1)].field_256
    require sub_b776f569[address(arg1)].field_512 <= 2
    sub_0fed1274[address(arg1)][sub_0fed1274[address(arg1)].field_0].field_512 = sub_b776f569[address(arg1)].field_512
    sub_0fed1274[address(arg1)][sub_0fed1274[address(arg1)].field_0].field_520 = Mask(248, 0, bool(sub_b776f569[address(arg1)].field_520))
    sub_b776f569[address(arg1)].field_0 = 0
    sub_b776f569[address(arg1)].field_256 = 0
    sub_b776f569[address(arg1)].field_512 = 0
    emit 0x4a9ca992: address(arg1), sub_b776f569[address(arg1)].field_512, sub_b776f569[address(arg1)].field_0
}

function isPassed(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(votingAddress)
    staticcall votingAddress.0x49403183 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_276f1c41Address)
    staticcall sub_276f1c41Address.0x4317d00b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[192 len 0] = None
    if not uint256(params[mem[192 len 11]]):
        require ext_code.size(votingAddress)
        staticcall votingAddress.0x2ce35e11 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            return bool(ext_call.return_data[0])
        return (100 * ext_call.return_data[0] > 0)
    require ext_call.return_data[0] * uint256(params[mem[192 len 11]]) / uint256(params[mem[192 len 11]]) == ext_call.return_data[0]
    require ext_code.size(votingAddress)
    staticcall votingAddress.0x2ce35e11 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return bool(ext_call.return_data[0])
    return (100 * ext_call.return_data[0] > ext_call.return_data[0] * uint256(params[mem[192 len 11]]))
}

function claimReward(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require not challenges[arg1][4][msg.sender].field_0
    require bool(challenges[arg1].field_416) == 1
    require ext_code.size(votingAddress)
    staticcall votingAddress.getNumPassingTokens(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(votingAddress)
    staticcall votingAddress.getNumPassingTokens(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require challenges[arg1].field_768
        challenges[arg1].field_768 -= ext_call.return_data[0]
        challenges[arg1].field_0 -= 0 / challenges[arg1].field_768
        challenges[arg1][4][msg.sender].field_0 = 1
        emit _RewardClaimed((0 / challenges[arg1].field_768), arg1, msg.sender);
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 0 / challenges[arg1].field_768
    else:
        require challenges[arg1].field_0 * ext_call.return_data[0] / ext_call.return_data[0] == challenges[arg1].field_0
        require challenges[arg1].field_768
        challenges[arg1].field_768 -= ext_call.return_data[0]
        challenges[arg1].field_0 -= challenges[arg1].field_0 * ext_call.return_data[0] / challenges[arg1].field_768
        challenges[arg1][4][msg.sender].field_0 = 1
        emit _RewardClaimed((challenges[arg1].field_0 * ext_call.return_data[0] / challenges[arg1].field_768), arg1, msg.sender);
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, challenges[arg1].field_0 * ext_call.return_data[0] / challenges[arg1].field_768
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if return_data.size:
        if 32 != return_data.size:
            revert with 0, 'transfer fail'
        if not ext_call.return_data[0]:
            revert with 0, 'transfer fail'
}

function challengeReparameterization(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    idx = 576
    s = 0
    while proposals[arg1][3].length + 544 > idx:
        mem[idx + 32] = proposals[arg1][s + 3].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require proposals[arg1].field_1280 > 0
    require not proposals[arg1].field_256
    mem[ceil32(proposals[arg1][3].length) + 672 len 0] = None
    mem[ceil32(proposals[arg1][3].length) + 784 len 0] = None
    mem[ceil32(proposals[arg1][3].length) + 895 len 0] = None
    require ext_code.size(votingAddress)
    call votingAddress.startPoll(uint256 arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args uint256(params[mem[ceil32(stor53[arg1][3].length) + 672 len 16]]), uint256(params[mem[ceil32(stor53[arg1][3].length) + 784 len 15]]), uint256(params[mem[ceil32(stor53[arg1][3].length) + 895 len 15]])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(proposals[arg1][3].length) + 1166 len 0] = None
    require uint256(params[mem[ceil32(stor53[arg1][3].length) + 1166 len 16]]) <= 100
    if not -uint256(params[mem[ceil32(stor53[arg1][3].length) + 1166 len 16]]) + 100:
        challenges[ext_call.return_data[0]].field_0 = 0
    else:
        require (100 * proposals[arg1].field_512) - (uint256(params[mem[ceil32(stor53[arg1][3].length) + 1166 len 16]]) * proposals[arg1].field_512) / -uint256(params[mem[ceil32(stor53[arg1][3].length) + 1166 len 16]]) + 100 == proposals[arg1].field_512
        challenges[ext_call.return_data[0]].field_0 = (100 * proposals[arg1].field_512) - (uint256(params[mem[ceil32(stor53[arg1][3].length) + 1166 len 16]]) * proposals[arg1].field_512) / 100
    challenges[ext_call.return_data[0]].field_256 = msg.sender
    challenges[ext_call.return_data[0]].field_416 = 0
    challenges[ext_call.return_data[0]].field_512 = proposals[arg1].field_512
    challenges[ext_call.return_data[0]].field_768 = 0
    proposals[arg1].field_256 = ext_call.return_data[0]
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), proposals[arg1].field_512
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if return_data.size:
        if 32 != return_data.size:
            revert with 0, 'transferFrom fail'
        if not ext_call.return_data[0]:
            revert with 0, 'transferFrom fail'
    require ext_code.size(votingAddress)
    staticcall votingAddress.pollMap(uint256 arg1) with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    emit _NewChallenge(ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[32], arg1, msg.sender);
    return ext_call.return_data[0]
}

function sub_ae4d8364(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if stor60:
        revert with 0, 'Ownership was renounced'
    mem[64] = ceil32(arg1.length) + 192
    mem[ceil32(arg1.length) + 128] = 6
    mem[ceil32(arg1.length) + 160] = 'pOwner'
    mem[ceil32(arg1.length) + 224 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
    mem[ceil32(arg1.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 256 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32] = mem[ceil32(arg1.length) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 192 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32]
    if address(params[mem[ceil32(arg1.length) + 224 len 6]]) != msg.sender:
        revert with 0, 'only owner can call'
    mem[ceil32(arg1.length) + 262 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 294 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    if sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 262 len arg1.length % 32]) != sha3('xyGovernanceAction'):
        mem[arg1.length + ceil32(arg1.length) + 294 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[(2 * floor32(arg1.length)) + ceil32(arg1.length) + 326 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
        uint256(params[call.data[arg1 + 36 len floor32(arg1.length)]][mem[arg1.length + ceil32(arg1.length) + floor32(arg1.length) + 294 len arg1.length % 32]]) = arg2
    else:
        if not sub_b776f569[address(arg2)].field_0:
            revert with 0, 
                        32,
                        34,
                        0x64476f7665726e616e636520616374696f6e206d7573742062652070726f706f7365,
                        mem[arg1.length + ceil32(arg1.length) + 364 len 30]
        sub_b776f569[address(arg2)].field_520 = 1
        require 0 or sub_b776f569[address(arg2)].field_512 <= 2
        emit 0xc2d2e269: 0, sub_b776f569[address(arg2)].field_512, sub_b776f569[address(arg2)].field_0
}

function claimRewards(uint256[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _46 = mem[(32 * idx) + 128]
        require not challenges[mem[(32 * idx) + 128]][4][msg.sender].field_0
        require bool(challenges[mem[(32 * idx) + 128]].field_416) == 1
        require ext_code.size(votingAddress)
        staticcall votingAddress.getNumPassingTokens(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args msg.sender, mem[(32 * idx) + 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(votingAddress)
        staticcall votingAddress.getNumPassingTokens(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args msg.sender, mem[(32 * idx) + 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require challenges[mem[(32 * idx) + 128]].field_768
            challenges[mem[(32 * idx) + 128]].field_768 -= ext_call.return_data[0]
            challenges[mem[(32 * idx) + 128]].field_0 -= 0 / challenges[mem[(32 * idx) + 128]].field_768
            mem[0] = msg.sender
            mem[32] = sha3(mem[(32 * idx) + 128], 52) + 4
            challenges[mem[(32 * idx) + 128]][4][msg.sender].field_0 = 1
            emit _RewardClaimed((0 / challenges[mem[(32 * idx) + 128]].field_768), mem[(32 * idx) + 128], msg.sender);
            mem[(32 * arg1.length) + 128] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
            mem[(32 * arg1.length) + 132] = msg.sender
            mem[(32 * arg1.length) + 164] = 0 / challenges[_46].field_768
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, 0 / challenges[_46].field_768
        else:
            require challenges[mem[(32 * idx) + 128]].field_0 * ext_call.return_data[0] / ext_call.return_data[0] == challenges[mem[(32 * idx) + 128]].field_0
            require challenges[mem[(32 * idx) + 128]].field_768
            challenges[mem[(32 * idx) + 128]].field_768 -= ext_call.return_data[0]
            challenges[mem[(32 * idx) + 128]].field_0 -= challenges[mem[(32 * idx) + 128]].field_0 * ext_call.return_data[0] / challenges[mem[(32 * idx) + 128]].field_768
            mem[0] = msg.sender
            mem[32] = sha3(mem[(32 * idx) + 128], 52) + 4
            challenges[mem[(32 * idx) + 128]][4][msg.sender].field_0 = 1
            emit _RewardClaimed((challenges[mem[(32 * idx) + 128]].field_0 * ext_call.return_data[0] / challenges[mem[(32 * idx) + 128]].field_768), mem[(32 * idx) + 128], msg.sender);
            mem[(32 * arg1.length) + 128] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
            mem[(32 * arg1.length) + 132] = msg.sender
            mem[(32 * arg1.length) + 164] = challenges[_46].field_0 * ext_call.return_data[0] / challenges[_46].field_768
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, challenges[_46].field_0 * ext_call.return_data[0] / challenges[_46].field_768
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if return_data.size:
            if 32 != return_data.size:
                revert with 0, 'transfer fail'
            mem[0] = ext_call.return_data[0]
            if not ext_call.return_data[0]:
                revert with 0, 'transfer fail'
        idx = idx + 1
        continue 
}



}
