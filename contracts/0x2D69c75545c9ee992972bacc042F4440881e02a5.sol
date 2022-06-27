contract main {




// =====================  Runtime code  =====================


uint256 totalSupply;
mapping of uint256 balanceOf;
array of struct stor2;
mapping of uint256 stor3;
mapping of uint8 stor4;
mapping of uint8 stor5;
address owner;
array of uint256 name;
array of uint256 symbol;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function isOperatorForPartition(bytes32 arg1, address arg2, address arg3) {
    return bool(stor4[address(arg3)][arg1][address(arg2)])
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function isOperator(address arg1, address arg2) {
    return bool(stor5[address(arg2)][address(arg1)])
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function revokeOperator(address arg1) {
    stor5[address(msg.sender)][address(arg1)] = 0
    emit RevokedOperator(arg1, msg.sender);
}

function authorizeOperator(address arg1) {
    stor5[address(msg.sender)][address(arg1)] = 1
    emit AuthorizedOperator(arg1, msg.sender);
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function revokeOperatorByPartition(bytes32 arg1, address arg2) {
    stor4[address(msg.sender)][arg1][address(arg2)] = 0
    emit RevokedOperatorByPartition(arg1, arg2, msg.sender);
}

function authorizeOperatorByPartition(bytes32 arg1, address arg2) {
    stor4[address(msg.sender)][arg1][address(arg2)] = 1
    emit AuthorizedOperatorByPartition(arg1, arg2, msg.sender);
}

function balanceOfByPartition(bytes32 arg1, address arg2) {
    if stor2[address(arg2)].field_0 < stor3[address(arg2)][arg1]:
        return 0
    if not stor3[address(arg2)][arg1]:
        return 0
    require stor3[address(arg2)][arg1] - 1 < stor2[address(arg2)].field_0
    return stor2[address(arg2)][stor3[address(arg2)][arg1] - 1].field_0
}

function partitionsOf(address arg1) {
    if stor2[address(arg1)].field_0:
        mem[128 len 32 * stor2[address(arg1)].field_0] = code.data[13247 len 32 * stor2[address(arg1)].field_0]
    idx = 0
    while idx < stor2[address(arg1)].field_0:
        require idx < stor2[address(arg1)].field_0
        require idx < stor2[address(arg1)].field_0
        mem[(32 * idx) + 128] = stor2[address(arg1)][idx].field_256
        mem[0] = arg1
        mem[32] = 2
        idx = idx + 1
        continue 
    mem[(32 * stor2[address(arg1)].field_0) + 192 len floor32(stor2[address(arg1)].field_0)] = mem[128 len floor32(stor2[address(arg1)].field_0)]
    return Array(len=stor2[address(arg1)].field_0, data=mem[128 len floor32(stor2[address(arg1)].field_0)], mem[(32 * stor2[address(arg1)].field_0) + floor32(stor2[address(arg1)].field_0) + 192 len (32 * stor2[address(arg1)].field_0) - floor32(stor2[address(arg1)].field_0)]), 
}

function canTransferByPartition(address arg1, address arg2, bytes32 arg3, uint256 arg4, bytes arg5) {
    if stor2[address(arg1)].field_0 < stor3[address(arg1)][arg3]:
        return 0x5000000000000000000000000000000000000000000000000000000000000000, 'Partition not exists', 0
    if not stor3[address(arg1)][arg3]:
        return 0x5000000000000000000000000000000000000000000000000000000000000000, 'Partition not exists', 0
    require stor3[address(arg1)][arg3] < stor2[address(arg1)].field_0
    if stor2[address(arg1)][stor3[address(arg1)][arg3]].field_0 < arg4:
        return 0x5200000000000000000000000000000000000000000000000000000000000000, 'Insufficent balance', 0
    if not arg2:
        return 0x5700000000000000000000000000000000000000000000000000000000000000, 'Invalid receiver', 0
    if arg4 <= balanceOf[address(arg1)]:
        if balanceOf[address(arg2)] + arg4 >= balanceOf[address(arg2)]:
            return 0x5100000000000000000000000000000000000000000000000000000000000000, 'Success', arg3
    return 0x5000000000000000000000000000000000000000000000000000000000000000, 'Overflow', 0
}

function issueByPartition(bytes32 arg1, address arg2, uint256 arg3, bytes arg4) {
    require msg.sender == owner
    if not arg3:
        revert with 0, 'Zero value not allowed'
    if not arg1:
        revert with 0, 'Invalid partition'
    if not arg2:
        revert with 0, 'Invalid token receiver'
    if stor3[address(arg2)][arg1]:
        require stor3[address(arg2)][arg1] - 1 < stor2[address(arg2)].field_0
        require stor2[address(arg2)][stor3[address(arg2)][arg1] - 1].field_0 + arg3 >= stor2[address(arg2)][stor3[address(arg2)][arg1] - 1].field_0
        require stor3[address(arg2)][arg1] - 1 < stor2[address(arg2)].field_0
        stor2[address(arg2)][stor3[address(arg2)][arg1] - 1].field_0 += arg3
    else:
        stor2[address(arg2)].field_0++
        stor2[address(arg2)][stor2[address(arg2)].field_0].field_0 = arg3
        stor2[address(arg2)][stor2[address(arg2)].field_0].field_256 = arg1
        stor3[address(arg2)][arg1] = stor2[address(arg2)].field_0
    require totalSupply + arg3 >= totalSupply
    totalSupply += arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit IssuedByPartition(arg3, Array(len=arg4.length, data=arg4[all]), arg1, arg2);
}

function redeemByPartition(bytes32 arg1, uint256 arg2, bytes arg3) {
    mem[128 len arg3.length] = arg3[all]
    mem[ceil32(arg3.length) + 128] = 0
    if not arg2:
        revert with 0, 'Zero value not allowed'
    if not arg1:
        revert with 0, 'Invalid partition'
    if stor2[address(msg.sender)].field_0 < stor3[address(msg.sender)][arg1]:
        revert with 0, 'Invalid partition'
    if not stor3[address(msg.sender)][arg1]:
        revert with 0, 'Invalid partition'
    require stor3[address(msg.sender)][arg1] - 1 < stor2[address(msg.sender)].field_0
    if stor2[address(msg.sender)][stor3[address(msg.sender)][arg1] - 1].field_0 < arg2:
        revert with 0, 'Insufficient value'
    require stor3[address(msg.sender)][arg1] - 1 < stor2[address(msg.sender)].field_0
    if stor2[address(msg.sender)][stor3[address(msg.sender)][arg1] - 1].field_0 != arg2:
        require stor3[address(msg.sender)][arg1] - 1 < stor2[address(msg.sender)].field_0
        require arg2 <= stor2[address(msg.sender)][stor3[address(msg.sender)][arg1] - 1].field_0
        require stor3[address(msg.sender)][arg1] - 1 < stor2[address(msg.sender)].field_0
        stor2[address(msg.sender)][stor3[address(msg.sender)][arg1] - 1].field_0 -= arg2
    else:
        if stor3[address(msg.sender)][arg1] - 1 != stor2[address(msg.sender)].field_0 - 1:
            require stor2[address(msg.sender)].field_0 - 1 < stor2[address(msg.sender)].field_0
            require stor3[address(msg.sender)][arg1] - 1 < stor2[address(msg.sender)].field_0
            stor2[address(msg.sender)][stor3[address(msg.sender)][arg1] - 1].field_0 = stor2[address(msg.sender)][stor2[address(msg.sender)].field_0 - 1].field_0
            stor2[address(msg.sender)][stor3[address(msg.sender)][arg1] - 1].field_256 = stor2[address(msg.sender)][stor2[address(msg.sender)].field_0 - 1].field_256
            require stor3[address(msg.sender)][arg1] - 1 < stor2[address(msg.sender)].field_0
            stor3[address(msg.sender)][stor2[address(msg.sender)][stor3[address(msg.sender)][arg1] - 1].field_256] = stor3[address(msg.sender)][arg1]
        stor3[address(msg.sender)][arg1] = 0
        stor2[address(msg.sender)].field_0--
        if stor2[address(msg.sender)].field_0 > stor2[address(msg.sender)].field_0 - 1:
            idx = 2 * stor2[address(msg.sender)].field_0 - 1
            while 2 * stor2[address(msg.sender)].field_0 > idx:
                stor2[address(msg.sender)][idx].field_0 = 0
                stor2[address(msg.sender)][idx].field_256 = 0
                idx = idx + 2
                continue 
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 <= totalSupply
    totalSupply -= arg2
    mem[ceil32(arg3.length) + 288 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    mem[arg3.length + ceil32(arg3.length) + 288] = 0
    mem[arg3.length + ceil32(arg3.length) + 320 len 0] = None
    emit RedeemedByPartition(arg2, Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + 288 len arg3.length + -ceil32(arg3.length) + 32]), arg3.length + 128, arg1, 0, msg.sender);
}

function operatorTransferByPartition(bytes32 arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) {
    if not stor5[address(arg2)][address(msg.sender)]:
        if not stor4[address(arg2)][arg1][address(msg.sender)]:
            revert with 0, 'Not authorised'
    mem[128 len arg5.length] = arg5[all]
    mem[ceil32(arg5.length) + 128] = arg6.length
    mem[ceil32(arg5.length) + 160 len arg6.length] = arg6[all]
    if stor2[address(arg2)].field_0 < stor3[address(arg2)][arg1]:
        revert with 0, 'Invalid partition'
    if not stor3[address(arg2)][arg1]:
        revert with 0, 'Invalid partition'
    require stor3[address(arg2)][arg1] - 1 < stor2[address(arg2)].field_0
    if stor2[address(arg2)][stor3[address(arg2)][arg1] - 1].field_0 < arg4:
        revert with 0, 'Insufficient balance'
    if not arg3:
        revert with 0, '0x address not allowed'
    require stor3[address(arg2)][arg1] - 1 < stor2[address(arg2)].field_0
    require arg4 <= stor2[address(arg2)][stor3[address(arg2)][arg1] - 1].field_0
    require stor3[address(arg2)][arg1] - 1 < stor2[address(arg2)].field_0
    stor2[address(arg2)][stor3[address(arg2)][arg1] - 1].field_0 -= arg4
    require arg4 <= balanceOf[address(arg2)]
    balanceOf[address(arg2)] -= arg4
    require stor3[address(arg3)][arg1] - 1 < stor2[address(arg3)].field_0
    require stor2[address(arg3)][stor3[address(arg3)][arg1] - 1].field_0 + arg4 >= stor2[address(arg3)][stor3[address(arg3)][arg1] - 1].field_0
    require stor3[address(arg3)][arg1] - 1 < stor2[address(arg3)].field_0
    stor2[address(arg3)][stor3[address(arg3)][arg1] - 1].field_0 += arg4
    require balanceOf[address(arg3)] + arg4 >= balanceOf[address(arg3)]
    balanceOf[address(arg3)] += arg4
    mem[ceil32(arg5.length) + ceil32(arg6.length) + 160] = msg.sender
    mem[ceil32(arg5.length) + ceil32(arg6.length) + 320 len ceil32(arg5.length)] = arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]
    mem[arg5.length + ceil32(arg5.length) + ceil32(arg6.length) + 320] = arg6.length
    mem[arg5.length + ceil32(arg5.length) + ceil32(arg6.length) + 352 len ceil32(arg6.length)] = arg6[all], mem[ceil32(arg5.length) + arg6.length + 160 len ceil32(arg6.length) - arg6.length]
    if not arg6.length % 32:
        emit TransferByPartition(msg.sender, arg4, Array(len=arg5.length, data=Mask(8 * ceil32(arg5.length), -(8 * ceil32(arg5.length)) + 256, arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]) << (8 * ceil32(arg5.length)) - 256, mem[(2 * ceil32(arg5.length)) + ceil32(arg6.length) + 320 len arg6.length + arg5.length + -ceil32(arg5.length) + 32]), arg5.length + 160, arg1, arg2, arg3);
    else:
        mem[floor32(arg6.length) + arg5.length + ceil32(arg5.length) + ceil32(arg6.length) + 352] = mem[floor32(arg6.length) + arg5.length + ceil32(arg5.length) + ceil32(arg6.length) + -(arg6.length % 32) + 384 len arg6.length % 32]
        emit TransferByPartition(msg.sender, arg4, Array(len=arg5.length, data=Mask(8 * ceil32(arg5.length), -(8 * ceil32(arg5.length)) + 256, arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]) << (8 * ceil32(arg5.length)) - 256, mem[(2 * ceil32(arg5.length)) + ceil32(arg6.length) + 320 len floor32(arg6.length) + arg5.length + -ceil32(arg5.length) + 64]), arg5.length + 160, arg1, arg2, arg3);
    return 0
}

function transferByPartition(bytes32 arg1, address arg2, uint256 arg3, bytes arg4) {
    mem[128 len arg4.length] = arg4[all]
    mem[ceil32(arg4.length) + 128] = 0
    if stor2[address(msg.sender)].field_0 < stor3[address(msg.sender)][arg1]:
        revert with 0, 'Invalid partition'
    if not stor3[address(msg.sender)][arg1]:
        revert with 0, 'Invalid partition'
    require stor3[address(msg.sender)][arg1] - 1 < stor2[address(msg.sender)].field_0
    if stor2[address(msg.sender)][stor3[address(msg.sender)][arg1] - 1].field_0 < arg3:
        revert with 0, 'Insufficient balance'
    if not arg2:
        revert with 0, '0x address not allowed'
    require stor3[address(msg.sender)][arg1] - 1 < stor2[address(msg.sender)].field_0
    require arg3 <= stor2[address(msg.sender)][stor3[address(msg.sender)][arg1] - 1].field_0
    require stor3[address(msg.sender)][arg1] - 1 < stor2[address(msg.sender)].field_0
    stor2[address(msg.sender)][stor3[address(msg.sender)][arg1] - 1].field_0 -= arg3
    require arg3 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg3
    require stor3[address(arg2)][arg1] - 1 < stor2[address(arg2)].field_0
    require stor2[address(arg2)][stor3[address(arg2)][arg1] - 1].field_0 + arg3 >= stor2[address(arg2)][stor3[address(arg2)][arg1] - 1].field_0
    require stor3[address(arg2)][arg1] - 1 < stor2[address(arg2)].field_0
    stor2[address(arg2)][stor3[address(arg2)][arg1] - 1].field_0 += arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    mem[ceil32(arg4.length) + 320 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
    if not arg4.length % 32:
        mem[arg4.length + ceil32(arg4.length) + 320] = 0
        mem[arg4.length + ceil32(arg4.length) + 352 len 0] = None
        emit TransferByPartition(bytes32 arg1, address arg2, address arg3, address arg4, uint256 arg5, bytes arg6, bytes arg7):
                                 0,
                                 arg3,
                                 128,
                                 arg4.length + 160,
                                 arg4.length,
                                 Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256,
                                 mem[(2 * ceil32(arg4.length)) + 320 len arg4.length + -ceil32(arg4.length) + 32],
                                 arg1,
                                 msg.sender,
                                 arg2,
    else:
        mem[floor32(arg4.length) + ceil32(arg4.length) + 320] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 352 len arg4.length % 32]
        mem[floor32(arg4.length) + ceil32(arg4.length) + 352] = 0
        mem[floor32(arg4.length) + ceil32(arg4.length) + 384 len 0] = None
        emit TransferByPartition(bytes32 arg1, address arg2, address arg3, address arg4, uint256 arg5, bytes arg6, bytes arg7):
                                 0,
                                 arg3,
                                 128,
                                 floor32(arg4.length) + 192,
                                 arg4.length,
                                 Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256,
                                 mem[(2 * ceil32(arg4.length)) + 320 len floor32(arg4.length) + -ceil32(arg4.length) + 64],
                                 arg1,
                                 msg.sender,
                                 arg2,
    return 0
}

function operatorRedeemByPartition(bytes32 arg1, address arg2, uint256 arg3, bytes arg4, bytes arg5) {
    if not arg2:
        revert with 0, 'Invalid from address'
    if not stor5[address(arg2)][address(msg.sender)]:
        if not stor4[address(arg2)][arg1][address(msg.sender)]:
            revert with 0, 'Not authorised'
    mem[128 len arg4.length] = arg4[all]
    mem[ceil32(arg4.length) + 128] = arg5.length
    mem[ceil32(arg4.length) + 160 len arg5.length] = arg5[all]
    if not arg3:
        revert with 0, 'Zero value not allowed'
    if not arg1:
        revert with 0, 'Invalid partition'
    if stor2[address(arg2)].field_0 < stor3[address(arg2)][arg1]:
        revert with 0, 'Invalid partition'
    if not stor3[address(arg2)][arg1]:
        revert with 0, 'Invalid partition'
    require stor3[address(arg2)][arg1] - 1 < stor2[address(arg2)].field_0
    if stor2[address(arg2)][stor3[address(arg2)][arg1] - 1].field_0 < arg3:
        revert with 0, 'Insufficient value'
    require stor3[address(arg2)][arg1] - 1 < stor2[address(arg2)].field_0
    if stor2[address(arg2)][stor3[address(arg2)][arg1] - 1].field_0 != arg3:
        require stor3[address(arg2)][arg1] - 1 < stor2[address(arg2)].field_0
        require arg3 <= stor2[address(arg2)][stor3[address(arg2)][arg1] - 1].field_0
        require stor3[address(arg2)][arg1] - 1 < stor2[address(arg2)].field_0
        stor2[address(arg2)][stor3[address(arg2)][arg1] - 1].field_0 -= arg3
    else:
        if stor3[address(arg2)][arg1] - 1 != stor2[address(arg2)].field_0 - 1:
            require stor2[address(arg2)].field_0 - 1 < stor2[address(arg2)].field_0
            require stor3[address(arg2)][arg1] - 1 < stor2[address(arg2)].field_0
            stor2[address(arg2)][stor3[address(arg2)][arg1] - 1].field_0 = stor2[address(arg2)][stor2[address(arg2)].field_0 - 1].field_0
            stor2[address(arg2)][stor3[address(arg2)][arg1] - 1].field_256 = stor2[address(arg2)][stor2[address(arg2)].field_0 - 1].field_256
            require stor3[address(arg2)][arg1] - 1 < stor2[address(arg2)].field_0
            stor3[address(arg2)][stor2[address(arg2)][stor3[address(arg2)][arg1] - 1].field_256] = stor3[address(arg2)][arg1]
        stor3[address(arg2)][arg1] = 0
        stor2[address(arg2)].field_0--
        if stor2[address(arg2)].field_0 > stor2[address(arg2)].field_0 - 1:
            idx = 2 * stor2[address(arg2)].field_0 - 1
            while 2 * stor2[address(arg2)].field_0 > idx:
                stor2[address(arg2)][idx].field_0 = 0
                stor2[address(arg2)][idx].field_256 = 0
                idx = idx + 2
                continue 
    require arg3 <= balanceOf[address(arg2)]
    balanceOf[address(arg2)] -= arg3
    require arg3 <= totalSupply
    totalSupply -= arg3
    mem[ceil32(arg4.length) + ceil32(arg5.length) + 160] = arg3
    mem[ceil32(arg4.length) + ceil32(arg5.length) + 288 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
    mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 288] = arg5.length
    mem[arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 320 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg4.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
    if not arg5.length % 32:
        emit RedeemedByPartition(arg3, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 288 len arg5.length + arg4.length + -ceil32(arg4.length) + 32]), arg4.length + 128, arg1, msg.sender, arg2);
    else:
        mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + 320] = mem[floor32(arg5.length) + arg4.length + ceil32(arg4.length) + ceil32(arg5.length) + -(arg5.length % 32) + 352 len arg5.length % 32]
        emit RedeemedByPartition(arg3, Array(len=arg4.length, data=Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + ceil32(arg5.length) + 288 len floor32(arg5.length) + arg4.length + -ceil32(arg4.length) + 64]), arg4.length + 128, arg1, msg.sender, arg2);
}



}
