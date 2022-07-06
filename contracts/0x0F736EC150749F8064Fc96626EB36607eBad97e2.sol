contract main {




// =====================  Runtime code  =====================


mapping of struct stor0;
mapping of struct organizationsProposals;
mapping of struct parameters;

function parameters(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return parameters[arg1].field_0, parameters[arg1].field_256, parameters[arg1].field_512
}

function organizationsProposals(address arg1, bytes32 arg2) payable {
    require calldata.size - 4 >= 64
    return organizationsProposals[arg1][arg2].field_0, 
           bool(organizationsProposals[arg1][arg2].field_160),
           organizationsProposals[arg1][arg2].field_256,
           Mask(32, 224, organizationsProposals[arg1][arg2].field_512)
}

function _fallback() payable {
    revert
}

function getParametersHash(bytes32 arg1, bytes32 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    return sha3(arg1, arg2, arg3)
}

function proposalsInfo(address arg1, bytes32 arg2) payable {
    require calldata.size - 4 >= 64
    return stor0[arg1][arg2].field_0, stor0[arg1][arg2].field_256
}

function setParameters(bytes32 arg1, bytes32 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    parameters[arg1][arg2][arg3].field_0 = arg1
    parameters[arg1][arg2][arg3].field_256 = arg2
    parameters[arg1][arg2][arg3].field_512 = arg3
    return sha3(arg1, arg2, arg3)
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
        revert with 0, 32, 18, 0xfe6f6e6c7920566f74696e674d616368696e6500000000000000000000000000
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
        revert with 0, 32, 18, 0xfe6f6e6c7920566f74696e674d616368696e6500000000000000000000000000
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
        revert with 0, 32, 18, 0xfe6f6e6c7920566f74696e674d616368696e6500000000000000000000000000
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

function proposeToRemoveScheme(address arg1, address arg2, string arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    if not arg2:
        revert with 0, 'scheme cannot be zero'
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
    require ext_code.size(parameters[ext_call.return_data[0]].field_512)
    call parameters[ext_call.return_data[0]].field_512.0x88737b5e with:
         gas gas_remaining wei
        args 2, parameters[ext_call.return_data[0]].field_256, msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    organizationsProposals[address(arg1)][ext_call.return_data[0]].field_0 = arg2
    emit RemoveSchemeProposal(address(arg2), Array(len=arg3.length, data=arg3[all]), arg1, ext_call.return_data[0], parameters[ext_call.return_data[0]].field_512);
    stor0[stor2[ext_call.return_data[0]].field_512][ext_call.return_data[0]].field_0 = block.number
    stor0[stor2[ext_call.return_data[0]].field_512][ext_call.return_data[0]].field_256 = arg1
    return ext_call.return_data[0]
}

function executeProposal(bytes32 arg1, int256 arg2) payable {
    require calldata.size - 4 >= 64
    if not stor0[msg.sender][arg1].field_256:
        revert with 0, 32, 18, 0xfe6f6e6c7920566f74696e674d616368696e6500000000000000000000000000
    require organizationsProposals[stor0[msg.sender][arg1].field_256][arg1].field_0
    organizationsProposals[stor0[msg.sender][arg1].field_256][arg1].field_0 = 0
    organizationsProposals[stor0[msg.sender][arg1].field_256][arg1].field_256 = 0
    organizationsProposals[stor0[msg.sender][arg1].field_256][arg1].field_512 = 0
    emit ProposalDeleted(stor0[msg.sender][arg1].field_256, arg1);
    if 1 == arg2:
        require ext_code.size(stor0[msg.sender][arg1].field_256)
        staticcall stor0[msg.sender][arg1].field_256.0x8da5cb5b with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if organizationsProposals[stor0[msg.sender][arg1].field_256][arg1].field_160:
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).registerScheme(address arg1, bytes32 arg2, bytes4 arg3, address arg4) with:
                 gas gas_remaining wei
                args organizationsProposals[stor0[msg.sender][arg1].field_256][arg1].field_0, organizationsProposals[stor0[msg.sender][arg1].field_256][arg1].field_256, Mask(32, 224, organizationsProposals[stor0[msg.sender][arg1].field_256][arg1].field_512), stor0[msg.sender][arg1].field_256
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
        if not organizationsProposals[stor0[msg.sender][arg1].field_256][arg1].field_160:
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).unregisterScheme(address arg1, address arg2) with:
                 gas gas_remaining wei
                args organizationsProposals[stor0[msg.sender][arg1].field_256][arg1].field_0, stor0[msg.sender][arg1].field_256
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
    emit ProposalExecuted(arg2, stor0[msg.sender][arg1].field_256, arg1);
    return 1
}

function proposeScheme(address arg1, address arg2, bytes32 arg3, bytes4 arg4, string arg5) payable {
    require calldata.size - 4 >= 160
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    if not arg2:
        revert with 0, 'scheme cannot be zero'
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
    require ext_code.size(parameters[ext_call.return_data[0]].field_512)
    call parameters[ext_call.return_data[0]].field_512.0x88737b5e with:
         gas gas_remaining wei
        args 2, parameters[ext_call.return_data[0]].field_0, msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit NewSchemeProposal(address(arg2), arg3, Mask(32, 224, arg4), Array(len=arg5.length, data=arg5[all]), arg1, ext_call.return_data[0], parameters[ext_call.return_data[0]].field_512);
    organizationsProposals[address(arg1)][ext_call.return_data[0]].field_0 = uint64(arg2) << 96
    organizationsProposals[address(arg1)][ext_call.return_data[0]].field_160 = 1
    organizationsProposals[address(arg1)][ext_call.return_data[0]].field_256 = arg3
    organizationsProposals[address(arg1)][ext_call.return_data[0]].field_512 = arg4
    stor0[stor2[ext_call.return_data[0]].field_512][ext_call.return_data[0]].field_0 = block.number
    stor0[stor2[ext_call.return_data[0]].field_512][ext_call.return_data[0]].field_256 = arg1
    return ext_call.return_data[0]
}



}
