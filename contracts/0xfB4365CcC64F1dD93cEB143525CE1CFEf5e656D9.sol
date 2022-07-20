contract main {




// =====================  Runtime code  =====================


#
#  - operatorRedeemByPartition(bytes32 arg1, address arg2, uint256 arg3, bytes arg4, bytes arg5)
#  - transferWithData(address arg1, uint256 arg2, bytes arg3)
#  - redeemByPartition(bytes32 arg1, uint256 arg2, bytes arg3)
#  - issueByPartition(bytes32 arg1, address arg2, uint256 arg3, bytes arg4)
#  - canOperatorTransferByPartition(bytes32 arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6)
#  - transferFromWithData(address arg1, address arg2, uint256 arg3, bytes arg4, bytes arg5)
#  - operatorTransferByPartition(bytes32 arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6)
#  - redeem(uint256 arg1, bytes arg2)
#  - transferByPartition(bytes32 arg1, address arg2, uint256 arg3, bytes arg4)
#  - redeemFrom(address arg1, uint256 arg2, bytes arg3, bytes arg4)
#
address owner;
mapping of uint8 stor1;
mapping of uint256 checkCount;
array of uint256 name;
array of uint256 symbol;
uint256 granularity;
uint256 totalSupply;
uint8 isControllable;
mapping of uint256 balanceOf;
mapping of uint8 stor10;
array of struct stor11;
mapping of uint8 stor12;
array of struct stor13;
mapping of struct stor15;
mapping of uint256 balanceOfByPartition;
array of struct stor17;
array of struct stor18;
mapping of uint8 stor19;
array of struct stor20;
mapping of uint8 stor21;
mapping of uint8 stor22;
array of struct document;
uint8 isIssuable;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function isIssuable() payable {
    return bool(isIssuable)
}

function balanceOfByPartition(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return balanceOfByPartition[address(arg2)][arg1]
}

function isControllable() payable {
    return bool(isControllable)
}

function granularity() payable {
    return granularity
}

function checkCount(address arg1) payable {
    require calldata.size - 4 >= 32
    return checkCount[address(arg1)]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function certificateSigners(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor1[address(arg1)])
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function isMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor22[address(arg1)])
}

function getDocument(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    if not document[arg1].length:
        revert with 0, 'Action Blocked - Empty document'
    mem[128] = document[arg1].field_0
    idx = 128
    s = 0
    while document[arg1].length + 96 > idx:
        mem[idx + 32] = document[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=document[arg1].length, data=mem[128 len document[arg1].length]), document[arg1].field_256
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function renounceIssuance() payable {
    require msg.sender == owner
    isIssuable = 0
}

function renounceControl() payable {
    require msg.sender == owner
    isControllable = 0
}

function renounceOwnership() payable {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function revokeOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    stor10[address(arg1)][msg.sender] = 0
    emit RevokedOperator(arg1, msg.sender);
}

function renounceMinter() payable {
    require msg.sender
    require stor22[address(msg.sender)]
    stor22[address(msg.sender)] = 0
    emit MinterRemoved(msg.sender);
}

function authorizeOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    stor10[address(arg1)][msg.sender] = 1
    emit AuthorizedOperator(arg1, msg.sender);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function revokeOperatorByPartition(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    stor19[msg.sender][arg1][address(arg2)] = 0
    emit RevokedOperatorByPartition(arg1, arg2, msg.sender);
}

function authorizeOperatorByPartition(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    stor19[msg.sender][arg1][address(arg2)] = 1
    emit AuthorizedOperatorByPartition(arg1, arg2, msg.sender);
}

function addMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor22[address(msg.sender)]
    require arg1
    require not stor22[address(arg1)]
    stor22[address(arg1)] = 1
    emit MinterAdded(arg1);
}

function isOperatorFor(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 == arg2:
        return True
    if stor10[address(arg1)][address(arg2)]:
        return bool(stor10[address(arg1)][address(arg2)])
    if not isControllable:
        return bool(isControllable)
    return bool(stor12[address(arg1)])
}

function setCertificateSigner(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6e416374696f6e20426c6f636b6564202d204e6f7420612076616c696420616464726573,
                    mem[200 len 28]
    stor1[address(arg1)] = uint8(arg2)
}

function isOperatorForPartition(bytes32 arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if arg2 == arg3:
        return True
    if stor10[address(arg2)][address(arg3)]:
        return bool(stor10[address(arg2)][address(arg3)])
    if isControllable:
        if stor12[address(arg2)]:
            return bool(stor12[address(arg2)])
    if stor19[address(arg3)][arg1][address(arg2)]:
        return bool(stor19[address(arg3)][arg1][address(arg2)])
    if not isControllable:
        return bool(isControllable)
    return bool(stor21[arg1][address(arg2)])
}

function setDocument(bytes32 arg1, string arg2, bytes32 arg3) payable {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    require msg.sender == owner
    document[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
    document[arg1].field_256 = arg3
    mem[ceil32(arg2.length) + 224] = arg3
    mem[ceil32(arg2.length) + 192] = 64
    mem[ceil32(arg2.length) + 256] = arg2.length
    emit Document(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 224 len (2 * ceil32(arg2.length)) + -arg2.length + 64], arg1);
}

function totalPartitions() payable {
    if stor13.length:
        mem[128] = uint256(stor13.field_0)
        if (32 * stor13.length) + 32 > 64:
            mem[160] = uint256(stor13.field_256)
            idx = 160
            s = 1
            while (32 * stor13.length) + 96 > idx:
                mem[idx + 32] = stor13[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * stor13.length) + 128] = 32
    mem[(32 * stor13.length) + 160] = stor13.length
    mem[(32 * stor13.length) + 192 len floor32(stor13.length)] = mem[128 len floor32(stor13.length)]
    return memory
      from (32 * stor13.length) + 128
       len (96 * stor13.length) + 64
}

function setTokenDefaultPartitions(bytes32[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    require msg.sender == owner
    stor18.length = arg1.length
    if not arg1.length:
        idx = 0
        while stor18.length > idx:
            stor18[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = arg1 + 36
        while arg1 + (32 * arg1.length) + 36 > idx:
            stor18[s].field_0 = cd[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while stor18.length > idx:
            stor18[idx].field_0 = 0
            idx = idx + 1
            continue 
}

function controllers() payable {
    if not stor11.length:
        mem[(32 * stor11.length) + 128] = 32
        mem[(32 * stor11.length) + 160] = stor11.length
        mem[(32 * stor11.length) + 192 len floor32(stor11.length)] = mem[128 len floor32(stor11.length)]
        return memory
          from (32 * stor11.length) + 128
           len (96 * stor11.length) + 64
    mem[128] = address(stor11.field_0)
    idx = 128
    s = 0
    while (32 * stor11.length) + 96 > idx:
        mem[idx + 32] = stor11[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor11.length) + 192 len floor32(stor11.length)] = mem[128 len floor32(stor11.length)]
    return Array(len=stor11.length, data=mem[128 len floor32(stor11.length)], mem[(32 * stor11.length) + floor32(stor11.length) + 192 len (32 * stor11.length) - floor32(stor11.length)]), 
}

function getTokenDefaultPartitions() payable {
    if not stor18.length:
        mem[(32 * stor18.length) + 128] = 32
        mem[(32 * stor18.length) + 160] = stor18.length
        mem[(32 * stor18.length) + 192 len floor32(stor18.length)] = mem[128 len floor32(stor18.length)]
        return memory
          from (32 * stor18.length) + 128
           len (96 * stor18.length) + 64
    mem[128] = uint256(stor18.field_0)
    idx = 128
    s = 0
    while (32 * stor18.length) + 96 > idx:
        mem[idx + 32] = stor18[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor18.length) + 192 len floor32(stor18.length)] = mem[128 len floor32(stor18.length)]
    return Array(len=stor18.length, data=mem[128 len floor32(stor18.length)], mem[(32 * stor18.length) + floor32(stor18.length) + 192 len (32 * stor18.length) - floor32(stor18.length)]), 
}

function setDefaultPartitions(bytes32[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    stor17[msg.sender].field_0 = arg1.length
    if not arg1.length:
        idx = 0
        while stor17[msg.sender].field_0 > idx:
            stor17[msg.sender][idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = arg1 + 36
        while arg1 + (32 * arg1.length) + 36 > idx:
            stor17[msg.sender][s].field_0 = cd[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while stor17[msg.sender].field_0 > idx:
            stor17[msg.sender][idx].field_0 = 0
            idx = idx + 1
            continue 
}

function getDefaultPartitions(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor17[address(arg1)].field_0:
        mem[128] = stor17[address(arg1)].field_0
        if (32 * stor17[address(arg1)].field_0) + 32 > 64:
            mem[160] = stor17[address(arg1)].field_256
            idx = 160
            s = 1
            while (32 * stor17[address(arg1)].field_0) + 96 > idx:
                mem[idx + 32] = stor17[address(arg1)][s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * stor17[address(arg1)].field_0) + 128] = 32
    mem[(32 * stor17[address(arg1)].field_0) + 160] = stor17[address(arg1)].field_0
    mem[(32 * stor17[address(arg1)].field_0) + 192 len floor32(stor17[address(arg1)].field_0)] = mem[128 len floor32(stor17[address(arg1)].field_0)]
    return memory
      from (32 * stor17[address(arg1)].field_0) + 128
       len (96 * stor17[address(arg1)].field_0) + 64
}

function controllersByPartition(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor20[arg1].field_0:
        mem[(32 * stor20[arg1].field_0) + 128] = 32
        mem[(32 * stor20[arg1].field_0) + 160] = stor20[arg1].field_0
        mem[(32 * stor20[arg1].field_0) + 192 len floor32(stor20[arg1].field_0)] = mem[128 len floor32(stor20[arg1].field_0)]
        return memory
          from (32 * stor20[arg1].field_0) + 128
           len (96 * stor20[arg1].field_0) + 64
    mem[128] = stor20[arg1].field_0
    idx = 128
    s = 0
    while (32 * stor20[arg1].field_0) + 96 > idx:
        mem[idx + 32] = stor20[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor20[arg1].field_0) + 192 len floor32(stor20[arg1].field_0)] = mem[128 len floor32(stor20[arg1].field_0)]
    return Array(len=stor20[arg1].field_0, data=mem[128 len floor32(stor20[arg1].field_0)], mem[(32 * stor20[arg1].field_0) + floor32(stor20[arg1].field_0) + 192 len (32 * stor20[arg1].field_0) - floor32(stor20[arg1].field_0)]), 
}

function partitionsOf(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor15[address(arg1)].field_0:
        mem[(32 * stor15[address(arg1)].field_0) + 128] = 32
        mem[(32 * stor15[address(arg1)].field_0) + 160] = stor15[address(arg1)].field_0
        mem[(32 * stor15[address(arg1)].field_0) + 192 len floor32(stor15[address(arg1)].field_0)] = mem[128 len floor32(stor15[address(arg1)].field_0)]
        return memory
          from (32 * stor15[address(arg1)].field_0) + 128
           len (96 * stor15[address(arg1)].field_0) + 64
    mem[128] = stor15[address(arg1)].field_0
    idx = 128
    s = 0
    while (32 * stor15[address(arg1)].field_0) + 96 > idx:
        mem[idx + 32] = stor15[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor15[address(arg1)].field_0) + 192 len floor32(stor15[address(arg1)].field_0)] = mem[128 len floor32(stor15[address(arg1)].field_0)]
    return Array(len=stor15[address(arg1)].field_0, data=mem[128 len floor32(stor15[address(arg1)].field_0)], mem[(32 * stor15[address(arg1)].field_0) + floor32(stor15[address(arg1)].field_0) + 192 len (32 * stor15[address(arg1)].field_0) - floor32(stor15[address(arg1)].field_0)]), 
}

function setControllers(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    require msg.sender == owner
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    idx = 0
    while idx < stor11.length:
        mem[0] = stor11[idx].field_0
        mem[32] = 12
        stor12[stor11[idx].field_0] = 0
        idx = idx + 1
        continue 
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 12
        stor12[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
    stor11.length = arg1.length
    if not arg1.length:
        idx = 0
        while stor11.length > idx:
            stor11[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg1.length) + 128 > idx:
            stor11[s].field_0 = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while stor11.length > idx:
            stor11[idx].field_0 = 0
            idx = idx + 1
            continue 
}

function setPartitionControllers(bytes32 arg1, address[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    require msg.sender == owner
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = 0
    idx = 0
    while idx < stor20[arg1].field_0:
        require idx < stor20[arg1].field_0
        stor21[arg1][stor20[arg1][idx].field_0] = 0
        mem[0] = arg1
        mem[32] = 20
        idx = idx + 1
        continue 
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = sha3(arg1, 21)
        stor21[arg1][mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
    stor20[arg1].field_0 = arg2.length
    if not arg2.length:
        idx = 0
        while stor20[arg1].field_0 > idx:
            stor20[arg1][idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg2.length) + 128 > idx:
            stor20[arg1][s].field_0 = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg2.length) + 31) >> 5
        while stor20[arg1].field_0 > idx:
            stor20[arg1][idx].field_0 = 0
            idx = idx + 1
            continue 
}

function canTransferByPartition(bytes32 arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[96] = arg4.length
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    if arg4.length <= 0:
        mem[ceil32(arg4.length) + 128] = 0xa300000000000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg4.length) + 160] = 0
        return Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), 
               mem[arg4.length + 160 len ceil32(arg4.length) + -arg4.length + 32],
               arg1
    require 0 < arg4.length
    if Mask(8, 248, mem[128]) != 0x1000000000000000000000000000000000000000000000000000000000000000:
        require 0 < arg4.length
        if Mask(8, 248, mem[128]) != 0x1100000000000000000000000000000000000000000000000000000000000000:
            require 0 < arg4.length
            if Mask(8, 248, mem[128]) != '"':
                mem[ceil32(arg4.length) + 128] = 0xa300000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(arg4.length) + 160] = 0
                return Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), 
                       mem[arg4.length + 160 len ceil32(arg4.length) + -arg4.length + 32],
                       arg1
    mem[ceil32(arg4.length) + 128] = arg4.length
    mem[ceil32(arg4.length) + 160 len arg4.length] = arg4[all]
    mem[ceil32(arg4.length) + arg4.length + 160] = 0
    mem[(2 * ceil32(arg4.length)) + 160] = 0
    if msg.sender != msg.sender:
        if not stor10[address(msg.sender)][address(msg.sender)]:
            if not isControllable:
                if not stor19[address(msg.sender)][arg1][address(msg.sender)]:
                    if not isControllable:
                        return 0xa700000000000000000000000000000000000000000000000000000000000000, 0, arg1
                    if not stor21[arg1][address(msg.sender)]:
                        return 0xa700000000000000000000000000000000000000000000000000000000000000, 0, arg1
            else:
                if not stor12[address(msg.sender)]:
                    if not stor19[address(msg.sender)][arg1][address(msg.sender)]:
                        if not isControllable:
                            return 0xa700000000000000000000000000000000000000000000000000000000000000, 0, arg1
                        if not stor21[arg1][address(msg.sender)]:
                            return 0xa700000000000000000000000000000000000000000000000000000000000000, 0, arg1
    if arg3 > balanceOf[address(msg.sender)]:
        return 0xa400000000000000000000000000000000000000000000000000000000000000, 0, arg1
    mem[0] = arg1
    mem[32] = sha3(address(msg.sender), 16)
    if arg3 > balanceOfByPartition[address(msg.sender)][arg1]:
        return 0xa400000000000000000000000000000000000000000000000000000000000000, 0, arg1
    if not arg2:
        return 0xa600000000000000000000000000000000000000000000000000000000000000, 0, arg1
    mem[(2 * ceil32(arg4.length)) + 192] = 18
    mem[(2 * ceil32(arg4.length)) + 224] = 'ERC777TokensSender'
    mem[(2 * ceil32(arg4.length)) + 288 len 0] = None
    mem[(2 * ceil32(arg4.length)) + 288 len 18] = 'ERC777TokensSender'
    mem[(2 * ceil32(arg4.length)) + 256] = 18
    require ext_code.size(0x820b586c8c28125366c998641b09dcbe7d4cbf06)
    staticcall 0x820b586c8c28125366c998641b09dcbe7d4cbf06.getInterfaceImplementer(address arg1, bytes32 arg2) with:
            gas gas_remaining wei
           args address(msg.sender), sha3('ERC777TokensSender')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(arg4.length)) + 306] = 21
    mem[(2 * ceil32(arg4.length)) + 338] = 'ERC777TokensRecipient'
    mem[(2 * ceil32(arg4.length)) + 402 len 0] = None
    mem[(2 * ceil32(arg4.length)) + 402 len 21] = 'ERC777TokensRecipient'
    mem[(2 * ceil32(arg4.length)) + 370] = 21
    mem[64] = (2 * ceil32(arg4.length)) + 423
    require ext_code.size(0x820b586c8c28125366c998641b09dcbe7d4cbf06)
    staticcall 0x820b586c8c28125366c998641b09dcbe7d4cbf06.getInterfaceImplementer(address arg1, bytes32 arg2) with:
            gas gas_remaining wei
           args address(arg2), sha3('ERC777TokensRecipient')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not address(ext_call.return_data[0]):
        if ext_call.return_data[12 len 20]:
            mem[(2 * ceil32(arg4.length)) + 423] = 0x80d6101200000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(arg4.length)) + 427] = arg1
            mem[(2 * ceil32(arg4.length)) + 459] = msg.sender
            mem[(2 * ceil32(arg4.length)) + 491] = arg2
            mem[(2 * ceil32(arg4.length)) + 523] = arg3
            mem[(2 * ceil32(arg4.length)) + 555] = 192
            mem[(2 * ceil32(arg4.length)) + 619] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            mem[(2 * ceil32(arg4.length)) + 651 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
            if not Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32:
                mem[(2 * ceil32(arg4.length)) + 587] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + 224
                mem[Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + (2 * ceil32(arg4.length)) + 651] = 0
                mem[Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + (2 * ceil32(arg4.length)) + 683 len 0] = None
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).canReceive(bytes32 arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                        gas gas_remaining wei
                       args mem[(2 * ceil32(arg4.length)) + 427 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + 256]
            else:
                mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + (2 * ceil32(arg4.length)) + 651] = mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + (2 * ceil32(arg4.length)) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 683 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32]
                mem[(2 * ceil32(arg4.length)) + 587] = floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 256
                mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + (2 * ceil32(arg4.length)) + 683] = 0
                mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + (2 * ceil32(arg4.length)) + 715 len 0] = None
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).canReceive(bytes32 arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                        gas gas_remaining wei
                       args mem[(2 * ceil32(arg4.length)) + 427 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                return 0xa600000000000000000000000000000000000000000000000000000000000000, 0, arg1
    else:
        mem[(2 * ceil32(arg4.length)) + 423] = 0x2823e87100000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(arg4.length)) + 427] = arg1
        mem[(2 * ceil32(arg4.length)) + 459] = msg.sender
        mem[(2 * ceil32(arg4.length)) + 491] = arg2
        mem[(2 * ceil32(arg4.length)) + 523] = arg3
        mem[(2 * ceil32(arg4.length)) + 555] = 192
        mem[(2 * ceil32(arg4.length)) + 619] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
        mem[(2 * ceil32(arg4.length)) + 651 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
        if not Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32:
            mem[(2 * ceil32(arg4.length)) + 587] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + 224
            mem[Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + (2 * ceil32(arg4.length)) + 651] = 0
            mem[Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + (2 * ceil32(arg4.length)) + 683 len 0] = None
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).canTransfer(bytes32 arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                    gas gas_remaining wei
                   args mem[(2 * ceil32(arg4.length)) + 427 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + 256]
        else:
            mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + (2 * ceil32(arg4.length)) + 651] = mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + (2 * ceil32(arg4.length)) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 683 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32]
            mem[(2 * ceil32(arg4.length)) + 587] = floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 256
            mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + (2 * ceil32(arg4.length)) + 683] = 0
            mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + (2 * ceil32(arg4.length)) + 715 len 0] = None
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).canTransfer(bytes32 arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                    gas gas_remaining wei
                   args mem[(2 * ceil32(arg4.length)) + 427 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            return 0xa500000000000000000000000000000000000000000000000000000000000000, 0, arg1
        if address(ext_call.return_data[0]):
            mem[(2 * ceil32(arg4.length)) + 423] = 0x80d6101200000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(arg4.length)) + 427] = arg1
            mem[(2 * ceil32(arg4.length)) + 459] = msg.sender
            mem[(2 * ceil32(arg4.length)) + 491] = arg2
            mem[(2 * ceil32(arg4.length)) + 523] = arg3
            mem[(2 * ceil32(arg4.length)) + 555] = 192
            mem[(2 * ceil32(arg4.length)) + 619] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
            mem[(2 * ceil32(arg4.length)) + 651 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
            if not Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32:
                mem[(2 * ceil32(arg4.length)) + 587] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + 224
                mem[Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + (2 * ceil32(arg4.length)) + 651] = 0
                mem[Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + (2 * ceil32(arg4.length)) + 683 len 0] = None
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).canReceive(bytes32 arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                        gas gas_remaining wei
                       args mem[(2 * ceil32(arg4.length)) + 427 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + 256]
            else:
                mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + (2 * ceil32(arg4.length)) + 651] = mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + (2 * ceil32(arg4.length)) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 683 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32]
                mem[(2 * ceil32(arg4.length)) + 587] = floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 256
                mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + (2 * ceil32(arg4.length)) + 683] = 0
                mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + (2 * ceil32(arg4.length)) + 715 len 0] = None
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).canReceive(bytes32 arg1, address arg2, address arg3, uint256 arg4, bytes arg5, bytes arg6) with:
                        gas gas_remaining wei
                       args mem[(2 * ceil32(arg4.length)) + 427 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                return 0xa600000000000000000000000000000000000000000000000000000000000000, 0, arg1
    require granularity > 0
    require granularity
    if not arg3 / granularity:
        if 0 == arg3:
            return 0xa200000000000000000000000000000000000000000000000000000000000000, 0, arg1
    else:
        require granularity * arg3 / granularity / arg3 / granularity == granularity
        if granularity * arg3 / granularity == arg3:
            return 0xa200000000000000000000000000000000000000000000000000000000000000, 0, arg1
    return 0xa900000000000000000000000000000000000000000000000000000000000000, 0, arg1
}



}
