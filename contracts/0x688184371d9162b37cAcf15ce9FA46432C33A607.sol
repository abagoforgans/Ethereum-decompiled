contract main {




// =====================  Runtime code  =====================


const BOUNTY_CHANGE_UNLOCK_PERIOD = (56 * 3600)


address organizationAddress;
address stateRootProviderAddress;
array of struct encodedGatewayPath;
address remoteGatewayAddress;
uint256 bounty;
uint256 proposedBounty;
uint256 proposedBountyUnlockHeight;
mapping of uint8 outboxMessageStatus;
mapping of uint8 inboxMessageStatus;
mapping of struct messages;
mapping of uint256 stor10;
mapping of uint256 stor11;
mapping of uint256 stor12;
uint8 activated;
address stor13;
address stakeVaultAddress; offset 8
address tokenAddress;
address baseTokenAddress;
address burnerAddress;
mapping of struct stor17;
mapping of struct stor18;

function proposedBountyUnlockHeight() payable {
    return proposedBountyUnlockHeight
}

function activated() payable {
    return bool(activated)
}

function organization() payable {
    return organizationAddress
}

function burner() payable {
    return burnerAddress
}

function messages(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return messages[arg1].field_0, 
           messages[arg1].field_256,
           messages[arg1].field_512,
           messages[arg1].field_768,
           messages[arg1].field_1024,
           messages[arg1].field_1280,
           messages[arg1].field_1536
}

function stakeVault() payable {
    return stakeVaultAddress
}

function getInboxMessageStatus(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require inboxMessageStatus[arg1] <= 4
    return inboxMessageStatus[arg1]
}

function remoteGateway() payable {
    return remoteGatewayAddress
}

function bounty() payable {
    return bounty
}

function proposedBounty() payable {
    return proposedBounty
}

function getOutboxMessageStatus(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require outboxMessageStatus[arg1] <= 4
    return outboxMessageStatus[arg1]
}

function encodedGatewayPath() payable {
    return encodedGatewayPath[0 len encodedGatewayPath.length].field_0
}

function baseToken() payable {
    return baseTokenAddress
}

function stateRootProvider() payable {
    return stateRootProviderAddress
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function getInboxActiveProcess(address arg1) payable {
    require calldata.size - 4 >= 32
    require inboxMessageStatus[stor11[address(arg1)]] <= 4
    return stor11[address(arg1)], inboxMessageStatus[stor11[address(arg1)]]
}

function getOutboxActiveProcess(address arg1) payable {
    require calldata.size - 4 >= 32
    require outboxMessageStatus[stor12[address(arg1)]] <= 4
    return stor12[address(arg1)], outboxMessageStatus[stor12[address(arg1)]]
}

function penalty(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor17[arg1].field_512:
        return 0
    if 150 * stor17[arg1].field_512 / stor17[arg1].field_512 != 150:
        revert with 0, 'Overflow when multiplying.'
    return (150 * stor17[arg1].field_512 / 100)
}

function getNonce(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor12[address(arg1)]:
        return 1
    if messages[stor12[address(arg1)]].field_256 + 1 < messages[stor12[address(arg1)]].field_256:
        revert with 0, 'Overflow when adding.'
    return (messages[stor12[address(arg1)]].field_256 + 1)
}

function deactivateGateway() payable {
    require ext_code.size(organizationAddress)
    staticcall organizationAddress.0xb1ce8eab with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    53,
                    0x6f4f6e6c7920746865206f7267616e697a6174696f6e20697320616c6c6f77656420746f2063616c6c2074686973206d6574686f64,
                    mem[217 len 11]
    if bool(activated) != 1:
        revert with 0, 'Gateway is already deactivated.'
    activated = 0
    return 1
}

function initiateBountyAmountChange(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(organizationAddress)
    staticcall organizationAddress.0xb1ce8eab with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    53,
                    0x6f4f6e6c7920746865206f7267616e697a6174696f6e20697320616c6c6f77656420746f2063616c6c2074686973206d6574686f64,
                    mem[217 len 11]
    proposedBounty = arg1
    if block.number + (56 * 3600) < block.number:
        revert with 0, 'Overflow when adding.'
    proposedBountyUnlockHeight = block.number + (56 * 3600)
    emit 0xa9d65527: bounty, arg1, block.number + (56 * 3600)
    return arg1
}

function progressStake(bytes32 arg1, bytes32 arg2) payable {
    require calldata.size - 4 >= 64
    if not arg1:
        revert with 0, 'Message hash must not be zero'
    require ext_code.size(0xb71bb83d2814633f7dfeb9cb5c4c2e63be215ed)
    delegate 0xb71bb83d2814633f7dfeb9cb5c4c2e63be215ed.0x24b4aaf9 with:
         gas gas_remaining wei
        args 7, sha3(arg1, 9), arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if stor17[arg1].field_0 <= 0:
        revert with 0, 'Stake request must exist.'
    stor17[arg1].field_0 = 0
    stor17[arg1].field_256 = 0
    stor17[arg1].field_512 = 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args stor13, stor17[arg1].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(baseTokenAddress)
    call baseTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, stor17[arg1].field_512
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0xdad61785: messages[arg1].field_1024, messages[arg1].field_256, stor17[arg1].field_0, 0, arg2, arg1
    return messages[arg1].field_1024, stor17[arg1].field_0
}

function confirmBountyAmountChange() payable {
    require ext_code.size(organizationAddress)
    staticcall organizationAddress.0xb1ce8eab with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    53,
                    0x6f4f6e6c7920746865206f7267616e697a6174696f6e20697320616c6c6f77656420746f2063616c6c2074686973206d6574686f64,
                    mem[217 len 11]
    if proposedBounty == bounty:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    57,
                    0x50726f706f73656420626f756e74792073686f756c6420626520646966666572656e742066726f6d206578697374696e6720626f756e747900,
                    mem[221 len 7]
    if block.number <= proposedBountyUnlockHeight:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    66,
                    0x2e436f6e6669726d20626f756e747920616d6f756e74206368616e67652063616e206f6e6c7920626520646f6e6520616674657220756e6c6f636b20706572696f64,
                    mem[230 len 30]
    bounty = proposedBounty
    proposedBounty = 0
    proposedBountyUnlockHeight = 0
    emit 0x2bc6c861: bounty, proposedBounty
    return proposedBounty, bounty
}

function activateGateway(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(organizationAddress)
    staticcall organizationAddress.0xb1ce8eab with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    53,
                    0x6f4f6e6c7920746865206f7267616e697a6174696f6e20697320616c6c6f77656420746f2063616c6c2074686973206d6574686f64,
                    mem[217 len 11]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x2e436f2d676174657761792061646472657373206d757374206e6f74206265207a65726f,
                    mem[200 len 28]
    if remoteGatewayAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x2e476174657761792077617320616c726561647920616374697661746564206f6e6365,
                    mem[199 len 29]
    remoteGatewayAddress = arg1
    mem[180] = sha3(arg1)
    encodedGatewayPath.length = 65
    s = 0
    idx = 180
    while 212 > idx:
        encodedGatewayPath[s].field_0 = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 1
    while encodedGatewayPath.length + 31 / 32 > idx:
        encodedGatewayPath[idx].field_0 = 0
        idx = idx + 1
        continue 
    activated = 1
    return 1
}

function revertStake(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0, '.Message hash must not be zero.'
    if messages[arg1].field_1024 != msg.sender:
        revert with 0, 'Only staker can revert stake.'
    require ext_code.size(0xb71bb83d2814633f7dfeb9cb5c4c2e63be215ed)
    delegate 0xb71bb83d2814633f7dfeb9cb5c4c2e63be215ed.0x5cafcfb5 with:
         gas gas_remaining wei
        args 7, sha3(arg1, 9)
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not stor17[arg1].field_512:
        require ext_code.size(baseTokenAddress)
        call baseTokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, burnerAddress, 0
    else:
        if 150 * stor17[arg1].field_512 / stor17[arg1].field_512 != 150:
            revert with 0, 'Overflow when multiplying.'
        require ext_code.size(baseTokenAddress)
        call baseTokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, burnerAddress, 150 * stor17[arg1].field_512 / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x2e5374616b6572206d75737420617070726f7665206761746577617920666f722070656e616c747920616d6f756e74,
                    mem[211 len 17]
    emit 0x7db33443: messages[arg1].field_1024, messages[arg1].field_256, stor17[arg1].field_0, arg1
    return messages[arg1].field_1024, messages[arg1].field_256, stor17[arg1].field_0
}

function confirmRevertRedeemIntent(bytes32 arg1, uint256 arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    if not arg1:
        revert with 0, '.Message hash must not be zero.'
    if arg3.length <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x2e524c5020706172656e74206e6f646573206d757374206e6f74206265207a65726f,
                    mem[198 len 30]
    if stor18[arg1].field_0 <= 0:
        revert with 0, 'Unstake amount must not be zero.'
    stor18[arg1].field_0 = 0
    stor18[arg1].field_256 = 0
    if not messages[arg1].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x6452657665727452656465656d20696e74656e742068617368206d757374206e6f74206265207a65726f,
                    mem[206 len 22]
    if not stor10[arg2]:
        revert with 0, '.Storage root must not be zero.'
    mem[292 len arg3.length] = arg3[all]
    mem[arg3.length + 292] = 0
    require ext_code.size(0xb71bb83d2814633f7dfeb9cb5c4c2e63be215ed)
    delegate 0xb71bb83d2814633f7dfeb9cb5c4c2e63be215ed.0x9ae4511 with:
         gas gas_remaining wei
        args 0, 7, sha3(arg1, 9), 160, 7, stor10[arg2], arg3.length, arg3[all], mem[arg3.length + 292 len ceil32(arg3.length) - arg3.length]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x12021c09: messages[arg1].field_1024, messages[arg1].field_256, stor18[arg1].field_0, arg1
    return messages[arg1].field_1024, messages[arg1].field_256, stor18[arg1].field_0
}

function progressStakeWithProof(bytes32 arg1, bytes arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if not arg1:
        revert with 0, '.Message hash must not be zero.'
    if arg2.length <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x2e524c5020656e636f64656420706172656e74206e6f646573206d757374206e6f74206265207a65726f,
                    mem[206 len 22]
    if not stor10[arg3]:
        revert with 0, '.Storage root must not be zero.'
    require arg4 <= 4
    mem[324 len arg2.length] = arg2[all]
    mem[arg2.length + 324] = 0
    require ext_code.size(0xb71bb83d2814633f7dfeb9cb5c4c2e63be215ed)
    delegate 0xb71bb83d2814633f7dfeb9cb5c4c2e63be215ed.0x946fac with:
         gas gas_remaining wei
        args 0, 7, sha3(arg1, 9), 192, 7, stor10[arg3], arg4 << 248, arg2.length, arg2[all], mem[arg2.length + 324 len ceil32(arg2.length) - arg2.length]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if stor17[arg1].field_0 <= 0:
        revert with 0, 'Stake request must exist.'
    stor17[arg1].field_0 = 0
    stor17[arg1].field_256 = 0
    stor17[arg1].field_512 = 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args stor13, stor17[arg1].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(baseTokenAddress)
    call baseTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, stor17[arg1].field_512
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0xdad61785: messages[arg1].field_1024, messages[arg1].field_256, stor17[arg1].field_0, 1, 0, arg1
    return messages[arg1].field_1024, stor17[arg1].field_0
}

function progressRevertStake(bytes32 arg1, uint256 arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    if not arg1:
        revert with 0, '.Message hash must not be zero.'
    if arg3.length <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x2e524c5020706172656e74206e6f646573206d757374206e6f74206265207a65726f,
                    mem[198 len 30]
    if not messages[arg1].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe5374616b65496e74656e7448617368206d757374206e6f74206265207a65726f,
                    mem[197 len 31]
    if not stor10[arg2]:
        revert with 0, '.Storage root must not be zero.'
    if stor17[arg1].field_0 <= 0:
        revert with 0, 'Stake request must exist.'
    mem[324 len arg3.length] = arg3[all]
    mem[arg3.length + 324] = 0
    require ext_code.size(0xb71bb83d2814633f7dfeb9cb5c4c2e63be215ed)
    delegate 0xb71bb83d2814633f7dfeb9cb5c4c2e63be215ed.0x1b3ef51c with:
         gas gas_remaining wei
        args 0, 7, sha3(arg1, 9), 7, 192, stor10[arg2], 4, arg3.length, arg3[all], mem[arg3.length + 324 len ceil32(arg3.length) - arg3.length]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor17[arg1].field_0 = 0
    stor17[arg1].field_256 = 0
    stor17[arg1].field_512 = 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args messages[arg1].field_1024, stor17[arg1].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(baseTokenAddress)
    call baseTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args burnerAddress, stor17[arg1].field_512
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x4259cc74: messages[arg1].field_1024, messages[arg1].field_256, stor17[arg1].field_0, arg1
    return messages[arg1].field_1024, messages[arg1].field_256, stor17[arg1].field_0
}

function proveGateway(uint256 arg1, bytes arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    if not arg2.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x2e4c656e677468206f6620524c50206163636f756e74206d757374206e6f742062652030,
                    mem[200 len 28]
    if not arg3.length:
        revert with 0, 'Length of RLP parent nodes is 0'
    require ext_code.size(stateRootProviderAddress)
    staticcall stateRootProviderAddress.getStateRoot(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'State root must not be zero'
    if stor10[arg1]:
        emit 0xc8b08627: remoteGatewayAddress, arg1, stor10[arg1], 1
    else:
        mem[ceil32(arg2.length) + 260] = arg3.length
        mem[ceil32(arg2.length) + 292 len arg3.length] = arg3[all]
        mem[arg3.length + ceil32(arg2.length) + 292] = 0
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 292] = encodedGatewayPath.length
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 324] = uint256(encodedGatewayPath.field_0)
        idx = ceil32(arg2.length) + ceil32(arg3.length) + 324
        s = 0
        while ceil32(arg2.length) + ceil32(arg3.length) + encodedGatewayPath.length + 324 > idx + 32:
            mem[idx + 32] = encodedGatewayPath[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require ext_code.size(0x1c9e18c8ab156753f7eca95d8c042f7842aaf09e)
        delegate 0x1c9e18c8ab156753f7eca95d8c042f7842aaf09e.proveAccount(bytes arg1, bytes arg2, bytes arg3, bytes32 arg4) with:
             gas gas_remaining wei
            args 128, ceil32(arg2.length) + 160, ceil32(arg2.length) + ceil32(arg3.length) + 192, ext_call.return_data[0], arg2.length, arg2[all], 0, mem[arg2.length + 292 len ceil32(arg2.length) + ceil32(arg3.length) + encodedGatewayPath.length + (floor32(encodedGatewayPath.length - 1) + -encodedGatewayPath.length + 32 % 32) + -arg2.length + 32]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        stor10[arg1] = delegate.return_data[0]
        emit 0xc8b08627: remoteGatewayAddress, arg1, delegate.return_data[0], 0
    return 1
}

function confirmRedeemIntent(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7, bytes32 arg8, bytes arg9) payable {
    require calldata.size - 4 >= 288
    require arg9 <= 4294967296
    require arg9 + 36 <= calldata.size
    require arg9.length <= 4294967296 and arg9 + arg9.length + 36 <= calldata.size
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x2e52656465656d65722061646472657373206d757374206e6f74206265207a65726f,
                    mem[198 len 30]
    if not arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x2e42656e65666963696172792061646472657373206d757374206e6f74206265207a65726f,
                    mem[201 len 27]
    if not arg4:
        revert with 0, 'Redeem amount must not be zero.'
    if arg9.length <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x2e524c5020656e636f64656420706172656e74206e6f646573206d757374206e6f74206265207a65726f,
                    mem[206 len 22]
    if not arg5:
        if arg4 <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        60,
                        0x2e4d6178696d756d20706f737369626c6520726577617264206d757374206265206c657373207468616e207468652072656465656d20616d6f756e74,
                        mem[224 len 4]
    else:
        if arg6 * arg5 / arg5 != arg6:
            revert with 0, 'Overflow when multiplying.'
        if arg4 <= arg6 * arg5:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        60,
                        0x2e4d6178696d756d20706f737369626c6520726577617264206d757374206265206c657373207468616e207468652072656465656d20616d6f756e74,
                        mem[224 len 4]
    require ext_code.size(0x1c9e18c8ab156753f7eca95d8c042f7842aaf09e)
    delegate 0x1c9e18c8ab156753f7eca95d8c042f7842aaf09e.hashRedeemIntent(uint256 arg1, address arg2, address arg3) with:
         gas gas_remaining wei
        args arg4, address(arg3), remoteGatewayAddress
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xb71bb83d2814633f7dfeb9cb5c4c2e63be215ed)
    delegate 0xb71bb83d2814633f7dfeb9cb5c4c2e63be215ed.messageDigest(bytes32 arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, bytes32 arg6) with:
         gas gas_remaining wei
        args delegate.return_data[0], arg2, arg5, arg6, address(arg1), arg8
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    messages[delegate.return_data[0]].field_0 = delegate.return_data[0]
    messages[delegate.return_data[0]].field_256 = arg2
    messages[delegate.return_data[0]].field_512 = arg5
    messages[delegate.return_data[0]].field_768 = arg6
    messages[delegate.return_data[0]].field_1024 = arg1
    messages[delegate.return_data[0]].field_1280 = arg8
    messages[delegate.return_data[0]].field_1536 = 0
    if not stor11[address(arg1)]:
        if arg2 != 1:
            revert with 0, 'Invalid nonce'
    else:
        if messages[stor11[address(arg1)]].field_256 + 1 < messages[stor11[address(arg1)]].field_256:
            revert with 0, 'Overflow when adding.'
        if arg2 != messages[stor11[address(arg1)]].field_256 + 1:
            revert with 0, 'Invalid nonce'
    if stor11[address(arg1)]:
        require inboxMessageStatus[stor11[address(arg1)]] <= 4
        if inboxMessageStatus[stor11[address(arg1)]] != 2:
            require inboxMessageStatus[stor11[address(arg1)]] <= 4
            if inboxMessageStatus[stor11[address(arg1)]] != 4:
                revert with 0, 32, 33, 0x2e50726576696f75732070726f63657373206973206e6f7420636f6d706c657465, Mask(248, 0, arg6)
        messages[stor11[address(arg1)]].field_0 = 0
        messages[stor11[address(arg1)]].field_256 = 0
        messages[stor11[address(arg1)]].field_512 = 0
        messages[stor11[address(arg1)]].field_768 = 0
        messages[stor11[address(arg1)]].field_1024 = 0
        messages[stor11[address(arg1)]].field_1280 = 0
        messages[stor11[address(arg1)]].field_1536 = 0
    stor11[address(arg1)] = delegate.return_data[0]
    stor18[delegate.return_data[0]].field_0 = arg4
    stor18[delegate.return_data[0]].field_256 = arg3
    if not stor10[arg7]:
        revert with 0, '.Storage root must not be zero.'
    require ext_code.size(0xb71bb83d2814633f7dfeb9cb5c4c2e63be215ed)
    delegate 0xb71bb83d2814633f7dfeb9cb5c4c2e63be215ed.0x0 with:
         gas gas_remaining wei
        args 7, sha3(delegate.return_data[0], 9), Array(len=arg9.length, data=arg9[all]), 7, stor10[arg7]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0xba4ac3e7: 0, uint128(arg1) << 96, arg2, address(arg3), arg4, arg7, arg8, delegate.return_data[0]
    if gas_remaining > gas_remaining:
        revert with 0, 'Underflow when subtracting.'
    messages[delegate.return_data[0]].field_1536 = 0
    return 0, delegate.return_data[4 len 28]
}

function stake(uint256 arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, bytes32 arg6) payable {
    require calldata.size - 4 >= 192
    if bool(activated) != 1:
        revert with 0, 'Gateway is not activated.'
    if arg1 <= 0:
        revert with 0, 'Stake amount must not be zero.'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x2e42656e65666963696172792061646472657373206d757374206e6f74206265207a65726f,
                    mem[201 len 27]
    if not arg3:
        if arg1 <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        59,
                        0x4d6178696d756d20706f737369626c6520726577617264206d757374206265206c657373207468616e20746865207374616b6520616d6f756e7400,
                        mem[223 len 5]
    else:
        if arg4 * arg3 / arg3 != arg4:
            revert with 0, 'Overflow when multiplying.'
        if arg1 <= arg4 * arg3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        59,
                        0x4d6178696d756d20706f737369626c6520726577617264206d757374206265206c657373207468616e20746865207374616b6520616d6f756e7400,
                        mem[223 len 5]
    require ext_code.size(0x1c9e18c8ab156753f7eca95d8c042f7842aaf09e)
    delegate 0x1c9e18c8ab156753f7eca95d8c042f7842aaf09e.hashStakeIntent(uint256 arg1, address arg2, address arg3) with:
         gas gas_remaining wei
        args arg1, address(arg2), this.address
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xb71bb83d2814633f7dfeb9cb5c4c2e63be215ed)
    delegate 0xb71bb83d2814633f7dfeb9cb5c4c2e63be215ed.messageDigest(bytes32 arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, bytes32 arg6) with:
         gas gas_remaining wei
        args delegate.return_data[0], arg5, arg3, arg4, msg.sender, arg6
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    messages[delegate.return_data[0]].field_0 = delegate.return_data[0]
    messages[delegate.return_data[0]].field_256 = arg5
    messages[delegate.return_data[0]].field_512 = arg3
    messages[delegate.return_data[0]].field_768 = arg4
    messages[delegate.return_data[0]].field_1024 = msg.sender
    messages[delegate.return_data[0]].field_1280 = arg6
    messages[delegate.return_data[0]].field_1536 = 0
    if not stor12[address(msg.sender)]:
        if arg5 != 1:
            revert with 0, 'Invalid nonce.'
    else:
        if messages[stor12[address(msg.sender)]].field_256 + 1 < messages[stor12[address(msg.sender)]].field_256:
            revert with 0, 'Overflow when adding.'
        if arg5 != messages[stor12[address(msg.sender)]].field_256 + 1:
            revert with 0, 'Invalid nonce.'
    if stor12[address(msg.sender)]:
        require outboxMessageStatus[stor12[address(msg.sender)]] <= 4
        if outboxMessageStatus[stor12[address(msg.sender)]] != 2:
            require outboxMessageStatus[stor12[address(msg.sender)]] <= 4
            if outboxMessageStatus[stor12[address(msg.sender)]] != 4:
                revert with 0, 32, 34, 0x2e50726576696f75732070726f63657373206973206e6f7420636f6d706c65746564, Mask(240, 0, arg4)
        messages[stor12[address(msg.sender)]].field_0 = 0
        messages[stor12[address(msg.sender)]].field_256 = 0
        messages[stor12[address(msg.sender)]].field_512 = 0
        messages[stor12[address(msg.sender)]].field_768 = 0
        messages[stor12[address(msg.sender)]].field_1024 = 0
        messages[stor12[address(msg.sender)]].field_1280 = 0
        messages[stor12[address(msg.sender)]].field_1536 = 0
    stor12[address(msg.sender)] = delegate.return_data[0]
    stor17[delegate.return_data[0]].field_0 = arg1
    stor17[delegate.return_data[0]].field_256 = arg2
    stor17[delegate.return_data[0]].field_512 = bounty
    require ext_code.size(0xb71bb83d2814633f7dfeb9cb5c4c2e63be215ed)
    delegate 0xb71bb83d2814633f7dfeb9cb5c4c2e63be215ed.0xd446caee with:
         gas gas_remaining wei
        args 7, sha3(delegate.return_data[0], 9)
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 32, 43, 0x2e5374616b6520616d6f756e74206d757374206265207472616e7366657272656420746f20676174657761, mem[975 len 21]
    require ext_code.size(baseTokenAddress)
    call baseTokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, bounty
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 32, 44, 0x2e426f756e747920616d6f756e74206d757374206265207472616e7366657272656420746f20676174657761, mem[976 len 20]
    emit 0x1dc8ba34: msg.sender, arg5, address(arg2), arg1, delegate.return_data[0]
    return delegate.return_data[0]
}

function progressUnstake(bytes32 arg1, bytes32 arg2) payable {
    require calldata.size - 4 >= 64
    if not arg1:
        revert with 0, '.Message hash must not be zero.'
    require ext_code.size(0xb71bb83d2814633f7dfeb9cb5c4c2e63be215ed)
    delegate 0xb71bb83d2814633f7dfeb9cb5c4c2e63be215ed.0x8ba98ab with:
         gas gas_remaining wei
        args 7, sha3(arg1, 9), arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if stor18[arg1].field_0 <= 0:
        revert with 0, 'Unstake request must exist.'
    if messages[arg1].field_1536 + gas_remaining < gas_remaining:
        revert with 0, 'Overflow when adding.'
    if gas_remaining > messages[arg1].field_1536 + gas_remaining:
        revert with 0, 'Underflow when subtracting.'
    if messages[arg1].field_1536 >= messages[arg1].field_768:
        if not messages[arg1].field_768:
            if 0 > stor18[arg1].field_0:
                revert with 0, 'Underflow when subtracting.'
            stor18[arg1].field_0 = 0
            stor18[arg1].field_256 = 0
            require ext_code.size(stakeVaultAddress)
            call stakeVaultAddress.0x4e06bad1 with:
                 gas gas_remaining wei
                args stor18[arg1].field_256, stor18[arg1].field_0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stakeVaultAddress)
            call stakeVaultAddress.0x4e06bad1 with:
                 gas gas_remaining wei
                args msg.sender, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit 0x2c66eee0: messages[arg1].field_1024, stor18[arg1].field_256, stor18[arg1].field_0, stor18[arg1].field_0, 0, 0, arg2, arg1
            return stor18[arg1].field_0, stor18[arg1].field_0, 0
        if messages[arg1].field_512 * messages[arg1].field_768 / messages[arg1].field_768 != messages[arg1].field_512:
            revert with 0, 'Overflow when multiplying.'
        if messages[arg1].field_512 * messages[arg1].field_768 > stor18[arg1].field_0:
            revert with 0, 'Underflow when subtracting.'
        stor18[arg1].field_0 = 0
        stor18[arg1].field_256 = 0
        require ext_code.size(stakeVaultAddress)
        call stakeVaultAddress.0x4e06bad1 with:
             gas gas_remaining wei
            args stor18[arg1].field_256, stor18[arg1].field_0 - (messages[arg1].field_512 * messages[arg1].field_768)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stakeVaultAddress)
        call stakeVaultAddress.0x4e06bad1 with:
             gas gas_remaining wei
            args msg.sender, messages[arg1].field_512 * messages[arg1].field_768
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit 0x2c66eee0: messages[arg1].field_1024, stor18[arg1].field_256, stor18[arg1].field_0, stor18[arg1].field_0 - (messages[arg1].field_512 * messages[arg1].field_768), messages[arg1].field_512 * messages[arg1].field_768, 0, arg2, arg1
        return stor18[arg1].field_0, 
               stor18[arg1].field_0 - (messages[arg1].field_512 * messages[arg1].field_768),
               messages[arg1].field_512 * messages[arg1].field_768
    if not messages[arg1].field_1536:
        if 0 > stor18[arg1].field_0:
            revert with 0, 'Underflow when subtracting.'
        stor18[arg1].field_0 = 0
        stor18[arg1].field_256 = 0
        require ext_code.size(stakeVaultAddress)
        call stakeVaultAddress.0x4e06bad1 with:
             gas gas_remaining wei
            args stor18[arg1].field_256, stor18[arg1].field_0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stakeVaultAddress)
        call stakeVaultAddress.0x4e06bad1 with:
             gas gas_remaining wei
            args msg.sender, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit 0x2c66eee0: messages[arg1].field_1024, stor18[arg1].field_256, stor18[arg1].field_0, stor18[arg1].field_0, 0, 0, arg2, arg1
        return stor18[arg1].field_0, stor18[arg1].field_0, 0
    if messages[arg1].field_512 * messages[arg1].field_1536 / messages[arg1].field_1536 != messages[arg1].field_512:
        revert with 0, 'Overflow when multiplying.'
    if messages[arg1].field_512 * messages[arg1].field_1536 > stor18[arg1].field_0:
        revert with 0, 'Underflow when subtracting.'
    stor18[arg1].field_0 = 0
    stor18[arg1].field_256 = 0
    require ext_code.size(stakeVaultAddress)
    call stakeVaultAddress.0x4e06bad1 with:
         gas gas_remaining wei
        args stor18[arg1].field_256, stor18[arg1].field_0 - (messages[arg1].field_512 * messages[arg1].field_1536)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stakeVaultAddress)
    call stakeVaultAddress.0x4e06bad1 with:
         gas gas_remaining wei
        args msg.sender, messages[arg1].field_512 * messages[arg1].field_1536
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x2c66eee0: messages[arg1].field_1024, stor18[arg1].field_256, stor18[arg1].field_0, stor18[arg1].field_0 - (messages[arg1].field_512 * messages[arg1].field_1536), messages[arg1].field_512 * messages[arg1].field_1536, 0, arg2, arg1
    return stor18[arg1].field_0, 
           stor18[arg1].field_0 - (messages[arg1].field_512 * messages[arg1].field_1536),
           messages[arg1].field_512 * messages[arg1].field_1536
}

function progressUnstakeWithProof(bytes32 arg1, bytes arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if not arg1:
        revert with 0, '.Message hash must not be zero.'
    if arg2.length <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x2e524c5020706172656e74206e6f646573206d757374206e6f74206265207a6572,
                    mem[197 len 31]
    if not stor10[arg3]:
        revert with 0, 'Storage root must not be zero'
    require arg4 <= 4
    mem[324 len arg2.length] = arg2[all]
    mem[arg2.length + 324] = 0
    require ext_code.size(0xb71bb83d2814633f7dfeb9cb5c4c2e63be215ed)
    delegate 0xb71bb83d2814633f7dfeb9cb5c4c2e63be215ed.0xc859835d with:
         gas gas_remaining wei
        args 0, 7, sha3(arg1, 9), 192, 7, stor10[arg3], arg4 << 248, arg2.length, arg2[all], mem[arg2.length + 324 len ceil32(arg2.length) - arg2.length]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if stor18[arg1].field_0 <= 0:
        revert with 0, 'Unstake request must exist.'
    if messages[arg1].field_1536 + gas_remaining < gas_remaining:
        revert with 0, 'Overflow when adding.'
    if gas_remaining > messages[arg1].field_1536 + gas_remaining:
        revert with 0, 'Underflow when subtracting.'
    if messages[arg1].field_1536 >= messages[arg1].field_768:
        if not messages[arg1].field_768:
            if 0 > stor18[arg1].field_0:
                revert with 0, 'Underflow when subtracting.'
            stor18[arg1].field_0 = 0
            stor18[arg1].field_256 = 0
            require ext_code.size(stakeVaultAddress)
            call stakeVaultAddress.0x4e06bad1 with:
                 gas gas_remaining wei
                args stor18[arg1].field_256, stor18[arg1].field_0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stakeVaultAddress)
            call stakeVaultAddress.0x4e06bad1 with:
                 gas gas_remaining wei
                args msg.sender, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit 0x2c66eee0: messages[arg1].field_1024, stor18[arg1].field_256, stor18[arg1].field_0, stor18[arg1].field_0, 0, 1, 0, arg1
            return stor18[arg1].field_0, stor18[arg1].field_0, 0
        if messages[arg1].field_512 * messages[arg1].field_768 / messages[arg1].field_768 != messages[arg1].field_512:
            revert with 0, 'Overflow when multiplying.'
        if messages[arg1].field_512 * messages[arg1].field_768 > stor18[arg1].field_0:
            revert with 0, 'Underflow when subtracting.'
        stor18[arg1].field_0 = 0
        stor18[arg1].field_256 = 0
        require ext_code.size(stakeVaultAddress)
        call stakeVaultAddress.0x4e06bad1 with:
             gas gas_remaining wei
            args stor18[arg1].field_256, stor18[arg1].field_0 - (messages[arg1].field_512 * messages[arg1].field_768)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stakeVaultAddress)
        call stakeVaultAddress.0x4e06bad1 with:
             gas gas_remaining wei
            args msg.sender, messages[arg1].field_512 * messages[arg1].field_768
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit 0x2c66eee0: messages[arg1].field_1024, stor18[arg1].field_256, stor18[arg1].field_0, stor18[arg1].field_0 - (messages[arg1].field_512 * messages[arg1].field_768), messages[arg1].field_512 * messages[arg1].field_768, 1, 0, arg1
        return stor18[arg1].field_0, 
               stor18[arg1].field_0 - (messages[arg1].field_512 * messages[arg1].field_768),
               messages[arg1].field_512 * messages[arg1].field_768
    if not messages[arg1].field_1536:
        if 0 > stor18[arg1].field_0:
            revert with 0, 'Underflow when subtracting.'
        stor18[arg1].field_0 = 0
        stor18[arg1].field_256 = 0
        require ext_code.size(stakeVaultAddress)
        call stakeVaultAddress.0x4e06bad1 with:
             gas gas_remaining wei
            args stor18[arg1].field_256, stor18[arg1].field_0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stakeVaultAddress)
        call stakeVaultAddress.0x4e06bad1 with:
             gas gas_remaining wei
            args msg.sender, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit 0x2c66eee0: messages[arg1].field_1024, stor18[arg1].field_256, stor18[arg1].field_0, stor18[arg1].field_0, 0, 1, 0, arg1
        return stor18[arg1].field_0, stor18[arg1].field_0, 0
    if messages[arg1].field_512 * messages[arg1].field_1536 / messages[arg1].field_1536 != messages[arg1].field_512:
        revert with 0, 'Overflow when multiplying.'
    if messages[arg1].field_512 * messages[arg1].field_1536 > stor18[arg1].field_0:
        revert with 0, 'Underflow when subtracting.'
    stor18[arg1].field_0 = 0
    stor18[arg1].field_256 = 0
    require ext_code.size(stakeVaultAddress)
    call stakeVaultAddress.0x4e06bad1 with:
         gas gas_remaining wei
        args stor18[arg1].field_256, stor18[arg1].field_0 - (messages[arg1].field_512 * messages[arg1].field_1536)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stakeVaultAddress)
    call stakeVaultAddress.0x4e06bad1 with:
         gas gas_remaining wei
        args msg.sender, messages[arg1].field_512 * messages[arg1].field_1536
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x2c66eee0: messages[arg1].field_1024, stor18[arg1].field_256, stor18[arg1].field_0, stor18[arg1].field_0 - (messages[arg1].field_512 * messages[arg1].field_1536), messages[arg1].field_512 * messages[arg1].field_1536, 1, 0, arg1
    return stor18[arg1].field_0, 
           stor18[arg1].field_0 - (messages[arg1].field_512 * messages[arg1].field_1536),
           messages[arg1].field_512 * messages[arg1].field_1536
}



}
