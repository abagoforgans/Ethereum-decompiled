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
    mem[128] = organizationsProposals[arg1][arg2].field_0
    idx = 128
    s = 0
    while organizationsProposals[arg1][arg2].length + 96 > idx:
        mem[idx + 32] = organizationsProposals[arg1][arg2][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=organizationsProposals[arg1][arg2].length, data=mem[128 len organizationsProposals[arg1][arg2].length]), 
           organizationsProposals[arg1][arg2].field_256,
           bool(organizationsProposals[arg1][arg2].field_512),
           bool(organizationsProposals[arg1][arg2].field_520)
}

function sub_88b26667(?) payable {
    require calldata.size - 4 >= 32
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
    return parameters[ext_call.return_data[0]].field_512
}

function _fallback() payable {
    revert
}

function sub_35a05133(?) payable {
    require calldata.size - 4 >= 96
    return sha3(arg1, arg2, arg3)
}

function proposalsInfo(address arg1, bytes32 arg2) payable {
    require calldata.size - 4 >= 64
    return stor0[arg1][arg2].field_0, stor0[arg1][arg2].field_256
}

function sub_48ffbfeb(?) payable {
    require calldata.size - 4 >= 96
    parameters[arg1][arg2][arg3].field_256 = arg1
    parameters[arg1][arg2][arg3].field_0 = arg2
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

function sub_9edd8c74(?) payable {
    require calldata.size - 4 >= 64
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
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
    mem[192] = parameters[ext_call.return_data[0]].field_0
    mem[224] = parameters[ext_call.return_data[0]].field_256
    mem[256] = parameters[ext_call.return_data[0]].field_512
    mem[32] = sha3(address(arg1), 1)
    if not organizationsProposals[address(arg1)][arg2].field_512:
        revert with 0, 'must be a live proposal'
    if not organizationsProposals[address(arg1)][arg2].field_520:
        revert with 0, 32, 38, 0x70726f706f73616c206d7573742070617373656420627920766f74696e67206d616368696e00, mem[394 len 26]
    organizationsProposals[address(arg1)][arg2].field_512 = 0
    require ext_code.size(arg1)
    staticcall arg1.0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[288] = 0xd1b7089a00000000000000000000000000000000000000000000000000000000
    mem[292] = parameters[ext_call.return_data[0]].field_512
    mem[356] = arg1
    mem[388] = organizationsProposals[address(arg1)][arg2].field_256
    mem[324] = 128
    mem[420] = organizationsProposals[address(arg1)][arg2].length
    mem[0] = sha3(arg2, sha3(address(arg1), 1))
    mem[452] = organizationsProposals[address(arg1)][arg2].field_0
    idx = 452
    s = 0
    while organizationsProposals[address(arg1)][arg2].length + 452 > idx + 32:
        mem[idx + 32] = organizationsProposals[address(arg1)][arg2][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).genericCall(address arg1, bytes arg2, address arg3, uint256 arg4) with:
         gas gas_remaining wei
        args parameters[ext_call.return_data[0]].field_512, Array(len=organizationsProposals[address(arg1)][arg2].length, data=mem[452 len organizationsProposals[address(arg1)][arg2].length + (floor32(organizationsProposals[address(arg1)][arg2].length - 1) + -organizationsProposals[address(arg1)][arg2].length + 32 % 32)]), address(arg1), organizationsProposals[address(arg1)][arg2].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 288
    require return_data.size >= 64
    require parameters[ext_call.return_data[0]].field_512, 0 <= 4294967296
    require parameters[ext_call.return_data[0]].field_512, 0 + 32 <= return_data.size
    require return_data.size >= mem[parameters[ext_call.return_data[0]].field_512, 0 + 288] + parameters[ext_call.return_data[0]].field_512, 0 + 32 and mem[parameters[ext_call.return_data[0]].field_512, 0 + 288] <= 4294967296
    if not mem[288 len 4], parameters[ext_call.return_data[0]].field_512:
        organizationsProposals[address(arg1)][arg2].field_512 = 1
    else:
        organizationsProposals[address(arg1)][arg2].field_0 = 0
        if 31 >= organizationsProposals[address(arg1)][arg2].length:
            organizationsProposals[address(arg1)][arg2].field_256 = 0
            organizationsProposals[address(arg1)][arg2].field_512 = 0
            emit ProposalDeleted(arg1, arg2);
            mem[ceil32(return_data.size) + 288] = 32
            mem[ceil32(return_data.size) + 320] = mem[parameters[ext_call.return_data[0]].field_512, 0 + 288]
            _142 = mem[parameters[ext_call.return_data[0]].field_512, 0 + 288]
            mem[ceil32(return_data.size) + 352 len ceil32(mem[parameters[ext_call.return_data[0]].field_512, 0 + 288])] = mem[parameters[ext_call.return_data[0]].field_512, 0 + 320 len ceil32(mem[parameters[ext_call.return_data[0]].field_512, 0 + 288])]
            if not _142 % 32:
                emit ProposalExecuted(address arg1, bytes32 arg2, bytes arg3):
                                      32,
                                      mem[ceil32(return_data.size) + 320 len _142 + 32],
                                      arg1,
                                      arg2,
            else:
                mem[floor32(_142) + ceil32(return_data.size) + 352] = mem[floor32(_142) + ceil32(return_data.size) + -(_142 % 32) + 384 len _142 % 32]
                emit ProposalExecuted(address arg1, bytes32 arg2, bytes arg3):
                                      32,
                                      mem[ceil32(return_data.size) + 320 len floor32(_142) + 64],
                                      arg1,
                                      arg2,
        else:
            idx = 0
            while organizationsProposals[address(arg1)][arg2].length + 31 / 32 > idx:
                organizationsProposals[address(arg1)][arg2][idx].field_0 = 0
                idx = idx + 1
                continue 
            organizationsProposals[address(arg1)][arg2].field_256 = 0
            organizationsProposals[address(arg1)][arg2].field_512 = 0
            emit ProposalDeleted(arg1, arg2);
            mem[ceil32(return_data.size) + 288] = 32
            mem[ceil32(return_data.size) + 320] = mem[parameters[ext_call.return_data[0]].field_512, 0 + 288]
            _170 = mem[parameters[ext_call.return_data[0]].field_512, 0 + 288]
            mem[ceil32(return_data.size) + 352 len ceil32(mem[parameters[ext_call.return_data[0]].field_512, 0 + 288])] = mem[parameters[ext_call.return_data[0]].field_512, 0 + 320 len ceil32(mem[parameters[ext_call.return_data[0]].field_512, 0 + 288])]
            if not _170 % 32:
                emit ProposalExecuted(address arg1, bytes32 arg2, bytes arg3):
                                      32,
                                      mem[ceil32(return_data.size) + 320 len _170 + 32],
                                      arg1,
                                      arg2,
            else:
                mem[floor32(_170) + ceil32(return_data.size) + 352] = mem[floor32(_170) + ceil32(return_data.size) + -(_170 % 32) + 384 len _170 % 32]
                emit ProposalExecuted(address arg1, bytes32 arg2, bytes arg3):
                                      32,
                                      mem[ceil32(return_data.size) + 320 len floor32(_170) + 64],
                                      arg1,
                                      arg2,
}

function sub_20160d7e(?) payable {
    require calldata.size - 4 >= 128
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[ceil32(arg2.length) + 128] = arg4.length
    mem[ceil32(arg2.length) + 160 len arg4.length] = arg4[all]
    mem[ceil32(arg2.length) + arg4.length + 160] = 0
    mem[ceil32(arg2.length) + ceil32(arg4.length) + 160] = 0
    mem[ceil32(arg2.length) + ceil32(arg4.length) + 192] = 0
    mem[ceil32(arg2.length) + ceil32(arg4.length) + 224] = 0
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
    mem[ceil32(arg2.length) + ceil32(arg4.length) + 256] = parameters[ext_call.return_data[0]].field_0
    mem[ceil32(arg2.length) + ceil32(arg4.length) + 288] = parameters[ext_call.return_data[0]].field_256
    mem[ceil32(arg2.length) + ceil32(arg4.length) + 320] = parameters[ext_call.return_data[0]].field_512
    require ext_code.size(parameters[ext_call.return_data[0]].field_0)
    call parameters[ext_call.return_data[0]].field_0.0x88737b5e with:
         gas gas_remaining wei
        args 2, parameters[ext_call.return_data[0]].field_256, msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(arg2.length) + ceil32(arg4.length) + 352] = 96
    mem[ceil32(arg2.length) + ceil32(arg4.length) + 384] = arg3
    mem[ceil32(arg2.length) + ceil32(arg4.length) + 416] = 1
    mem[ceil32(arg2.length) + ceil32(arg4.length) + 448] = 0
    organizationsProposals[address(arg1)][ext_call.return_data[0]][].field_0 = Array(len=arg2.length, data=arg2[all])
    organizationsProposals[address(arg1)][ext_call.return_data[0]].field_256 = arg3
    organizationsProposals[address(arg1)][ext_call.return_data[0]].field_512 = 1
    organizationsProposals[address(arg1)][ext_call.return_data[0]].field_520 = 0
    organizationsProposals[address(arg1)][ext_call.return_data[0]].field_528 = 0
    mem[64] = ceil32(arg2.length) + ceil32(arg4.length) + 544
    mem[ceil32(arg2.length) + ceil32(arg4.length) + 480] = block.number
    mem[ceil32(arg2.length) + ceil32(arg4.length) + 512] = arg1
    mem[0] = ext_call.return_data[0]
    mem[32] = sha3(parameters[ext_call.return_data[0]].field_0, 0)
    stor0[stor2[ext_call.return_data[0]].field_0][ext_call.return_data[0]].field_0 = block.number
    stor0[stor2[ext_call.return_data[0]].field_0][ext_call.return_data[0]].field_256 = arg1
    mem[ceil32(arg2.length) + ceil32(arg4.length) + 576] = arg3
    mem[ceil32(arg2.length) + ceil32(arg4.length) + 544] = 96
    mem[ceil32(arg2.length) + ceil32(arg4.length) + 640] = arg2.length
    mem[ceil32(arg2.length) + ceil32(arg4.length) + 672 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        mem[ceil32(arg2.length) + ceil32(arg4.length) + 608] = arg2.length + 128
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg4.length) + 672] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg4.length) + 704 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
        if not Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32:
            emit NewCallProposal(address arg1, bytes32 arg2, bytes arg3, uint256 arg4, string arg5):
                                 mem[ceil32(arg2.length) + ceil32(arg4.length) + 544 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + arg2.length + 160],
                                 arg1,
                                 ext_call.return_data[0],
        else:
            mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + arg2.length + ceil32(arg2.length) + ceil32(arg4.length) + 704] = mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + arg2.length + ceil32(arg2.length) + ceil32(arg4.length) + -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 736 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32]
            emit NewCallProposal(address arg1, bytes32 arg2, bytes arg3, uint256 arg4, string arg5):
                                 mem[ceil32(arg2.length) + ceil32(arg4.length) + 544 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + arg2.length + 192],
                                 arg1,
                                 ext_call.return_data[0],
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg4.length) + 672] = mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg4.length) + -(arg2.length % 32) + 704 len arg2.length % 32]
        mem[ceil32(arg2.length) + ceil32(arg4.length) + 608] = floor32(arg2.length) + 160
        mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg4.length) + 704] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
        mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg4.length) + 736 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
        if not Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32:
            emit NewCallProposal(address arg1, bytes32 arg2, bytes arg3, uint256 arg4, string arg5):
                                 mem[ceil32(arg2.length) + ceil32(arg4.length) + 544 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + floor32(arg2.length) + 192],
                                 arg1,
                                 ext_call.return_data[0],
        else:
            mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg4.length) + 736] = mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg4.length) + -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 768 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32]
            emit NewCallProposal(address arg1, bytes32 arg2, bytes arg3, uint256 arg4, string arg5):
                                 mem[ceil32(arg2.length) + ceil32(arg4.length) + 544 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + floor32(arg2.length) + 224],
                                 arg1,
                                 ext_call.return_data[0],
    return ext_call.return_data[0]
}

function executeProposal(bytes32 arg1, int256 arg2) payable {
    require calldata.size - 4 >= 64
    if not stor0[msg.sender][arg1].field_256:
        revert with 0, 32, 18, 0xfe6f6e6c7920566f74696e674d616368696e6500000000000000000000000000
    if not organizationsProposals[stor0[msg.sender][arg1].field_256][arg1].field_512:
        revert with 0, 'must be a live proposal'
    if organizationsProposals[stor0[msg.sender][arg1].field_256][arg1].field_520:
        revert with 0, 'cannot execute twice'
    if arg2 != 1:
        organizationsProposals[stor0[msg.sender][arg1].field_256][arg1].field_0 = 0
        if 31 < organizationsProposals[stor0[msg.sender][arg1].field_256][arg1].length:
            idx = 0
            while organizationsProposals[stor0[msg.sender][arg1].field_256][arg1].length + 31 / 32 > idx:
                organizationsProposals[stor0[msg.sender][arg1].field_256][arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
        organizationsProposals[stor0[msg.sender][arg1].field_256][arg1].field_256 = 0
        organizationsProposals[stor0[msg.sender][arg1].field_256][arg1].field_512 = 0
        emit ProposalDeleted(stor0[msg.sender][arg1].field_256, arg1);
    else:
        organizationsProposals[stor0[msg.sender][arg1].field_256][arg1].field_520 = 1
        mem[96] = 0
        mem[128] = 0
        mem[160] = 0
        require ext_code.size(stor0[msg.sender][arg1].field_256)
        staticcall stor0[msg.sender][arg1].field_256.0x8da5cb5b with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).isSchemeRegistered(address arg1, address arg2) with:
                gas gas_remaining wei
               args this.address, stor0[msg.sender][arg1].field_256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'scheme is not registered'
        require ext_code.size(stor0[msg.sender][arg1].field_256)
        staticcall stor0[msg.sender][arg1].field_256.0x8da5cb5b with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getSchemeParameters(address arg1, address arg2) with:
                gas gas_remaining wei
               args this.address, stor0[msg.sender][arg1].field_256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[192] = parameters[ext_call.return_data[0]].field_0
        mem[224] = parameters[ext_call.return_data[0]].field_256
        mem[256] = parameters[ext_call.return_data[0]].field_512
        mem[32] = sha3(stor0[msg.sender][arg1].field_256, 1)
        if not organizationsProposals[stor0[msg.sender][arg1].field_256][arg1].field_512:
            revert with 0, 'must be a live proposal'
        if not organizationsProposals[stor0[msg.sender][arg1].field_256][arg1].field_520:
            revert with 0, 32, 38, 0x70726f706f73616c206d7573742070617373656420627920766f74696e67206d616368696e00, mem[394 len 26]
        organizationsProposals[stor0[msg.sender][arg1].field_256][arg1].field_512 = 0
        require ext_code.size(stor0[msg.sender][arg1].field_256)
        staticcall stor0[msg.sender][arg1].field_256.0x8da5cb5b with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[288] = 0xd1b7089a00000000000000000000000000000000000000000000000000000000
        mem[292] = parameters[ext_call.return_data[0]].field_512
        mem[356] = stor0[msg.sender][arg1].field_256
        mem[388] = organizationsProposals[stor0[msg.sender][arg1].field_256][arg1].field_256
        mem[324] = 128
        mem[420] = organizationsProposals[stor0[msg.sender][arg1].field_256][arg1].length
        mem[0] = sha3(arg1, sha3(stor0[msg.sender][arg1].field_256, 1))
        mem[452] = organizationsProposals[stor0[msg.sender][arg1].field_256][arg1].field_0
        idx = 452
        s = 0
        while organizationsProposals[stor0[msg.sender][arg1].field_256][arg1].length + 452 > idx + 32:
            mem[idx + 32] = organizationsProposals[stor0[msg.sender][arg1].field_256][arg1][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).genericCall(address arg1, bytes arg2, address arg3, uint256 arg4) with:
             gas gas_remaining wei
            args parameters[ext_call.return_data[0]].field_512, Array(len=organizationsProposals[stor0[msg.sender][arg1].field_256][arg1].length, data=mem[452 len organizationsProposals[stor0[msg.sender][arg1].field_256][arg1].length + (floor32(organizationsProposals[stor0[msg.sender][arg1].field_256][arg1].length - 1) + -organizationsProposals[stor0[msg.sender][arg1].field_256][arg1].length + 32 % 32)]), stor0[msg.sender][arg1].field_256, organizationsProposals[stor0[msg.sender][arg1].field_256][arg1].field_256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 288
        require return_data.size >= 64
        require parameters[ext_call.return_data[0]].field_512, 0 <= 4294967296
        require parameters[ext_call.return_data[0]].field_512, 0 + 32 <= return_data.size
        require return_data.size >= mem[parameters[ext_call.return_data[0]].field_512, 0 + 288] + parameters[ext_call.return_data[0]].field_512, 0 + 32 and mem[parameters[ext_call.return_data[0]].field_512, 0 + 288] <= 4294967296
        if not mem[288 len 4], parameters[ext_call.return_data[0]].field_512:
            organizationsProposals[stor0[msg.sender][arg1].field_256][arg1].field_512 = 1
        else:
            organizationsProposals[stor0[msg.sender][arg1].field_256][arg1].field_0 = 0
            if 31 >= organizationsProposals[stor0[msg.sender][arg1].field_256][arg1].length:
                organizationsProposals[stor0[msg.sender][arg1].field_256][arg1].field_256 = 0
                organizationsProposals[stor0[msg.sender][arg1].field_256][arg1].field_512 = 0
                emit ProposalDeleted(stor0[msg.sender][arg1].field_256, arg1);
                mem[ceil32(return_data.size) + 288] = 32
                mem[ceil32(return_data.size) + 320] = mem[parameters[ext_call.return_data[0]].field_512, 0 + 288]
                _270 = mem[parameters[ext_call.return_data[0]].field_512, 0 + 288]
                mem[ceil32(return_data.size) + 352 len ceil32(mem[parameters[ext_call.return_data[0]].field_512, 0 + 288])] = mem[parameters[ext_call.return_data[0]].field_512, 0 + 320 len ceil32(mem[parameters[ext_call.return_data[0]].field_512, 0 + 288])]
                if not _270 % 32:
                    emit ProposalExecuted(address arg1, bytes32 arg2, bytes arg3):
                                          32,
                                          mem[ceil32(return_data.size) + 320 len _270 + 32],
                                          stor0[msg.sender][arg1].field_256,
                                          arg1,
                else:
                    mem[floor32(_270) + ceil32(return_data.size) + 352] = mem[floor32(_270) + ceil32(return_data.size) + -(_270 % 32) + 384 len _270 % 32]
                    emit ProposalExecuted(address arg1, bytes32 arg2, bytes arg3):
                                          32,
                                          mem[ceil32(return_data.size) + 320 len floor32(_270) + 64],
                                          stor0[msg.sender][arg1].field_256,
                                          arg1,
            else:
                idx = 0
                while organizationsProposals[stor0[msg.sender][arg1].field_256][arg1].length + 31 / 32 > idx:
                    organizationsProposals[stor0[msg.sender][arg1].field_256][arg1][idx].field_0 = 0
                    idx = idx + 1
                    continue 
                organizationsProposals[stor0[msg.sender][arg1].field_256][arg1].field_256 = 0
                organizationsProposals[stor0[msg.sender][arg1].field_256][arg1].field_512 = 0
                emit ProposalDeleted(stor0[msg.sender][arg1].field_256, arg1);
                mem[ceil32(return_data.size) + 288] = 32
                mem[ceil32(return_data.size) + 320] = mem[parameters[ext_call.return_data[0]].field_512, 0 + 288]
                _314 = mem[parameters[ext_call.return_data[0]].field_512, 0 + 288]
                mem[ceil32(return_data.size) + 352 len ceil32(mem[parameters[ext_call.return_data[0]].field_512, 0 + 288])] = mem[parameters[ext_call.return_data[0]].field_512, 0 + 320 len ceil32(mem[parameters[ext_call.return_data[0]].field_512, 0 + 288])]
                if not _314 % 32:
                    emit ProposalExecuted(address arg1, bytes32 arg2, bytes arg3):
                                          32,
                                          mem[ceil32(return_data.size) + 320 len _314 + 32],
                                          stor0[msg.sender][arg1].field_256,
                                          arg1,
                else:
                    mem[floor32(_314) + ceil32(return_data.size) + 352] = mem[floor32(_314) + ceil32(return_data.size) + -(_314 % 32) + 384 len _314 % 32]
                    emit ProposalExecuted(address arg1, bytes32 arg2, bytes arg3):
                                          32,
                                          mem[ceil32(return_data.size) + 320 len floor32(_314) + 64],
                                          stor0[msg.sender][arg1].field_256,
                                          arg1,
    emit ProposalExecutedByVotingMachine(arg2, stor0[msg.sender][arg1].field_256, arg1);
    return 1
}



}
