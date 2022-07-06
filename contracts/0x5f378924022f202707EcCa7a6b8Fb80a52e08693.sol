contract main {




// =====================  Runtime code  =====================


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
           bool(organizationsProposals[arg1][arg2].field_768)
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
    parameters[arg1][arg2].field_256 = arg1
    parameters[arg1][arg2].field_0 = arg2
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
        revert with 0, 'eonly VotingMachine'
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
        revert with 0, 'eonly VotingMachine'
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
        revert with 0, 'eonly VotingMachine'
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

function proposeVote(address arg1, address arg2, bytes32 arg3, uint256 arg4, string arg5) payable {
    require calldata.size - 4 >= 160
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
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
    require ext_code.size(arg2)
    staticcall arg2.0x5142bc1e with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if arg4 > ext_call.return_data[32]:
        revert with 0, 
                    32,
                    35,
                    0xfe766f74652073686f756c6420626520696e2074686520616c6c6f7765642072616e67,
                    mem[ceil32(arg5.length) + 359 len 29]
    if arg4 < ext_call.return_data[0]:
        revert with 0, 
                    32,
                    35,
                    0xfe766f74652073686f756c6420626520696e2074686520616c6c6f7765642072616e67,
                    mem[ceil32(arg5.length) + 359 len 29]
    require ext_code.size(arg2)
    staticcall arg2.0xa003651d with:
            gas gas_remaining wei
           args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg4 > ext_call.return_data[0]:
        revert with 0, 
                    32,
                    53,
                    0x766f74652073686f756c64206265203c3d206f726967696e616c2070726f706f73616c206e756d626572206f662063686f69636500,
                    mem[ceil32(arg5.length) + 377 len 11]
    require ext_code.size(parameters[ext_call.return_data[0]].field_0)
    call parameters[ext_call.return_data[0]].field_0.0x88737b5e with:
         gas gas_remaining wei
        args 2, parameters[ext_call.return_data[0]].field_256, msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    organizationsProposals[address(arg1)][ext_call.return_data[0]].field_0 = arg2
    organizationsProposals[address(arg1)][ext_call.return_data[0]].field_256 = arg3
    organizationsProposals[address(arg1)][ext_call.return_data[0]].field_512 = arg4
    organizationsProposals[address(arg1)][ext_call.return_data[0]].field_768 = 1
    emit 0x612d055d: address(arg2), arg3, arg4, Array(len=arg5.length, data=arg5[all]), arg1, ext_call.return_data[0], parameters[ext_call.return_data[0]].field_0
    stor0[stor2[ext_call.return_data[0]].field_0][ext_call.return_data[0]].field_0 = block.number
    stor0[stor2[ext_call.return_data[0]].field_0][ext_call.return_data[0]].field_256 = arg1
    return ext_call.return_data[0]
}

function executeProposal(bytes32 arg1, int256 arg2) payable {
    require calldata.size - 4 >= 64
    if not stor0[msg.sender][arg1].field_256:
        revert with 0, 'eonly VotingMachine'
    require organizationsProposals[stor0[msg.sender][arg1].field_256][arg1].field_768
    organizationsProposals[stor0[msg.sender][arg1].field_256][arg1].field_0 = 0
    organizationsProposals[stor0[msg.sender][arg1].field_256][arg1].field_256 = 0
    organizationsProposals[stor0[msg.sender][arg1].field_256][arg1].field_512 = 0
    organizationsProposals[stor0[msg.sender][arg1].field_256][arg1].field_768 = 0
    emit ProposalDeleted(stor0[msg.sender][arg1].field_256, arg1);
    if arg2 != 1:
        emit ProposalExecuted(address arg1, bytes32 arg2, int256 arg3, bytes arg4):
                              arg2,
                              64,
                              0,
                              stor0[msg.sender][arg1].field_256,
                              arg1,
    else:
        require ext_code.size(stor0[msg.sender][arg1].field_256)
        staticcall stor0[msg.sender][arg1].field_256.0x8da5cb5b with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[388] = organizationsProposals[stor0[msg.sender][arg1].field_256][arg1].field_256
        mem[420] = organizationsProposals[stor0[msg.sender][arg1].field_256][arg1].field_512
        mem[452] = 0
        mem[484] = this.address
        mem[516] = 0xd1b7089a00000000000000000000000000000000000000000000000000000000
        mem[520] = organizationsProposals[stor0[msg.sender][arg1].field_256][arg1].field_0
        mem[584] = stor0[msg.sender][arg1].field_256
        mem[616] = 0
        mem[552] = 128
        mem[648] = 132
        mem[680 len 160] = unknown_0x359afa49(?????), organizationsProposals[stor0[msg.sender][arg1].field_256][arg1].field_288, organizationsProposals[stor0[msg.sender][arg1].field_256][arg1].field_256, organizationsProposals[stor0[msg.sender][arg1].field_256][arg1].field_512, 0, this.address, 0, organizationsProposals[stor0[msg.sender][arg1].field_256][arg1].field_0
        mem[808] = organizationsProposals[stor0[msg.sender][arg1].field_256][arg1].field_0
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).genericCall(address arg1, bytes arg2, address arg3, uint256 arg4) with:
             gas gas_remaining wei
            args organizationsProposals[stor0[msg.sender][arg1].field_256][arg1].field_0, 128, stor0[msg.sender][arg1].field_256, 0, 132, unknown_0x359afa49(?????), organizationsProposals[stor0[msg.sender][arg1].field_256][arg1].field_288, organizationsProposals[stor0[msg.sender][arg1].field_256][arg1].field_256, organizationsProposals[stor0[msg.sender][arg1].field_256][arg1].field_512, 0, this.address, 0, organizationsProposals[stor0[msg.sender][arg1].field_256][arg1].field_0 >> 768, organizationsProposals[stor0[msg.sender][arg1].field_256][arg1].field_0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 516
        require return_data.size >= 64
        require organizationsProposals[stor0[msg.sender][arg1].field_256][arg1].field_0, 0 <= 4294967296
        require organizationsProposals[stor0[msg.sender][arg1].field_256][arg1].field_0, 0 + 32 <= return_data.size
        require return_data.size >= mem[organizationsProposals[stor0[msg.sender][arg1].field_256][arg1].field_0, 0 + 516] + organizationsProposals[stor0[msg.sender][arg1].field_256][arg1].field_0, 0 + 32 and mem[organizationsProposals[stor0[msg.sender][arg1].field_256][arg1].field_0, 0 + 516] <= 4294967296
        require mem[516 len 4], organizationsProposals[stor0[msg.sender][arg1].field_256][arg1].field_0
        mem[ceil32(return_data.size) + 516] = arg2
        mem[ceil32(return_data.size) + 548] = 64
        mem[ceil32(return_data.size) + 580] = mem[organizationsProposals[stor0[msg.sender][arg1].field_256][arg1].field_0, 0 + 516]
        _99 = mem[organizationsProposals[stor0[msg.sender][arg1].field_256][arg1].field_0, 0 + 516]
        mem[ceil32(return_data.size) + 612 len ceil32(mem[organizationsProposals[stor0[msg.sender][arg1].field_256][arg1].field_0, 0 + 516])] = mem[organizationsProposals[stor0[msg.sender][arg1].field_256][arg1].field_0, 0 + 548 len ceil32(mem[organizationsProposals[stor0[msg.sender][arg1].field_256][arg1].field_0, 0 + 516])]
        if not _99 % 32:
            emit ProposalExecuted(address arg1, bytes32 arg2, int256 arg3, bytes arg4):
                                  arg2,
                                  64,
                                  mem[ceil32(return_data.size) + 580 len _99 + 32],
                                  stor0[msg.sender][arg1].field_256,
                                  arg1,
        else:
            mem[floor32(_99) + ceil32(return_data.size) + 612] = mem[floor32(_99) + ceil32(return_data.size) + -(_99 % 32) + 644 len _99 % 32]
            emit ProposalExecuted(address arg1, bytes32 arg2, int256 arg3, bytes arg4):
                                  arg2,
                                  64,
                                  mem[ceil32(return_data.size) + 580 len floor32(_99) + 64],
                                  stor0[msg.sender][arg1].field_256,
                                  arg1,
    return 1
}



}
