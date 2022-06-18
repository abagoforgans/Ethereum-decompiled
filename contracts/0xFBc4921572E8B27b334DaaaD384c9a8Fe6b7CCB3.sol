contract main {




// =====================  Runtime code  =====================


const INITIAL_POLL_NONCE = 0


uint256 pollNonce;
mapping of struct pollMap;
mapping of uint256 voteTokenBalance;
address tokenAddress;

function voteTokenBalance(address arg1) {
    return voteTokenBalance[arg1]
}

function pollMap(uint256 arg1) {
    return pollMap[arg1].field_0, 
           pollMap[arg1].field_256,
           pollMap[arg1].field_512,
           pollMap[arg1].field_768,
           pollMap[arg1].field_1024
}

function pollNonce() {
    return pollNonce
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function isExpired(uint256 arg1) {
    return (block.timestamp > arg1)
}

function attrUUID(address arg1, uint256 arg2) {
    return sha3(arg1, arg2)
}

function pollEnded(uint256 arg1) {
    if not pollMap[arg1].field_0:
        require not pollMap[arg1].field_256
        require pollMap[arg1].field_0
    require pollMap[arg1].field_256
    require pollMap[arg1].field_0
    require pollMap[arg1].field_256
    return (block.timestamp > pollMap[arg1].field_256)
}

function commitPeriodActive(uint256 arg1) {
    if not pollMap[arg1].field_0:
        require not pollMap[arg1].field_256
        require pollMap[arg1].field_0
    require pollMap[arg1].field_256
    require pollMap[arg1].field_0
    require pollMap[arg1].field_256
    return block.timestamp <= pollMap[arg1].field_0
}

function startPoll(uint256 arg1, uint256 arg2, uint256 arg3) {
    pollNonce++
    pollMap[stor0].field_0 = block.timestamp + arg2
    pollMap[stor0].field_256 = block.timestamp + arg2 + arg3
    pollMap[stor0].field_512 = arg1
    pollMap[stor0].field_768 = 0
    pollMap[stor0].field_1024 = 0
    emit PollCreated(arg1, arg2, arg3, pollNonce);
    return pollNonce
}

function getLastNode(address arg1) {
    require ext_code.size(0x21ba9220a7fb001ec41bbd1451012fd2e5826c11)
    delegate 0x21ba9220a7fb001ec41bbd1451012fd2e5826c11.0x30fe0a0a with:
         gas gas_remaining wei
        args sha3(address(arg1), 3), 0
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function getNumTokens(address arg1, uint256 arg2) {
    require ext_code.size(0xdebb9708e555078c72e87461232db96f2e6196ed)
    delegate 0xdebb9708e555078c72e87461232db96f2e6196ed.0x50389f5c with:
         gas gas_remaining wei
        args 0, 4, sha3(arg1, arg2), 96, 9, 'numTokens'
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function getCommitHash(address arg1, uint256 arg2) {
    require ext_code.size(0xdebb9708e555078c72e87461232db96f2e6196ed)
    delegate 0xdebb9708e555078c72e87461232db96f2e6196ed.0x50389f5c with:
         gas gas_remaining wei
        args 0, 4, sha3(arg1, arg2), 96, 10, 'commitHash'
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function pollExists(uint256 arg1) {
    if pollMap[arg1].field_0:
        require pollMap[arg1].field_256
        if pollMap[arg1].field_0:
            if pollMap[arg1].field_256:
                return 1
    else:
        require not pollMap[arg1].field_256
        if pollMap[arg1].field_0:
            require pollMap[arg1].field_256
            if pollMap[arg1].field_0:
                if pollMap[arg1].field_256:
                    return 1
    return 0
}

function isPassed(uint256 arg1) {
    if not pollMap[arg1].field_0:
        require not pollMap[arg1].field_256
        require pollMap[arg1].field_0
    require pollMap[arg1].field_256
    require pollMap[arg1].field_0
    require pollMap[arg1].field_256
    require block.timestamp > pollMap[arg1].field_256
    return (100 * pollMap[arg1].field_768 > (pollMap[arg1].field_768 * pollMap[arg1].field_512) + (pollMap[arg1].field_1024 * pollMap[arg1].field_512))
}

function revealPeriodActive(uint256 arg1) {
    if not pollMap[arg1].field_0:
        require not pollMap[arg1].field_256
        require pollMap[arg1].field_0
    require pollMap[arg1].field_256
    require pollMap[arg1].field_0
    require pollMap[arg1].field_256
    if block.timestamp > pollMap[arg1].field_256:
        return block.timestamp <= pollMap[arg1].field_256
    if not pollMap[arg1].field_0:
        require not pollMap[arg1].field_256
        require pollMap[arg1].field_0
    require pollMap[arg1].field_256
    require pollMap[arg1].field_0
    require pollMap[arg1].field_256
    return (block.timestamp > pollMap[arg1].field_0)
}

function hasBeenRevealed(address arg1, uint256 arg2) {
    if not pollMap[arg2].field_0:
        require not pollMap[arg2].field_256
        require pollMap[arg2].field_0
    require pollMap[arg2].field_256
    require pollMap[arg2].field_0
    require pollMap[arg2].field_256
    require ext_code.size(0x21ba9220a7fb001ec41bbd1451012fd2e5826c11)
    delegate 0x21ba9220a7fb001ec41bbd1451012fd2e5826c11.0x366a5ba2 with:
         gas gas_remaining wei
        args sha3(address(arg1), 3), arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return not bool(delegate.return_data[0])
}

function requestVotingRights(uint256 arg1) {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= arg1
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    voteTokenBalance[address(msg.sender)] += arg1
    emit VotingRightsGranted(msg.sender, arg1);
}

function getLockedTokens(address arg1) {
    require ext_code.size(0x21ba9220a7fb001ec41bbd1451012fd2e5826c11)
    delegate 0x21ba9220a7fb001ec41bbd1451012fd2e5826c11.0x30fe0a0a with:
         gas gas_remaining wei
        args sha3(address(arg1), 3), 0
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xdebb9708e555078c72e87461232db96f2e6196ed)
    delegate 0xdebb9708e555078c72e87461232db96f2e6196ed.0x50389f5c with:
         gas gas_remaining wei
        args 0, 4, sha3(arg1, delegate.return_data[0]), 96, 9, 'numTokens'
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function getTotalNumberOfTokensForWinningOption(uint256 arg1) {
    if not pollMap[arg1].field_0:
        require not pollMap[arg1].field_256
        require pollMap[arg1].field_0
    require pollMap[arg1].field_256
    require pollMap[arg1].field_0
    require pollMap[arg1].field_256
    require block.timestamp > pollMap[arg1].field_256
    if not pollMap[arg1].field_0:
        require not pollMap[arg1].field_256
        require pollMap[arg1].field_0
    require pollMap[arg1].field_256
    require pollMap[arg1].field_0
    require pollMap[arg1].field_256
    require block.timestamp > pollMap[arg1].field_256
    if 100 * pollMap[arg1].field_768 <= (pollMap[arg1].field_768 * pollMap[arg1].field_512) + (pollMap[arg1].field_1024 * pollMap[arg1].field_512):
        return pollMap[arg1].field_1024
    return pollMap[arg1].field_768
}

function validPosition(uint256 arg1, uint256 arg2, address arg3, uint256 arg4) {
    require ext_code.size(0xdebb9708e555078c72e87461232db96f2e6196ed)
    delegate 0xdebb9708e555078c72e87461232db96f2e6196ed.0x50389f5c with:
         gas gas_remaining wei
        args 0, 4, sha3(arg3, arg1), 96, 9, 'numTokens'
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xdebb9708e555078c72e87461232db96f2e6196ed)
    delegate 0xdebb9708e555078c72e87461232db96f2e6196ed.0x50389f5c with:
         gas gas_remaining wei
        args 0, 4, sha3(arg3, arg2), 96, 9, 'numTokens'
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg4 < delegate.return_data[0]:
        return arg4 >= delegate.return_data[0]
    if arg4 <= delegate.return_data[0]:
        return arg4 <= delegate.return_data[0]
    return not arg2
}

function rescueTokens(uint256 arg1) {
    if not pollMap[arg1].field_0:
        require not pollMap[arg1].field_256
        require pollMap[arg1].field_0
    require pollMap[arg1].field_256
    require pollMap[arg1].field_0
    require pollMap[arg1].field_256
    require block.timestamp > pollMap[arg1].field_256
    if not pollMap[arg1].field_0:
        require not pollMap[arg1].field_256
        require pollMap[arg1].field_0
    require pollMap[arg1].field_256
    require pollMap[arg1].field_0
    require pollMap[arg1].field_256
    require ext_code.size(0x21ba9220a7fb001ec41bbd1451012fd2e5826c11)
    delegate 0x21ba9220a7fb001ec41bbd1451012fd2e5826c11.0x366a5ba2 with:
         gas gas_remaining wei
        args sha3(address(msg.sender), 3), arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require delegate.return_data[0]
    require ext_code.size(0x21ba9220a7fb001ec41bbd1451012fd2e5826c11)
    delegate 0x21ba9220a7fb001ec41bbd1451012fd2e5826c11.0x6d900ed0 with:
         gas gas_remaining wei
        args sha3(address(msg.sender), 3), arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawVotingRights(uint256 arg1) {
    require ext_code.size(0x21ba9220a7fb001ec41bbd1451012fd2e5826c11)
    delegate 0x21ba9220a7fb001ec41bbd1451012fd2e5826c11.0x30fe0a0a with:
         gas gas_remaining wei
        args sha3(address(msg.sender), 3), 0
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xdebb9708e555078c72e87461232db96f2e6196ed)
    delegate 0xdebb9708e555078c72e87461232db96f2e6196ed.0x50389f5c with:
         gas gas_remaining wei
        args 0, 4, sha3(msg.sender, delegate.return_data[0]), 96, 9, 'numTokens'
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require voteTokenBalance[address(msg.sender)] - delegate.return_data[0] >= arg1
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    voteTokenBalance[address(msg.sender)] -= arg1
    emit VotingRightsWithdrawn(msg.sender, arg1);
}

function getInsertPointForNumTokens(address arg1, uint256 arg2) {
    require ext_code.size(0x21ba9220a7fb001ec41bbd1451012fd2e5826c11)
    delegate 0x21ba9220a7fb001ec41bbd1451012fd2e5826c11.0x30fe0a0a with:
         gas gas_remaining wei
        args sha3(address(arg1), 3), 0
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xdebb9708e555078c72e87461232db96f2e6196ed)
    delegate 0xdebb9708e555078c72e87461232db96f2e6196ed.0x50389f5c with:
         gas gas_remaining wei
        args 0, 4, sha3(arg1, delegate.return_data[0]), 96, 9, 'numTokens'
    mem[96] = delegate.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = mem[96]
    s = delegate.return_data[0]
    while idx:
        mem[164] = 96
        mem[196] = 9
        mem[228] = 'numTokens'
        require ext_code.size(0xdebb9708e555078c72e87461232db96f2e6196ed)
        delegate 0xdebb9708e555078c72e87461232db96f2e6196ed.0x50389f5c with:
             gas gas_remaining wei
            args 4, sha3(arg1, s), Array(len=9, data='numTokens')
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if delegate.return_data[0] < arg2:
            return s
        mem[0] = arg1
        mem[32] = 3
        mem[100] = sha3(address(arg1), 3)
        mem[132] = s
        require ext_code.size(0x21ba9220a7fb001ec41bbd1451012fd2e5826c11)
        delegate 0x21ba9220a7fb001ec41bbd1451012fd2e5826c11.0x30fe0a0a with:
             gas gas_remaining wei
            args sha3(address(arg1), 3), s
        mem[96] = delegate.return_data[0]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = delegate.return_data[0]
        s = delegate.return_data[0]
        continue 
    return s
}

function getNumPassingTokens(address arg1, uint256 arg2, uint256 arg3) {
    if not pollMap[arg2].field_0:
        require not pollMap[arg2].field_256
        require pollMap[arg2].field_0
    require pollMap[arg2].field_256
    require pollMap[arg2].field_0
    require pollMap[arg2].field_256
    require block.timestamp > pollMap[arg2].field_256
    if not pollMap[arg2].field_0:
        require not pollMap[arg2].field_256
        require pollMap[arg2].field_0
    require pollMap[arg2].field_256
    require pollMap[arg2].field_0
    require pollMap[arg2].field_256
    require ext_code.size(0x21ba9220a7fb001ec41bbd1451012fd2e5826c11)
    delegate 0x21ba9220a7fb001ec41bbd1451012fd2e5826c11.0x366a5ba2 with:
         gas gas_remaining wei
        args sha3(address(arg1), 3), arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not delegate.return_data[0]
    if not pollMap[arg2].field_0:
        require not pollMap[arg2].field_256
        require pollMap[arg2].field_0
    require pollMap[arg2].field_256
    require pollMap[arg2].field_0
    require pollMap[arg2].field_256
    require block.timestamp > pollMap[arg2].field_256
    require ext_code.size(0xdebb9708e555078c72e87461232db96f2e6196ed)
    delegate 0xdebb9708e555078c72e87461232db96f2e6196ed.0x50389f5c with:
         gas gas_remaining wei
        args 4, sha3(arg1, arg2), Array(len=10, data='commitHash')
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 100 * pollMap[arg2].field_768 > (pollMap[arg2].field_768 * pollMap[arg2].field_512) + (pollMap[arg2].field_1024 * pollMap[arg2].field_512):
        require sha3(1, arg3) == delegate.return_data[0]
    else:
        require sha3(0, arg3) == delegate.return_data[0]
    require ext_code.size(0xdebb9708e555078c72e87461232db96f2e6196ed)
    delegate 0xdebb9708e555078c72e87461232db96f2e6196ed.0x50389f5c with:
         gas gas_remaining wei
        args 4, sha3(arg1, arg2), Array(len=9, data='numTokens')
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function revealVote(uint256 arg1, uint256 arg2, uint256 arg3) {
    if not pollMap[arg1].field_0:
        require not pollMap[arg1].field_256
        require pollMap[arg1].field_0
    require pollMap[arg1].field_256
    require pollMap[arg1].field_0
    require pollMap[arg1].field_256
    require block.timestamp <= pollMap[arg1].field_256
    if not pollMap[arg1].field_0:
        require not pollMap[arg1].field_256
        require pollMap[arg1].field_0
    require pollMap[arg1].field_256
    require pollMap[arg1].field_0
    require pollMap[arg1].field_256
    require block.timestamp > pollMap[arg1].field_0
    if not pollMap[arg1].field_0:
        require not pollMap[arg1].field_256
        require pollMap[arg1].field_0
    require pollMap[arg1].field_256
    require pollMap[arg1].field_0
    require pollMap[arg1].field_256
    require ext_code.size(0x21ba9220a7fb001ec41bbd1451012fd2e5826c11)
    delegate 0x21ba9220a7fb001ec41bbd1451012fd2e5826c11.0x366a5ba2 with:
         gas gas_remaining wei
        args sha3(address(msg.sender), 3), arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require delegate.return_data[0]
    require ext_code.size(0xdebb9708e555078c72e87461232db96f2e6196ed)
    delegate 0xdebb9708e555078c72e87461232db96f2e6196ed.0x50389f5c with:
         gas gas_remaining wei
        args 0, 4, sha3(msg.sender, arg1), 96, 10, 'commitHash'
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require sha3(arg2, arg3) == delegate.return_data[0]
    require ext_code.size(0xdebb9708e555078c72e87461232db96f2e6196ed)
    delegate 0xdebb9708e555078c72e87461232db96f2e6196ed.0x50389f5c with:
         gas gas_remaining wei
        args 0, 4, sha3(msg.sender, arg1), 96, 9, 'numTokens'
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 != 1:
        pollMap[arg1].field_1024 += delegate.return_data[0]
    else:
        pollMap[arg1].field_768 += delegate.return_data[0]
    require ext_code.size(0x21ba9220a7fb001ec41bbd1451012fd2e5826c11)
    delegate 0x21ba9220a7fb001ec41bbd1451012fd2e5826c11.0x6d900ed0 with:
         gas gas_remaining wei
        args sha3(address(msg.sender), 3), arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    emit VoteRevealed(address(msg.sender), arg1, delegate.return_data[0], arg2);
}

function commitVote(uint256 arg1, bytes32 arg2, uint256 arg3, uint256 arg4) {
    if not pollMap[arg1].field_0:
        require not pollMap[arg1].field_256
        require pollMap[arg1].field_0
    require pollMap[arg1].field_256
    require pollMap[arg1].field_0
    require pollMap[arg1].field_256
    require block.timestamp <= pollMap[arg1].field_0
    require voteTokenBalance[address(msg.sender)] >= arg3
    require arg1
    if arg4:
        require ext_code.size(0xdebb9708e555078c72e87461232db96f2e6196ed)
        delegate 0xdebb9708e555078c72e87461232db96f2e6196ed.0x50389f5c with:
             gas gas_remaining wei
            args 0, 4, sha3(msg.sender, arg4), 96, 10, 'commitHash'
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require delegate.return_data[0]
    require ext_code.size(0x21ba9220a7fb001ec41bbd1451012fd2e5826c11)
    delegate 0x21ba9220a7fb001ec41bbd1451012fd2e5826c11.0x7d29ac9 with:
         gas gas_remaining wei
        args sha3(address(msg.sender), 3), arg4
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if delegate.return_data[0] == arg1:
        require ext_code.size(0x21ba9220a7fb001ec41bbd1451012fd2e5826c11)
        delegate 0x21ba9220a7fb001ec41bbd1451012fd2e5826c11.0x7d29ac9 with:
             gas gas_remaining wei
            args sha3(address(msg.sender), 3), arg1
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    require ext_code.size(0xdebb9708e555078c72e87461232db96f2e6196ed)
    delegate 0xdebb9708e555078c72e87461232db96f2e6196ed.0x50389f5c with:
         gas gas_remaining wei
        args 0, 4, sha3(msg.sender, arg4), 96, 9, 'numTokens'
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xdebb9708e555078c72e87461232db96f2e6196ed)
    delegate 0xdebb9708e555078c72e87461232db96f2e6196ed.0x50389f5c with:
         gas gas_remaining wei
        args 0, 4, sha3(msg.sender, delegate.return_data[0]), 96, 9, 'numTokens'
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg3 >= delegate.return_data[0]
    if arg3 <= delegate.return_data[0]:
        require arg3 <= delegate.return_data[0]
    else:
        require not delegate.return_data[0]
    require ext_code.size(0x21ba9220a7fb001ec41bbd1451012fd2e5826c11)
    delegate 0x21ba9220a7fb001ec41bbd1451012fd2e5826c11.0x9735c51b with:
         gas gas_remaining wei
        args 0, uint32(sha3(address(msg.sender), 3)), arg4, arg1, delegate.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xdebb9708e555078c72e87461232db96f2e6196ed)
    delegate 0xdebb9708e555078c72e87461232db96f2e6196ed.0x977aa031 with:
         gas gas_remaining wei
        args 0, 4, sha3(msg.sender, arg1), 128, arg3, 9, 'numTokens'
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xdebb9708e555078c72e87461232db96f2e6196ed)
    delegate 0xdebb9708e555078c72e87461232db96f2e6196ed.0x977aa031 with:
         gas gas_remaining wei
        args 0, 4, sha3(msg.sender, arg1), 128, arg2, 10, 'commitHash'
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    emit VoteCommitted(msg.sender, arg1, arg3);
}



}
