contract main {




// =====================  Runtime code  =====================


bool stor0; offset 256
uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 16
uint256 stor0; offset 8
uint256 pollNonce;
uint256 INITIAL_POLL_NONCE;
mapping of struct pollMap;
mapping of uint256 voteTokenBalance;
mapping of uint256 numTokens;
address tokenAddress;

function INITIAL_POLL_NONCE() payable {
    return INITIAL_POLL_NONCE
}

function voteTokenBalance(address arg1) payable {
    require calldata.size - 4 >= 32
    return voteTokenBalance[arg1]
}

function pollMap(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return pollMap[arg1].field_0, 
           pollMap[arg1].field_256,
           pollMap[arg1].field_512,
           pollMap[arg1].field_768,
           pollMap[arg1].field_1024
}

function didCommit(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2
    require pollNonce >= arg2
    return bool(uint8(pollMap[arg2][5][address(arg1)].field_0))
}

function pollNonce() payable {
    return pollNonce
}

function didReveal(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not arg2:
        revert with 0, 'no poll exist'
    if pollNonce < arg2:
        revert with 0, 'no poll exist'
    return bool(uint8(pollMap[arg2][6][address(arg1)].field_0))
}

function getNumTokens(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    return numTokens[('map', ('param', 'arg1'), ('param', 'arg2'))]['numTokens']
}

function getCommitHash(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    return numTokens[('map', ('param', 'arg1'), ('param', 'arg2'))]['commitHash']
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function isExpired(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return (block.timestamp > arg1)
}

function attrUUID(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    return sha3(arg1, arg2)
}

function pollExists(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        return bool(arg1)
    return pollNonce >= arg1
}

function commitPeriodActive(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1
    require pollNonce >= arg1
    return block.timestamp <= pollMap[arg1].field_0
}

function pollEnded(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0, 'poll does not exist'
    if pollNonce < arg1:
        revert with 0, 'poll does not exist'
    return (block.timestamp > pollMap[arg1].field_256)
}

function sub_2ce35e11(?) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0, 'poll does not exist'
    if pollNonce < arg1:
        revert with 0, 'poll does not exist'
    if block.timestamp <= pollMap[arg1].field_256:
        revert with 0, 'Poll still open'
    return (pollMap[arg1].field_768 + pollMap[arg1].field_1024)
}

function revealPeriodActive(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0, 'non existent poll'
    if pollNonce < arg1:
        revert with 0, 'non existent poll'
    if block.timestamp > pollMap[arg1].field_256:
        return block.timestamp <= pollMap[arg1].field_256
    require arg1
    require pollNonce >= arg1
    return (block.timestamp > pollMap[arg1].field_0)
}

function isPassed(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0, 'poll does not exist'
    if pollNonce < arg1:
        revert with 0, 'poll does not exist'
    if block.timestamp <= pollMap[arg1].field_256:
        revert with 0, 'Poll still open'
    return (100 * pollMap[arg1].field_768 > (pollMap[arg1].field_768 * pollMap[arg1].field_512) + (pollMap[arg1].field_1024 * pollMap[arg1].field_512))
}

function getLastNode(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(0xe9b3378c206c93d8811e04bed749784cedd23e4b)
    delegate 0xe9b3378c206c93d8811e04bed749784cedd23e4b.0x30fe0a0a with:
         gas gas_remaining wei
        args sha3(address(arg1), 55), 0
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function validPosition(uint256 arg1, uint256 arg2, address arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    if arg4 < numTokens[('map', ('param', 'arg3'), ('param', 'arg1'))]['numTokens']:
        return arg4 >= numTokens[('map', ('param', 'arg3'), ('param', 'arg1'))]['numTokens']
    if arg4 <= numTokens[('map', ('param', 'arg3'), ('param', 'arg2'))]['numTokens']:
        return arg4 <= numTokens[('map', ('param', 'arg3'), ('param', 'arg2'))]['numTokens']
    return not bool(arg2)
}

function getLockedTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(0xe9b3378c206c93d8811e04bed749784cedd23e4b)
    delegate 0xe9b3378c206c93d8811e04bed749784cedd23e4b.0x30fe0a0a with:
         gas gas_remaining wei
        args sha3(address(arg1), 55), 0
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return numTokens[('map', ('param', 'arg1'), ('delegate.return_data', 0, 32))]['numTokens']
}

function startPoll(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    pollNonce++
    require arg2 + block.timestamp >= block.timestamp
    require arg3 >= 0
    pollMap[stor51].field_0 = arg2 + block.timestamp
    pollMap[stor51].field_256 = arg3 + arg2 + block.timestamp
    pollMap[stor51].field_512 = arg1
    pollMap[stor51].field_768 = 0
    pollMap[stor51].field_1024 = 0
    emit _PollCreated(arg1, arg2 + block.timestamp, arg3 + arg2 + block.timestamp, pollNonce, msg.sender);
    return pollNonce
}

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    if not uint8(stor0.field_8):
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x30436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                            mem[210 len 18]
    tokenAddress = arg1
    pollNonce = INITIAL_POLL_NONCE
    uint8(stor0.field_0) = 1
    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
    Mask(240, 0, stor0.field_16) = 0
    stor0.field_256 % 1 = 0
    stor0.field_256 % 1 = 0
}

function getTotalNumberOfTokensForWinningOption(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0, 'poll does not exist'
    if pollNonce < arg1:
        revert with 0, 'poll does not exist'
    if block.timestamp <= pollMap[arg1].field_256:
        revert with 0, 'Poll still open'
    if not arg1:
        revert with 0, 'poll does not exist'
    if pollNonce < arg1:
        revert with 0, 'poll does not exist'
    if block.timestamp <= pollMap[arg1].field_256:
        revert with 0, 'Poll still open'
    if 100 * pollMap[arg1].field_768 <= (pollMap[arg1].field_768 * pollMap[arg1].field_512) + (pollMap[arg1].field_1024 * pollMap[arg1].field_512):
        return pollMap[arg1].field_1024
    return pollMap[arg1].field_768
}

function rescueTokens(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if block.timestamp <= pollMap[arg1].field_256:
        revert with 0, 'Not Expired'
    require ext_code.size(0xe9b3378c206c93d8811e04bed749784cedd23e4b)
    delegate 0xe9b3378c206c93d8811e04bed749784cedd23e4b.0x366a5ba2 with:
         gas gas_remaining wei
        args sha3(msg.sender, 55), arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not delegate.return_data[0]:
        revert with 0, 'Not in dll'
    require ext_code.size(0xe9b3378c206c93d8811e04bed749784cedd23e4b)
    delegate 0xe9b3378c206c93d8811e04bed749784cedd23e4b.0x6d900ed0 with:
         gas gas_remaining wei
        args sha3(msg.sender, 55), arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    emit _TokensRescued(arg1, msg.sender);
}

function requestVotingRights(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        revert with 0, 'Not enough balance'
    voteTokenBalance[msg.sender] += arg1
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if return_data.size:
        if 32 != return_data.size:
            revert with 0, 'transferFrom fail'
        if not ext_call.return_data[0]:
            revert with 0, 'transferFrom fail'
    emit _VotingRightsGranted(arg1, msg.sender);
}

function withdrawVotingRights(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(0xe9b3378c206c93d8811e04bed749784cedd23e4b)
    delegate 0xe9b3378c206c93d8811e04bed749784cedd23e4b.0x30fe0a0a with:
         gas gas_remaining wei
        args sha3(address(msg.sender), 55), 0
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require numTokens[('map', 'msg.sender', ('delegate.return_data', 0, 32))]['numTokens'] <= voteTokenBalance[msg.sender]
    require voteTokenBalance[msg.sender] - numTokens[('map', 'msg.sender', ('delegate.return_data', 0, 32))]['numTokens'] >= arg1
    voteTokenBalance[msg.sender] -= arg1
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if return_data.size:
        if 32 != return_data.size:
            revert with 0, 'transfer fail'
        if not ext_call.return_data[0]:
            revert with 0, 'transfer fail'
    emit _VotingRightsWithdrawn(arg1, msg.sender);
}

function getNumPassingTokens(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not arg2:
        revert with 0, 'poll does not exist'
    if pollNonce < arg2:
        revert with 0, 'poll does not exist'
    if block.timestamp <= pollMap[arg2].field_256:
        revert with 0, 'Poll not ended'
    if not uint8(pollMap[arg2][6][address(arg1)].field_0):
        revert with 0, 'not revealed'
    if not arg2:
        revert with 0, 'poll does not exist'
    if pollNonce < arg2:
        revert with 0, 'poll does not exist'
    if block.timestamp <= pollMap[arg2].field_256:
        revert with 0, 'Poll still open'
    if 100 * pollMap[arg2].field_768 > (pollMap[arg2].field_768 * pollMap[arg2].field_512) + (pollMap[arg2].field_1024 * pollMap[arg2].field_512):
        if pollMap[arg2][7][address(arg1)].field_0 != 1:
            revert with 0, 32, 39, 0x64566f7465722072657665616c65642c20627574206e6f7420696e20746865206d616a6f726974, mem[523 len 25]
    else:
        if pollMap[arg2][7][address(arg1)].field_0 != 0:
            revert with 0, 32, 39, 0x64566f7465722072657665616c65642c20627574206e6f7420696e20746865206d616a6f726974, mem[523 len 25]
    return numTokens[('map', ('param', 'arg1'), ('param', 'arg2'))]['numTokens']
}

function revealVote(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not arg1:
        revert with 0, 'non existent poll'
    if pollNonce < arg1:
        revert with 0, 'non existent poll'
    if block.timestamp > pollMap[arg1].field_256:
        revert with 0, 'not active reveal period'
    require arg1
    require pollNonce >= arg1
    if block.timestamp <= pollMap[arg1].field_0:
        revert with 0, 'not active reveal period'
    if not uint8(pollMap[arg1][5][msg.sender].field_0):
        revert with 0, 'no commits by sender'
    if uint8(pollMap[arg1][6][msg.sender].field_0):
        revert with 0, 'no reveals by sender'
    if sha3(arg2, arg3) != numTokens[('map', 'msg.sender', ('param', 'arg1'))]['commitHash']:
        revert with 0, 'commit hash mismatch'
    if arg2 != 1:
        pollMap[arg1].field_1024 += numTokens[('map', 'msg.sender', ('param', 'arg1'))]['numTokens']
    else:
        pollMap[arg1].field_768 += numTokens[('map', 'msg.sender', ('param', 'arg1'))]['numTokens']
    require ext_code.size(0xe9b3378c206c93d8811e04bed749784cedd23e4b)
    delegate 0xe9b3378c206c93d8811e04bed749784cedd23e4b.0x6d900ed0 with:
         gas gas_remaining wei
        args sha3(msg.sender, 55), arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    uint8(pollMap[arg1][6][msg.sender].field_0) = 1
    pollMap[arg1][7][msg.sender].field_0 = arg2
    emit _VoteRevealed(numTokens[('map', 'msg.sender', ('param', 'arg1'))]['numTokens'], pollMap[arg1].field_768, pollMap[arg1].field_1024, arg3, arg1, arg2, msg.sender);
}

function rescueTokensInMultiplePolls(uint256[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _21 = mem[(32 * idx) + 128]
        if block.timestamp <= pollMap[mem[(32 * idx) + 128]].field_256:
            revert with 0, 'Not Expired'
        require ext_code.size(0xe9b3378c206c93d8811e04bed749784cedd23e4b)
        delegate 0xe9b3378c206c93d8811e04bed749784cedd23e4b.0x366a5ba2 with:
             gas gas_remaining wei
            args sha3(msg.sender, 55), mem[(32 * idx) + 128]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not delegate.return_data[0]:
            revert with 0, 'Not in dll'
        mem[0] = msg.sender
        mem[32] = 55
        mem[(32 * arg1.length) + 128] = 0x6d900ed000000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + 132] = sha3(msg.sender, 55)
        mem[(32 * arg1.length) + 164] = _21
        require ext_code.size(0xe9b3378c206c93d8811e04bed749784cedd23e4b)
        delegate 0xe9b3378c206c93d8811e04bed749784cedd23e4b.0x6d900ed0 with:
             gas gas_remaining wei
            args sha3(msg.sender, 55), _21
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        emit _TokensRescued(_21, msg.sender);
        idx = idx + 1
        continue 
}

function getInsertPointForNumTokens(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(0xe9b3378c206c93d8811e04bed749784cedd23e4b)
    delegate 0xe9b3378c206c93d8811e04bed749784cedd23e4b.0x30fe0a0a with:
         gas gas_remaining wei
        args sha3(address(arg1), 55), 0
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[128] = address(arg1)
    mem[148] = delegate.return_data[0]
    mem[96] = 52
    mem[180] = 9
    mem[212] = 'numTokens'
    mem[276] = sha3(arg1, delegate.return_data[0])
    mem[308 len 0] = None
    mem[308 len 9] = 'numTokens'
    mem[244] = 41
    mem[64] = 317
    mem[0] = sha3(sha3(arg1, delegate.return_data[0]), 'numTokens')
    mem[32] = 56
    s = stor[sha3(mem[0 len 64])]
    idx = delegate.return_data[0]
    while idx:
        _89 = mem[64]
        mem[mem[64] + 32] = address(arg1)
        mem[mem[64] + 52] = idx
        _90 = mem[64]
        mem[mem[64]] = 52
        mem[64] = mem[64] + 84
        _92 = sha3(mem[_90 + 32 len mem[_90]])
        mem[64] = _89 + 148
        mem[_89 + 84] = 9
        mem[_89 + 116] = 'numTokens'
        mem[_89 + 180] = _92
        t = _89 + 116
        u = _89 + 212
        s = 9
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_89 + 212] = mem[_89 + 221 len 23] or numTokens
        _119 = mem[64]
        mem[mem[64]] = _89 + -mem[64] + 189
        mem[64] = _89 + 221
        mem[0] = sha3(mem[_119 + 32 len mem[_119]])
        _122 = sha3(mem[0], 56)
        if numTokens[mem[0]] <= arg2:
            if idx != arg3:
                return idx
            require ext_code.size(0xe9b3378c206c93d8811e04bed749784cedd23e4b)
            delegate 0xe9b3378c206c93d8811e04bed749784cedd23e4b.0x30fe0a0a with:
                 gas gas_remaining wei
                args sha3(address(arg1), 55), idx
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            return delegate.return_data[0]
        mem[0] = arg1
        mem[32] = 55
        mem[_89 + 225] = sha3(address(arg1), 55)
        mem[_89 + 257] = idx
        require ext_code.size(0xe9b3378c206c93d8811e04bed749784cedd23e4b)
        delegate 0xe9b3378c206c93d8811e04bed749784cedd23e4b.0x30fe0a0a with:
             gas gas_remaining wei
            args sha3(address(arg1), 55), idx
        mem[_89 + 221] = delegate.return_data[0]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        s = stor[_122]
        idx = delegate.return_data[0]
        continue 
    return idx
}

function commitVote(uint256 arg1, bytes32 arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1
    require pollNonce >= arg1
    if block.timestamp > pollMap[arg1].field_0:
        revert with 0, 'commit period not active'
    if arg3 > voteTokenBalance[msg.sender]:
        require voteTokenBalance[msg.sender] <= arg3
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg3 - voteTokenBalance[msg.sender]:
            revert with 0, 'Not enough balance'
        voteTokenBalance[msg.sender] = arg3
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg3 - voteTokenBalance[msg.sender]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if return_data.size:
            if 32 != return_data.size:
                revert with 0, 'transferFrom fail'
            if not ext_call.return_data[0]:
                revert with 0, 'transferFrom fail'
        emit _VotingRightsGranted((arg3 - voteTokenBalance[msg.sender]), msg.sender);
    if arg3 > voteTokenBalance[msg.sender]:
        revert with 0, 'not enough votes'
    if not arg1:
        revert with 0, 'no zero pollid'
    if not arg2:
        revert with 0, 'no secret 0'
    require ext_code.size(0xe9b3378c206c93d8811e04bed749784cedd23e4b)
    if arg4:
        delegate 0xe9b3378c206c93d8811e04bed749784cedd23e4b.0x366a5ba2 with:
             gas gas_remaining wei
            args sha3(msg.sender, 55), arg4
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not delegate.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        39,
                        0xfe70726576696f757320706f6c6c20696420646f6573206e6f74206578697374206f7220697320,
                        mem[203 len 25]
    delegate 0xe9b3378c206c93d8811e04bed749784cedd23e4b.0x7d29ac9 with:
         gas gas_remaining wei
        args sha3(msg.sender, 55), arg4
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if delegate.return_data[0] == arg1:
        require ext_code.size(0xe9b3378c206c93d8811e04bed749784cedd23e4b)
        delegate 0xe9b3378c206c93d8811e04bed749784cedd23e4b.0x7d29ac9 with:
             gas gas_remaining wei
            args sha3(msg.sender, 55), arg1
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    if arg3 < numTokens[('map', 'msg.sender', ('param', 'arg4'))]['numTokens']:
        revert with 0, 'invalid position'
    if arg3 <= numTokens[('map', 'msg.sender', ('delegate.return_data', 0, 32))]['numTokens']:
        if arg3 > numTokens[('map', 'msg.sender', ('delegate.return_data', 0, 32))]['numTokens']:
            revert with 0, 'invalid position'
    else:
        if delegate.return_data[0]:
            revert with 0, 'invalid position'
    require ext_code.size(0xe9b3378c206c93d8811e04bed749784cedd23e4b)
    delegate 0xe9b3378c206c93d8811e04bed749784cedd23e4b.0x9735c51b with:
         gas gas_remaining wei
        args sha3(msg.sender, 55), arg4, arg1, delegate.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    numTokens[('map', 'msg.sender', ('param', 'arg1'))]['numTokens'] = arg3
    numTokens[('map', 'msg.sender', ('param', 'arg1'))]['commitHash'] = arg2
    uint8(pollMap[arg1][5][msg.sender].field_0) = 1
    emit _VoteCommitted(arg3, arg1, msg.sender);
}

function revealVotes(uint256[] arg1, uint256[] arg2, uint256[] arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = 0
    require arg1.length == arg2.length
    require arg1.length == arg3.length
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _87 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg1.length) + 128]
        _89 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        _91 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
        if not mem[(32 * idx) + 128]:
            revert with 0, 'non existent poll'
        if pollNonce < mem[(32 * idx) + 128]:
            revert with 0, 'non existent poll'
        if block.timestamp > pollMap[mem[(32 * idx) + 128]].field_256:
            revert with 0, 'not active reveal period'
        require mem[(32 * idx) + 128]
        require pollNonce >= mem[(32 * idx) + 128]
        if block.timestamp <= pollMap[mem[(32 * idx) + 128]].field_0:
            revert with 0, 'not active reveal period'
        if not uint8(pollMap[mem[(32 * idx) + 128]][5][msg.sender].field_0):
            revert with 0, 'no commits by sender'
        mem[0] = msg.sender
        mem[32] = sha3(mem[(32 * idx) + 128], 53) + 6
        if uint8(pollMap[mem[(32 * idx) + 128]][6][msg.sender].field_0):
            revert with 0, 'no reveals by sender'
        _110 = mem[64]
        mem[mem[64] + 32] = address(msg.sender)
        mem[mem[64] + 52] = _87
        _111 = mem[64]
        mem[mem[64]] = 52
        mem[64] = mem[64] + 84
        _113 = sha3(mem[_111 + 32 len mem[_111]])
        mem[64] = _110 + 148
        mem[_110 + 84] = 10
        mem[_110 + 116] = 'commitHash'
        mem[_110 + 180] = _113
        t = _110 + 116
        u = _110 + 212
        s = 10
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_110 + 212] = mem[_110 + 222 len 22] or commitHash
        _164 = mem[64]
        mem[mem[64]] = _110 + -mem[64] + 190
        mem[64] = _110 + 222
        mem[0] = sha3(mem[_164 + 32 len mem[_164]])
        mem[32] = 56
        mem[_110 + 254] = _89
        mem[_110 + 286] = _91
        mem[_110 + 222] = 64
        if sha3(_89, _91) != numTokens[mem[0]]:
            revert with 0, 'commit hash mismatch'
        mem[_110 + 350] = address(msg.sender)
        mem[_110 + 370] = _87
        mem[_110 + 318] = 52
        mem[64] = _110 + 466
        mem[_110 + 402] = 9
        mem[_110 + 434] = 'numTokens'
        mem[_110 + 498] = sha3(msg.sender, _87)
        t = _110 + 434
        u = _110 + 530
        s = 9
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_110 + 530] = mem[_110 + 539 len 23] or numTokens
        _209 = mem[64]
        mem[mem[64]] = _110 + -mem[64] + 507
        mem[64] = _110 + 539
        mem[0] = sha3(mem[_209 + 32 len mem[_209]])
        _212 = sha3(mem[0], 56)
        if _89 != 1:
            pollMap[_87].field_1024 += numTokens[mem[0]]
        else:
            pollMap[_87].field_768 += numTokens[mem[0]]
        require ext_code.size(0xe9b3378c206c93d8811e04bed749784cedd23e4b)
        delegate 0xe9b3378c206c93d8811e04bed749784cedd23e4b.0x6d900ed0 with:
             gas gas_remaining wei
            args sha3(msg.sender, 55), _87
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        uint8(pollMap[_87][6][msg.sender].field_0) = 1
        pollMap[_87][7][msg.sender].field_0 = _89
        mem[0] = _87
        mem[32] = 53
        mem[_110 + 539] = stor[_212]
        mem[_110 + 571] = pollMap[_87].field_768
        mem[_110 + 603] = pollMap[_87].field_1024
        mem[_110 + 635] = _91
        emit _VoteRevealed(stor[_212], pollMap[_87].field_768, pollMap[_87].field_1024, _91, _87, _89, msg.sender);
        idx = idx + 1
        continue 
}

function commitVotes(uint256[] arg1, bytes32[] arg2, uint256[] arg3, uint256[] arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = arg4.length
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = 0
    require arg1.length == arg2.length
    require arg1.length == arg3.length
    require arg1.length == arg4.length
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _1323 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg1.length) + 128]
        _1325 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        _1327 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
        _1329 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
        require mem[(32 * idx) + 128]
        require pollNonce >= mem[(32 * idx) + 128]
        if block.timestamp > pollMap[mem[(32 * idx) + 128]].field_0:
            revert with 0, 'commit period not active'
        if mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] <= voteTokenBalance[msg.sender]:
            if mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] > voteTokenBalance[msg.sender]:
                revert with 0, 'not enough votes'
            if not mem[(32 * idx) + 128]:
                revert with 0, 'no zero pollid'
            if not mem[(32 * idx) + (32 * arg1.length) + 160]:
                revert with 0, 'no secret 0'
            if not mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]:
                mem[0] = msg.sender
                mem[32] = 55
                require ext_code.size(0xe9b3378c206c93d8811e04bed749784cedd23e4b)
                delegate 0xe9b3378c206c93d8811e04bed749784cedd23e4b.0x7d29ac9 with:
                     gas gas_remaining wei
                    args sha3(msg.sender, 55), mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if delegate.return_data[0] != mem[(32 * idx) + 128]:
                    _1371 = mem[64]
                    mem[mem[64] + 32] = address(msg.sender)
                    mem[mem[64] + 52] = _1329
                    _1372 = mem[64]
                    mem[mem[64]] = 52
                    mem[64] = mem[64] + 84
                    _1374 = sha3(mem[_1372 + 32 len mem[_1372]])
                    mem[64] = _1371 + 148
                    mem[_1371 + 84] = 9
                    mem[_1371 + 116] = 'numTokens'
                    mem[_1371 + 180] = _1374
                    t = _1371 + 116
                    u = _1371 + 212
                    s = 9
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[_1371 + 212] = mem[_1371 + 221 len 23] or numTokens
                    _2633 = mem[64]
                    mem[mem[64]] = _1371 + -mem[64] + 189
                    mem[64] = _1371 + 221
                    mem[0] = sha3(mem[_2633 + 32 len mem[_2633]])
                    mem[32] = 56
                    _2636 = sha3(mem[0], 56)
                    mem[_1371 + 253] = address(msg.sender)
                    mem[_1371 + 273] = delegate.return_data[0]
                    mem[_1371 + 221] = 52
                    mem[64] = _1371 + 369
                    mem[_1371 + 305] = 9
                    mem[_1371 + 337] = 'numTokens'
                    mem[_1371 + 401] = sha3(msg.sender, delegate.return_data[0])
                    t = _1371 + 337
                    u = _1371 + 433
                    s = 9
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[_1371 + 433] = mem[_1371 + 442 len 23] or numTokens
                    _3725 = mem[64]
                    mem[mem[64]] = _1371 + -mem[64] + 410
                    mem[64] = _1371 + 442
                    mem[0] = sha3(mem[_3725 + 32 len mem[_3725]])
                    if _1327 < stor[_2636]:
                        revert with 0, 'invalid position'
                    if _1327 <= numTokens[mem[0]]:
                        if _1327 > numTokens[mem[0]]:
                            revert with 0, 'invalid position'
                        mem[0] = msg.sender
                        mem[32] = 55
                        require ext_code.size(0xe9b3378c206c93d8811e04bed749784cedd23e4b)
                        delegate 0xe9b3378c206c93d8811e04bed749784cedd23e4b.0x9735c51b with:
                             gas gas_remaining wei
                            args sha3(msg.sender, 55), _1329, _1323, delegate.return_data[0]
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_1371 + 474] = address(msg.sender)
                        mem[_1371 + 494] = _1323
                        mem[_1371 + 442] = 52
                        mem[64] = _1371 + 590
                        mem[_1371 + 526] = 9
                        mem[_1371 + 558] = 'numTokens'
                        mem[_1371 + 622] = sha3(msg.sender, _1323)
                        t = _1371 + 558
                        u = _1371 + 654
                        s = 9
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_1371 + 654] = mem[_1371 + 663 len 23] or numTokens
                        _4649 = mem[64]
                        mem[mem[64]] = _1371 + -mem[64] + 631
                        mem[64] = _1371 + 663
                        mem[0] = sha3(mem[_4649 + 32 len mem[_4649]])
                        mem[32] = 56
                        numTokens[mem[0]] = _1327
                        mem[64] = _1371 + 727
                        mem[_1371 + 663] = 10
                        mem[_1371 + 695] = 'commitHash'
                        mem[_1371 + 759] = sha3(msg.sender, _1323)
                        t = _1371 + 695
                        u = _1371 + 791
                        s = 10
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_1371 + 791] = mem[_1371 + 801 len 22] or commitHash
                        _5153 = mem[64]
                        mem[mem[64]] = _1371 + -mem[64] + 769
                        mem[64] = _1371 + 801
                        mem[0] = sha3(mem[_5153 + 32 len mem[_5153]])
                    else:
                        if delegate.return_data[0]:
                            revert with 0, 'invalid position'
                        mem[0] = msg.sender
                        mem[32] = 55
                        require ext_code.size(0xe9b3378c206c93d8811e04bed749784cedd23e4b)
                        delegate 0xe9b3378c206c93d8811e04bed749784cedd23e4b.0x9735c51b with:
                             gas gas_remaining wei
                            args sha3(msg.sender, 55), _1329, _1323, delegate.return_data[0]
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_1371 + 474] = address(msg.sender)
                        mem[_1371 + 494] = _1323
                        mem[_1371 + 442] = 52
                        mem[64] = _1371 + 590
                        mem[_1371 + 526] = 9
                        mem[_1371 + 558] = 'numTokens'
                        mem[_1371 + 622] = sha3(msg.sender, _1323)
                        t = _1371 + 558
                        u = _1371 + 654
                        s = 9
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_1371 + 654] = mem[_1371 + 663 len 23] or numTokens
                        _4656 = mem[64]
                        mem[mem[64]] = _1371 + -mem[64] + 631
                        mem[64] = _1371 + 663
                        mem[0] = sha3(mem[_4656 + 32 len mem[_4656]])
                        mem[32] = 56
                        numTokens[mem[0]] = _1327
                        mem[64] = _1371 + 727
                        mem[_1371 + 663] = 10
                        mem[_1371 + 695] = 'commitHash'
                        mem[_1371 + 759] = sha3(msg.sender, _1323)
                        t = _1371 + 695
                        u = _1371 + 791
                        s = 10
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_1371 + 791] = mem[_1371 + 801 len 22] or commitHash
                        _5160 = mem[64]
                        mem[mem[64]] = _1371 + -mem[64] + 769
                        mem[64] = _1371 + 801
                        mem[0] = sha3(mem[_5160 + 32 len mem[_5160]])
                    numTokens[mem[0]] = _1325
                    mem[0] = msg.sender
                    mem[32] = sha3(_1323, 53) + 5
                    uint8(pollMap[_1323][5][msg.sender].field_0) = 1
                    mem[_1371 + 801] = _1327
                else:
                    mem[0] = msg.sender
                    mem[32] = 55
                    require ext_code.size(0xe9b3378c206c93d8811e04bed749784cedd23e4b)
                    delegate 0xe9b3378c206c93d8811e04bed749784cedd23e4b.0x7d29ac9 with:
                         gas gas_remaining wei
                        args sha3(msg.sender, 55), mem[(32 * idx) + 128]
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _1391 = mem[64]
                    mem[mem[64] + 32] = address(msg.sender)
                    mem[mem[64] + 52] = _1329
                    _1392 = mem[64]
                    mem[mem[64]] = 52
                    mem[64] = mem[64] + 84
                    _1394 = sha3(mem[_1392 + 32 len mem[_1392]])
                    mem[64] = _1391 + 148
                    mem[_1391 + 84] = 9
                    mem[_1391 + 116] = 'numTokens'
                    mem[_1391 + 180] = _1394
                    t = _1391 + 116
                    u = _1391 + 212
                    s = 9
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[_1391 + 212] = mem[_1391 + 221 len 23] or numTokens
                    _2640 = mem[64]
                    mem[mem[64]] = _1391 + -mem[64] + 189
                    mem[64] = _1391 + 221
                    mem[0] = sha3(mem[_2640 + 32 len mem[_2640]])
                    mem[32] = 56
                    _2643 = sha3(mem[0], 56)
                    mem[_1391 + 253] = address(msg.sender)
                    mem[_1391 + 273] = delegate.return_data[0]
                    mem[_1391 + 221] = 52
                    mem[64] = _1391 + 369
                    mem[_1391 + 305] = 9
                    mem[_1391 + 337] = 'numTokens'
                    mem[_1391 + 401] = sha3(msg.sender, delegate.return_data[0])
                    t = _1391 + 337
                    u = _1391 + 433
                    s = 9
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[_1391 + 433] = mem[_1391 + 442 len 23] or numTokens
                    _3732 = mem[64]
                    mem[mem[64]] = _1391 + -mem[64] + 410
                    mem[64] = _1391 + 442
                    mem[0] = sha3(mem[_3732 + 32 len mem[_3732]])
                    if _1327 < stor[_2643]:
                        revert with 0, 'invalid position'
                    if _1327 <= numTokens[mem[0]]:
                        if _1327 > numTokens[mem[0]]:
                            revert with 0, 'invalid position'
                        mem[0] = msg.sender
                        mem[32] = 55
                        require ext_code.size(0xe9b3378c206c93d8811e04bed749784cedd23e4b)
                        delegate 0xe9b3378c206c93d8811e04bed749784cedd23e4b.0x9735c51b with:
                             gas gas_remaining wei
                            args sha3(msg.sender, 55), _1329, _1323, delegate.return_data[0]
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_1391 + 474] = address(msg.sender)
                        mem[_1391 + 494] = _1323
                        mem[_1391 + 442] = 52
                        mem[64] = _1391 + 590
                        mem[_1391 + 526] = 9
                        mem[_1391 + 558] = 'numTokens'
                        mem[_1391 + 622] = sha3(msg.sender, _1323)
                        t = _1391 + 558
                        u = _1391 + 654
                        s = 9
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_1391 + 654] = mem[_1391 + 663 len 23] or numTokens
                        _4663 = mem[64]
                        mem[mem[64]] = _1391 + -mem[64] + 631
                        mem[64] = _1391 + 663
                        mem[0] = sha3(mem[_4663 + 32 len mem[_4663]])
                        mem[32] = 56
                        numTokens[mem[0]] = _1327
                        mem[64] = _1391 + 727
                        mem[_1391 + 663] = 10
                        mem[_1391 + 695] = 'commitHash'
                        mem[_1391 + 759] = sha3(msg.sender, _1323)
                        t = _1391 + 695
                        u = _1391 + 791
                        s = 10
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_1391 + 791] = mem[_1391 + 801 len 22] or commitHash
                        _5167 = mem[64]
                        mem[mem[64]] = _1391 + -mem[64] + 769
                        mem[64] = _1391 + 801
                        mem[0] = sha3(mem[_5167 + 32 len mem[_5167]])
                    else:
                        if delegate.return_data[0]:
                            revert with 0, 'invalid position'
                        mem[0] = msg.sender
                        mem[32] = 55
                        require ext_code.size(0xe9b3378c206c93d8811e04bed749784cedd23e4b)
                        delegate 0xe9b3378c206c93d8811e04bed749784cedd23e4b.0x9735c51b with:
                             gas gas_remaining wei
                            args sha3(msg.sender, 55), _1329, _1323, delegate.return_data[0]
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_1391 + 474] = address(msg.sender)
                        mem[_1391 + 494] = _1323
                        mem[_1391 + 442] = 52
                        mem[64] = _1391 + 590
                        mem[_1391 + 526] = 9
                        mem[_1391 + 558] = 'numTokens'
                        mem[_1391 + 622] = sha3(msg.sender, _1323)
                        t = _1391 + 558
                        u = _1391 + 654
                        s = 9
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_1391 + 654] = mem[_1391 + 663 len 23] or numTokens
                        _4670 = mem[64]
                        mem[mem[64]] = _1391 + -mem[64] + 631
                        mem[64] = _1391 + 663
                        mem[0] = sha3(mem[_4670 + 32 len mem[_4670]])
                        mem[32] = 56
                        numTokens[mem[0]] = _1327
                        mem[64] = _1391 + 727
                        mem[_1391 + 663] = 10
                        mem[_1391 + 695] = 'commitHash'
                        mem[_1391 + 759] = sha3(msg.sender, _1323)
                        t = _1391 + 695
                        u = _1391 + 791
                        s = 10
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_1391 + 791] = mem[_1391 + 801 len 22] or commitHash
                        _5174 = mem[64]
                        mem[mem[64]] = _1391 + -mem[64] + 769
                        mem[64] = _1391 + 801
                        mem[0] = sha3(mem[_5174 + 32 len mem[_5174]])
                    numTokens[mem[0]] = _1325
                    mem[0] = msg.sender
                    mem[32] = sha3(_1323, 53) + 5
                    uint8(pollMap[_1323][5][msg.sender].field_0) = 1
                    mem[_1391 + 801] = _1327
            else:
                require ext_code.size(0xe9b3378c206c93d8811e04bed749784cedd23e4b)
                delegate 0xe9b3378c206c93d8811e04bed749784cedd23e4b.0x366a5ba2 with:
                     gas gas_remaining wei
                    args sha3(msg.sender, 55), mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not delegate.return_data[0]:
                    revert with 0, 32, 39, 0xfe70726576696f757320706f6c6c20696420646f6573206e6f74206578697374206f7220697320, mem[mem[64] + 107 len 25]
                mem[0] = msg.sender
                mem[32] = 55
                require ext_code.size(0xe9b3378c206c93d8811e04bed749784cedd23e4b)
                delegate 0xe9b3378c206c93d8811e04bed749784cedd23e4b.0x7d29ac9 with:
                     gas gas_remaining wei
                    args sha3(msg.sender, 55), mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if delegate.return_data[0] != mem[(32 * idx) + 128]:
                    _1395 = mem[64]
                    mem[mem[64] + 32] = address(msg.sender)
                    mem[mem[64] + 52] = _1329
                    _1396 = mem[64]
                    mem[mem[64]] = 52
                    mem[64] = mem[64] + 84
                    _1398 = sha3(mem[_1396 + 32 len mem[_1396]])
                    mem[64] = _1395 + 148
                    mem[_1395 + 84] = 9
                    mem[_1395 + 116] = 'numTokens'
                    mem[_1395 + 180] = _1398
                    t = _1395 + 116
                    u = _1395 + 212
                    s = 9
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[_1395 + 212] = mem[_1395 + 221 len 23] or numTokens
                    _2647 = mem[64]
                    mem[mem[64]] = _1395 + -mem[64] + 189
                    mem[64] = _1395 + 221
                    mem[0] = sha3(mem[_2647 + 32 len mem[_2647]])
                    mem[32] = 56
                    _2650 = sha3(mem[0], 56)
                    mem[_1395 + 253] = address(msg.sender)
                    mem[_1395 + 273] = delegate.return_data[0]
                    mem[_1395 + 221] = 52
                    mem[64] = _1395 + 369
                    mem[_1395 + 305] = 9
                    mem[_1395 + 337] = 'numTokens'
                    mem[_1395 + 401] = sha3(msg.sender, delegate.return_data[0])
                    t = _1395 + 337
                    u = _1395 + 433
                    s = 9
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[_1395 + 433] = mem[_1395 + 442 len 23] or numTokens
                    _3739 = mem[64]
                    mem[mem[64]] = _1395 + -mem[64] + 410
                    mem[64] = _1395 + 442
                    mem[0] = sha3(mem[_3739 + 32 len mem[_3739]])
                    if _1327 < stor[_2650]:
                        revert with 0, 'invalid position'
                    if _1327 <= numTokens[mem[0]]:
                        if _1327 > numTokens[mem[0]]:
                            revert with 0, 'invalid position'
                        mem[0] = msg.sender
                        mem[32] = 55
                        require ext_code.size(0xe9b3378c206c93d8811e04bed749784cedd23e4b)
                        delegate 0xe9b3378c206c93d8811e04bed749784cedd23e4b.0x9735c51b with:
                             gas gas_remaining wei
                            args sha3(msg.sender, 55), _1329, _1323, delegate.return_data[0]
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_1395 + 474] = address(msg.sender)
                        mem[_1395 + 494] = _1323
                        mem[_1395 + 442] = 52
                        mem[64] = _1395 + 590
                        mem[_1395 + 526] = 9
                        mem[_1395 + 558] = 'numTokens'
                        mem[_1395 + 622] = sha3(msg.sender, _1323)
                        t = _1395 + 558
                        u = _1395 + 654
                        s = 9
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_1395 + 654] = mem[_1395 + 663 len 23] or numTokens
                        _4677 = mem[64]
                        mem[mem[64]] = _1395 + -mem[64] + 631
                        mem[64] = _1395 + 663
                        mem[0] = sha3(mem[_4677 + 32 len mem[_4677]])
                        mem[32] = 56
                        numTokens[mem[0]] = _1327
                        mem[64] = _1395 + 727
                        mem[_1395 + 663] = 10
                        mem[_1395 + 695] = 'commitHash'
                        mem[_1395 + 759] = sha3(msg.sender, _1323)
                        t = _1395 + 695
                        u = _1395 + 791
                        s = 10
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_1395 + 791] = mem[_1395 + 801 len 22] or commitHash
                        _5181 = mem[64]
                        mem[mem[64]] = _1395 + -mem[64] + 769
                        mem[64] = _1395 + 801
                        mem[0] = sha3(mem[_5181 + 32 len mem[_5181]])
                    else:
                        if delegate.return_data[0]:
                            revert with 0, 'invalid position'
                        mem[0] = msg.sender
                        mem[32] = 55
                        require ext_code.size(0xe9b3378c206c93d8811e04bed749784cedd23e4b)
                        delegate 0xe9b3378c206c93d8811e04bed749784cedd23e4b.0x9735c51b with:
                             gas gas_remaining wei
                            args sha3(msg.sender, 55), _1329, _1323, delegate.return_data[0]
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_1395 + 474] = address(msg.sender)
                        mem[_1395 + 494] = _1323
                        mem[_1395 + 442] = 52
                        mem[64] = _1395 + 590
                        mem[_1395 + 526] = 9
                        mem[_1395 + 558] = 'numTokens'
                        mem[_1395 + 622] = sha3(msg.sender, _1323)
                        t = _1395 + 558
                        u = _1395 + 654
                        s = 9
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_1395 + 654] = mem[_1395 + 663 len 23] or numTokens
                        _4684 = mem[64]
                        mem[mem[64]] = _1395 + -mem[64] + 631
                        mem[64] = _1395 + 663
                        mem[0] = sha3(mem[_4684 + 32 len mem[_4684]])
                        mem[32] = 56
                        numTokens[mem[0]] = _1327
                        mem[64] = _1395 + 727
                        mem[_1395 + 663] = 10
                        mem[_1395 + 695] = 'commitHash'
                        mem[_1395 + 759] = sha3(msg.sender, _1323)
                        t = _1395 + 695
                        u = _1395 + 791
                        s = 10
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_1395 + 791] = mem[_1395 + 801 len 22] or commitHash
                        _5188 = mem[64]
                        mem[mem[64]] = _1395 + -mem[64] + 769
                        mem[64] = _1395 + 801
                        mem[0] = sha3(mem[_5188 + 32 len mem[_5188]])
                    numTokens[mem[0]] = _1325
                    mem[0] = msg.sender
                    mem[32] = sha3(_1323, 53) + 5
                    uint8(pollMap[_1323][5][msg.sender].field_0) = 1
                    mem[_1395 + 801] = _1327
                else:
                    mem[0] = msg.sender
                    mem[32] = 55
                    require ext_code.size(0xe9b3378c206c93d8811e04bed749784cedd23e4b)
                    delegate 0xe9b3378c206c93d8811e04bed749784cedd23e4b.0x7d29ac9 with:
                         gas gas_remaining wei
                        args sha3(msg.sender, 55), mem[(32 * idx) + 128]
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _1431 = mem[64]
                    mem[mem[64] + 32] = address(msg.sender)
                    mem[mem[64] + 52] = _1329
                    _1432 = mem[64]
                    mem[mem[64]] = 52
                    mem[64] = mem[64] + 84
                    _1434 = sha3(mem[_1432 + 32 len mem[_1432]])
                    mem[64] = _1431 + 148
                    mem[_1431 + 84] = 9
                    mem[_1431 + 116] = 'numTokens'
                    mem[_1431 + 180] = _1434
                    t = _1431 + 116
                    u = _1431 + 212
                    s = 9
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[_1431 + 212] = mem[_1431 + 221 len 23] or numTokens
                    _2654 = mem[64]
                    mem[mem[64]] = _1431 + -mem[64] + 189
                    mem[64] = _1431 + 221
                    mem[0] = sha3(mem[_2654 + 32 len mem[_2654]])
                    mem[32] = 56
                    _2657 = sha3(mem[0], 56)
                    mem[_1431 + 253] = address(msg.sender)
                    mem[_1431 + 273] = delegate.return_data[0]
                    mem[_1431 + 221] = 52
                    mem[64] = _1431 + 369
                    mem[_1431 + 305] = 9
                    mem[_1431 + 337] = 'numTokens'
                    mem[_1431 + 401] = sha3(msg.sender, delegate.return_data[0])
                    t = _1431 + 337
                    u = _1431 + 433
                    s = 9
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[_1431 + 433] = mem[_1431 + 442 len 23] or numTokens
                    _3746 = mem[64]
                    mem[mem[64]] = _1431 + -mem[64] + 410
                    mem[64] = _1431 + 442
                    mem[0] = sha3(mem[_3746 + 32 len mem[_3746]])
                    if _1327 < stor[_2657]:
                        revert with 0, 'invalid position'
                    if _1327 <= numTokens[mem[0]]:
                        if _1327 > numTokens[mem[0]]:
                            revert with 0, 'invalid position'
                        mem[0] = msg.sender
                        mem[32] = 55
                        require ext_code.size(0xe9b3378c206c93d8811e04bed749784cedd23e4b)
                        delegate 0xe9b3378c206c93d8811e04bed749784cedd23e4b.0x9735c51b with:
                             gas gas_remaining wei
                            args sha3(msg.sender, 55), _1329, _1323, delegate.return_data[0]
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_1431 + 474] = address(msg.sender)
                        mem[_1431 + 494] = _1323
                        mem[_1431 + 442] = 52
                        mem[64] = _1431 + 590
                        mem[_1431 + 526] = 9
                        mem[_1431 + 558] = 'numTokens'
                        mem[_1431 + 622] = sha3(msg.sender, _1323)
                        t = _1431 + 558
                        u = _1431 + 654
                        s = 9
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_1431 + 654] = mem[_1431 + 663 len 23] or numTokens
                        _4691 = mem[64]
                        mem[mem[64]] = _1431 + -mem[64] + 631
                        mem[64] = _1431 + 663
                        mem[0] = sha3(mem[_4691 + 32 len mem[_4691]])
                        mem[32] = 56
                        numTokens[mem[0]] = _1327
                        mem[64] = _1431 + 727
                        mem[_1431 + 663] = 10
                        mem[_1431 + 695] = 'commitHash'
                        mem[_1431 + 759] = sha3(msg.sender, _1323)
                        t = _1431 + 695
                        u = _1431 + 791
                        s = 10
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_1431 + 791] = mem[_1431 + 801 len 22] or commitHash
                        _5195 = mem[64]
                        mem[mem[64]] = _1431 + -mem[64] + 769
                        mem[64] = _1431 + 801
                        mem[0] = sha3(mem[_5195 + 32 len mem[_5195]])
                    else:
                        if delegate.return_data[0]:
                            revert with 0, 'invalid position'
                        mem[0] = msg.sender
                        mem[32] = 55
                        require ext_code.size(0xe9b3378c206c93d8811e04bed749784cedd23e4b)
                        delegate 0xe9b3378c206c93d8811e04bed749784cedd23e4b.0x9735c51b with:
                             gas gas_remaining wei
                            args sha3(msg.sender, 55), _1329, _1323, delegate.return_data[0]
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_1431 + 474] = address(msg.sender)
                        mem[_1431 + 494] = _1323
                        mem[_1431 + 442] = 52
                        mem[64] = _1431 + 590
                        mem[_1431 + 526] = 9
                        mem[_1431 + 558] = 'numTokens'
                        mem[_1431 + 622] = sha3(msg.sender, _1323)
                        t = _1431 + 558
                        u = _1431 + 654
                        s = 9
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_1431 + 654] = mem[_1431 + 663 len 23] or numTokens
                        _4698 = mem[64]
                        mem[mem[64]] = _1431 + -mem[64] + 631
                        mem[64] = _1431 + 663
                        mem[0] = sha3(mem[_4698 + 32 len mem[_4698]])
                        mem[32] = 56
                        numTokens[mem[0]] = _1327
                        mem[64] = _1431 + 727
                        mem[_1431 + 663] = 10
                        mem[_1431 + 695] = 'commitHash'
                        mem[_1431 + 759] = sha3(msg.sender, _1323)
                        t = _1431 + 695
                        u = _1431 + 791
                        s = 10
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_1431 + 791] = mem[_1431 + 801 len 22] or commitHash
                        _5202 = mem[64]
                        mem[mem[64]] = _1431 + -mem[64] + 769
                        mem[64] = _1431 + 801
                        mem[0] = sha3(mem[_5202 + 32 len mem[_5202]])
                    numTokens[mem[0]] = _1325
                    mem[0] = msg.sender
                    mem[32] = sha3(_1323, 53) + 5
                    uint8(pollMap[_1323][5][msg.sender].field_0) = 1
                    mem[_1431 + 801] = _1327
        else:
            require voteTokenBalance[msg.sender] <= mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] - voteTokenBalance[msg.sender]:
                revert with 0, 'Not enough balance'
            voteTokenBalance[msg.sender] = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
            mem[mem[64] + 68] = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] - voteTokenBalance[msg.sender]
            require ext_code.size(tokenAddress)
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), _1327 - voteTokenBalance[msg.sender]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not return_data.size:
                emit _VotingRightsGranted((_1327 - voteTokenBalance[msg.sender]), msg.sender);
                if _1327 > voteTokenBalance[msg.sender]:
                    revert with 0, 'not enough votes'
                if not _1323:
                    revert with 0, 'no zero pollid'
                if not _1325:
                    revert with 0, 'no secret 0'
                if not _1329:
                    mem[0] = msg.sender
                    mem[32] = 55
                    require ext_code.size(0xe9b3378c206c93d8811e04bed749784cedd23e4b)
                    delegate 0xe9b3378c206c93d8811e04bed749784cedd23e4b.0x7d29ac9 with:
                         gas gas_remaining wei
                        args sha3(msg.sender, 55), _1329
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if delegate.return_data[0] != _1323:
                        _1565 = mem[64]
                        mem[mem[64] + 32] = address(msg.sender)
                        mem[mem[64] + 52] = _1329
                        _1566 = mem[64]
                        mem[mem[64]] = 52
                        mem[64] = mem[64] + 84
                        _1568 = sha3(mem[_1566 + 32 len mem[_1566]])
                        mem[64] = _1565 + 148
                        mem[_1565 + 84] = 9
                        mem[_1565 + 116] = 'numTokens'
                        mem[_1565 + 180] = _1568
                        t = _1565 + 116
                        u = _1565 + 212
                        s = 9
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_1565 + 212] = mem[_1565 + 221 len 23] or numTokens
                        _2661 = mem[64]
                        mem[mem[64]] = _1565 + -mem[64] + 189
                        mem[64] = _1565 + 221
                        mem[0] = sha3(mem[_2661 + 32 len mem[_2661]])
                        mem[32] = 56
                        _2664 = sha3(mem[0], 56)
                        mem[_1565 + 253] = address(msg.sender)
                        mem[_1565 + 273] = delegate.return_data[0]
                        mem[_1565 + 221] = 52
                        mem[64] = _1565 + 369
                        mem[_1565 + 305] = 9
                        mem[_1565 + 337] = 'numTokens'
                        mem[_1565 + 401] = sha3(msg.sender, delegate.return_data[0])
                        t = _1565 + 337
                        u = _1565 + 433
                        s = 9
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_1565 + 433] = mem[_1565 + 442 len 23] or numTokens
                        _3753 = mem[64]
                        mem[mem[64]] = _1565 + -mem[64] + 410
                        mem[64] = _1565 + 442
                        mem[0] = sha3(mem[_3753 + 32 len mem[_3753]])
                        if _1327 < stor[_2664]:
                            revert with 0, 'invalid position'
                        if _1327 <= numTokens[mem[0]]:
                            if _1327 > numTokens[mem[0]]:
                                revert with 0, 'invalid position'
                            mem[0] = msg.sender
                            mem[32] = 55
                            require ext_code.size(0xe9b3378c206c93d8811e04bed749784cedd23e4b)
                            delegate 0xe9b3378c206c93d8811e04bed749784cedd23e4b.0x9735c51b with:
                                 gas gas_remaining wei
                                args sha3(msg.sender, 55), _1329, _1323, delegate.return_data[0]
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_1565 + 474] = address(msg.sender)
                            mem[_1565 + 494] = _1323
                            mem[_1565 + 442] = 52
                            mem[64] = _1565 + 590
                            mem[_1565 + 526] = 9
                            mem[_1565 + 558] = 'numTokens'
                            mem[_1565 + 622] = sha3(msg.sender, _1323)
                            t = _1565 + 558
                            u = _1565 + 654
                            s = 9
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_1565 + 654] = mem[_1565 + 663 len 23] or numTokens
                            _4705 = mem[64]
                            mem[mem[64]] = _1565 + -mem[64] + 631
                            mem[64] = _1565 + 663
                            mem[0] = sha3(mem[_4705 + 32 len mem[_4705]])
                            mem[32] = 56
                            numTokens[mem[0]] = _1327
                            mem[64] = _1565 + 727
                            mem[_1565 + 663] = 10
                            mem[_1565 + 695] = 'commitHash'
                            mem[_1565 + 759] = sha3(msg.sender, _1323)
                            t = _1565 + 695
                            u = _1565 + 791
                            s = 10
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_1565 + 791] = mem[_1565 + 801 len 22] or commitHash
                            _5209 = mem[64]
                            mem[mem[64]] = _1565 + -mem[64] + 769
                            mem[64] = _1565 + 801
                            mem[0] = sha3(mem[_5209 + 32 len mem[_5209]])
                        else:
                            if delegate.return_data[0]:
                                revert with 0, 'invalid position'
                            mem[0] = msg.sender
                            mem[32] = 55
                            require ext_code.size(0xe9b3378c206c93d8811e04bed749784cedd23e4b)
                            delegate 0xe9b3378c206c93d8811e04bed749784cedd23e4b.0x9735c51b with:
                                 gas gas_remaining wei
                                args sha3(msg.sender, 55), _1329, _1323, delegate.return_data[0]
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_1565 + 474] = address(msg.sender)
                            mem[_1565 + 494] = _1323
                            mem[_1565 + 442] = 52
                            mem[64] = _1565 + 590
                            mem[_1565 + 526] = 9
                            mem[_1565 + 558] = 'numTokens'
                            mem[_1565 + 622] = sha3(msg.sender, _1323)
                            t = _1565 + 558
                            u = _1565 + 654
                            s = 9
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_1565 + 654] = mem[_1565 + 663 len 23] or numTokens
                            _4712 = mem[64]
                            mem[mem[64]] = _1565 + -mem[64] + 631
                            mem[64] = _1565 + 663
                            mem[0] = sha3(mem[_4712 + 32 len mem[_4712]])
                            mem[32] = 56
                            numTokens[mem[0]] = _1327
                            mem[64] = _1565 + 727
                            mem[_1565 + 663] = 10
                            mem[_1565 + 695] = 'commitHash'
                            mem[_1565 + 759] = sha3(msg.sender, _1323)
                            t = _1565 + 695
                            u = _1565 + 791
                            s = 10
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_1565 + 791] = mem[_1565 + 801 len 22] or commitHash
                            _5216 = mem[64]
                            mem[mem[64]] = _1565 + -mem[64] + 769
                            mem[64] = _1565 + 801
                            mem[0] = sha3(mem[_5216 + 32 len mem[_5216]])
                        numTokens[mem[0]] = _1325
                        mem[0] = msg.sender
                        mem[32] = sha3(_1323, 53) + 5
                        uint8(pollMap[_1323][5][msg.sender].field_0) = 1
                        mem[_1565 + 801] = _1327
                    else:
                        mem[0] = msg.sender
                        mem[32] = 55
                        require ext_code.size(0xe9b3378c206c93d8811e04bed749784cedd23e4b)
                        delegate 0xe9b3378c206c93d8811e04bed749784cedd23e4b.0x7d29ac9 with:
                             gas gas_remaining wei
                            args sha3(msg.sender, 55), _1323
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _1641 = mem[64]
                        mem[mem[64] + 32] = address(msg.sender)
                        mem[mem[64] + 52] = _1329
                        _1642 = mem[64]
                        mem[mem[64]] = 52
                        mem[64] = mem[64] + 84
                        _1644 = sha3(mem[_1642 + 32 len mem[_1642]])
                        mem[64] = _1641 + 148
                        mem[_1641 + 84] = 9
                        mem[_1641 + 116] = 'numTokens'
                        mem[_1641 + 180] = _1644
                        t = _1641 + 116
                        u = _1641 + 212
                        s = 9
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_1641 + 212] = mem[_1641 + 221 len 23] or numTokens
                        _2668 = mem[64]
                        mem[mem[64]] = _1641 + -mem[64] + 189
                        mem[64] = _1641 + 221
                        mem[0] = sha3(mem[_2668 + 32 len mem[_2668]])
                        mem[32] = 56
                        _2671 = sha3(mem[0], 56)
                        mem[_1641 + 253] = address(msg.sender)
                        mem[_1641 + 273] = delegate.return_data[0]
                        mem[_1641 + 221] = 52
                        mem[64] = _1641 + 369
                        mem[_1641 + 305] = 9
                        mem[_1641 + 337] = 'numTokens'
                        mem[_1641 + 401] = sha3(msg.sender, delegate.return_data[0])
                        t = _1641 + 337
                        u = _1641 + 433
                        s = 9
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_1641 + 433] = mem[_1641 + 442 len 23] or numTokens
                        _3760 = mem[64]
                        mem[mem[64]] = _1641 + -mem[64] + 410
                        mem[64] = _1641 + 442
                        mem[0] = sha3(mem[_3760 + 32 len mem[_3760]])
                        if _1327 < stor[_2671]:
                            revert with 0, 'invalid position'
                        if _1327 <= numTokens[mem[0]]:
                            if _1327 > numTokens[mem[0]]:
                                revert with 0, 'invalid position'
                            mem[0] = msg.sender
                            mem[32] = 55
                            require ext_code.size(0xe9b3378c206c93d8811e04bed749784cedd23e4b)
                            delegate 0xe9b3378c206c93d8811e04bed749784cedd23e4b.0x9735c51b with:
                                 gas gas_remaining wei
                                args sha3(msg.sender, 55), _1329, _1323, delegate.return_data[0]
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_1641 + 474] = address(msg.sender)
                            mem[_1641 + 494] = _1323
                            mem[_1641 + 442] = 52
                            mem[64] = _1641 + 590
                            mem[_1641 + 526] = 9
                            mem[_1641 + 558] = 'numTokens'
                            mem[_1641 + 622] = sha3(msg.sender, _1323)
                            t = _1641 + 558
                            u = _1641 + 654
                            s = 9
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_1641 + 654] = mem[_1641 + 663 len 23] or numTokens
                            _4719 = mem[64]
                            mem[mem[64]] = _1641 + -mem[64] + 631
                            mem[64] = _1641 + 663
                            mem[0] = sha3(mem[_4719 + 32 len mem[_4719]])
                            mem[32] = 56
                            numTokens[mem[0]] = _1327
                            mem[64] = _1641 + 727
                            mem[_1641 + 663] = 10
                            mem[_1641 + 695] = 'commitHash'
                            mem[_1641 + 759] = sha3(msg.sender, _1323)
                            t = _1641 + 695
                            u = _1641 + 791
                            s = 10
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_1641 + 791] = mem[_1641 + 801 len 22] or commitHash
                            _5223 = mem[64]
                            mem[mem[64]] = _1641 + -mem[64] + 769
                            mem[64] = _1641 + 801
                            mem[0] = sha3(mem[_5223 + 32 len mem[_5223]])
                        else:
                            if delegate.return_data[0]:
                                revert with 0, 'invalid position'
                            mem[0] = msg.sender
                            mem[32] = 55
                            require ext_code.size(0xe9b3378c206c93d8811e04bed749784cedd23e4b)
                            delegate 0xe9b3378c206c93d8811e04bed749784cedd23e4b.0x9735c51b with:
                                 gas gas_remaining wei
                                args sha3(msg.sender, 55), _1329, _1323, delegate.return_data[0]
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_1641 + 474] = address(msg.sender)
                            mem[_1641 + 494] = _1323
                            mem[_1641 + 442] = 52
                            mem[64] = _1641 + 590
                            mem[_1641 + 526] = 9
                            mem[_1641 + 558] = 'numTokens'
                            mem[_1641 + 622] = sha3(msg.sender, _1323)
                            t = _1641 + 558
                            u = _1641 + 654
                            s = 9
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_1641 + 654] = mem[_1641 + 663 len 23] or numTokens
                            _4726 = mem[64]
                            mem[mem[64]] = _1641 + -mem[64] + 631
                            mem[64] = _1641 + 663
                            mem[0] = sha3(mem[_4726 + 32 len mem[_4726]])
                            mem[32] = 56
                            numTokens[mem[0]] = _1327
                            mem[64] = _1641 + 727
                            mem[_1641 + 663] = 10
                            mem[_1641 + 695] = 'commitHash'
                            mem[_1641 + 759] = sha3(msg.sender, _1323)
                            t = _1641 + 695
                            u = _1641 + 791
                            s = 10
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_1641 + 791] = mem[_1641 + 801 len 22] or commitHash
                            _5230 = mem[64]
                            mem[mem[64]] = _1641 + -mem[64] + 769
                            mem[64] = _1641 + 801
                            mem[0] = sha3(mem[_5230 + 32 len mem[_5230]])
                        numTokens[mem[0]] = _1325
                        mem[0] = msg.sender
                        mem[32] = sha3(_1323, 53) + 5
                        uint8(pollMap[_1323][5][msg.sender].field_0) = 1
                        mem[_1641 + 801] = _1327
                else:
                    require ext_code.size(0xe9b3378c206c93d8811e04bed749784cedd23e4b)
                    delegate 0xe9b3378c206c93d8811e04bed749784cedd23e4b.0x366a5ba2 with:
                         gas gas_remaining wei
                        args sha3(msg.sender, 55), _1329
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not delegate.return_data[0]:
                        revert with 0, 32, 39, 0xfe70726576696f757320706f6c6c20696420646f6573206e6f74206578697374206f7220697320, mem[mem[64] + 107 len 25]
                    mem[0] = msg.sender
                    mem[32] = 55
                    require ext_code.size(0xe9b3378c206c93d8811e04bed749784cedd23e4b)
                    delegate 0xe9b3378c206c93d8811e04bed749784cedd23e4b.0x7d29ac9 with:
                         gas gas_remaining wei
                        args sha3(msg.sender, 55), _1329
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if delegate.return_data[0] != _1323:
                        _1645 = mem[64]
                        mem[mem[64] + 32] = address(msg.sender)
                        mem[mem[64] + 52] = _1329
                        _1646 = mem[64]
                        mem[mem[64]] = 52
                        mem[64] = mem[64] + 84
                        _1648 = sha3(mem[_1646 + 32 len mem[_1646]])
                        mem[64] = _1645 + 148
                        mem[_1645 + 84] = 9
                        mem[_1645 + 116] = 'numTokens'
                        mem[_1645 + 180] = _1648
                        t = _1645 + 116
                        u = _1645 + 212
                        s = 9
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_1645 + 212] = mem[_1645 + 221 len 23] or numTokens
                        _2675 = mem[64]
                        mem[mem[64]] = _1645 + -mem[64] + 189
                        mem[64] = _1645 + 221
                        mem[0] = sha3(mem[_2675 + 32 len mem[_2675]])
                        mem[32] = 56
                        _2678 = sha3(mem[0], 56)
                        mem[_1645 + 253] = address(msg.sender)
                        mem[_1645 + 273] = delegate.return_data[0]
                        mem[_1645 + 221] = 52
                        mem[64] = _1645 + 369
                        mem[_1645 + 305] = 9
                        mem[_1645 + 337] = 'numTokens'
                        mem[_1645 + 401] = sha3(msg.sender, delegate.return_data[0])
                        t = _1645 + 337
                        u = _1645 + 433
                        s = 9
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_1645 + 433] = mem[_1645 + 442 len 23] or numTokens
                        _3767 = mem[64]
                        mem[mem[64]] = _1645 + -mem[64] + 410
                        mem[64] = _1645 + 442
                        mem[0] = sha3(mem[_3767 + 32 len mem[_3767]])
                        if _1327 < stor[_2678]:
                            revert with 0, 'invalid position'
                        if _1327 <= numTokens[mem[0]]:
                            if _1327 > numTokens[mem[0]]:
                                revert with 0, 'invalid position'
                            mem[0] = msg.sender
                            mem[32] = 55
                            require ext_code.size(0xe9b3378c206c93d8811e04bed749784cedd23e4b)
                            delegate 0xe9b3378c206c93d8811e04bed749784cedd23e4b.0x9735c51b with:
                                 gas gas_remaining wei
                                args sha3(msg.sender, 55), _1329, _1323, delegate.return_data[0]
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_1645 + 474] = address(msg.sender)
                            mem[_1645 + 494] = _1323
                            mem[_1645 + 442] = 52
                            mem[64] = _1645 + 590
                            mem[_1645 + 526] = 9
                            mem[_1645 + 558] = 'numTokens'
                            mem[_1645 + 622] = sha3(msg.sender, _1323)
                            t = _1645 + 558
                            u = _1645 + 654
                            s = 9
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_1645 + 654] = mem[_1645 + 663 len 23] or numTokens
                            _4733 = mem[64]
                            mem[mem[64]] = _1645 + -mem[64] + 631
                            mem[64] = _1645 + 663
                            mem[0] = sha3(mem[_4733 + 32 len mem[_4733]])
                            mem[32] = 56
                            numTokens[mem[0]] = _1327
                            mem[64] = _1645 + 727
                            mem[_1645 + 663] = 10
                            mem[_1645 + 695] = 'commitHash'
                            mem[_1645 + 759] = sha3(msg.sender, _1323)
                            t = _1645 + 695
                            u = _1645 + 791
                            s = 10
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_1645 + 791] = mem[_1645 + 801 len 22] or commitHash
                            _5237 = mem[64]
                            mem[mem[64]] = _1645 + -mem[64] + 769
                            mem[64] = _1645 + 801
                            mem[0] = sha3(mem[_5237 + 32 len mem[_5237]])
                        else:
                            if delegate.return_data[0]:
                                revert with 0, 'invalid position'
                            mem[0] = msg.sender
                            mem[32] = 55
                            require ext_code.size(0xe9b3378c206c93d8811e04bed749784cedd23e4b)
                            delegate 0xe9b3378c206c93d8811e04bed749784cedd23e4b.0x9735c51b with:
                                 gas gas_remaining wei
                                args sha3(msg.sender, 55), _1329, _1323, delegate.return_data[0]
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_1645 + 474] = address(msg.sender)
                            mem[_1645 + 494] = _1323
                            mem[_1645 + 442] = 52
                            mem[64] = _1645 + 590
                            mem[_1645 + 526] = 9
                            mem[_1645 + 558] = 'numTokens'
                            mem[_1645 + 622] = sha3(msg.sender, _1323)
                            t = _1645 + 558
                            u = _1645 + 654
                            s = 9
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_1645 + 654] = mem[_1645 + 663 len 23] or numTokens
                            _4740 = mem[64]
                            mem[mem[64]] = _1645 + -mem[64] + 631
                            mem[64] = _1645 + 663
                            mem[0] = sha3(mem[_4740 + 32 len mem[_4740]])
                            mem[32] = 56
                            numTokens[mem[0]] = _1327
                            mem[64] = _1645 + 727
                            mem[_1645 + 663] = 10
                            mem[_1645 + 695] = 'commitHash'
                            mem[_1645 + 759] = sha3(msg.sender, _1323)
                            t = _1645 + 695
                            u = _1645 + 791
                            s = 10
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_1645 + 791] = mem[_1645 + 801 len 22] or commitHash
                            _5244 = mem[64]
                            mem[mem[64]] = _1645 + -mem[64] + 769
                            mem[64] = _1645 + 801
                            mem[0] = sha3(mem[_5244 + 32 len mem[_5244]])
                        numTokens[mem[0]] = _1325
                        mem[0] = msg.sender
                        mem[32] = sha3(_1323, 53) + 5
                        uint8(pollMap[_1323][5][msg.sender].field_0) = 1
                        mem[_1645 + 801] = _1327
                    else:
                        mem[0] = msg.sender
                        mem[32] = 55
                        require ext_code.size(0xe9b3378c206c93d8811e04bed749784cedd23e4b)
                        delegate 0xe9b3378c206c93d8811e04bed749784cedd23e4b.0x7d29ac9 with:
                             gas gas_remaining wei
                            args sha3(msg.sender, 55), _1323
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _1759 = mem[64]
                        mem[mem[64] + 32] = address(msg.sender)
                        mem[mem[64] + 52] = _1329
                        _1760 = mem[64]
                        mem[mem[64]] = 52
                        mem[64] = mem[64] + 84
                        _1762 = sha3(mem[_1760 + 32 len mem[_1760]])
                        mem[64] = _1759 + 148
                        mem[_1759 + 84] = 9
                        mem[_1759 + 116] = 'numTokens'
                        mem[_1759 + 180] = _1762
                        t = _1759 + 116
                        u = _1759 + 212
                        s = 9
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_1759 + 212] = mem[_1759 + 221 len 23] or numTokens
                        _2682 = mem[64]
                        mem[mem[64]] = _1759 + -mem[64] + 189
                        mem[64] = _1759 + 221
                        mem[0] = sha3(mem[_2682 + 32 len mem[_2682]])
                        mem[32] = 56
                        _2685 = sha3(mem[0], 56)
                        mem[_1759 + 253] = address(msg.sender)
                        mem[_1759 + 273] = delegate.return_data[0]
                        mem[_1759 + 221] = 52
                        mem[64] = _1759 + 369
                        mem[_1759 + 305] = 9
                        mem[_1759 + 337] = 'numTokens'
                        mem[_1759 + 401] = sha3(msg.sender, delegate.return_data[0])
                        t = _1759 + 337
                        u = _1759 + 433
                        s = 9
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_1759 + 433] = mem[_1759 + 442 len 23] or numTokens
                        _3774 = mem[64]
                        mem[mem[64]] = _1759 + -mem[64] + 410
                        mem[64] = _1759 + 442
                        mem[0] = sha3(mem[_3774 + 32 len mem[_3774]])
                        if _1327 < stor[_2685]:
                            revert with 0, 'invalid position'
                        if _1327 <= numTokens[mem[0]]:
                            if _1327 > numTokens[mem[0]]:
                                revert with 0, 'invalid position'
                            mem[0] = msg.sender
                            mem[32] = 55
                            require ext_code.size(0xe9b3378c206c93d8811e04bed749784cedd23e4b)
                            delegate 0xe9b3378c206c93d8811e04bed749784cedd23e4b.0x9735c51b with:
                                 gas gas_remaining wei
                                args sha3(msg.sender, 55), _1329, _1323, delegate.return_data[0]
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_1759 + 474] = address(msg.sender)
                            mem[_1759 + 494] = _1323
                            mem[_1759 + 442] = 52
                            mem[64] = _1759 + 590
                            mem[_1759 + 526] = 9
                            mem[_1759 + 558] = 'numTokens'
                            mem[_1759 + 622] = sha3(msg.sender, _1323)
                            t = _1759 + 558
                            u = _1759 + 654
                            s = 9
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_1759 + 654] = mem[_1759 + 663 len 23] or numTokens
                            _4747 = mem[64]
                            mem[mem[64]] = _1759 + -mem[64] + 631
                            mem[64] = _1759 + 663
                            mem[0] = sha3(mem[_4747 + 32 len mem[_4747]])
                            mem[32] = 56
                            numTokens[mem[0]] = _1327
                            mem[64] = _1759 + 727
                            mem[_1759 + 663] = 10
                            mem[_1759 + 695] = 'commitHash'
                            mem[_1759 + 759] = sha3(msg.sender, _1323)
                            t = _1759 + 695
                            u = _1759 + 791
                            s = 10
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_1759 + 791] = mem[_1759 + 801 len 22] or commitHash
                            _5251 = mem[64]
                            mem[mem[64]] = _1759 + -mem[64] + 769
                            mem[64] = _1759 + 801
                            mem[0] = sha3(mem[_5251 + 32 len mem[_5251]])
                            numTokens[mem[0]] = _1325
                            mem[0] = msg.sender
                            mem[32] = sha3(_1323, 53) + 5
                            uint8(pollMap[_1323][5][msg.sender].field_0) = 1
                            mem[_1759 + 801] = _1327
                            emit _VoteCommitted(_1327, _1323, msg.sender);
                            t = _1759 + 696
                            continue 
                        if delegate.return_data[0]:
                            revert with 0, 'invalid position'
                        mem[0] = msg.sender
                        mem[32] = 55
                        require ext_code.size(0xe9b3378c206c93d8811e04bed749784cedd23e4b)
                        delegate 0xe9b3378c206c93d8811e04bed749784cedd23e4b.0x9735c51b with:
                             gas gas_remaining wei
                            args sha3(msg.sender, 55), _1329, _1323, delegate.return_data[0]
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_1759 + 474] = address(msg.sender)
                        mem[_1759 + 494] = _1323
                        mem[_1759 + 442] = 52
                        mem[64] = _1759 + 590
                        mem[_1759 + 526] = 9
                        mem[_1759 + 558] = 'numTokens'
                        mem[_1759 + 622] = sha3(msg.sender, _1323)
                        t = _1759 + 558
                        u = _1759 + 654
                        s = 9
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_1759 + 654] = mem[_1759 + 663 len 23] or numTokens
                        _4754 = mem[64]
                        mem[mem[64]] = _1759 + -mem[64] + 631
                        mem[64] = _1759 + 663
                        mem[0] = sha3(mem[_4754 + 32 len mem[_4754]])
                        mem[32] = 56
                        numTokens[mem[0]] = _1327
                        mem[64] = _1759 + 727
                        mem[_1759 + 663] = 10
                        mem[_1759 + 695] = 'commitHash'
                        mem[_1759 + 759] = sha3(msg.sender, _1323)
                        t = _1759 + 695
                        u = _1759 + 791
                        s = 10
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_1759 + 791] = mem[_1759 + 801 len 22] or commitHash
                        _5258 = mem[64]
                        mem[mem[64]] = _1759 + -mem[64] + 769
                        mem[64] = _1759 + 801
                        mem[0] = sha3(mem[_5258 + 32 len mem[_5258]])
                        numTokens[mem[0]] = _1325
                        mem[0] = msg.sender
                        mem[32] = sha3(_1323, 53) + 5
                        uint8(pollMap[_1323][5][msg.sender].field_0) = 1
                        mem[_1759 + 801] = _1327
            else:
                if 32 != return_data.size:
                    revert with 0, 'transferFrom fail'
                if not ext_call.return_data[0]:
                    revert with 0, 'transferFrom fail'
                emit _VotingRightsGranted((_1327 - voteTokenBalance[msg.sender]), msg.sender);
                if _1327 > voteTokenBalance[msg.sender]:
                    revert with 0, 'not enough votes'
                if not _1323:
                    revert with 0, 'no zero pollid'
                if not _1325:
                    revert with 0, 'no secret 0'
                if not _1329:
                    mem[0] = msg.sender
                    mem[32] = 55
                    require ext_code.size(0xe9b3378c206c93d8811e04bed749784cedd23e4b)
                    delegate 0xe9b3378c206c93d8811e04bed749784cedd23e4b.0x7d29ac9 with:
                         gas gas_remaining wei
                        args sha3(msg.sender, 55), _1329
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if delegate.return_data[0] != _1323:
                        _1585 = mem[64]
                        mem[mem[64] + 32] = address(msg.sender)
                        mem[mem[64] + 52] = _1329
                        _1586 = mem[64]
                        mem[mem[64]] = 52
                        mem[64] = mem[64] + 84
                        _1588 = sha3(mem[_1586 + 32 len mem[_1586]])
                        mem[64] = _1585 + 148
                        mem[_1585 + 84] = 9
                        mem[_1585 + 116] = 'numTokens'
                        mem[_1585 + 180] = _1588
                        t = _1585 + 116
                        u = _1585 + 212
                        s = 9
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_1585 + 212] = mem[_1585 + 221 len 23] or numTokens
                        _2689 = mem[64]
                        mem[mem[64]] = _1585 + -mem[64] + 189
                        mem[64] = _1585 + 221
                        mem[0] = sha3(mem[_2689 + 32 len mem[_2689]])
                        mem[32] = 56
                        _2692 = sha3(mem[0], 56)
                        mem[_1585 + 253] = address(msg.sender)
                        mem[_1585 + 273] = delegate.return_data[0]
                        mem[_1585 + 221] = 52
                        mem[64] = _1585 + 369
                        mem[_1585 + 305] = 9
                        mem[_1585 + 337] = 'numTokens'
                        mem[_1585 + 401] = sha3(msg.sender, delegate.return_data[0])
                        t = _1585 + 337
                        u = _1585 + 433
                        s = 9
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_1585 + 433] = mem[_1585 + 442 len 23] or numTokens
                        _3781 = mem[64]
                        mem[mem[64]] = _1585 + -mem[64] + 410
                        mem[64] = _1585 + 442
                        mem[0] = sha3(mem[_3781 + 32 len mem[_3781]])
                        if _1327 < stor[_2692]:
                            revert with 0, 'invalid position'
                        if _1327 <= numTokens[mem[0]]:
                            if _1327 > numTokens[mem[0]]:
                                revert with 0, 'invalid position'
                            mem[0] = msg.sender
                            mem[32] = 55
                            require ext_code.size(0xe9b3378c206c93d8811e04bed749784cedd23e4b)
                            delegate 0xe9b3378c206c93d8811e04bed749784cedd23e4b.0x9735c51b with:
                                 gas gas_remaining wei
                                args sha3(msg.sender, 55), _1329, _1323, delegate.return_data[0]
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_1585 + 474] = address(msg.sender)
                            mem[_1585 + 494] = _1323
                            mem[_1585 + 442] = 52
                            mem[64] = _1585 + 590
                            mem[_1585 + 526] = 9
                            mem[_1585 + 558] = 'numTokens'
                            mem[_1585 + 622] = sha3(msg.sender, _1323)
                            t = _1585 + 558
                            u = _1585 + 654
                            s = 9
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_1585 + 654] = mem[_1585 + 663 len 23] or numTokens
                            _4761 = mem[64]
                            mem[mem[64]] = _1585 + -mem[64] + 631
                            mem[64] = _1585 + 663
                            mem[0] = sha3(mem[_4761 + 32 len mem[_4761]])
                            mem[32] = 56
                            numTokens[mem[0]] = _1327
                            mem[64] = _1585 + 727
                            mem[_1585 + 663] = 10
                            mem[_1585 + 695] = 'commitHash'
                            mem[_1585 + 759] = sha3(msg.sender, _1323)
                            t = _1585 + 695
                            u = _1585 + 791
                            s = 10
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_1585 + 791] = mem[_1585 + 801 len 22] or commitHash
                            _5265 = mem[64]
                            mem[mem[64]] = _1585 + -mem[64] + 769
                            mem[64] = _1585 + 801
                            mem[0] = sha3(mem[_5265 + 32 len mem[_5265]])
                        else:
                            if delegate.return_data[0]:
                                revert with 0, 'invalid position'
                            mem[0] = msg.sender
                            mem[32] = 55
                            require ext_code.size(0xe9b3378c206c93d8811e04bed749784cedd23e4b)
                            delegate 0xe9b3378c206c93d8811e04bed749784cedd23e4b.0x9735c51b with:
                                 gas gas_remaining wei
                                args sha3(msg.sender, 55), _1329, _1323, delegate.return_data[0]
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_1585 + 474] = address(msg.sender)
                            mem[_1585 + 494] = _1323
                            mem[_1585 + 442] = 52
                            mem[64] = _1585 + 590
                            mem[_1585 + 526] = 9
                            mem[_1585 + 558] = 'numTokens'
                            mem[_1585 + 622] = sha3(msg.sender, _1323)
                            t = _1585 + 558
                            u = _1585 + 654
                            s = 9
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_1585 + 654] = mem[_1585 + 663 len 23] or numTokens
                            _4768 = mem[64]
                            mem[mem[64]] = _1585 + -mem[64] + 631
                            mem[64] = _1585 + 663
                            mem[0] = sha3(mem[_4768 + 32 len mem[_4768]])
                            mem[32] = 56
                            numTokens[mem[0]] = _1327
                            mem[64] = _1585 + 727
                            mem[_1585 + 663] = 10
                            mem[_1585 + 695] = 'commitHash'
                            mem[_1585 + 759] = sha3(msg.sender, _1323)
                            t = _1585 + 695
                            u = _1585 + 791
                            s = 10
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_1585 + 791] = mem[_1585 + 801 len 22] or commitHash
                            _5272 = mem[64]
                            mem[mem[64]] = _1585 + -mem[64] + 769
                            mem[64] = _1585 + 801
                            mem[0] = sha3(mem[_5272 + 32 len mem[_5272]])
                        numTokens[mem[0]] = _1325
                        mem[0] = msg.sender
                        mem[32] = sha3(_1323, 53) + 5
                        uint8(pollMap[_1323][5][msg.sender].field_0) = 1
                        mem[_1585 + 801] = _1327
                    else:
                        mem[0] = msg.sender
                        mem[32] = 55
                        require ext_code.size(0xe9b3378c206c93d8811e04bed749784cedd23e4b)
                        delegate 0xe9b3378c206c93d8811e04bed749784cedd23e4b.0x7d29ac9 with:
                             gas gas_remaining wei
                            args sha3(msg.sender, 55), _1323
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _1677 = mem[64]
                        mem[mem[64] + 32] = address(msg.sender)
                        mem[mem[64] + 52] = _1329
                        _1678 = mem[64]
                        mem[mem[64]] = 52
                        mem[64] = mem[64] + 84
                        _1680 = sha3(mem[_1678 + 32 len mem[_1678]])
                        mem[64] = _1677 + 148
                        mem[_1677 + 84] = 9
                        mem[_1677 + 116] = 'numTokens'
                        mem[_1677 + 180] = _1680
                        t = _1677 + 116
                        u = _1677 + 212
                        s = 9
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_1677 + 212] = mem[_1677 + 221 len 23] or numTokens
                        _2696 = mem[64]
                        mem[mem[64]] = _1677 + -mem[64] + 189
                        mem[64] = _1677 + 221
                        mem[0] = sha3(mem[_2696 + 32 len mem[_2696]])
                        mem[32] = 56
                        _2699 = sha3(mem[0], 56)
                        mem[_1677 + 253] = address(msg.sender)
                        mem[_1677 + 273] = delegate.return_data[0]
                        mem[_1677 + 221] = 52
                        mem[64] = _1677 + 369
                        mem[_1677 + 305] = 9
                        mem[_1677 + 337] = 'numTokens'
                        mem[_1677 + 401] = sha3(msg.sender, delegate.return_data[0])
                        t = _1677 + 337
                        u = _1677 + 433
                        s = 9
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_1677 + 433] = mem[_1677 + 442 len 23] or numTokens
                        _3788 = mem[64]
                        mem[mem[64]] = _1677 + -mem[64] + 410
                        mem[64] = _1677 + 442
                        mem[0] = sha3(mem[_3788 + 32 len mem[_3788]])
                        if _1327 < stor[_2699]:
                            revert with 0, 'invalid position'
                        if _1327 <= numTokens[mem[0]]:
                            if _1327 > numTokens[mem[0]]:
                                revert with 0, 'invalid position'
                            mem[0] = msg.sender
                            mem[32] = 55
                            require ext_code.size(0xe9b3378c206c93d8811e04bed749784cedd23e4b)
                            delegate 0xe9b3378c206c93d8811e04bed749784cedd23e4b.0x9735c51b with:
                                 gas gas_remaining wei
                                args sha3(msg.sender, 55), _1329, _1323, delegate.return_data[0]
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_1677 + 474] = address(msg.sender)
                            mem[_1677 + 494] = _1323
                            mem[_1677 + 442] = 52
                            mem[64] = _1677 + 590
                            mem[_1677 + 526] = 9
                            mem[_1677 + 558] = 'numTokens'
                            mem[_1677 + 622] = sha3(msg.sender, _1323)
                            t = _1677 + 558
                            u = _1677 + 654
                            s = 9
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_1677 + 654] = mem[_1677 + 663 len 23] or numTokens
                            _4775 = mem[64]
                            mem[mem[64]] = _1677 + -mem[64] + 631
                            mem[64] = _1677 + 663
                            mem[0] = sha3(mem[_4775 + 32 len mem[_4775]])
                            mem[32] = 56
                            numTokens[mem[0]] = _1327
                            mem[64] = _1677 + 727
                            mem[_1677 + 663] = 10
                            mem[_1677 + 695] = 'commitHash'
                            mem[_1677 + 759] = sha3(msg.sender, _1323)
                            t = _1677 + 695
                            u = _1677 + 791
                            s = 10
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_1677 + 791] = mem[_1677 + 801 len 22] or commitHash
                            _5279 = mem[64]
                            mem[mem[64]] = _1677 + -mem[64] + 769
                            mem[64] = _1677 + 801
                            mem[0] = sha3(mem[_5279 + 32 len mem[_5279]])
                        else:
                            if delegate.return_data[0]:
                                revert with 0, 'invalid position'
                            mem[0] = msg.sender
                            mem[32] = 55
                            require ext_code.size(0xe9b3378c206c93d8811e04bed749784cedd23e4b)
                            delegate 0xe9b3378c206c93d8811e04bed749784cedd23e4b.0x9735c51b with:
                                 gas gas_remaining wei
                                args sha3(msg.sender, 55), _1329, _1323, delegate.return_data[0]
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_1677 + 474] = address(msg.sender)
                            mem[_1677 + 494] = _1323
                            mem[_1677 + 442] = 52
                            mem[64] = _1677 + 590
                            mem[_1677 + 526] = 9
                            mem[_1677 + 558] = 'numTokens'
                            mem[_1677 + 622] = sha3(msg.sender, _1323)
                            t = _1677 + 558
                            u = _1677 + 654
                            s = 9
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_1677 + 654] = mem[_1677 + 663 len 23] or numTokens
                            _4782 = mem[64]
                            mem[mem[64]] = _1677 + -mem[64] + 631
                            mem[64] = _1677 + 663
                            mem[0] = sha3(mem[_4782 + 32 len mem[_4782]])
                            mem[32] = 56
                            numTokens[mem[0]] = _1327
                            mem[64] = _1677 + 727
                            mem[_1677 + 663] = 10
                            mem[_1677 + 695] = 'commitHash'
                            mem[_1677 + 759] = sha3(msg.sender, _1323)
                            t = _1677 + 695
                            u = _1677 + 791
                            s = 10
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_1677 + 791] = mem[_1677 + 801 len 22] or commitHash
                            _5286 = mem[64]
                            mem[mem[64]] = _1677 + -mem[64] + 769
                            mem[64] = _1677 + 801
                            mem[0] = sha3(mem[_5286 + 32 len mem[_5286]])
                        numTokens[mem[0]] = _1325
                        mem[0] = msg.sender
                        mem[32] = sha3(_1323, 53) + 5
                        uint8(pollMap[_1323][5][msg.sender].field_0) = 1
                        mem[_1677 + 801] = _1327
                else:
                    require ext_code.size(0xe9b3378c206c93d8811e04bed749784cedd23e4b)
                    delegate 0xe9b3378c206c93d8811e04bed749784cedd23e4b.0x366a5ba2 with:
                         gas gas_remaining wei
                        args sha3(msg.sender, 55), _1329
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not delegate.return_data[0]:
                        revert with 0, 32, 39, 0xfe70726576696f757320706f6c6c20696420646f6573206e6f74206578697374206f7220697320, mem[mem[64] + 107 len 25]
                    mem[0] = msg.sender
                    mem[32] = 55
                    require ext_code.size(0xe9b3378c206c93d8811e04bed749784cedd23e4b)
                    delegate 0xe9b3378c206c93d8811e04bed749784cedd23e4b.0x7d29ac9 with:
                         gas gas_remaining wei
                        args sha3(msg.sender, 55), _1329
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if delegate.return_data[0] != _1323:
                        _1681 = mem[64]
                        mem[mem[64] + 32] = address(msg.sender)
                        mem[mem[64] + 52] = _1329
                        _1682 = mem[64]
                        mem[mem[64]] = 52
                        mem[64] = mem[64] + 84
                        _1684 = sha3(mem[_1682 + 32 len mem[_1682]])
                        mem[64] = _1681 + 148
                        mem[_1681 + 84] = 9
                        mem[_1681 + 116] = 'numTokens'
                        mem[_1681 + 180] = _1684
                        t = _1681 + 116
                        u = _1681 + 212
                        s = 9
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_1681 + 212] = mem[_1681 + 221 len 23] or numTokens
                        _2703 = mem[64]
                        mem[mem[64]] = _1681 + -mem[64] + 189
                        mem[64] = _1681 + 221
                        mem[0] = sha3(mem[_2703 + 32 len mem[_2703]])
                        mem[32] = 56
                        _2706 = sha3(mem[0], 56)
                        mem[_1681 + 253] = address(msg.sender)
                        mem[_1681 + 273] = delegate.return_data[0]
                        mem[_1681 + 221] = 52
                        mem[64] = _1681 + 369
                        mem[_1681 + 305] = 9
                        mem[_1681 + 337] = 'numTokens'
                        mem[_1681 + 401] = sha3(msg.sender, delegate.return_data[0])
                        t = _1681 + 337
                        u = _1681 + 433
                        s = 9
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_1681 + 433] = mem[_1681 + 442 len 23] or numTokens
                        _3795 = mem[64]
                        mem[mem[64]] = _1681 + -mem[64] + 410
                        mem[64] = _1681 + 442
                        mem[0] = sha3(mem[_3795 + 32 len mem[_3795]])
                        if _1327 < stor[_2706]:
                            revert with 0, 'invalid position'
                        if _1327 <= numTokens[mem[0]]:
                            if _1327 > numTokens[mem[0]]:
                                revert with 0, 'invalid position'
                            mem[0] = msg.sender
                            mem[32] = 55
                            require ext_code.size(0xe9b3378c206c93d8811e04bed749784cedd23e4b)
                            delegate 0xe9b3378c206c93d8811e04bed749784cedd23e4b.0x9735c51b with:
                                 gas gas_remaining wei
                                args sha3(msg.sender, 55), _1329, _1323, delegate.return_data[0]
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_1681 + 474] = address(msg.sender)
                            mem[_1681 + 494] = _1323
                            mem[_1681 + 442] = 52
                            mem[64] = _1681 + 590
                            mem[_1681 + 526] = 9
                            mem[_1681 + 558] = 'numTokens'
                            mem[_1681 + 622] = sha3(msg.sender, _1323)
                            t = _1681 + 558
                            u = _1681 + 654
                            s = 9
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_1681 + 654] = mem[_1681 + 663 len 23] or numTokens
                            _4789 = mem[64]
                            mem[mem[64]] = _1681 + -mem[64] + 631
                            mem[64] = _1681 + 663
                            mem[0] = sha3(mem[_4789 + 32 len mem[_4789]])
                            mem[32] = 56
                            numTokens[mem[0]] = _1327
                            mem[64] = _1681 + 727
                            mem[_1681 + 663] = 10
                            mem[_1681 + 695] = 'commitHash'
                            mem[_1681 + 759] = sha3(msg.sender, _1323)
                            t = _1681 + 695
                            u = _1681 + 791
                            s = 10
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_1681 + 791] = mem[_1681 + 801 len 22] or commitHash
                            _5293 = mem[64]
                            mem[mem[64]] = _1681 + -mem[64] + 769
                            mem[64] = _1681 + 801
                            mem[0] = sha3(mem[_5293 + 32 len mem[_5293]])
                        else:
                            if delegate.return_data[0]:
                                revert with 0, 'invalid position'
                            mem[0] = msg.sender
                            mem[32] = 55
                            require ext_code.size(0xe9b3378c206c93d8811e04bed749784cedd23e4b)
                            delegate 0xe9b3378c206c93d8811e04bed749784cedd23e4b.0x9735c51b with:
                                 gas gas_remaining wei
                                args sha3(msg.sender, 55), _1329, _1323, delegate.return_data[0]
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_1681 + 474] = address(msg.sender)
                            mem[_1681 + 494] = _1323
                            mem[_1681 + 442] = 52
                            mem[64] = _1681 + 590
                            mem[_1681 + 526] = 9
                            mem[_1681 + 558] = 'numTokens'
                            mem[_1681 + 622] = sha3(msg.sender, _1323)
                            t = _1681 + 558
                            u = _1681 + 654
                            s = 9
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_1681 + 654] = mem[_1681 + 663 len 23] or numTokens
                            _4796 = mem[64]
                            mem[mem[64]] = _1681 + -mem[64] + 631
                            mem[64] = _1681 + 663
                            mem[0] = sha3(mem[_4796 + 32 len mem[_4796]])
                            mem[32] = 56
                            numTokens[mem[0]] = _1327
                            mem[64] = _1681 + 727
                            mem[_1681 + 663] = 10
                            mem[_1681 + 695] = 'commitHash'
                            mem[_1681 + 759] = sha3(msg.sender, _1323)
                            t = _1681 + 695
                            u = _1681 + 791
                            s = 10
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_1681 + 791] = mem[_1681 + 801 len 22] or commitHash
                            _5300 = mem[64]
                            mem[mem[64]] = _1681 + -mem[64] + 769
                            mem[64] = _1681 + 801
                            mem[0] = sha3(mem[_5300 + 32 len mem[_5300]])
                        numTokens[mem[0]] = _1325
                        mem[0] = msg.sender
                        mem[32] = sha3(_1323, 53) + 5
                        uint8(pollMap[_1323][5][msg.sender].field_0) = 1
                        mem[_1681 + 801] = _1327
                    else:
                        mem[0] = msg.sender
                        mem[32] = 55
                        require ext_code.size(0xe9b3378c206c93d8811e04bed749784cedd23e4b)
                        delegate 0xe9b3378c206c93d8811e04bed749784cedd23e4b.0x7d29ac9 with:
                             gas gas_remaining wei
                            args sha3(msg.sender, 55), _1323
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        _1808 = mem[64]
                        mem[mem[64] + 32] = address(msg.sender)
                        mem[mem[64] + 52] = _1329
                        _1809 = mem[64]
                        mem[mem[64]] = 52
                        mem[64] = mem[64] + 84
                        _1811 = sha3(mem[_1809 + 32 len mem[_1809]])
                        mem[64] = _1808 + 148
                        mem[_1808 + 84] = 9
                        mem[_1808 + 116] = 'numTokens'
                        mem[_1808 + 180] = _1811
                        t = _1808 + 116
                        u = _1808 + 212
                        s = 9
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_1808 + 212] = mem[_1808 + 221 len 23] or numTokens
                        _2710 = mem[64]
                        mem[mem[64]] = _1808 + -mem[64] + 189
                        mem[64] = _1808 + 221
                        mem[0] = sha3(mem[_2710 + 32 len mem[_2710]])
                        mem[32] = 56
                        _2713 = sha3(mem[0], 56)
                        mem[_1808 + 253] = address(msg.sender)
                        mem[_1808 + 273] = delegate.return_data[0]
                        mem[_1808 + 221] = 52
                        mem[64] = _1808 + 369
                        mem[_1808 + 305] = 9
                        mem[_1808 + 337] = 'numTokens'
                        mem[_1808 + 401] = sha3(msg.sender, delegate.return_data[0])
                        t = _1808 + 337
                        u = _1808 + 433
                        s = 9
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_1808 + 433] = mem[_1808 + 442 len 23] or numTokens
                        _3802 = mem[64]
                        mem[mem[64]] = _1808 + -mem[64] + 410
                        mem[64] = _1808 + 442
                        mem[0] = sha3(mem[_3802 + 32 len mem[_3802]])
                        if _1327 < stor[_2713]:
                            revert with 0, 'invalid position'
                        if _1327 <= numTokens[mem[0]]:
                            if _1327 > numTokens[mem[0]]:
                                revert with 0, 'invalid position'
                            mem[0] = msg.sender
                            mem[32] = 55
                            require ext_code.size(0xe9b3378c206c93d8811e04bed749784cedd23e4b)
                            delegate 0xe9b3378c206c93d8811e04bed749784cedd23e4b.0x9735c51b with:
                                 gas gas_remaining wei
                                args sha3(msg.sender, 55), _1329, _1323, delegate.return_data[0]
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_1808 + 474] = address(msg.sender)
                            mem[_1808 + 494] = _1323
                            mem[_1808 + 442] = 52
                            mem[64] = _1808 + 590
                            mem[_1808 + 526] = 9
                            mem[_1808 + 558] = 'numTokens'
                            mem[_1808 + 622] = sha3(msg.sender, _1323)
                            t = _1808 + 558
                            u = _1808 + 654
                            s = 9
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_1808 + 654] = mem[_1808 + 663 len 23] or numTokens
                            _4803 = mem[64]
                            mem[mem[64]] = _1808 + -mem[64] + 631
                            mem[64] = _1808 + 663
                            mem[0] = sha3(mem[_4803 + 32 len mem[_4803]])
                            mem[32] = 56
                            numTokens[mem[0]] = _1327
                            mem[64] = _1808 + 727
                            mem[_1808 + 663] = 10
                            mem[_1808 + 695] = 'commitHash'
                            mem[_1808 + 759] = sha3(msg.sender, _1323)
                            t = _1808 + 695
                            u = _1808 + 791
                            s = 10
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_1808 + 791] = mem[_1808 + 801 len 22] or commitHash
                            _5307 = mem[64]
                            mem[mem[64]] = _1808 + -mem[64] + 769
                            mem[64] = _1808 + 801
                            mem[0] = sha3(mem[_5307 + 32 len mem[_5307]])
                        else:
                            if delegate.return_data[0]:
                                revert with 0, 'invalid position'
                            mem[0] = msg.sender
                            mem[32] = 55
                            require ext_code.size(0xe9b3378c206c93d8811e04bed749784cedd23e4b)
                            delegate 0xe9b3378c206c93d8811e04bed749784cedd23e4b.0x9735c51b with:
                                 gas gas_remaining wei
                                args sha3(msg.sender, 55), _1329, _1323, delegate.return_data[0]
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_1808 + 474] = address(msg.sender)
                            mem[_1808 + 494] = _1323
                            mem[_1808 + 442] = 52
                            mem[64] = _1808 + 590
                            mem[_1808 + 526] = 9
                            mem[_1808 + 558] = 'numTokens'
                            mem[_1808 + 622] = sha3(msg.sender, _1323)
                            t = _1808 + 558
                            u = _1808 + 654
                            s = 9
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_1808 + 654] = mem[_1808 + 663 len 23] or numTokens
                            _4810 = mem[64]
                            mem[mem[64]] = _1808 + -mem[64] + 631
                            mem[64] = _1808 + 663
                            mem[0] = sha3(mem[_4810 + 32 len mem[_4810]])
                            mem[32] = 56
                            numTokens[mem[0]] = _1327
                            mem[64] = _1808 + 727
                            mem[_1808 + 663] = 10
                            mem[_1808 + 695] = 'commitHash'
                            mem[_1808 + 759] = sha3(msg.sender, _1323)
                            t = _1808 + 695
                            u = _1808 + 791
                            s = 10
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_1808 + 791] = mem[_1808 + 801 len 22] or commitHash
                            _5314 = mem[64]
                            mem[mem[64]] = _1808 + -mem[64] + 769
                            mem[64] = _1808 + 801
                            mem[0] = sha3(mem[_5314 + 32 len mem[_5314]])
                        numTokens[mem[0]] = _1325
                        mem[0] = msg.sender
                        mem[32] = sha3(_1323, 53) + 5
                        uint8(pollMap[_1323][5][msg.sender].field_0) = 1
                        mem[_1808 + 801] = _1327
        emit _VoteCommitted(_1327, _1323, msg.sender);
        idx = idx + 1
        continue 
}



}
