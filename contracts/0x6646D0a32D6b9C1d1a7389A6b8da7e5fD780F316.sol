contract main {




// =====================  Runtime code  =====================


#
#  - redeem(bytes32 arg1, address arg2, bool[4] arg3)
#
mapping of struct stor0;
mapping of struct organizationsProposals;
mapping of struct parameters;

function parameters(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return parameters[arg1].field_0, parameters[arg1].field_256
}

function organizationsProposals(address arg1, bytes32 arg2) payable {
    require calldata.size - 4 >= 64
    return organizationsProposals[arg1][arg2].field_0, 
           organizationsProposals[arg1][arg2].field_256,
           organizationsProposals[arg1][arg2].field_512,
           organizationsProposals[arg1][arg2].field_768,
           organizationsProposals[arg1][arg2].field_1024,
           organizationsProposals[arg1][arg2].field_1280,
           organizationsProposals[arg1][arg2].field_1536,
           organizationsProposals[arg1][arg2].field_1792,
           organizationsProposals[arg1][arg2].field_2048
}

function getProposalExternalTokenReward(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return organizationsProposals[address(arg2)][arg1].field_1024
}

function getProposalExecutionTime(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return organizationsProposals[address(arg2)][arg1].field_2048
}

function getProposalEthReward(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return organizationsProposals[address(arg2)][arg1].field_512
}

function getRedeemedPeriods(bytes32 arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 < 4
    return organizationsProposals[address(arg2)][arg1][arg3].field_2304
}

function getProposalExternalToken(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return organizationsProposals[address(arg2)][arg1].field_768
}

function _fallback() payable {
    revert
}

function getParametersHash(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return sha3(arg1, arg2)
}

function proposalsInfo(address arg1, bytes32 arg2) payable {
    require calldata.size - 4 >= 64
    return stor0[arg1][arg2].field_0, stor0[arg1][arg2].field_256
}

function setParameters(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    parameters[arg1][arg2].field_0 = arg1
    parameters[arg1][arg2].field_256 = arg2
    return sha3(arg1, arg2)
}

function balanceOfStakingToken(address arg1, bytes32 arg2) payable {
    require calldata.size - 4 >= 64
    if not stor0[msg.sender][arg2].field_256:
        return 0
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args stor0[msg.sender][arg2].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function executeProposal(bytes32 arg1, int256 arg2) payable {
    require calldata.size - 4 >= 64
    if not stor0[msg.sender][arg1].field_256:
        revert with 0, '1only VotingMachine'
    require not organizationsProposals[stor0[msg.sender][arg1].field_256][arg1].field_2048
    require organizationsProposals[stor0[msg.sender][arg1].field_256][arg1].field_1280
    if 1 == arg2:
        organizationsProposals[stor0[msg.sender][arg1].field_256][arg1].field_2048 = block.timestamp
    emit ProposalExecuted(arg2, stor0[msg.sender][arg1].field_256, arg1);
    return 1
}

function getTotalReputationSupply(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor0[msg.sender][arg1].field_256:
        return 0
    require ext_code.size(stor0[msg.sender][arg1].field_256)
    staticcall stor0[msg.sender][arg1].field_256.nativeReputation() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).totalSupplyAt(uint256 arg1) with:
            gas gas_remaining wei
           args stor0[msg.sender][arg1].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function reputationOf(address arg1, bytes32 arg2) payable {
    require calldata.size - 4 >= 64
    if not stor0[msg.sender][arg2].field_256:
        return 0
    require ext_code.size(stor0[msg.sender][arg2].field_256)
    staticcall stor0[msg.sender][arg2].field_256.nativeReputation() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).balanceOfAt(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args address(arg1), stor0[msg.sender][arg2].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function mintReputation(uint256 arg1, address arg2, bytes32 arg3) payable {
    require calldata.size - 4 >= 96
    if not stor0[msg.sender][arg3].field_256:
        revert with 0, '1only VotingMachine'
    if not stor0[msg.sender][arg3].field_256:
        return 0
    require ext_code.size(stor0[msg.sender][arg3].field_256)
    staticcall stor0[msg.sender][arg3].field_256.0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).mintReputation(uint256 arg1, address arg2, address arg3) with:
         gas gas_remaining wei
        args arg1, address(arg2), stor0[msg.sender][arg3].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function burnReputation(uint256 arg1, address arg2, bytes32 arg3) payable {
    require calldata.size - 4 >= 96
    if not stor0[msg.sender][arg3].field_256:
        revert with 0, '1only VotingMachine'
    if not stor0[msg.sender][arg3].field_256:
        return 0
    require ext_code.size(stor0[msg.sender][arg3].field_256)
    staticcall stor0[msg.sender][arg3].field_256.0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).burnReputation(uint256 arg1, address arg2, address arg3) with:
         gas gas_remaining wei
        args arg1, address(arg2), stor0[msg.sender][arg3].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function stakingTokenTransfer(address arg1, address arg2, uint256 arg3, bytes32 arg4) payable {
    require calldata.size - 4 >= 128
    if not stor0[msg.sender][arg4].field_256:
        revert with 0, '1only VotingMachine'
    if not stor0[msg.sender][arg4].field_256:
        return 0
    require ext_code.size(stor0[msg.sender][arg4].field_256)
    staticcall stor0[msg.sender][arg4].field_256.0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).externalTokenTransfer(address arg1, address arg2, uint256 arg3, address arg4) with:
         gas gas_remaining wei
        args 0, 0, address(arg2), arg3, stor0[msg.sender][arg4].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function getPeriodsToPay(bytes32 arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if arg3 > 3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x7773686f756c6420626520696e207468652072656465656d6564506572696f64732072616e67,
                    mem[202 len 26]
    mem[960] = organizationsProposals[address(arg2)][arg1].field_2304
    idx = 960
    s = 9
    while 1088 > idx + 32:
        mem[idx + 32] = organizationsProposals[address(arg2)][arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if 0 == organizationsProposals[address(arg2)][arg1].field_2048:
        return 0
    if organizationsProposals[address(arg2)][arg1].field_1536 <= 0:
        require arg3 < 4
        if 0 == organizationsProposals[address(arg2)][arg1].field_1536:
            require mem[(32 * arg3) + 960] <= organizationsProposals[address(arg2)][arg1].field_1792
            mem[1088] = organizationsProposals[address(arg2)][arg1].field_1792 - mem[(32 * arg3) + 960]
        else:
            if 0 < organizationsProposals[address(arg2)][arg1].field_1792:
                require mem[(32 * arg3) + 960] <= 0
                mem[1088] = -mem[(32 * arg3) + 960]
            else:
                require mem[(32 * arg3) + 960] <= organizationsProposals[address(arg2)][arg1].field_1792
                mem[1088] = organizationsProposals[address(arg2)][arg1].field_1792 - mem[(32 * arg3) + 960]
    else:
        require organizationsProposals[address(arg2)][arg1].field_2048 <= block.timestamp
        require organizationsProposals[address(arg2)][arg1].field_1536
        require arg3 < 4
        if 0 == organizationsProposals[address(arg2)][arg1].field_1536:
            require mem[(32 * arg3) + 960] <= organizationsProposals[address(arg2)][arg1].field_1792
            mem[1088] = organizationsProposals[address(arg2)][arg1].field_1792 - mem[(32 * arg3) + 960]
        else:
            if block.timestamp - organizationsProposals[address(arg2)][arg1].field_2048 / organizationsProposals[address(arg2)][arg1].field_1536 < organizationsProposals[address(arg2)][arg1].field_1792:
                require mem[(32 * arg3) + 960] <= block.timestamp - organizationsProposals[address(arg2)][arg1].field_2048 / organizationsProposals[address(arg2)][arg1].field_1536
                mem[1088] = (block.timestamp - organizationsProposals[address(arg2)][arg1].field_2048 / organizationsProposals[address(arg2)][arg1].field_1536) - mem[(32 * arg3) + 960]
            else:
                require mem[(32 * arg3) + 960] <= organizationsProposals[address(arg2)][arg1].field_1792
                mem[1088] = organizationsProposals[address(arg2)][arg1].field_1792 - mem[(32 * arg3) + 960]
    return memory
      from 1088
       len 32
}

function redeemNativeToken(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    idx = 960
    s = 9
    while 1088 > idx + 32:
        mem[idx + 32] = organizationsProposals[address(arg2)][arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require organizationsProposals[address(arg2)][arg1].field_2048
    idx = 1952
    s = 9
    while 2080 > idx + 32:
        mem[idx + 32] = organizationsProposals[address(arg2)][arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if 0 == organizationsProposals[address(arg2)][arg1].field_2048:
        organizationsProposals[address(arg2)][arg1].field_0 = 0
        return 0
    if organizationsProposals[address(arg2)][arg1].field_1536 <= 0:
        if organizationsProposals[address(arg2)][arg1].field_1536 != 0:
            if 0 < organizationsProposals[address(arg2)][arg1].field_1792:
                require mem[1984] <= 0
                organizationsProposals[address(arg2)][arg1].field_0 = 0
                if not -mem[1984]:
                    return 0
                require -1 * organizationsProposals[address(arg2)][arg1].field_0 * mem[1984] / -mem[1984] == organizationsProposals[address(arg2)][arg1].field_0
                if -1 * organizationsProposals[address(arg2)][arg1].field_0 * mem[1984] > 0:
                    require ext_code.size(arg2)
                    staticcall arg2.0x8da5cb5b with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).mintTokens(uint256 arg1, address arg2, address arg3) with:
                         gas gas_remaining wei
                        args -1 * organizationsProposals[address(arg2)][arg1].field_0 * mem[1984], organizationsProposals[address(arg2)][arg1].field_1280, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    require -mem[1984] + organizationsProposals[address(arg2)][arg1].field_2560 >= organizationsProposals[address(arg2)][arg1].field_2560
                    organizationsProposals[address(arg2)][arg1].field_2560 -= mem[1984]
                    emit RedeemNativeToken((-1 * organizationsProposals[address(arg2)][arg1].field_0 * mem[1984]), arg2, arg1, organizationsProposals[address(arg2)][arg1].field_1280);
                return (-1 * organizationsProposals[address(arg2)][arg1].field_0 * mem[1984])
    else:
        require organizationsProposals[address(arg2)][arg1].field_2048 <= block.timestamp
        require organizationsProposals[address(arg2)][arg1].field_1536
        if organizationsProposals[address(arg2)][arg1].field_1536 != 0:
            if block.timestamp - organizationsProposals[address(arg2)][arg1].field_2048 / organizationsProposals[address(arg2)][arg1].field_1536 < organizationsProposals[address(arg2)][arg1].field_1792:
                require mem[1984] <= block.timestamp - organizationsProposals[address(arg2)][arg1].field_2048 / organizationsProposals[address(arg2)][arg1].field_1536
                organizationsProposals[address(arg2)][arg1].field_0 = 0
                if not (block.timestamp - organizationsProposals[address(arg2)][arg1].field_2048 / organizationsProposals[address(arg2)][arg1].field_1536) - mem[1984]:
                    return 0
                require (block.timestamp - organizationsProposals[address(arg2)][arg1].field_2048 / organizationsProposals[address(arg2)][arg1].field_1536 * organizationsProposals[address(arg2)][arg1].field_0) - (mem[1984] * organizationsProposals[address(arg2)][arg1].field_0) / (block.timestamp - organizationsProposals[address(arg2)][arg1].field_2048 / organizationsProposals[address(arg2)][arg1].field_1536) - mem[1984] == organizationsProposals[address(arg2)][arg1].field_0
                if (block.timestamp - organizationsProposals[address(arg2)][arg1].field_2048 / organizationsProposals[address(arg2)][arg1].field_1536 * organizationsProposals[address(arg2)][arg1].field_0) - (mem[1984] * organizationsProposals[address(arg2)][arg1].field_0) > 0:
                    require ext_code.size(arg2)
                    staticcall arg2.0x8da5cb5b with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).mintTokens(uint256 arg1, address arg2, address arg3) with:
                         gas gas_remaining wei
                        args (block.timestamp - organizationsProposals[address(arg2)][arg1].field_2048 / organizationsProposals[address(arg2)][arg1].field_1536 * organizationsProposals[address(arg2)][arg1].field_0) - (mem[1984] * organizationsProposals[address(arg2)][arg1].field_0), organizationsProposals[address(arg2)][arg1].field_1280, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    require (block.timestamp - organizationsProposals[address(arg2)][arg1].field_2048 / organizationsProposals[address(arg2)][arg1].field_1536) - mem[1984] + organizationsProposals[address(arg2)][arg1].field_2560 >= organizationsProposals[address(arg2)][arg1].field_2560
                    organizationsProposals[address(arg2)][arg1].field_2560 = (block.timestamp - organizationsProposals[address(arg2)][arg1].field_2048 / organizationsProposals[address(arg2)][arg1].field_1536) - mem[1984] + organizationsProposals[address(arg2)][arg1].field_2560
                    emit RedeemNativeToken(((block.timestamp - organizationsProposals[address(arg2)][arg1].field_2048 / organizationsProposals[address(arg2)][arg1].field_1536 * organizationsProposals[address(arg2)][arg1].field_0) - (mem[1984] * organizationsProposals[address(arg2)][arg1].field_0)), arg2, arg1, organizationsProposals[address(arg2)][arg1].field_1280);
                return ((block.timestamp - organizationsProposals[address(arg2)][arg1].field_2048 / organizationsProposals[address(arg2)][arg1].field_1536 * organizationsProposals[address(arg2)][arg1].field_0) - (mem[1984] * organizationsProposals[address(arg2)][arg1].field_0))
    require mem[1984] <= organizationsProposals[address(arg2)][arg1].field_1792
    organizationsProposals[address(arg2)][arg1].field_0 = 0
    if not organizationsProposals[address(arg2)][arg1].field_1792 - mem[1984]:
        return 0
    require (organizationsProposals[address(arg2)][arg1].field_1792 * organizationsProposals[address(arg2)][arg1].field_0) - (mem[1984] * organizationsProposals[address(arg2)][arg1].field_0) / organizationsProposals[address(arg2)][arg1].field_1792 - mem[1984] == organizationsProposals[address(arg2)][arg1].field_0
    if (organizationsProposals[address(arg2)][arg1].field_1792 * organizationsProposals[address(arg2)][arg1].field_0) - (mem[1984] * organizationsProposals[address(arg2)][arg1].field_0) > 0:
        require ext_code.size(arg2)
        staticcall arg2.0x8da5cb5b with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).mintTokens(uint256 arg1, address arg2, address arg3) with:
             gas gas_remaining wei
            args (organizationsProposals[address(arg2)][arg1].field_1792 * organizationsProposals[address(arg2)][arg1].field_0) - (mem[1984] * organizationsProposals[address(arg2)][arg1].field_0), organizationsProposals[address(arg2)][arg1].field_1280, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require organizationsProposals[address(arg2)][arg1].field_1792 - mem[1984] + organizationsProposals[address(arg2)][arg1].field_2560 >= organizationsProposals[address(arg2)][arg1].field_2560
        organizationsProposals[address(arg2)][arg1].field_2560 = organizationsProposals[address(arg2)][arg1].field_1792 - mem[1984] + organizationsProposals[address(arg2)][arg1].field_2560
        emit RedeemNativeToken(((organizationsProposals[address(arg2)][arg1].field_1792 * organizationsProposals[address(arg2)][arg1].field_0) - (mem[1984] * organizationsProposals[address(arg2)][arg1].field_0)), arg2, arg1, organizationsProposals[address(arg2)][arg1].field_1280);
    return ((organizationsProposals[address(arg2)][arg1].field_1792 * organizationsProposals[address(arg2)][arg1].field_0) - (mem[1984] * organizationsProposals[address(arg2)][arg1].field_0))
}

function redeemEther(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    idx = 960
    s = 9
    while 1088 > idx + 32:
        mem[idx + 32] = organizationsProposals[address(arg2)][arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require organizationsProposals[address(arg2)][arg1].field_2048
    idx = 1952
    s = 9
    while 2080 > idx + 32:
        mem[idx + 32] = organizationsProposals[address(arg2)][arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if 0 == organizationsProposals[address(arg2)][arg1].field_2048:
        organizationsProposals[address(arg2)][arg1].field_512 = 0
        return 0
    if organizationsProposals[address(arg2)][arg1].field_1536 <= 0:
        if organizationsProposals[address(arg2)][arg1].field_1536 != 0:
            if 0 < organizationsProposals[address(arg2)][arg1].field_1792:
                require mem[2016] <= 0
                organizationsProposals[address(arg2)][arg1].field_512 = 0
                if not -mem[2016]:
                    return 0
                require -1 * organizationsProposals[address(arg2)][arg1].field_512 * mem[2016] / -mem[2016] == organizationsProposals[address(arg2)][arg1].field_512
                if -1 * organizationsProposals[address(arg2)][arg1].field_512 * mem[2016] > 0:
                    require ext_code.size(arg2)
                    staticcall arg2.0x8da5cb5b with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).sendEther(uint256 arg1, address arg2, address arg3) with:
                         gas gas_remaining wei
                        args -1 * organizationsProposals[address(arg2)][arg1].field_512 * mem[2016], organizationsProposals[address(arg2)][arg1].field_1280, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    require -mem[2016] + organizationsProposals[address(arg2)][arg1].field_2816 >= organizationsProposals[address(arg2)][arg1].field_2816
                    organizationsProposals[address(arg2)][arg1].field_2816 -= mem[2016]
                    emit RedeemEther((-1 * organizationsProposals[address(arg2)][arg1].field_512 * mem[2016]), arg2, arg1, organizationsProposals[address(arg2)][arg1].field_1280);
                return (-1 * organizationsProposals[address(arg2)][arg1].field_512 * mem[2016])
    else:
        require organizationsProposals[address(arg2)][arg1].field_2048 <= block.timestamp
        require organizationsProposals[address(arg2)][arg1].field_1536
        if organizationsProposals[address(arg2)][arg1].field_1536 != 0:
            if block.timestamp - organizationsProposals[address(arg2)][arg1].field_2048 / organizationsProposals[address(arg2)][arg1].field_1536 < organizationsProposals[address(arg2)][arg1].field_1792:
                require mem[2016] <= block.timestamp - organizationsProposals[address(arg2)][arg1].field_2048 / organizationsProposals[address(arg2)][arg1].field_1536
                organizationsProposals[address(arg2)][arg1].field_512 = 0
                if not (block.timestamp - organizationsProposals[address(arg2)][arg1].field_2048 / organizationsProposals[address(arg2)][arg1].field_1536) - mem[2016]:
                    return 0
                require (block.timestamp - organizationsProposals[address(arg2)][arg1].field_2048 / organizationsProposals[address(arg2)][arg1].field_1536 * organizationsProposals[address(arg2)][arg1].field_512) - (mem[2016] * organizationsProposals[address(arg2)][arg1].field_512) / (block.timestamp - organizationsProposals[address(arg2)][arg1].field_2048 / organizationsProposals[address(arg2)][arg1].field_1536) - mem[2016] == organizationsProposals[address(arg2)][arg1].field_512
                if (block.timestamp - organizationsProposals[address(arg2)][arg1].field_2048 / organizationsProposals[address(arg2)][arg1].field_1536 * organizationsProposals[address(arg2)][arg1].field_512) - (mem[2016] * organizationsProposals[address(arg2)][arg1].field_512) > 0:
                    require ext_code.size(arg2)
                    staticcall arg2.0x8da5cb5b with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).sendEther(uint256 arg1, address arg2, address arg3) with:
                         gas gas_remaining wei
                        args (block.timestamp - organizationsProposals[address(arg2)][arg1].field_2048 / organizationsProposals[address(arg2)][arg1].field_1536 * organizationsProposals[address(arg2)][arg1].field_512) - (mem[2016] * organizationsProposals[address(arg2)][arg1].field_512), organizationsProposals[address(arg2)][arg1].field_1280, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    require (block.timestamp - organizationsProposals[address(arg2)][arg1].field_2048 / organizationsProposals[address(arg2)][arg1].field_1536) - mem[2016] + organizationsProposals[address(arg2)][arg1].field_2816 >= organizationsProposals[address(arg2)][arg1].field_2816
                    organizationsProposals[address(arg2)][arg1].field_2816 = (block.timestamp - organizationsProposals[address(arg2)][arg1].field_2048 / organizationsProposals[address(arg2)][arg1].field_1536) - mem[2016] + organizationsProposals[address(arg2)][arg1].field_2816
                    emit RedeemEther(((block.timestamp - organizationsProposals[address(arg2)][arg1].field_2048 / organizationsProposals[address(arg2)][arg1].field_1536 * organizationsProposals[address(arg2)][arg1].field_512) - (mem[2016] * organizationsProposals[address(arg2)][arg1].field_512)), arg2, arg1, organizationsProposals[address(arg2)][arg1].field_1280);
                return ((block.timestamp - organizationsProposals[address(arg2)][arg1].field_2048 / organizationsProposals[address(arg2)][arg1].field_1536 * organizationsProposals[address(arg2)][arg1].field_512) - (mem[2016] * organizationsProposals[address(arg2)][arg1].field_512))
    require mem[2016] <= organizationsProposals[address(arg2)][arg1].field_1792
    organizationsProposals[address(arg2)][arg1].field_512 = 0
    if not organizationsProposals[address(arg2)][arg1].field_1792 - mem[2016]:
        return 0
    require (organizationsProposals[address(arg2)][arg1].field_1792 * organizationsProposals[address(arg2)][arg1].field_512) - (mem[2016] * organizationsProposals[address(arg2)][arg1].field_512) / organizationsProposals[address(arg2)][arg1].field_1792 - mem[2016] == organizationsProposals[address(arg2)][arg1].field_512
    if (organizationsProposals[address(arg2)][arg1].field_1792 * organizationsProposals[address(arg2)][arg1].field_512) - (mem[2016] * organizationsProposals[address(arg2)][arg1].field_512) > 0:
        require ext_code.size(arg2)
        staticcall arg2.0x8da5cb5b with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).sendEther(uint256 arg1, address arg2, address arg3) with:
             gas gas_remaining wei
            args (organizationsProposals[address(arg2)][arg1].field_1792 * organizationsProposals[address(arg2)][arg1].field_512) - (mem[2016] * organizationsProposals[address(arg2)][arg1].field_512), organizationsProposals[address(arg2)][arg1].field_1280, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require organizationsProposals[address(arg2)][arg1].field_1792 - mem[2016] + organizationsProposals[address(arg2)][arg1].field_2816 >= organizationsProposals[address(arg2)][arg1].field_2816
        organizationsProposals[address(arg2)][arg1].field_2816 = organizationsProposals[address(arg2)][arg1].field_1792 - mem[2016] + organizationsProposals[address(arg2)][arg1].field_2816
        emit RedeemEther(((organizationsProposals[address(arg2)][arg1].field_1792 * organizationsProposals[address(arg2)][arg1].field_512) - (mem[2016] * organizationsProposals[address(arg2)][arg1].field_512)), arg2, arg1, organizationsProposals[address(arg2)][arg1].field_1280);
    return ((organizationsProposals[address(arg2)][arg1].field_1792 * organizationsProposals[address(arg2)][arg1].field_512) - (mem[2016] * organizationsProposals[address(arg2)][arg1].field_512))
}

function proposeContributionReward(address arg1, string arg2, int256 arg3, uint256[5] arg4, address arg5, address arg6) payable {
    require calldata.size - 4 >= 320
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    mem[ceil32(arg2.length) + 128 len 160] = call.data[100 len 160]
    if 0 >= call.data[196]:
        if call.data[228] != 1:
            revert with 0, 
                        32,
                        52,
                        0xfe706572696f644c656e67746820657175616c20302072657175697265206e756d6265724f66506572696f647320746f20626520,
                        mem[ceil32(arg2.length) + 408 len 12]
    if 0 < call.data[228]:
        if -1 == call.data[228]:
            if 0x8000000000000000000000000000000000000000000000000000000000000000 == arg3:
                revert with 0, 
                            32,
                            49,
                            0x776e756d6265724f66506572696f6473202a205f72657075746174696f6e4368616e67652077696c6c206f766572666c6f,
                            mem[ceil32(arg2.length) + 405 len 15]
        require call.data[228]
        if arg3 * call.data[228] / call.data[228] != arg3:
            revert with 0, 
                        32,
                        48,
                        0x776e756d6265724f66506572696f6473202a2072657075746174696f6e4368616e67652077696c6c206f766572666c6f,
                        mem[ceil32(arg2.length) + 404 len 16]
        require call.data[228]
        if call.data[100] * call.data[228] / call.data[228] != call.data[100]:
            revert with 0, 
                        32,
                        43,
                        0x6e756d6265724f66506572696f6473202a20746f6b656e5265776172642077696c6c206f766572666c6f00,
                        mem[ceil32(arg2.length) + 399 len 21]
        require call.data[228]
        if call.data[132] * call.data[228] / call.data[228] != call.data[132]:
            revert with 0, 
                        32,
                        41,
                        0x776e756d6265724f66506572696f6473202a206574685265776172642077696c6c206f766572666c6f,
                        mem[ceil32(arg2.length) + 397 len 23]
        require call.data[228]
        if call.data[164] * call.data[228] / call.data[228] != call.data[164]:
            revert with 0, 
                        32,
                        52,
                        0x656e756d6265724f66506572696f6473202a207465787465726e616c546f6b656e5265776172642077696c6c206f766572666c6f,
                        mem[ceil32(arg2.length) + 408 len 12]
    require ext_code.size(arg1)
    staticcall arg1.0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).isSchemeRegistered(address arg1, address arg2) with:
            gas gas_remaining wei
           args this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'scheme is not registered'
    require ext_code.size(arg1)
    staticcall arg1.0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getSchemeParameters(address arg1, address arg2) with:
            gas gas_remaining wei
           args this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(parameters[ext_call.return_data[0]].field_256)
    call parameters[ext_call.return_data[0]].field_256.0x88737b5e with:
         gas gas_remaining wei
        args 2, parameters[ext_call.return_data[0]].field_0, msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(arg2.length) + 1280] = 0
    mem[ceil32(arg2.length) + 1312] = 0
    mem[ceil32(arg2.length) + 1344] = 0
    mem[ceil32(arg2.length) + 1376] = 0
    organizationsProposals[address(arg1)][ext_call.return_data[0]].field_0 = call.data[100]
    organizationsProposals[address(arg1)][ext_call.return_data[0]].field_256 = arg3
    organizationsProposals[address(arg1)][ext_call.return_data[0]].field_512 = call.data[132]
    organizationsProposals[address(arg1)][ext_call.return_data[0]].field_768 = address(cd[260])
    organizationsProposals[address(arg1)][ext_call.return_data[0]].field_1024 = call.data[164]
    if address(cd[292]):
        organizationsProposals[address(arg1)][ext_call.return_data[0]].field_1280 = address(cd[292])
        organizationsProposals[address(arg1)][ext_call.return_data[0]].field_1536 = call.data[196]
        organizationsProposals[address(arg1)][ext_call.return_data[0]].field_1792 = call.data[228]
        organizationsProposals[address(arg1)][ext_call.return_data[0]].field_2048 = 0
        s = 9
        idx = ceil32(arg2.length) + 1280
        while ceil32(arg2.length) + 1408 > idx:
            organizationsProposals[address(arg1)][ext_call.return_data[0]][s].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = 13
        while 13 > idx:
            organizationsProposals[address(arg1)][ext_call.return_data[0]][idx].field_0 = 0
            idx = idx + 1
            continue 
        mem[ceil32(arg2.length) + 1728 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
        if not arg2.length % 32:
            emit 0xcbdcbf9a: 288, arg3, call.data[arg2.length + -ceil32(arg2.length) + 132 len -arg2.length + ceil32(arg2.length) + 128] >> 1024, address(cd[260]), address(cd[292]), arg2.length, Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256, arg1, ext_call.return_data[0], parameters[ext_call.return_data[0]].field_256
        else:
            mem[floor32(arg2.length) + ceil32(arg2.length) + 1728] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 1760 len arg2.length % 32]
            emit 0xcbdcbf9a: 288, arg3, call.data[arg2.length + -ceil32(arg2.length) + 132 len -arg2.length + ceil32(arg2.length) + 128] >> 1024, address(cd[260]), address(cd[292]), arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + 1728 len floor32(arg2.length) + -ceil32(arg2.length) + 32], arg1, ext_call.return_data[0], parameters[ext_call.return_data[0]].field_256
    else:
        organizationsProposals[address(arg1)][ext_call.return_data[0]].field_1280 = msg.sender
        organizationsProposals[address(arg1)][ext_call.return_data[0]].field_1536 = call.data[196]
        organizationsProposals[address(arg1)][ext_call.return_data[0]].field_1792 = call.data[228]
        organizationsProposals[address(arg1)][ext_call.return_data[0]].field_2048 = 0
        s = 9
        idx = ceil32(arg2.length) + 1280
        while ceil32(arg2.length) + 1408 > idx:
            organizationsProposals[address(arg1)][ext_call.return_data[0]][s].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = 13
        while 13 > idx:
            organizationsProposals[address(arg1)][ext_call.return_data[0]][idx].field_0 = 0
            idx = idx + 1
            continue 
        mem[ceil32(arg2.length) + 1728 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
        if not arg2.length % 32:
            emit 0xcbdcbf9a: 288, arg3, call.data[arg2.length + -ceil32(arg2.length) + 132 len -arg2.length + ceil32(arg2.length) + 128] >> 1024, address(cd[260]), msg.sender, arg2.length, Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256, arg1, ext_call.return_data[0], parameters[ext_call.return_data[0]].field_256
        else:
            mem[floor32(arg2.length) + ceil32(arg2.length) + 1728] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 1760 len arg2.length % 32]
            emit 0xcbdcbf9a: 288, arg3, call.data[arg2.length + -ceil32(arg2.length) + 132 len -arg2.length + ceil32(arg2.length) + 128] >> 1024, address(cd[260]), msg.sender, arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + 1728 len floor32(arg2.length) + -ceil32(arg2.length) + 32], arg1, ext_call.return_data[0], parameters[ext_call.return_data[0]].field_256
    stor0[stor2[ext_call.return_data[0]].field_256][ext_call.return_data[0]].field_0 = block.number
    stor0[stor2[ext_call.return_data[0]].field_256][ext_call.return_data[0]].field_256 = arg1
    return ext_call.return_data[0]
}

function redeemReputation(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    idx = 960
    s = 9
    while 1088 > idx + 32:
        mem[idx + 32] = organizationsProposals[address(arg2)][arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require organizationsProposals[address(arg2)][arg1].field_2048
    idx = 1952
    s = 9
    while 2080 > idx + 32:
        mem[idx + 32] = organizationsProposals[address(arg2)][arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if 0 == organizationsProposals[address(arg2)][arg1].field_2048:
        organizationsProposals[address(arg2)][arg1].field_256 = 0
        return 0
    if organizationsProposals[address(arg2)][arg1].field_1536 <= 0:
        if organizationsProposals[address(arg2)][arg1].field_1536 != 0:
            if 0 < organizationsProposals[address(arg2)][arg1].field_1792:
                require organizationsProposals[address(arg2)][arg1].field_2304 <= 0
                organizationsProposals[address(arg2)][arg1].field_256 = 0
                if -1 * organizationsProposals[address(arg2)][arg1].field_2304 * organizationsProposals[address(arg2)][arg1].field_256 > 0:
                    require ext_code.size(arg2)
                    staticcall arg2.0x8da5cb5b with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).mintReputation(uint256 arg1, address arg2, address arg3) with:
                         gas gas_remaining wei
                        args -1 * organizationsProposals[address(arg2)][arg1].field_2304 * organizationsProposals[address(arg2)][arg1].field_256, organizationsProposals[address(arg2)][arg1].field_1280, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                else:
                    if -1 * organizationsProposals[address(arg2)][arg1].field_2304 * organizationsProposals[address(arg2)][arg1].field_256 < 0:
                        require ext_code.size(arg2)
                        staticcall arg2.0x8da5cb5b with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).burnReputation(uint256 arg1, address arg2, address arg3) with:
                             gas gas_remaining wei
                            args organizationsProposals[address(arg2)][arg1].field_2304 * organizationsProposals[address(arg2)][arg1].field_256, organizationsProposals[address(arg2)][arg1].field_1280, arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                if -1 * organizationsProposals[address(arg2)][arg1].field_2304 * organizationsProposals[address(arg2)][arg1].field_256:
                    require 0 >= organizationsProposals[address(arg2)][arg1].field_2304
                    organizationsProposals[address(arg2)][arg1].field_2304 = 0
                    emit RedeemReputation((-1 * organizationsProposals[address(arg2)][arg1].field_2304 * organizationsProposals[address(arg2)][arg1].field_256), arg2, arg1, organizationsProposals[address(arg2)][arg1].field_1280);
                return (-1 * organizationsProposals[address(arg2)][arg1].field_2304 * organizationsProposals[address(arg2)][arg1].field_256)
    else:
        require organizationsProposals[address(arg2)][arg1].field_2048 <= block.timestamp
        require organizationsProposals[address(arg2)][arg1].field_1536
        if organizationsProposals[address(arg2)][arg1].field_1536 != 0:
            if block.timestamp - organizationsProposals[address(arg2)][arg1].field_2048 / organizationsProposals[address(arg2)][arg1].field_1536 < organizationsProposals[address(arg2)][arg1].field_1792:
                require organizationsProposals[address(arg2)][arg1].field_2304 <= block.timestamp - organizationsProposals[address(arg2)][arg1].field_2048 / organizationsProposals[address(arg2)][arg1].field_1536
                organizationsProposals[address(arg2)][arg1].field_256 = 0
                if (block.timestamp - organizationsProposals[address(arg2)][arg1].field_2048 / organizationsProposals[address(arg2)][arg1].field_1536 * organizationsProposals[address(arg2)][arg1].field_256) - (organizationsProposals[address(arg2)][arg1].field_2304 * organizationsProposals[address(arg2)][arg1].field_256) > 0:
                    require ext_code.size(arg2)
                    staticcall arg2.0x8da5cb5b with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).mintReputation(uint256 arg1, address arg2, address arg3) with:
                         gas gas_remaining wei
                        args (block.timestamp - organizationsProposals[address(arg2)][arg1].field_2048 / organizationsProposals[address(arg2)][arg1].field_1536 * organizationsProposals[address(arg2)][arg1].field_256) - (organizationsProposals[address(arg2)][arg1].field_2304 * organizationsProposals[address(arg2)][arg1].field_256), organizationsProposals[address(arg2)][arg1].field_1280, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                else:
                    if (block.timestamp - organizationsProposals[address(arg2)][arg1].field_2048 / organizationsProposals[address(arg2)][arg1].field_1536 * organizationsProposals[address(arg2)][arg1].field_256) - (organizationsProposals[address(arg2)][arg1].field_2304 * organizationsProposals[address(arg2)][arg1].field_256) < 0:
                        require ext_code.size(arg2)
                        staticcall arg2.0x8da5cb5b with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).burnReputation(uint256 arg1, address arg2, address arg3) with:
                             gas gas_remaining wei
                            args (-1 * block.timestamp - organizationsProposals[address(arg2)][arg1].field_2048 / organizationsProposals[address(arg2)][arg1].field_1536 * organizationsProposals[address(arg2)][arg1].field_256) + (organizationsProposals[address(arg2)][arg1].field_2304 * organizationsProposals[address(arg2)][arg1].field_256), organizationsProposals[address(arg2)][arg1].field_1280, arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                if (block.timestamp - organizationsProposals[address(arg2)][arg1].field_2048 / organizationsProposals[address(arg2)][arg1].field_1536 * organizationsProposals[address(arg2)][arg1].field_256) - (organizationsProposals[address(arg2)][arg1].field_2304 * organizationsProposals[address(arg2)][arg1].field_256):
                    require block.timestamp - organizationsProposals[address(arg2)][arg1].field_2048 / organizationsProposals[address(arg2)][arg1].field_1536 >= organizationsProposals[address(arg2)][arg1].field_2304
                    organizationsProposals[address(arg2)][arg1].field_2304 = block.timestamp - organizationsProposals[address(arg2)][arg1].field_2048 / organizationsProposals[address(arg2)][arg1].field_1536
                    emit RedeemReputation(((block.timestamp - organizationsProposals[address(arg2)][arg1].field_2048 / organizationsProposals[address(arg2)][arg1].field_1536 * organizationsProposals[address(arg2)][arg1].field_256) - (organizationsProposals[address(arg2)][arg1].field_2304 * organizationsProposals[address(arg2)][arg1].field_256)), arg2, arg1, organizationsProposals[address(arg2)][arg1].field_1280);
                return ((block.timestamp - organizationsProposals[address(arg2)][arg1].field_2048 / organizationsProposals[address(arg2)][arg1].field_1536 * organizationsProposals[address(arg2)][arg1].field_256) - (organizationsProposals[address(arg2)][arg1].field_2304 * organizationsProposals[address(arg2)][arg1].field_256))
    require organizationsProposals[address(arg2)][arg1].field_2304 <= organizationsProposals[address(arg2)][arg1].field_1792
    organizationsProposals[address(arg2)][arg1].field_256 = 0
    if (organizationsProposals[address(arg2)][arg1].field_1792 * organizationsProposals[address(arg2)][arg1].field_256) - (organizationsProposals[address(arg2)][arg1].field_2304 * organizationsProposals[address(arg2)][arg1].field_256) > 0:
        require ext_code.size(arg2)
        staticcall arg2.0x8da5cb5b with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).mintReputation(uint256 arg1, address arg2, address arg3) with:
             gas gas_remaining wei
            args (organizationsProposals[address(arg2)][arg1].field_1792 * organizationsProposals[address(arg2)][arg1].field_256) - (organizationsProposals[address(arg2)][arg1].field_2304 * organizationsProposals[address(arg2)][arg1].field_256), organizationsProposals[address(arg2)][arg1].field_1280, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    else:
        if (organizationsProposals[address(arg2)][arg1].field_1792 * organizationsProposals[address(arg2)][arg1].field_256) - (organizationsProposals[address(arg2)][arg1].field_2304 * organizationsProposals[address(arg2)][arg1].field_256) < 0:
            require ext_code.size(arg2)
            staticcall arg2.0x8da5cb5b with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).burnReputation(uint256 arg1, address arg2, address arg3) with:
                 gas gas_remaining wei
                args (-1 * organizationsProposals[address(arg2)][arg1].field_1792 * organizationsProposals[address(arg2)][arg1].field_256) + (organizationsProposals[address(arg2)][arg1].field_2304 * organizationsProposals[address(arg2)][arg1].field_256), organizationsProposals[address(arg2)][arg1].field_1280, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
    if (organizationsProposals[address(arg2)][arg1].field_1792 * organizationsProposals[address(arg2)][arg1].field_256) - (organizationsProposals[address(arg2)][arg1].field_2304 * organizationsProposals[address(arg2)][arg1].field_256):
        require organizationsProposals[address(arg2)][arg1].field_1792 >= organizationsProposals[address(arg2)][arg1].field_2304
        organizationsProposals[address(arg2)][arg1].field_2304 = organizationsProposals[address(arg2)][arg1].field_1792
        emit RedeemReputation(((organizationsProposals[address(arg2)][arg1].field_1792 * organizationsProposals[address(arg2)][arg1].field_256) - (organizationsProposals[address(arg2)][arg1].field_2304 * organizationsProposals[address(arg2)][arg1].field_256)), arg2, arg1, organizationsProposals[address(arg2)][arg1].field_1280);
    return ((organizationsProposals[address(arg2)][arg1].field_1792 * organizationsProposals[address(arg2)][arg1].field_256) - (organizationsProposals[address(arg2)][arg1].field_2304 * organizationsProposals[address(arg2)][arg1].field_256))
}

function redeemExternalToken(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    idx = 960
    s = 9
    while 1088 > idx + 32:
        mem[idx + 32] = organizationsProposals[address(arg2)][arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require organizationsProposals[address(arg2)][arg1].field_2048
    idx = 1952
    s = 9
    while 2080 > idx + 32:
        mem[idx + 32] = organizationsProposals[address(arg2)][arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if organizationsProposals[address(arg2)][arg1].field_2048 != 0:
        if organizationsProposals[address(arg2)][arg1].field_1536 <= 0:
            if 0 == organizationsProposals[address(arg2)][arg1].field_1536:
                require mem[2048] <= organizationsProposals[address(arg2)][arg1].field_1792
                organizationsProposals[address(arg2)][arg1].field_1024 = 0
                if not organizationsProposals[address(arg2)][arg1].field_768:
                    return 0
                else:
                    if organizationsProposals[address(arg2)][arg1].field_1024 <= 0:
                        return 0
                    else:
                        if organizationsProposals[address(arg2)][arg1].field_1792 - mem[2048]:
                            require (organizationsProposals[address(arg2)][arg1].field_1792 * organizationsProposals[address(arg2)][arg1].field_1024) - (mem[2048] * organizationsProposals[address(arg2)][arg1].field_1024) / organizationsProposals[address(arg2)][arg1].field_1792 - mem[2048] == organizationsProposals[address(arg2)][arg1].field_1024
                            if (organizationsProposals[address(arg2)][arg1].field_1792 * organizationsProposals[address(arg2)][arg1].field_1024) - (mem[2048] * organizationsProposals[address(arg2)][arg1].field_1024) <= 0:
                                return ((organizationsProposals[address(arg2)][arg1].field_1792 * organizationsProposals[address(arg2)][arg1].field_1024) - (mem[2048] * organizationsProposals[address(arg2)][arg1].field_1024))
                            else:
                                require ext_code.size(arg2)
                                staticcall arg2.0x8da5cb5b with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).externalTokenTransfer(address arg1, address arg2, uint256 arg3, address arg4) with:
                                         gas gas_remaining wei
                                        args organizationsProposals[address(arg2)][arg1].field_768, organizationsProposals[address(arg2)][arg1].field_1280, (organizationsProposals[address(arg2)][arg1].field_1792 * organizationsProposals[address(arg2)][arg1].field_1024) - (mem[2048] * organizationsProposals[address(arg2)][arg1].field_1024), arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        require organizationsProposals[address(arg2)][arg1].field_1792 - mem[2048] + organizationsProposals[address(arg2)][arg1].field_3072 >= organizationsProposals[address(arg2)][arg1].field_3072
                                        organizationsProposals[address(arg2)][arg1].field_3072 = organizationsProposals[address(arg2)][arg1].field_1792 - mem[2048] + organizationsProposals[address(arg2)][arg1].field_3072
                                        emit RedeemExternalToken(((organizationsProposals[address(arg2)][arg1].field_1792 * organizationsProposals[address(arg2)][arg1].field_1024) - (mem[2048] * organizationsProposals[address(arg2)][arg1].field_1024)), arg2, arg1, organizationsProposals[address(arg2)][arg1].field_1280);
                                        return ((organizationsProposals[address(arg2)][arg1].field_1792 * organizationsProposals[address(arg2)][arg1].field_1024) - (mem[2048] * organizationsProposals[address(arg2)][arg1].field_1024))
                        else:
                            return 0
            else:
                if 0 < organizationsProposals[address(arg2)][arg1].field_1792:
                    require mem[2048] <= 0
                    organizationsProposals[address(arg2)][arg1].field_1024 = 0
                    if not organizationsProposals[address(arg2)][arg1].field_768:
                        return 0
                    else:
                        if organizationsProposals[address(arg2)][arg1].field_1024 <= 0:
                            return 0
                        else:
                            if -mem[2048]:
                                require -1 * organizationsProposals[address(arg2)][arg1].field_1024 * mem[2048] / -mem[2048] == organizationsProposals[address(arg2)][arg1].field_1024
                                if -1 * organizationsProposals[address(arg2)][arg1].field_1024 * mem[2048] <= 0:
                                    return (-1 * organizationsProposals[address(arg2)][arg1].field_1024 * mem[2048])
                                else:
                                    require ext_code.size(arg2)
                                    staticcall arg2.0x8da5cb5b with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).externalTokenTransfer(address arg1, address arg2, uint256 arg3, address arg4) with:
                                             gas gas_remaining wei
                                            args organizationsProposals[address(arg2)][arg1].field_768, organizationsProposals[address(arg2)][arg1].field_1280, -1 * organizationsProposals[address(arg2)][arg1].field_1024 * mem[2048], arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            require -mem[2048] + organizationsProposals[address(arg2)][arg1].field_3072 >= organizationsProposals[address(arg2)][arg1].field_3072
                                            organizationsProposals[address(arg2)][arg1].field_3072 -= mem[2048]
                                            emit RedeemExternalToken((-1 * organizationsProposals[address(arg2)][arg1].field_1024 * mem[2048]), arg2, arg1, organizationsProposals[address(arg2)][arg1].field_1280);
                                            return (-1 * organizationsProposals[address(arg2)][arg1].field_1024 * mem[2048])
                            else:
                                return 0
                else:
                    require mem[2048] <= organizationsProposals[address(arg2)][arg1].field_1792
                    organizationsProposals[address(arg2)][arg1].field_1024 = 0
                    if not organizationsProposals[address(arg2)][arg1].field_768:
                        return 0
                    else:
                        if organizationsProposals[address(arg2)][arg1].field_1024 <= 0:
                            return 0
                        else:
                            if organizationsProposals[address(arg2)][arg1].field_1792 - mem[2048]:
                                require (organizationsProposals[address(arg2)][arg1].field_1792 * organizationsProposals[address(arg2)][arg1].field_1024) - (mem[2048] * organizationsProposals[address(arg2)][arg1].field_1024) / organizationsProposals[address(arg2)][arg1].field_1792 - mem[2048] == organizationsProposals[address(arg2)][arg1].field_1024
                                if (organizationsProposals[address(arg2)][arg1].field_1792 * organizationsProposals[address(arg2)][arg1].field_1024) - (mem[2048] * organizationsProposals[address(arg2)][arg1].field_1024) <= 0:
                                    return ((organizationsProposals[address(arg2)][arg1].field_1792 * organizationsProposals[address(arg2)][arg1].field_1024) - (mem[2048] * organizationsProposals[address(arg2)][arg1].field_1024))
                                else:
                                    require ext_code.size(arg2)
                                    staticcall arg2.0x8da5cb5b with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).externalTokenTransfer(address arg1, address arg2, uint256 arg3, address arg4) with:
                                             gas gas_remaining wei
                                            args organizationsProposals[address(arg2)][arg1].field_768, organizationsProposals[address(arg2)][arg1].field_1280, (organizationsProposals[address(arg2)][arg1].field_1792 * organizationsProposals[address(arg2)][arg1].field_1024) - (mem[2048] * organizationsProposals[address(arg2)][arg1].field_1024), arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            require organizationsProposals[address(arg2)][arg1].field_1792 - mem[2048] + organizationsProposals[address(arg2)][arg1].field_3072 >= organizationsProposals[address(arg2)][arg1].field_3072
                                            organizationsProposals[address(arg2)][arg1].field_3072 = organizationsProposals[address(arg2)][arg1].field_1792 - mem[2048] + organizationsProposals[address(arg2)][arg1].field_3072
                                            emit RedeemExternalToken(((organizationsProposals[address(arg2)][arg1].field_1792 * organizationsProposals[address(arg2)][arg1].field_1024) - (mem[2048] * organizationsProposals[address(arg2)][arg1].field_1024)), arg2, arg1, organizationsProposals[address(arg2)][arg1].field_1280);
                                            return ((organizationsProposals[address(arg2)][arg1].field_1792 * organizationsProposals[address(arg2)][arg1].field_1024) - (mem[2048] * organizationsProposals[address(arg2)][arg1].field_1024))
                            else:
                                return 0
        else:
            require organizationsProposals[address(arg2)][arg1].field_2048 <= block.timestamp
            require organizationsProposals[address(arg2)][arg1].field_1536
            if 0 == organizationsProposals[address(arg2)][arg1].field_1536:
                require mem[2048] <= organizationsProposals[address(arg2)][arg1].field_1792
                organizationsProposals[address(arg2)][arg1].field_1024 = 0
                if not organizationsProposals[address(arg2)][arg1].field_768:
                    return 0
                else:
                    if organizationsProposals[address(arg2)][arg1].field_1024 <= 0:
                        return 0
                    else:
                        if organizationsProposals[address(arg2)][arg1].field_1792 - mem[2048]:
                            require (organizationsProposals[address(arg2)][arg1].field_1792 * organizationsProposals[address(arg2)][arg1].field_1024) - (mem[2048] * organizationsProposals[address(arg2)][arg1].field_1024) / organizationsProposals[address(arg2)][arg1].field_1792 - mem[2048] == organizationsProposals[address(arg2)][arg1].field_1024
                            if (organizationsProposals[address(arg2)][arg1].field_1792 * organizationsProposals[address(arg2)][arg1].field_1024) - (mem[2048] * organizationsProposals[address(arg2)][arg1].field_1024) <= 0:
                                return ((organizationsProposals[address(arg2)][arg1].field_1792 * organizationsProposals[address(arg2)][arg1].field_1024) - (mem[2048] * organizationsProposals[address(arg2)][arg1].field_1024))
                            else:
                                require ext_code.size(arg2)
                                staticcall arg2.0x8da5cb5b with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).externalTokenTransfer(address arg1, address arg2, uint256 arg3, address arg4) with:
                                         gas gas_remaining wei
                                        args organizationsProposals[address(arg2)][arg1].field_768, organizationsProposals[address(arg2)][arg1].field_1280, (organizationsProposals[address(arg2)][arg1].field_1792 * organizationsProposals[address(arg2)][arg1].field_1024) - (mem[2048] * organizationsProposals[address(arg2)][arg1].field_1024), arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require ext_call.return_data[0]
                                        require organizationsProposals[address(arg2)][arg1].field_1792 - mem[2048] + organizationsProposals[address(arg2)][arg1].field_3072 >= organizationsProposals[address(arg2)][arg1].field_3072
                                        organizationsProposals[address(arg2)][arg1].field_3072 = organizationsProposals[address(arg2)][arg1].field_1792 - mem[2048] + organizationsProposals[address(arg2)][arg1].field_3072
                                        emit RedeemExternalToken(((organizationsProposals[address(arg2)][arg1].field_1792 * organizationsProposals[address(arg2)][arg1].field_1024) - (mem[2048] * organizationsProposals[address(arg2)][arg1].field_1024)), arg2, arg1, organizationsProposals[address(arg2)][arg1].field_1280);
                                        return ((organizationsProposals[address(arg2)][arg1].field_1792 * organizationsProposals[address(arg2)][arg1].field_1024) - (mem[2048] * organizationsProposals[address(arg2)][arg1].field_1024))
                        else:
                            return 0
            else:
                if block.timestamp - organizationsProposals[address(arg2)][arg1].field_2048 / organizationsProposals[address(arg2)][arg1].field_1536 < organizationsProposals[address(arg2)][arg1].field_1792:
                    require mem[2048] <= block.timestamp - organizationsProposals[address(arg2)][arg1].field_2048 / organizationsProposals[address(arg2)][arg1].field_1536
                    organizationsProposals[address(arg2)][arg1].field_1024 = 0
                    if not organizationsProposals[address(arg2)][arg1].field_768:
                        return 0
                    else:
                        if organizationsProposals[address(arg2)][arg1].field_1024 <= 0:
                            return 0
                        else:
                            if (block.timestamp - organizationsProposals[address(arg2)][arg1].field_2048 / organizationsProposals[address(arg2)][arg1].field_1536) - mem[2048]:
                                require (block.timestamp - organizationsProposals[address(arg2)][arg1].field_2048 / organizationsProposals[address(arg2)][arg1].field_1536 * organizationsProposals[address(arg2)][arg1].field_1024) - (mem[2048] * organizationsProposals[address(arg2)][arg1].field_1024) / (block.timestamp - organizationsProposals[address(arg2)][arg1].field_2048 / organizationsProposals[address(arg2)][arg1].field_1536) - mem[2048] == organizationsProposals[address(arg2)][arg1].field_1024
                                if (block.timestamp - organizationsProposals[address(arg2)][arg1].field_2048 / organizationsProposals[address(arg2)][arg1].field_1536 * organizationsProposals[address(arg2)][arg1].field_1024) - (mem[2048] * organizationsProposals[address(arg2)][arg1].field_1024) <= 0:
                                    return ((block.timestamp - organizationsProposals[address(arg2)][arg1].field_2048 / organizationsProposals[address(arg2)][arg1].field_1536 * organizationsProposals[address(arg2)][arg1].field_1024) - (mem[2048] * organizationsProposals[address(arg2)][arg1].field_1024))
                                else:
                                    require ext_code.size(arg2)
                                    staticcall arg2.0x8da5cb5b with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).externalTokenTransfer(address arg1, address arg2, uint256 arg3, address arg4) with:
                                             gas gas_remaining wei
                                            args organizationsProposals[address(arg2)][arg1].field_768, organizationsProposals[address(arg2)][arg1].field_1280, (block.timestamp - organizationsProposals[address(arg2)][arg1].field_2048 / organizationsProposals[address(arg2)][arg1].field_1536 * organizationsProposals[address(arg2)][arg1].field_1024) - (mem[2048] * organizationsProposals[address(arg2)][arg1].field_1024), arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            require (block.timestamp - organizationsProposals[address(arg2)][arg1].field_2048 / organizationsProposals[address(arg2)][arg1].field_1536) - mem[2048] + organizationsProposals[address(arg2)][arg1].field_3072 >= organizationsProposals[address(arg2)][arg1].field_3072
                                            organizationsProposals[address(arg2)][arg1].field_3072 = (block.timestamp - organizationsProposals[address(arg2)][arg1].field_2048 / organizationsProposals[address(arg2)][arg1].field_1536) - mem[2048] + organizationsProposals[address(arg2)][arg1].field_3072
                                            emit RedeemExternalToken(((block.timestamp - organizationsProposals[address(arg2)][arg1].field_2048 / organizationsProposals[address(arg2)][arg1].field_1536 * organizationsProposals[address(arg2)][arg1].field_1024) - (mem[2048] * organizationsProposals[address(arg2)][arg1].field_1024)), arg2, arg1, organizationsProposals[address(arg2)][arg1].field_1280);
                                            return ((block.timestamp - organizationsProposals[address(arg2)][arg1].field_2048 / organizationsProposals[address(arg2)][arg1].field_1536 * organizationsProposals[address(arg2)][arg1].field_1024) - (mem[2048] * organizationsProposals[address(arg2)][arg1].field_1024))
                            else:
                                return 0
                else:
                    require mem[2048] <= organizationsProposals[address(arg2)][arg1].field_1792
                    organizationsProposals[address(arg2)][arg1].field_1024 = 0
                    if not organizationsProposals[address(arg2)][arg1].field_768:
                        return 0
                    else:
                        if organizationsProposals[address(arg2)][arg1].field_1024 <= 0:
                            return 0
                        else:
                            if organizationsProposals[address(arg2)][arg1].field_1792 - mem[2048]:
                                require (organizationsProposals[address(arg2)][arg1].field_1792 * organizationsProposals[address(arg2)][arg1].field_1024) - (mem[2048] * organizationsProposals[address(arg2)][arg1].field_1024) / organizationsProposals[address(arg2)][arg1].field_1792 - mem[2048] == organizationsProposals[address(arg2)][arg1].field_1024
                                if (organizationsProposals[address(arg2)][arg1].field_1792 * organizationsProposals[address(arg2)][arg1].field_1024) - (mem[2048] * organizationsProposals[address(arg2)][arg1].field_1024) <= 0:
                                    return ((organizationsProposals[address(arg2)][arg1].field_1792 * organizationsProposals[address(arg2)][arg1].field_1024) - (mem[2048] * organizationsProposals[address(arg2)][arg1].field_1024))
                                else:
                                    require ext_code.size(arg2)
                                    staticcall arg2.0x8da5cb5b with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).externalTokenTransfer(address arg1, address arg2, uint256 arg3, address arg4) with:
                                             gas gas_remaining wei
                                            args organizationsProposals[address(arg2)][arg1].field_768, organizationsProposals[address(arg2)][arg1].field_1280, (organizationsProposals[address(arg2)][arg1].field_1792 * organizationsProposals[address(arg2)][arg1].field_1024) - (mem[2048] * organizationsProposals[address(arg2)][arg1].field_1024), arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0]
                                            require organizationsProposals[address(arg2)][arg1].field_1792 - mem[2048] + organizationsProposals[address(arg2)][arg1].field_3072 >= organizationsProposals[address(arg2)][arg1].field_3072
                                            organizationsProposals[address(arg2)][arg1].field_3072 = organizationsProposals[address(arg2)][arg1].field_1792 - mem[2048] + organizationsProposals[address(arg2)][arg1].field_3072
                                            emit RedeemExternalToken(((organizationsProposals[address(arg2)][arg1].field_1792 * organizationsProposals[address(arg2)][arg1].field_1024) - (mem[2048] * organizationsProposals[address(arg2)][arg1].field_1024)), arg2, arg1, organizationsProposals[address(arg2)][arg1].field_1280);
                                            return ((organizationsProposals[address(arg2)][arg1].field_1792 * organizationsProposals[address(arg2)][arg1].field_1024) - (mem[2048] * organizationsProposals[address(arg2)][arg1].field_1024))
                            else:
                                return 0
    else:
        organizationsProposals[address(arg2)][arg1].field_1024 = 0
        if not organizationsProposals[address(arg2)][arg1].field_768:
            return 0
        else:
            if organizationsProposals[address(arg2)][arg1].field_1024 <= 0:
                return 0
            else:
                return 0
}



}
