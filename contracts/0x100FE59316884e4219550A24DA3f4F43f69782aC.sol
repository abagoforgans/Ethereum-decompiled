contract main {


// =======================  Init code  ======================


address stor0;
address stor2;

function _fallback() {
    stor0 = msg.sender
    require code.data[10334 len 20]
    stor2 = code.data[10334 len 20]
    return code.data[132 len 10190]
}



// =====================  Runtime code  =====================


#
#  - getTxVoteDetails(bytes32 arg1)
#
address contractOwner;
address pendingContractOwner;
address accessManagerAddress;
mapping of uint8 stor3;
uint256 policiesCount;
mapping of uint256 index2PolicyId;
mapping of uint256 policyId2Index;
mapping of struct stor7;
uint256 txCount;
mapping of uint256 index2txKey;
mapping of uint256 txKey2index;
mapping of struct stor11;

function policiesCount() {
    return policiesCount
}

function policyId2Index(bytes32 arg1) {
    return policyId2Index[arg1]
}

function txKey2index(bytes32 arg1) {
    return txKey2index[arg1]
}

function txCount() {
    return txCount
}

function index2txKey(uint256 arg1) {
    return index2txKey[arg1]
}

function pendingContractOwner() {
    return pendingContractOwner
}

function isGroupInPolicy(bytes32 arg1, bytes32 arg2) {
    return bool(stor7[arg1][2][arg2].field_0)
}

function isPolicyExist(bytes32 arg1) {
    return bool(policyId2Index[arg1])
}

function authorized(address arg1) {
    return bool(stor3[arg1])
}

function isTxExist(bytes32 arg1) {
    return bool(txKey2index[arg1])
}

function contractOwner() {
    return contractOwner
}

function index2PolicyId(uint256 arg1) {
    return index2PolicyId[arg1]
}

function accessManager() {
    return accessManagerAddress
}

function destroy() {
    if contractOwner != msg.sender:
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert
}

function signIn(address arg1) {
    if contractOwner != msg.sender:
        return 0
    require arg1
    stor3[address(arg1)] = 1
    return 1
}

function signOut(address arg1) {
    if contractOwner != msg.sender:
        return 0
    require arg1
    stor3[address(arg1)] = 0
    return 1
}

function setAccessManager(address arg1) {
    if contractOwner != msg.sender:
        return 0
    require arg1
    accessManagerAddress = arg1
    return 1
}

function claimContractOwnership() {
    if pendingContractOwner != msg.sender:
        return 0
    contractOwner = pendingContractOwner
    pendingContractOwner = 0
    return 1
}

function changeContractOwnership(address arg1) {
    if contractOwner != msg.sender:
        return 0
    if not arg1:
        return 0
    pendingContractOwner = arg1
    return 1
}

function getVoteAtTxForUser(bytes32 arg1, address arg2) {
    if txKey2index[arg1]:
        return stor11[arg1][4][address(arg2)].field_0, bool(stor11[arg1][4][address(arg2)].field_256)
    else:
        return 0
}

function hasConfirmedRecord(bytes32 arg1) {
    require arg1
    if not txKey2index[arg1]:
        return 4
    require stor11[arg1].field_0 <= 2
    if stor11[arg1].field_0 == 2:
        return 4006
    require stor11[arg1].field_0 <= 2
    if stor11[arg1].field_0 == 1:
        return 1
    return 4005
}

function addTx(bytes32 arg1, bytes4 arg2, address arg3) {
    if not stor3[address(msg.sender)]:
        if msg.sender != this.address:
            return 0
    require arg1
    require Mask(32, 224, arg2)
    require arg3
    require policyId2Index[arg2][arg3]
    if txKey2index[arg1]:
        emit Error(4003);
        return 4003
    if not sha3(arg2, arg3):
        emit Error(4011);
        return 4011
    require txCount + 1 >= txCount
    txCount++
    index2txKey[stor8 + 1] = arg1
    txKey2index[arg1] = txCount + 1
    stor11[arg1].field_256 = policyId2Index[arg2][arg3]
    stor11[arg1].field_0 = 2
    require stor7[arg2][arg3].field_1536 + 1 >= stor7[arg2][arg3].field_1536
    stor7[arg2][arg3].field_1536++
    stor7[arg2][arg3][7][stor7[arg2][arg3].field_1536 + 1].field_0 = txCount + 1
    stor7[arg2][arg3][8][stor8 + 1].field_0 = stor7[arg2][arg3].field_1536 + 1
    emit ProtectionTxAdded(arg1, sha3(arg2, arg3), block.number);
    return 1
}

function revoke(bytes32 arg1) {
    require arg1
    require msg.sender
    if not txKey2index[arg1]:
        emit Error(4007);
        return 4007
    require stor11[arg1].field_0 <= 2
    if stor11[arg1].field_0 != 2:
        emit Error(4001);
        return 4001
    if not stor11[arg1][4][address(msg.sender)].field_0:
        emit Error(4002);
        return 4002
    if not stor11[arg1][4][address(msg.sender)].field_256:
        require 1 <= stor11[arg1][6][stor11[arg1][4][address(msg.sender)].field_0].field_0
        stor11[arg1][6][stor11[arg1][4][address(msg.sender)].field_0].field_0--
        require 1 <= stor11[arg1].field_768
        stor11[arg1].field_768--
    else:
        require 1 <= stor11[arg1][5][stor11[arg1][4][address(msg.sender)].field_0].field_0
        stor11[arg1][5][stor11[arg1][4][address(msg.sender)].field_0].field_0--
        require 1 <= stor11[arg1].field_512
        stor11[arg1].field_512--
    stor11[arg1][4][address(msg.sender)].field_0 = 0
    stor11[arg1][4][address(msg.sender)].field_256 = 0
    emit ProtectionTxVoteRevoked(arg1, stor11[arg1][4][address(msg.sender)].field_0, msg.sender);
    return 1
}

function forceRejectVotes(bytes32 arg1, address arg2) {
    if contractOwner != msg.sender:
        return 0
    require arg1
    require arg2
    if not txKey2index[arg1]:
        emit Error(4007);
        return 4007
    require stor11[arg1].field_0 <= 2
    if stor11[arg1].field_0 != 2:
        emit Error(4001);
        return 4001
    if not stor11[arg1][4][address(arg2)].field_0:
        emit Error(4002);
        return 4002
    if not stor11[arg1][4][address(arg2)].field_256:
        require 1 <= stor11[arg1][6][stor11[arg1][4][address(arg2)].field_0].field_0
        stor11[arg1][6][stor11[arg1][4][address(arg2)].field_0].field_0--
        require 1 <= stor11[arg1].field_768
        stor11[arg1].field_768--
    else:
        require 1 <= stor11[arg1][5][stor11[arg1][4][address(arg2)].field_0].field_0
        stor11[arg1][5][stor11[arg1][4][address(arg2)].field_0].field_0--
        require 1 <= stor11[arg1].field_512
        stor11[arg1].field_512--
    stor11[arg1][4][address(arg2)].field_0 = 0
    stor11[arg1][4][address(arg2)].field_256 = 0
    emit ProtectionTxVoteRevoked(arg1, stor11[arg1][4][address(arg2)].field_0, arg2);
    return 1
}

function withdrawnTokens(address[] arg1, address arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if contractOwner != msg.sender:
        return 0
    s = 0
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _21 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 160] = 0
        mem[(32 * arg1.length) + 132] = this.address
        require ext_code.size(address(_21))
        call address(_21).0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        require ext_call.success
        if ext_call.return_data[0]:
            mem[(32 * arg1.length) + 132] = arg2
            mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
            require ext_code.size(address(_21))
            call address(_21).0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args address(arg2), ext_call.return_data[0]
            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
            require ext_call.success
        s = ext_call.return_data[0]
        s = _21
        idx = idx + 1
        continue 
    return 1
}

function accept(bytes32 arg1, bytes32 arg2) {
    if not txKey2index[arg1]:
        emit Error(4007);
        return 4007
    require ext_code.size(accessManagerAddress)
    call accessManagerAddress.0xda4f2899 with:
         gas gas_remaining - 710 wei
        args arg2, msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        emit Error(4001);
        return 4001
    require stor11[arg1].field_0 <= 2
    if stor11[arg1].field_0 != 2:
        emit Error(4001);
        return 4001
    if stor11[arg1][4][address(msg.sender)].field_0:
        if stor11[arg1][4][address(msg.sender)].field_256:
            emit Error(4001);
            return 4001
    if stor11[arg1][5][arg2].field_0 == stor7[stor5[stor11[arg1].field_256]][1][stor7[stor5[stor11[arg1].field_256]][2][arg2].field_0].field_256:
        emit Error(4001);
        return 4001
    stor11[arg1][4][address(msg.sender)].field_0 = arg2
    stor11[arg1][4][address(msg.sender)].field_256 = 1
    stor11[arg1][5][arg2].field_0++
    stor11[arg1].field_512++
    emit ProtectionTxAccepted(arg1, arg2, msg.sender);
    if stor11[arg1].field_512 + 1 == stor7[stor5[stor11[arg1].field_256]].field_768:
        stor11[arg1].field_0 = 1
        emit ProtectionTxDone(arg1);
    return 1
}

function decline(bytes32 arg1, bytes32 arg2) {
    if not txKey2index[arg1]:
        emit Error(4007);
        return 4007
    require ext_code.size(accessManagerAddress)
    call accessManagerAddress.0xda4f2899 with:
         gas gas_remaining - 710 wei
        args arg2, msg.sender
    require ext_call.success
    if not ext_call.return_data[0]:
        emit Error(4001);
        return 4001
    require stor11[arg1].field_0 <= 2
    if stor11[arg1].field_0 != 2:
        emit Error(4001);
        return 4001
    if stor11[arg1][4][address(msg.sender)].field_0:
        if not stor11[arg1][4][address(msg.sender)].field_256:
            emit Error(4001);
            return 4001
    if stor11[arg1][6][arg2].field_0 == stor7[stor5[stor11[arg1].field_256]][1][stor7[stor5[stor11[arg1].field_256]][2][arg2].field_0].field_512:
        emit Error(4001);
        return 4001
    stor11[arg1][4][address(msg.sender)].field_0 = arg2
    stor11[arg1][4][address(msg.sender)].field_256 = 0
    stor11[arg1][6][arg2].field_0++
    stor11[arg1].field_768++
    emit ProtectionTxDeclined(arg1, arg2, msg.sender);
    if stor11[arg1].field_768 + 1 == stor7[stor5[stor11[arg1].field_256]].field_1024:
        stor11[arg1].field_0 = 0
        emit ProtectionTxCancelled(arg1);
    return 1
}

function deleteTx(bytes32 arg1) {
    if contractOwner != msg.sender:
        return 0
    require arg1
    if not txKey2index[arg1]:
        emit Error(4007);
        return 4007
    if txCount != txKey2index[arg1]:
        index2txKey[stor10[arg1]] = index2txKey[stor8]
        txKey2index[stor9[stor8]] = txKey2index[arg1]
    txKey2index[arg1] = 0
    index2txKey[stor8] = 0
    require 1 <= txCount
    txCount--
    if stor7[stor5[stor11[arg1].field_256]].field_1536 != stor7[stor5[stor11[arg1].field_256]][8][stor10[arg1]].field_0:
        stor7[stor5[stor11[arg1].field_256]][7][stor7[stor5[stor11[arg1].field_256]][8][stor10[arg1]].field_0].field_0 = stor7[stor5[stor11[arg1].field_256]][7][stor7[stor5[stor11[arg1].field_256]].field_1536].field_0
        stor7[stor5[stor11[arg1].field_256]][8][stor7[stor5[stor11[arg1].field_256]][7][stor7[stor5[stor11[arg1].field_256]].field_1536].field_0].field_0 = stor7[stor5[stor11[arg1].field_256]][8][stor10[arg1]].field_0
    stor7[stor5[stor11[arg1].field_256]][7][stor7[stor5[stor11[arg1].field_256]].field_1536].field_0 = 0
    stor7[stor5[stor11[arg1].field_256]][8][stor10[arg1]].field_0 = 0
    require 1 <= stor7[stor5[stor11[arg1].field_256]].field_1536
    stor7[stor5[stor11[arg1].field_256]].field_1536--
    emit TxDeleted(arg1);
    return 1
}

function removePolicyRule(bytes4 arg1, address arg2, bytes32 arg3) {
    if contractOwner != msg.sender:
        return 0
    require Mask(32, 224, arg1)
    require arg2
    require ext_code.size(accessManagerAddress)
    call accessManagerAddress.0x1846d125 with:
         gas gas_remaining - 710 wei
        args arg3
    require ext_call.success
    require ext_call.return_data[0]
    if not stor7[arg1][arg2][2][arg3].field_0:
        emit Error(4001);
        return 4001
    if stor7[arg1][arg2].field_0 != stor7[arg1][arg2][2][arg3].field_0:
        stor7[arg1][arg2][1][stor7[arg1][arg2][2][arg3].field_0].field_0 = stor7[arg1][arg2][1][stor7[arg1][arg2].field_0].field_0
        stor7[arg1][arg2][1][stor7[arg1][arg2][2][arg3].field_0].field_256 = stor7[arg1][arg2][1][stor7[arg1][arg2].field_0].field_256
        stor7[arg1][arg2][1][stor7[arg1][arg2][2][arg3].field_0].field_512 = stor7[arg1][arg2][1][stor7[arg1][arg2].field_0].field_512
        stor7[arg1][arg2][2][stor7[arg1][arg2][1][stor7[arg1][arg2].field_0].field_0].field_0 = stor7[arg1][arg2][2][arg3].field_0
    require stor7[arg1][arg2][1][stor7[arg1][arg2].field_0].field_256 <= stor7[arg1][arg2].field_768
    stor7[arg1][arg2].field_768 -= stor7[arg1][arg2][1][stor7[arg1][arg2].field_0].field_256
    require stor7[arg1][arg2][1][stor7[arg1][arg2].field_0].field_512 <= stor7[arg1][arg2].field_1024
    stor7[arg1][arg2].field_1024 -= stor7[arg1][arg2][1][stor7[arg1][arg2].field_0].field_512
    stor7[arg1][arg2][2][arg3].field_0 = 0
    stor7[arg1][arg2][1][stor7[arg1][arg2].field_0].field_0 = 0
    stor7[arg1][arg2][1][stor7[arg1][arg2].field_0].field_256 = 0
    stor7[arg1][arg2][1][stor7[arg1][arg2].field_0].field_512 = 0
    require 1 <= stor7[arg1][arg2].field_0
    stor7[arg1][arg2].field_0--
    emit PolicyRuleRemoved(Mask(32, 224, arg1), address(arg2), sha3(arg1, arg2), arg3);
    return 1
}

function addPolicyRule(bytes4 arg1, address arg2, bytes32 arg3, uint256 arg4, uint256 arg5) {
    if contractOwner != msg.sender:
        return 0
    require Mask(32, 224, arg1)
    require arg2
    require ext_code.size(accessManagerAddress)
    call accessManagerAddress.0x1846d125 with:
         gas gas_remaining - 710 wei
        args arg3
    require ext_call.success
    require ext_call.return_data[0]
    require arg4
    require arg5
    if not policyId2Index[arg1][arg2]:
        require policiesCount + 1 >= policiesCount
        index2PolicyId[stor4 + 1] = sha3(arg1, arg2)
        policyId2Index[arg1][arg2] = policiesCount + 1
        policiesCount++
    if stor7[arg1][arg2][2][arg3].field_0:
        stor7[arg1][arg2][1][stor7[arg1][arg2].field_0].field_256 = arg4
        stor7[arg1][arg2][1][stor7[arg1][arg2].field_0].field_512 = arg5
        require stor7[arg1][arg2][1][stor7[arg1][arg2].field_0].field_256 <= stor7[arg1][arg2].field_768
        require arg4 >= 0
        stor7[arg1][arg2].field_768 = arg4 + stor7[arg1][arg2].field_768 - stor7[arg1][arg2][1][stor7[arg1][arg2].field_0].field_256
        require stor7[arg1][arg2][1][stor7[arg1][arg2].field_0].field_512 <= stor7[arg1][arg2].field_1024
        require arg5 >= 0
        stor7[arg1][arg2].field_1024 = arg5 + stor7[arg1][arg2].field_1024 - stor7[arg1][arg2][1][stor7[arg1][arg2].field_0].field_512
    else:
        stor7[arg1][arg2][2][arg3].field_0 = stor7[arg1][arg2].field_0 + 1
        stor7[arg1][arg2][1][stor7[arg1][arg2].field_0 + 1].field_0 = arg3
        stor7[arg1][arg2].field_0++
        stor7[arg1][arg2].field_1280 = arg1
        stor7[arg1][arg2].field_1312 = arg2
        stor7[arg1][arg2][1][stor7[arg1][arg2].field_0 + 1].field_256 = arg4
        stor7[arg1][arg2][1][stor7[arg1][arg2].field_0 + 1].field_512 = arg5
        require stor7[arg1][arg2][1][stor7[arg1][arg2].field_0 + 1].field_256 <= stor7[arg1][arg2].field_768
        require arg4 >= 0
        stor7[arg1][arg2].field_768 = arg4 + stor7[arg1][arg2].field_768 - stor7[arg1][arg2][1][stor7[arg1][arg2].field_0 + 1].field_256
        require stor7[arg1][arg2][1][stor7[arg1][arg2].field_0 + 1].field_512 <= stor7[arg1][arg2].field_1024
        require arg5 >= 0
        stor7[arg1][arg2].field_1024 = arg5 + stor7[arg1][arg2].field_1024 - stor7[arg1][arg2][1][stor7[arg1][arg2].field_0 + 1].field_512
    emit PolicyRuleAdded(Mask(32, 224, arg1), 0, sha3(arg1, arg2), arg3, arg4, arg5);
    return 1
}

function getPolicyDetailsByHash(bytes32 arg1) {
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    if not policyId2Index[arg1]:
        return 224, 256, 288, 0, 0, 0, 0, 0, 0, 0
    mem[32] = 7
    mem[192] = stor7[arg1].field_0
    if 224 >= (32 * stor7[arg1].field_0) + 224:
        mem[224] = stor7[arg1].field_0
        if 256 < (32 * stor7[arg1].field_0) + 256:
            mem[(32 * stor7[arg1].field_0) + 256] = stor7[arg1].field_0
            s = 0
            idx = 0
            while idx < stor7[arg1].field_0:
                mem[0] = idx + 1
                mem[32] = sha3(arg1, 7) + 1
                require idx < stor7[arg1].field_0
                mem[(32 * idx) + 224] = stor7[arg1][1][idx + 1].field_0
                require idx < mem[224]
                mem[(32 * idx) + 256] = stor7[arg1][1][idx + 1].field_256
                require idx < mem[(32 * stor7[arg1].field_0) + 256]
                mem[(32 * stor7[arg1].field_0) + (32 * idx) + 288] = stor7[arg1][1][idx + 1].field_512
                s = sha3(idx + 1, sha3(arg1, 7) + 1)
                idx = idx + 1
                continue 
            mem[(64 * stor7[arg1].field_0) + 384] = stor7[arg1].field_768
            mem[(64 * stor7[arg1].field_0) + 416] = stor7[arg1].field_1024
            mem[(64 * stor7[arg1].field_0) + 448] = Mask(32, 224, stor7[arg1].field_1280)
            mem[(64 * stor7[arg1].field_0) + 480] = stor7[arg1].field_1312
            mem[(64 * stor7[arg1].field_0) + 288] = 224
            mem[(64 * stor7[arg1].field_0) + 512] = stor7[arg1].field_0
            mem[(64 * stor7[arg1].field_0) + 544 len floor32(stor7[arg1].field_0)] = mem[224 len floor32(stor7[arg1].field_0)]
            mem[(64 * stor7[arg1].field_0) + 320] = (32 * stor7[arg1].field_0) + 256
            mem[(98 * stor7[arg1].field_0) + 544] = mem[224]
            mem[(98 * stor7[arg1].field_0) + 576 len floor32(mem[224])] = mem[256 len floor32(mem[224])]
            mem[(64 * stor7[arg1].field_0) + 352] = (32 * mem[224]) + (32 * stor7[arg1].field_0) + 288
            mem[(32 * mem[224]) + (98 * stor7[arg1].field_0) + 576] = mem[(32 * stor7[arg1].field_0) + 256]
            mem[(32 * mem[224]) + (98 * stor7[arg1].field_0) + 608 len floor32(mem[(32 * stor7[arg1].field_0) + 256])] = mem[(32 * stor7[arg1].field_0) + 288 len floor32(mem[(32 * stor7[arg1].field_0) + 256])]
            return memory
              from (64 * stor7[arg1].field_0) + 288
               len (32 * mem[(32 * stor7[arg1].field_0) + 256]) + (32 * mem[224]) + (161 * stor7[arg1].field_0) + 320
        mem[256] = stor7[arg1].field_0
        s = 0
        idx = 0
        while idx < stor7[arg1].field_0:
            mem[0] = idx + 1
            mem[32] = sha3(arg1, 7) + 1
            require idx < stor7[arg1].field_0
            mem[(32 * idx) + 224] = stor7[arg1][1][idx + 1].field_0
            require idx < mem[224]
            mem[(32 * idx) + 256] = stor7[arg1][1][idx + 1].field_256
            require idx < mem[256]
            mem[(32 * idx) + 288] = stor7[arg1][1][idx + 1].field_512
            s = sha3(idx + 1, sha3(arg1, 7) + 1)
            idx = idx + 1
            continue 
        mem[(32 * stor7[arg1].field_0) + 384] = stor7[arg1].field_768
        mem[(32 * stor7[arg1].field_0) + 416] = stor7[arg1].field_1024
        mem[(32 * stor7[arg1].field_0) + 448] = Mask(32, 224, stor7[arg1].field_1280)
        mem[(32 * stor7[arg1].field_0) + 480] = stor7[arg1].field_1312
        mem[(32 * stor7[arg1].field_0) + 288] = 224
        mem[(32 * stor7[arg1].field_0) + 512] = stor7[arg1].field_0
        mem[(32 * stor7[arg1].field_0) + 544 len floor32(stor7[arg1].field_0)] = mem[224 len floor32(stor7[arg1].field_0)]
        mem[(32 * stor7[arg1].field_0) + 320] = (32 * stor7[arg1].field_0) + 256
        mem[(64 * stor7[arg1].field_0) + 544] = mem[224]
        mem[(64 * stor7[arg1].field_0) + 576 len floor32(mem[224])] = mem[256 len floor32(mem[224])]
        mem[(32 * stor7[arg1].field_0) + 352] = (32 * mem[224]) + (32 * stor7[arg1].field_0) + 288
        mem[(32 * mem[224]) + (64 * stor7[arg1].field_0) + 576] = mem[256]
        mem[(32 * mem[224]) + (64 * stor7[arg1].field_0) + 608 len floor32(mem[256])] = mem[288 len floor32(mem[256])]
        return Array(len=stor7[arg1].field_0, data=mem[224 len floor32(stor7[arg1].field_0)], mem[(32 * stor7[arg1].field_0) + floor32(stor7[arg1].field_0) + 544 len (32 * stor7[arg1].field_0) + (32 * mem[256]) + (32 * mem[224]) + -floor32(stor7[arg1].field_0) + 64]), 
               (32 * stor7[arg1].field_0) + 256,
               (32 * mem[224]) + (32 * stor7[arg1].field_0) + 288,
               stor7[arg1].field_768,
               stor7[arg1].field_1024,
               Mask(32, 224, stor7[arg1].field_1280),
               stor7[arg1].field_1280
    mem[(32 * stor7[arg1].field_0) + 224] = stor7[arg1].field_0
    if 32 * stor7[arg1].field_0 >= 64 * stor7[arg1].field_0:
        mem[(32 * stor7[arg1].field_0) + 256] = stor7[arg1].field_0
        s = 0
        idx = 0
        while idx < stor7[arg1].field_0:
            mem[0] = idx + 1
            mem[32] = sha3(arg1, 7) + 1
            require idx < stor7[arg1].field_0
            mem[(32 * idx) + 224] = stor7[arg1][1][idx + 1].field_0
            require idx < mem[(32 * stor7[arg1].field_0) + 224]
            mem[(32 * stor7[arg1].field_0) + (32 * idx) + 256] = stor7[arg1][1][idx + 1].field_256
            require idx < mem[(32 * stor7[arg1].field_0) + 256]
            mem[(32 * stor7[arg1].field_0) + (32 * idx) + 288] = stor7[arg1][1][idx + 1].field_512
            s = sha3(idx + 1, sha3(arg1, 7) + 1)
            idx = idx + 1
            continue 
        mem[(64 * stor7[arg1].field_0) + 384] = stor7[arg1].field_768
        mem[(64 * stor7[arg1].field_0) + 416] = stor7[arg1].field_1024
        mem[(64 * stor7[arg1].field_0) + 448] = Mask(32, 224, stor7[arg1].field_1280)
        mem[(64 * stor7[arg1].field_0) + 480] = stor7[arg1].field_1312
        mem[(64 * stor7[arg1].field_0) + 288] = 224
        mem[(64 * stor7[arg1].field_0) + 512] = stor7[arg1].field_0
        mem[(64 * stor7[arg1].field_0) + 544 len floor32(stor7[arg1].field_0)] = mem[224 len floor32(stor7[arg1].field_0)]
        mem[(64 * stor7[arg1].field_0) + 320] = (32 * stor7[arg1].field_0) + 256
        mem[(98 * stor7[arg1].field_0) + 544] = mem[(32 * stor7[arg1].field_0) + 224]
        mem[(98 * stor7[arg1].field_0) + 576 len floor32(mem[(32 * stor7[arg1].field_0) + 224])] = mem[(32 * stor7[arg1].field_0) + 256 len floor32(mem[(32 * stor7[arg1].field_0) + 224])]
        mem[(64 * stor7[arg1].field_0) + 352] = (32 * mem[(32 * stor7[arg1].field_0) + 224]) + (32 * stor7[arg1].field_0) + 288
        mem[(32 * mem[(32 * stor7[arg1].field_0) + 224]) + (98 * stor7[arg1].field_0) + 576] = mem[(32 * stor7[arg1].field_0) + 256]
        mem[(32 * mem[(32 * stor7[arg1].field_0) + 224]) + (98 * stor7[arg1].field_0) + 608 len floor32(mem[(32 * stor7[arg1].field_0) + 256])] = mem[(32 * stor7[arg1].field_0) + 288 len floor32(mem[(32 * stor7[arg1].field_0) + 256])]
        return memory
          from (64 * stor7[arg1].field_0) + 288
           len (32 * mem[(32 * stor7[arg1].field_0) + 256]) + (32 * mem[(32 * stor7[arg1].field_0) + 224]) + (161 * stor7[arg1].field_0) + 320
    mem[(64 * stor7[arg1].field_0) + 256] = stor7[arg1].field_0
    mem[64] = (98 * stor7[arg1].field_0) + 288
    s = 0
    idx = 0
    while idx < stor7[arg1].field_0:
        mem[0] = idx + 1
        mem[32] = sha3(arg1, 7) + 1
        require idx < mem[192]
        mem[(32 * idx) + 224] = stor7[arg1][1][idx + 1].field_0
        require idx < mem[(32 * stor7[arg1].field_0) + 224]
        mem[(32 * stor7[arg1].field_0) + (32 * idx) + 256] = stor7[arg1][1][idx + 1].field_256
        require idx < mem[(64 * stor7[arg1].field_0) + 256]
        mem[(64 * stor7[arg1].field_0) + (32 * idx) + 288] = stor7[arg1][1][idx + 1].field_512
        s = sha3(idx + 1, sha3(arg1, 7) + 1)
        idx = idx + 1
        continue 
    _201 = mem[64]
    mem[mem[64] + 96] = stor7[arg1].field_768
    mem[mem[64] + 128] = stor7[arg1].field_1024
    mem[mem[64] + 160] = Mask(32, 224, stor7[arg1].field_1280)
    mem[mem[64] + 192] = stor7[arg1].field_1312
    mem[mem[64]] = 224
    mem[_201 + 224] = mem[192]
    _203 = mem[192]
    mem[_201 + 256 len floor32(mem[192])] = mem[224 len floor32(mem[192])]
    mem[_201 + 32] = (32 * mem[192]) + 256
    mem[(32 * _203) + _201 + 256] = mem[(32 * stor7[arg1].field_0) + 224]
    _299 = mem[(32 * stor7[arg1].field_0) + 224]
    mem[(32 * _203) + _201 + 288 len floor32(mem[(32 * stor7[arg1].field_0) + 224])] = mem[(32 * stor7[arg1].field_0) + 256 len floor32(mem[(32 * stor7[arg1].field_0) + 224])]
    mem[_201 + 64] = (32 * _299) + (32 * _203) + 288
    mem[(32 * _299) + (32 * _203) + _201 + 288] = mem[(64 * stor7[arg1].field_0) + 256]
    _368 = mem[(64 * stor7[arg1].field_0) + 256]
    mem[(32 * _299) + (32 * _203) + _201 + 320 len floor32(mem[(64 * stor7[arg1].field_0) + 256])] = mem[(64 * stor7[arg1].field_0) + 288 len floor32(mem[(64 * stor7[arg1].field_0) + 256])]
    return memory
      from mem[64]
       len (32 * _368) + (32 * _299) + (32 * _203) + _201 + -mem[64] + 320
}

function getPolicyDetails(bytes4 arg1, address arg2) {
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    require Mask(32, 224, arg1)
    require arg2
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    if not policyId2Index[arg1][arg2]:
        return 160, 192, 224, 0, 0, 0, 0, 0
    mem[32] = 7
    mem[288] = stor7[arg1][arg2].field_0
    if 320 >= (32 * stor7[arg1][arg2].field_0) + 320:
        mem[320] = stor7[arg1][arg2].field_0
        if 352 < (32 * stor7[arg1][arg2].field_0) + 352:
            mem[(32 * stor7[arg1][arg2].field_0) + 352] = stor7[arg1][arg2].field_0
            s = 0
            idx = 0
            while idx < stor7[arg1][arg2].field_0:
                mem[0] = idx + 1
                mem[32] = sha3(sha3(arg1, arg2), 7) + 1
                require idx < stor7[arg1][arg2].field_0
                mem[(32 * idx) + 320] = stor7[arg1][arg2][1][idx + 1].field_0
                require idx < mem[320]
                mem[(32 * idx) + 352] = stor7[arg1][arg2][1][idx + 1].field_256
                require idx < mem[(32 * stor7[arg1][arg2].field_0) + 352]
                mem[(32 * stor7[arg1][arg2].field_0) + (32 * idx) + 384] = stor7[arg1][arg2][1][idx + 1].field_512
                s = sha3(idx + 1, sha3(sha3(arg1, arg2), 7) + 1)
                idx = idx + 1
                continue 
            mem[(64 * stor7[arg1][arg2].field_0) + 480] = stor7[arg1][arg2].field_768
            mem[(64 * stor7[arg1][arg2].field_0) + 512] = stor7[arg1][arg2].field_1024
            mem[(64 * stor7[arg1][arg2].field_0) + 384] = 160
            mem[(64 * stor7[arg1][arg2].field_0) + 544] = stor7[arg1][arg2].field_0
            mem[(64 * stor7[arg1][arg2].field_0) + 576 len floor32(stor7[arg1][arg2].field_0)] = mem[320 len floor32(stor7[arg1][arg2].field_0)]
            mem[(64 * stor7[arg1][arg2].field_0) + 416] = (32 * stor7[arg1][arg2].field_0) + 192
            mem[(98 * stor7[arg1][arg2].field_0) + 576] = mem[320]
            mem[(98 * stor7[arg1][arg2].field_0) + 608 len floor32(mem[320])] = mem[352 len floor32(mem[320])]
            mem[(64 * stor7[arg1][arg2].field_0) + 448] = (32 * mem[320]) + (32 * stor7[arg1][arg2].field_0) + 224
            mem[(32 * mem[320]) + (98 * stor7[arg1][arg2].field_0) + 608] = mem[(32 * stor7[arg1][arg2].field_0) + 352]
            mem[(32 * mem[320]) + (98 * stor7[arg1][arg2].field_0) + 640 len floor32(mem[(32 * stor7[arg1][arg2].field_0) + 352])] = mem[(32 * stor7[arg1][arg2].field_0) + 384 len floor32(mem[(32 * stor7[arg1][arg2].field_0) + 352])]
            return memory
              from (64 * stor7[arg1][arg2].field_0) + 384
               len (32 * mem[(32 * stor7[arg1][arg2].field_0) + 352]) + (32 * mem[320]) + (161 * stor7[arg1][arg2].field_0) + 256
        mem[352] = stor7[arg1][arg2].field_0
        s = 0
        idx = 0
        while idx < stor7[arg1][arg2].field_0:
            mem[0] = idx + 1
            mem[32] = sha3(sha3(arg1, arg2), 7) + 1
            require idx < stor7[arg1][arg2].field_0
            mem[(32 * idx) + 320] = stor7[arg1][arg2][1][idx + 1].field_0
            require idx < mem[320]
            mem[(32 * idx) + 352] = stor7[arg1][arg2][1][idx + 1].field_256
            require idx < mem[352]
            mem[(32 * idx) + 384] = stor7[arg1][arg2][1][idx + 1].field_512
            s = sha3(idx + 1, sha3(sha3(arg1, arg2), 7) + 1)
            idx = idx + 1
            continue 
        mem[(32 * stor7[arg1][arg2].field_0) + 480] = stor7[arg1][arg2].field_768
        mem[(32 * stor7[arg1][arg2].field_0) + 512] = stor7[arg1][arg2].field_1024
        mem[(32 * stor7[arg1][arg2].field_0) + 384] = 160
        mem[(32 * stor7[arg1][arg2].field_0) + 544] = stor7[arg1][arg2].field_0
        mem[(32 * stor7[arg1][arg2].field_0) + 576 len floor32(stor7[arg1][arg2].field_0)] = mem[320 len floor32(stor7[arg1][arg2].field_0)]
        mem[(32 * stor7[arg1][arg2].field_0) + 416] = (32 * stor7[arg1][arg2].field_0) + 192
        mem[(64 * stor7[arg1][arg2].field_0) + 576] = mem[320]
        mem[(64 * stor7[arg1][arg2].field_0) + 608 len floor32(mem[320])] = mem[352 len floor32(mem[320])]
        mem[(32 * stor7[arg1][arg2].field_0) + 448] = (32 * mem[320]) + (32 * stor7[arg1][arg2].field_0) + 224
        mem[(32 * mem[320]) + (64 * stor7[arg1][arg2].field_0) + 608] = mem[352]
        mem[(32 * mem[320]) + (64 * stor7[arg1][arg2].field_0) + 640 len floor32(mem[352])] = mem[384 len floor32(mem[352])]
        return Array(len=stor7[arg1][arg2].field_0, data=mem[320 len floor32(stor7[arg1][arg2].field_0)], mem[(32 * stor7[arg1][arg2].field_0) + floor32(stor7[arg1][arg2].field_0) + 576 len (32 * stor7[arg1][arg2].field_0) + (32 * mem[352]) + (32 * mem[320]) + -floor32(stor7[arg1][arg2].field_0) + 64]), 
               (32 * stor7[arg1][arg2].field_0) + 192,
               (32 * mem[320]) + (32 * stor7[arg1][arg2].field_0) + 224,
               stor7[arg1][arg2].field_768,
               stor7[arg1][arg2].field_1024
    mem[(32 * stor7[arg1][arg2].field_0) + 320] = stor7[arg1][arg2].field_0
    if 32 * stor7[arg1][arg2].field_0 >= 64 * stor7[arg1][arg2].field_0:
        mem[(32 * stor7[arg1][arg2].field_0) + 352] = stor7[arg1][arg2].field_0
        s = 0
        idx = 0
        while idx < stor7[arg1][arg2].field_0:
            mem[0] = idx + 1
            mem[32] = sha3(sha3(arg1, arg2), 7) + 1
            require idx < stor7[arg1][arg2].field_0
            mem[(32 * idx) + 320] = stor7[arg1][arg2][1][idx + 1].field_0
            require idx < mem[(32 * stor7[arg1][arg2].field_0) + 320]
            mem[(32 * stor7[arg1][arg2].field_0) + (32 * idx) + 352] = stor7[arg1][arg2][1][idx + 1].field_256
            require idx < mem[(32 * stor7[arg1][arg2].field_0) + 352]
            mem[(32 * stor7[arg1][arg2].field_0) + (32 * idx) + 384] = stor7[arg1][arg2][1][idx + 1].field_512
            s = sha3(idx + 1, sha3(sha3(arg1, arg2), 7) + 1)
            idx = idx + 1
            continue 
        mem[(64 * stor7[arg1][arg2].field_0) + 480] = stor7[arg1][arg2].field_768
        mem[(64 * stor7[arg1][arg2].field_0) + 512] = stor7[arg1][arg2].field_1024
        mem[(64 * stor7[arg1][arg2].field_0) + 384] = 160
        mem[(64 * stor7[arg1][arg2].field_0) + 544] = stor7[arg1][arg2].field_0
        mem[(64 * stor7[arg1][arg2].field_0) + 576 len floor32(stor7[arg1][arg2].field_0)] = mem[320 len floor32(stor7[arg1][arg2].field_0)]
        mem[(64 * stor7[arg1][arg2].field_0) + 416] = (32 * stor7[arg1][arg2].field_0) + 192
        mem[(98 * stor7[arg1][arg2].field_0) + 576] = mem[(32 * stor7[arg1][arg2].field_0) + 320]
        mem[(98 * stor7[arg1][arg2].field_0) + 608 len floor32(mem[(32 * stor7[arg1][arg2].field_0) + 320])] = mem[(32 * stor7[arg1][arg2].field_0) + 352 len floor32(mem[(32 * stor7[arg1][arg2].field_0) + 320])]
        mem[(64 * stor7[arg1][arg2].field_0) + 448] = (32 * mem[(32 * stor7[arg1][arg2].field_0) + 320]) + (32 * stor7[arg1][arg2].field_0) + 224
        mem[(32 * mem[(32 * stor7[arg1][arg2].field_0) + 320]) + (98 * stor7[arg1][arg2].field_0) + 608] = mem[(32 * stor7[arg1][arg2].field_0) + 352]
        _377 = mem[(32 * stor7[arg1][arg2].field_0) + 352]
        mem[(32 * mem[(32 * stor7[arg1][arg2].field_0) + 320]) + (98 * stor7[arg1][arg2].field_0) + 640 len floor32(mem[(32 * stor7[arg1][arg2].field_0) + 352])] = mem[(32 * stor7[arg1][arg2].field_0) + 384 len floor32(mem[(32 * stor7[arg1][arg2].field_0) + 352])]
        return memory
          from (64 * stor7[arg1][arg2].field_0) + 384
           len (32 * _377) + (32 * mem[(32 * stor7[arg1][arg2].field_0) + 320]) + (161 * stor7[arg1][arg2].field_0) + 256
    mem[(64 * stor7[arg1][arg2].field_0) + 352] = stor7[arg1][arg2].field_0
    mem[64] = (98 * stor7[arg1][arg2].field_0) + 384
    s = 0
    idx = 0
    while idx < stor7[arg1][arg2].field_0:
        mem[0] = idx + 1
        mem[32] = sha3(sha3(arg1, arg2), 7) + 1
        require idx < mem[288]
        mem[(32 * idx) + 320] = stor7[arg1][arg2][1][idx + 1].field_0
        require idx < mem[(32 * stor7[arg1][arg2].field_0) + 320]
        mem[(32 * stor7[arg1][arg2].field_0) + (32 * idx) + 352] = stor7[arg1][arg2][1][idx + 1].field_256
        require idx < mem[(64 * stor7[arg1][arg2].field_0) + 352]
        mem[(64 * stor7[arg1][arg2].field_0) + (32 * idx) + 384] = stor7[arg1][arg2][1][idx + 1].field_512
        s = sha3(idx + 1, sha3(sha3(arg1, arg2), 7) + 1)
        idx = idx + 1
        continue 
    _214 = mem[64]
    mem[mem[64] + 96] = stor7[arg1][arg2].field_768
    mem[mem[64] + 128] = stor7[arg1][arg2].field_1024
    mem[mem[64]] = 160
    mem[_214 + 160] = mem[288]
    _216 = mem[288]
    mem[_214 + 192 len floor32(mem[288])] = mem[320 len floor32(mem[288])]
    mem[_214 + 32] = (32 * _216) + 192
    mem[(32 * _216) + _214 + 192] = mem[(32 * stor7[arg1][arg2].field_0) + 320]
    _305 = mem[(32 * stor7[arg1][arg2].field_0) + 320]
    mem[(32 * _216) + _214 + 224 len floor32(mem[(32 * stor7[arg1][arg2].field_0) + 320])] = mem[(32 * stor7[arg1][arg2].field_0) + 352 len floor32(mem[(32 * stor7[arg1][arg2].field_0) + 320])]
    mem[_214 + 64] = (32 * _305) + (32 * _216) + 224
    mem[(32 * _305) + (32 * _216) + _214 + 224] = mem[(64 * stor7[arg1][arg2].field_0) + 352]
    _374 = mem[(64 * stor7[arg1][arg2].field_0) + 352]
    mem[(32 * _305) + (32 * _216) + _214 + 256 len floor32(mem[(64 * stor7[arg1][arg2].field_0) + 352])] = mem[(64 * stor7[arg1][arg2].field_0) + 384 len floor32(mem[(64 * stor7[arg1][arg2].field_0) + 352])]
    return memory
      from mem[64]
       len (32 * _374) + (32 * _305) + (32 * _216) + _214 + -mem[64] + 256
}

function getTxs(uint256 arg1, uint256 arg2) {
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    require arg1 < txCount
    if arg1 + arg2 <= txCount:
        mem[256] = arg2
        if 288 < (32 * arg2) + 288:
            mem[(32 * arg2) + 288] = arg2
            if 32 * arg2 < 64 * arg2:
                mem[(64 * arg2) + 320] = arg2
                mem[(64 * arg2) + 352] = arg2
                mem[(64 * arg2) + 384] = arg2
                s = 0
                s = 0
                s = 0
                idx = arg1
                while arg1 < idx + arg2:
                    require s < mem[256]
                    mem[(32 * s) + 288] = index2txKey[arg1 + 1]
                    mem[0] = stor11[stor9[arg1 + 1]].field_256
                    mem[32] = 5
                    require s < mem[(32 * arg2) + 288]
                    mem[(32 * arg2) + (32 * s) + 320] = index2PolicyId[stor11[stor9[arg1 + 1]].field_256]
                    require s < mem[(64 * arg2) + 320]
                    mem[(64 * arg2) + (32 * s) + 352] = stor11[stor9[arg1 + 1]].field_512
                    require s < mem[(64 * arg2) + 352]
                    mem[(64 * arg2) + (32 * s) + 384] = stor11[stor9[arg1 + 1]].field_768
                    require stor11[stor9[arg1 + 1]].field_0 <= 2
                    require s < mem[(64 * arg2) + 384]
                    mem[(64 * arg2) + (32 * s) + 416] = stor11[stor9[arg1 + 1]].field_0
                    s = sha3(index2txKey[arg1 + 1], 11)
                    s = index2txKey[arg1 + 1]
                    s = s + 1
                    idx = idx + 1
                    continue 
                mem[(98 * arg2) + 416] = 160
                mem[(98 * arg2) + 576] = mem[256]
                mem[(98 * arg2) + 608 len floor32(mem[256])] = mem[288 len floor32(mem[256])]
                mem[(98 * arg2) + 448] = (32 * mem[256]) + 192
                mem[(32 * mem[256]) + (98 * arg2) + 608] = mem[(32 * arg2) + 288]
                mem[(32 * mem[256]) + (98 * arg2) + 640 len floor32(mem[(32 * arg2) + 288])] = mem[(32 * arg2) + 320 len floor32(mem[(32 * arg2) + 288])]
                mem[(98 * arg2) + 480] = (32 * mem[(32 * arg2) + 288]) + (32 * mem[256]) + 224
                mem[(32 * mem[(32 * arg2) + 288]) + (32 * mem[256]) + (98 * arg2) + 640] = mem[(64 * arg2) + 320]
                mem[(32 * mem[(32 * arg2) + 288]) + (32 * mem[256]) + (98 * arg2) + 672 len floor32(mem[(64 * arg2) + 320])] = mem[(64 * arg2) + 352 len floor32(mem[(64 * arg2) + 320])]
                mem[(98 * arg2) + 512] = (32 * mem[(64 * arg2) + 320]) + (32 * mem[(32 * arg2) + 288]) + (32 * mem[256]) + 256
                mem[(32 * mem[(64 * arg2) + 320]) + (32 * mem[(32 * arg2) + 288]) + (32 * mem[256]) + (98 * arg2) + 672] = mem[(64 * arg2) + 352]
                mem[(32 * mem[(64 * arg2) + 320]) + (32 * mem[(32 * arg2) + 288]) + (32 * mem[256]) + (98 * arg2) + 704 len floor32(mem[(64 * arg2) + 352])] = mem[(64 * arg2) + 384 len floor32(mem[(64 * arg2) + 352])]
                mem[(98 * arg2) + 544] = (32 * mem[(64 * arg2) + 352]) + (32 * mem[(64 * arg2) + 320]) + (32 * mem[(32 * arg2) + 288]) + (32 * mem[256]) + 288
                mem[(32 * mem[(64 * arg2) + 352]) + (32 * mem[(64 * arg2) + 320]) + (32 * mem[(32 * arg2) + 288]) + (32 * mem[256]) + (98 * arg2) + 704] = mem[(64 * arg2) + 384]
                if 0 < 32 * mem[(64 * arg2) + 384]:
                    mem[(32 * mem[(64 * arg2) + 352]) + (32 * mem[(64 * arg2) + 320]) + (32 * mem[(32 * arg2) + 288]) + (32 * mem[256]) + (98 * arg2) + 736] = mem[(64 * arg2) + 416]
                    mem[(32 * mem[(64 * arg2) + 352]) + (32 * mem[(64 * arg2) + 320]) + (32 * mem[(32 * arg2) + 288]) + (32 * mem[256]) + (98 * arg2) + 768 len floor32((32 * mem[(64 * arg2) + 384]) - 1)] = mem[(64 * arg2) + 448 len floor32((32 * mem[(64 * arg2) + 384]) - 1)]
                return 160, 
                       mem[(98 * arg2) + 448 len 96],
                       (32 * mem[(64 * arg2) + 352]) + (32 * mem[(64 * arg2) + 320]) + (32 * mem[(32 * arg2) + 288]) + (32 * mem[256]) + 288,
                       mem[(98 * arg2) + 576 len (32 * mem[(64 * arg2) + 384]) + (32 * mem[(64 * arg2) + 352]) + (32 * mem[(64 * arg2) + 320]) + (32 * mem[(32 * arg2) + 288]) + (32 * mem[256]) + 160]
            mem[(32 * arg2) + 320] = arg2
            if 32 * arg2 < 64 * arg2:
                mem[(64 * arg2) + 352] = arg2
                _msize = max((64 * arg2) + 32, 32 * arg2)
                mem[_msize + 352] = arg2
                s = 0
                s = 0
                s = 0
                idx = arg1
                while arg1 < idx + arg2:
                    require s < mem[256]
                    mem[(32 * s) + 288] = index2txKey[arg1 + 1]
                    mem[0] = stor11[stor9[arg1 + 1]].field_256
                    mem[32] = 5
                    require s < mem[(32 * arg2) + 288]
                    mem[(32 * arg2) + (32 * s) + 320] = index2PolicyId[stor11[stor9[arg1 + 1]].field_256]
                    require s < mem[(32 * arg2) + 320]
                    mem[(32 * arg2) + (32 * s) + 352] = stor11[stor9[arg1 + 1]].field_512
                    require s < mem[(64 * arg2) + 352]
                    mem[(64 * arg2) + (32 * s) + 384] = stor11[stor9[arg1 + 1]].field_768
                    require stor11[stor9[arg1 + 1]].field_0 <= 2
                    require s < mem[(64 * arg2) + 384]
                    mem[(64 * arg2) + (32 * s) + 416] = stor11[stor9[arg1 + 1]].field_0
                    s = sha3(index2txKey[arg1 + 1], 11)
                    s = index2txKey[arg1 + 1]
                    s = s + 1
                    idx = idx + 1
                    continue 
                mem[(98 * arg2) + 416] = 160
                mem[(98 * arg2) + 576] = mem[256]
                mem[(98 * arg2) + 608 len floor32(mem[256])] = mem[288 len floor32(mem[256])]
                mem[(98 * arg2) + 448] = (32 * mem[256]) + 192
                mem[(32 * mem[256]) + (98 * arg2) + 608] = mem[(32 * arg2) + 288]
                mem[(32 * mem[256]) + (98 * arg2) + 640 len floor32(mem[(32 * arg2) + 288])] = mem[(32 * arg2) + 320 len floor32(mem[(32 * arg2) + 288])]
                mem[(98 * arg2) + 480] = (32 * mem[(32 * arg2) + 288]) + (32 * mem[256]) + 224
                mem[(32 * mem[(32 * arg2) + 288]) + (32 * mem[256]) + (98 * arg2) + 640] = mem[(32 * arg2) + 320]
                mem[(32 * mem[(32 * arg2) + 288]) + (32 * mem[256]) + (98 * arg2) + 672 len floor32(mem[(32 * arg2) + 320])] = mem[(32 * arg2) + 352 len floor32(mem[(32 * arg2) + 320])]
                mem[(98 * arg2) + 512] = (32 * mem[(32 * arg2) + 320]) + (32 * mem[(32 * arg2) + 288]) + (32 * mem[256]) + 256
                mem[(32 * mem[(32 * arg2) + 320]) + (32 * mem[(32 * arg2) + 288]) + (32 * mem[256]) + (98 * arg2) + 672] = mem[(64 * arg2) + 352]
                mem[(32 * mem[(32 * arg2) + 320]) + (32 * mem[(32 * arg2) + 288]) + (32 * mem[256]) + (98 * arg2) + 704 len floor32(mem[(64 * arg2) + 352])] = mem[(64 * arg2) + 384 len floor32(mem[(64 * arg2) + 352])]
                mem[(98 * arg2) + 544] = (32 * mem[(64 * arg2) + 352]) + (32 * mem[(32 * arg2) + 320]) + (32 * mem[(32 * arg2) + 288]) + (32 * mem[256]) + 288
                mem[(32 * mem[(64 * arg2) + 352]) + (32 * mem[(32 * arg2) + 320]) + (32 * mem[(32 * arg2) + 288]) + (32 * mem[256]) + (98 * arg2) + 704] = mem[(64 * arg2) + 384]
                if 0 < 32 * mem[(64 * arg2) + 384]:
                    mem[(32 * mem[(64 * arg2) + 352]) + (32 * mem[(32 * arg2) + 320]) + (32 * mem[(32 * arg2) + 288]) + (32 * mem[256]) + (98 * arg2) + 736] = mem[(64 * arg2) + 416]
                    mem[(32 * mem[(64 * arg2) + 352]) + (32 * mem[(32 * arg2) + 320]) + (32 * mem[(32 * arg2) + 288]) + (32 * mem[256]) + (98 * arg2) + 768 len floor32((32 * mem[(64 * arg2) + 384]) - 1)] = mem[(64 * arg2) + 448 len floor32((32 * mem[(64 * arg2) + 384]) - 1)]
                return 160, 
                       mem[(98 * arg2) + 448 len 96],
                       (32 * mem[(64 * arg2) + 352]) + (32 * mem[(32 * arg2) + 320]) + (32 * mem[(32 * arg2) + 288]) + (32 * mem[256]) + 288,
                       mem[(98 * arg2) + 576 len (32 * mem[(64 * arg2) + 384]) + (32 * mem[(64 * arg2) + 352]) + (32 * mem[(32 * arg2) + 320]) + (32 * mem[(32 * arg2) + 288]) + (32 * mem[256]) + 160]
            mem[(32 * arg2) + 352] = arg2
            if 32 * arg2 < 64 * arg2:
                mem[(64 * arg2) + 384] = arg2
                s = 0
                s = 0
                s = 0
                idx = arg1
                while arg1 < idx + arg2:
                    require s < mem[256]
                    mem[(32 * s) + 288] = index2txKey[arg1 + 1]
                    mem[0] = stor11[stor9[arg1 + 1]].field_256
                    mem[32] = 5
                    require s < mem[(32 * arg2) + 288]
                    mem[(32 * arg2) + (32 * s) + 320] = index2PolicyId[stor11[stor9[arg1 + 1]].field_256]
                    require s < mem[(32 * arg2) + 320]
                    mem[(32 * arg2) + (32 * s) + 352] = stor11[stor9[arg1 + 1]].field_512
                    require s < mem[(32 * arg2) + 352]
                    mem[(32 * arg2) + (32 * s) + 384] = stor11[stor9[arg1 + 1]].field_768
                    require stor11[stor9[arg1 + 1]].field_0 <= 2
                    require s < mem[(64 * arg2) + 384]
                    mem[(64 * arg2) + (32 * s) + 416] = stor11[stor9[arg1 + 1]].field_0
                    s = sha3(index2txKey[arg1 + 1], 11)
                    s = index2txKey[arg1 + 1]
                    s = s + 1
                    idx = idx + 1
                    continue 
                mem[(98 * arg2) + 416] = 160
                mem[(98 * arg2) + 576] = mem[256]
                mem[(98 * arg2) + 608 len floor32(mem[256])] = mem[288 len floor32(mem[256])]
                mem[(98 * arg2) + 448] = (32 * mem[256]) + 192
                mem[(32 * mem[256]) + (98 * arg2) + 608] = mem[(32 * arg2) + 288]
                mem[(32 * mem[256]) + (98 * arg2) + 640 len floor32(mem[(32 * arg2) + 288])] = mem[(32 * arg2) + 320 len floor32(mem[(32 * arg2) + 288])]
                mem[(98 * arg2) + 480] = (32 * mem[(32 * arg2) + 288]) + (32 * mem[256]) + 224
                mem[(32 * mem[(32 * arg2) + 288]) + (32 * mem[256]) + (98 * arg2) + 640] = mem[(32 * arg2) + 320]
                mem[(32 * mem[(32 * arg2) + 288]) + (32 * mem[256]) + (98 * arg2) + 672 len floor32(mem[(32 * arg2) + 320])] = mem[(32 * arg2) + 352 len floor32(mem[(32 * arg2) + 320])]
                mem[(98 * arg2) + 512] = (32 * mem[(32 * arg2) + 320]) + (32 * mem[(32 * arg2) + 288]) + (32 * mem[256]) + 256
                mem[(32 * mem[(32 * arg2) + 320]) + (32 * mem[(32 * arg2) + 288]) + (32 * mem[256]) + (98 * arg2) + 672] = mem[(32 * arg2) + 352]
                mem[(32 * mem[(32 * arg2) + 320]) + (32 * mem[(32 * arg2) + 288]) + (32 * mem[256]) + (98 * arg2) + 704 len floor32(mem[(32 * arg2) + 352])] = mem[(32 * arg2) + 384 len floor32(mem[(32 * arg2) + 352])]
                mem[(98 * arg2) + 544] = (32 * mem[(32 * arg2) + 352]) + (32 * mem[(32 * arg2) + 320]) + (32 * mem[(32 * arg2) + 288]) + (32 * mem[256]) + 288
                mem[(32 * mem[(32 * arg2) + 352]) + (32 * mem[(32 * arg2) + 320]) + (32 * mem[(32 * arg2) + 288]) + (32 * mem[256]) + (98 * arg2) + 704] = mem[(64 * arg2) + 384]
                if 0 < 32 * mem[(64 * arg2) + 384]:
                    mem[(32 * mem[(32 * arg2) + 352]) + (32 * mem[(32 * arg2) + 320]) + (32 * mem[(32 * arg2) + 288]) + (32 * mem[256]) + (98 * arg2) + 736] = mem[(64 * arg2) + 416]
                    mem[(32 * mem[(32 * arg2) + 352]) + (32 * mem[(32 * arg2) + 320]) + (32 * mem[(32 * arg2) + 288]) + (32 * mem[256]) + (98 * arg2) + 768 len floor32((32 * mem[(64 * arg2) + 384]) - 1)] = mem[(64 * arg2) + 448 len floor32((32 * mem[(64 * arg2) + 384]) - 1)]
                return 160, 
                       mem[(98 * arg2) + 448 len (32 * mem[(64 * arg2) + 384]) + (32 * mem[(32 * arg2) + 352]) + (32 * mem[(32 * arg2) + 320]) + (32 * mem[(32 * arg2) + 288]) + (32 * mem[256]) + 288]
            mem[(32 * arg2) + 384] = arg2
            s = 0
            s = 0
            s = 0
            idx = arg1
            while arg1 < idx + arg2:
                require s < mem[256]
                mem[(32 * s) + 288] = index2txKey[arg1 + 1]
                mem[0] = stor11[stor9[arg1 + 1]].field_256
                mem[32] = 5
                require s < mem[(32 * arg2) + 288]
                mem[(32 * arg2) + (32 * s) + 320] = index2PolicyId[stor11[stor9[arg1 + 1]].field_256]
                require s < mem[(32 * arg2) + 320]
                mem[(32 * arg2) + (32 * s) + 352] = stor11[stor9[arg1 + 1]].field_512
                require s < mem[(32 * arg2) + 352]
                mem[(32 * arg2) + (32 * s) + 384] = stor11[stor9[arg1 + 1]].field_768
                require stor11[stor9[arg1 + 1]].field_0 <= 2
                require s < mem[(32 * arg2) + 384]
                mem[(32 * arg2) + (32 * s) + 416] = stor11[stor9[arg1 + 1]].field_0
                s = sha3(index2txKey[arg1 + 1], 11)
                s = index2txKey[arg1 + 1]
                s = s + 1
                idx = idx + 1
                continue 
            mem[(64 * arg2) + 416] = 160
            mem[(64 * arg2) + 576] = mem[256]
            mem[(64 * arg2) + 608 len floor32(mem[256])] = mem[288 len floor32(mem[256])]
            mem[(64 * arg2) + 448] = (32 * mem[256]) + 192
            mem[(32 * mem[256]) + (64 * arg2) + 608] = mem[(32 * arg2) + 288]
            mem[(32 * mem[256]) + (64 * arg2) + 640 len floor32(mem[(32 * arg2) + 288])] = mem[(32 * arg2) + 320 len floor32(mem[(32 * arg2) + 288])]
            mem[(64 * arg2) + 480] = (32 * mem[(32 * arg2) + 288]) + (32 * mem[256]) + 224
            mem[(32 * mem[(32 * arg2) + 288]) + (32 * mem[256]) + (64 * arg2) + 640] = mem[(32 * arg2) + 320]
            mem[(32 * mem[(32 * arg2) + 288]) + (32 * mem[256]) + (64 * arg2) + 672 len floor32(mem[(32 * arg2) + 320])] = mem[(32 * arg2) + 352 len floor32(mem[(32 * arg2) + 320])]
            mem[(64 * arg2) + 512] = (32 * mem[(32 * arg2) + 320]) + (32 * mem[(32 * arg2) + 288]) + (32 * mem[256]) + 256
            mem[(32 * mem[(32 * arg2) + 320]) + (32 * mem[(32 * arg2) + 288]) + (32 * mem[256]) + (64 * arg2) + 672] = mem[(32 * arg2) + 352]
            mem[(32 * mem[(32 * arg2) + 320]) + (32 * mem[(32 * arg2) + 288]) + (32 * mem[256]) + (64 * arg2) + 704 len floor32(mem[(32 * arg2) + 352])] = mem[(32 * arg2) + 384 len floor32(mem[(32 * arg2) + 352])]
            mem[(64 * arg2) + 544] = (32 * mem[(32 * arg2) + 352]) + (32 * mem[(32 * arg2) + 320]) + (32 * mem[(32 * arg2) + 288]) + (32 * mem[256]) + 288
            mem[(32 * mem[(32 * arg2) + 352]) + (32 * mem[(32 * arg2) + 320]) + (32 * mem[(32 * arg2) + 288]) + (32 * mem[256]) + (64 * arg2) + 704] = mem[(32 * arg2) + 384]
            if 0 < 32 * mem[(32 * arg2) + 384]:
                mem[(32 * mem[(32 * arg2) + 352]) + (32 * mem[(32 * arg2) + 320]) + (32 * mem[(32 * arg2) + 288]) + (32 * mem[256]) + (64 * arg2) + 736] = mem[(32 * arg2) + 416]
                mem[(32 * mem[(32 * arg2) + 352]) + (32 * mem[(32 * arg2) + 320]) + (32 * mem[(32 * arg2) + 288]) + (32 * mem[256]) + (64 * arg2) + 768 len floor32((32 * mem[(32 * arg2) + 384]) - 1)] = mem[(32 * arg2) + 448 len floor32((32 * mem[(32 * arg2) + 384]) - 1)]
            return 160, 
                   mem[(64 * arg2) + 448 len (32 * mem[(32 * arg2) + 384]) + (32 * mem[(32 * arg2) + 352]) + (32 * mem[(32 * arg2) + 320]) + (32 * mem[(32 * arg2) + 288]) + (32 * mem[256]) + 288]
        mem[288] = arg2
        if 320 < (32 * arg2) + 320:
            mem[(32 * arg2) + 320] = arg2
            if 32 * arg2 < 64 * arg2:
                mem[(64 * arg2) + 352] = arg2
                mem[(64 * arg2) + 384] = arg2
                s = 0
                s = 0
                s = 0
                idx = arg1
                while arg1 < idx + arg2:
                    require s < mem[256]
                    mem[(32 * s) + 288] = index2txKey[arg1 + 1]
                    mem[0] = stor11[stor9[arg1 + 1]].field_256
                    mem[32] = 5
                    require s < mem[288]
                    mem[(32 * s) + 320] = index2PolicyId[stor11[stor9[arg1 + 1]].field_256]
                    require s < mem[(32 * arg2) + 320]
                    mem[(32 * arg2) + (32 * s) + 352] = stor11[stor9[arg1 + 1]].field_512
                    require s < mem[(64 * arg2) + 352]
                    mem[(64 * arg2) + (32 * s) + 384] = stor11[stor9[arg1 + 1]].field_768
                    require stor11[stor9[arg1 + 1]].field_0 <= 2
                    require s < mem[(64 * arg2) + 384]
                    mem[(64 * arg2) + (32 * s) + 416] = stor11[stor9[arg1 + 1]].field_0
                    s = sha3(index2txKey[arg1 + 1], 11)
                    s = index2txKey[arg1 + 1]
                    s = s + 1
                    idx = idx + 1
                    continue 
                mem[(98 * arg2) + 416] = 160
                mem[(98 * arg2) + 576] = mem[256]
                mem[(98 * arg2) + 608 len floor32(mem[256])] = mem[288 len floor32(mem[256])]
                mem[(98 * arg2) + 448] = (32 * mem[256]) + 192
                mem[(32 * mem[256]) + (98 * arg2) + 608] = mem[288]
                mem[(32 * mem[256]) + (98 * arg2) + 640 len floor32(mem[288])] = mem[320 len floor32(mem[288])]
                mem[(98 * arg2) + 480] = (32 * mem[288]) + (32 * mem[256]) + 224
                mem[(32 * mem[288]) + (32 * mem[256]) + (98 * arg2) + 640] = mem[(32 * arg2) + 320]
                mem[(32 * mem[288]) + (32 * mem[256]) + (98 * arg2) + 672 len floor32(mem[(32 * arg2) + 320])] = mem[(32 * arg2) + 352 len floor32(mem[(32 * arg2) + 320])]
                mem[(98 * arg2) + 512] = (32 * mem[(32 * arg2) + 320]) + (32 * mem[288]) + (32 * mem[256]) + 256
                mem[(32 * mem[(32 * arg2) + 320]) + (32 * mem[288]) + (32 * mem[256]) + (98 * arg2) + 672] = mem[(64 * arg2) + 352]
                mem[(32 * mem[(32 * arg2) + 320]) + (32 * mem[288]) + (32 * mem[256]) + (98 * arg2) + 704 len floor32(mem[(64 * arg2) + 352])] = mem[(64 * arg2) + 384 len floor32(mem[(64 * arg2) + 352])]
                mem[(98 * arg2) + 544] = (32 * mem[(64 * arg2) + 352]) + (32 * mem[(32 * arg2) + 320]) + (32 * mem[288]) + (32 * mem[256]) + 288
                mem[(32 * mem[(64 * arg2) + 352]) + (32 * mem[(32 * arg2) + 320]) + (32 * mem[288]) + (32 * mem[256]) + (98 * arg2) + 704] = mem[(64 * arg2) + 384]
                if 0 < 32 * mem[(64 * arg2) + 384]:
                    mem[(32 * mem[(64 * arg2) + 352]) + (32 * mem[(32 * arg2) + 320]) + (32 * mem[288]) + (32 * mem[256]) + (98 * arg2) + 736] = mem[(64 * arg2) + 416]
                    mem[(32 * mem[(64 * arg2) + 352]) + (32 * mem[(32 * arg2) + 320]) + (32 * mem[288]) + (32 * mem[256]) + (98 * arg2) + 768 len floor32((32 * mem[(64 * arg2) + 384]) - 1)] = mem[(64 * arg2) + 448 len floor32((32 * mem[(64 * arg2) + 384]) - 1)]
                return Array(len=mem[256], data=mem[(98 * arg2) + 608 len (32 * mem[288]) + (32 * mem[256]) + 32], mem[(32 * arg2) + 320], mem[(98 * arg2) + (32 * mem[288]) + (32 * mem[256]) + 672 len (32 * mem[(64 * arg2) + 384]) + (32 * mem[(64 * arg2) + 352]) + (32 * mem[(32 * arg2) + 320]) + 64]), 
                       (32 * mem[256]) + 192,
                       (32 * mem[288]) + (32 * mem[256]) + 224,
                       (32 * mem[(32 * arg2) + 320]) + (32 * mem[288]) + (32 * mem[256]) + 256,
                       (32 * mem[(64 * arg2) + 352]) + (32 * mem[(32 * arg2) + 320]) + (32 * mem[288]) + (32 * mem[256]) + 288
            mem[(32 * arg2) + 352] = arg2
            if 32 * arg2 < 64 * arg2:
                mem[(64 * arg2) + 384] = arg2
                s = 0
                s = 0
                s = 0
                idx = arg1
                while arg1 < idx + arg2:
                    require s < mem[256]
                    mem[(32 * s) + 288] = index2txKey[arg1 + 1]
                    mem[0] = stor11[stor9[arg1 + 1]].field_256
                    mem[32] = 5
                    require s < mem[288]
                    mem[(32 * s) + 320] = index2PolicyId[stor11[stor9[arg1 + 1]].field_256]
                    require s < mem[(32 * arg2) + 320]
                    mem[(32 * arg2) + (32 * s) + 352] = stor11[stor9[arg1 + 1]].field_512
                    require s < mem[(32 * arg2) + 352]
                    mem[(32 * arg2) + (32 * s) + 384] = stor11[stor9[arg1 + 1]].field_768
                    require stor11[stor9[arg1 + 1]].field_0 <= 2
                    require s < mem[(64 * arg2) + 384]
                    mem[(64 * arg2) + (32 * s) + 416] = stor11[stor9[arg1 + 1]].field_0
                    s = sha3(index2txKey[arg1 + 1], 11)
                    s = index2txKey[arg1 + 1]
                    s = s + 1
                    idx = idx + 1
                    continue 
                mem[(98 * arg2) + 416] = 160
                mem[(98 * arg2) + 576] = mem[256]
                mem[(98 * arg2) + 608 len floor32(mem[256])] = mem[288 len floor32(mem[256])]
                mem[(98 * arg2) + 448] = (32 * mem[256]) + 192
                mem[(32 * mem[256]) + (98 * arg2) + 608] = mem[288]
                mem[(32 * mem[256]) + (98 * arg2) + 640 len floor32(mem[288])] = mem[320 len floor32(mem[288])]
                mem[(98 * arg2) + 480] = (32 * mem[288]) + (32 * mem[256]) + 224
                mem[(32 * mem[288]) + (32 * mem[256]) + (98 * arg2) + 640] = mem[(32 * arg2) + 320]
                mem[(32 * mem[288]) + (32 * mem[256]) + (98 * arg2) + 672 len floor32(mem[(32 * arg2) + 320])] = mem[(32 * arg2) + 352 len floor32(mem[(32 * arg2) + 320])]
                mem[(98 * arg2) + 512] = (32 * mem[(32 * arg2) + 320]) + (32 * mem[288]) + (32 * mem[256]) + 256
                mem[(32 * mem[(32 * arg2) + 320]) + (32 * mem[288]) + (32 * mem[256]) + (98 * arg2) + 672] = mem[(32 * arg2) + 352]
                mem[(32 * mem[(32 * arg2) + 320]) + (32 * mem[288]) + (32 * mem[256]) + (98 * arg2) + 704 len floor32(mem[(32 * arg2) + 352])] = mem[(32 * arg2) + 384 len floor32(mem[(32 * arg2) + 352])]
                mem[(98 * arg2) + 544] = (32 * mem[(32 * arg2) + 352]) + (32 * mem[(32 * arg2) + 320]) + (32 * mem[288]) + (32 * mem[256]) + 288
                mem[(32 * mem[(32 * arg2) + 352]) + (32 * mem[(32 * arg2) + 320]) + (32 * mem[288]) + (32 * mem[256]) + (98 * arg2) + 704] = mem[(64 * arg2) + 384]
                if 0 < 32 * mem[(64 * arg2) + 384]:
                    mem[(32 * mem[(32 * arg2) + 352]) + (32 * mem[(32 * arg2) + 320]) + (32 * mem[288]) + (32 * mem[256]) + (98 * arg2) + 736] = mem[(64 * arg2) + 416]
                    mem[(32 * mem[(32 * arg2) + 352]) + (32 * mem[(32 * arg2) + 320]) + (32 * mem[288]) + (32 * mem[256]) + (98 * arg2) + 768 len floor32((32 * mem[(64 * arg2) + 384]) - 1)] = mem[(64 * arg2) + 448 len floor32((32 * mem[(64 * arg2) + 384]) - 1)]
                return 160, 
                       mem[(98 * arg2) + 448 len (32 * mem[(64 * arg2) + 384]) + (32 * mem[(32 * arg2) + 352]) + (32 * mem[(32 * arg2) + 320]) + (32 * mem[288]) + (32 * mem[256]) + 288]
            mem[(32 * arg2) + 384] = arg2
            s = 0
            s = 0
            s = 0
            idx = arg1
            while arg1 < idx + arg2:
                require s < mem[256]
                mem[(32 * s) + 288] = index2txKey[arg1 + 1]
                mem[0] = stor11[stor9[arg1 + 1]].field_256
                mem[32] = 5
                require s < mem[288]
                mem[(32 * s) + 320] = index2PolicyId[stor11[stor9[arg1 + 1]].field_256]
                require s < mem[(32 * arg2) + 320]
                mem[(32 * arg2) + (32 * s) + 352] = stor11[stor9[arg1 + 1]].field_512
                require s < mem[(32 * arg2) + 352]
                mem[(32 * arg2) + (32 * s) + 384] = stor11[stor9[arg1 + 1]].field_768
                require stor11[stor9[arg1 + 1]].field_0 <= 2
                require s < mem[(32 * arg2) + 384]
                mem[(32 * arg2) + (32 * s) + 416] = stor11[stor9[arg1 + 1]].field_0
                s = sha3(index2txKey[arg1 + 1], 11)
                s = index2txKey[arg1 + 1]
                s = s + 1
                idx = idx + 1
                continue 
            mem[(64 * arg2) + 416] = 160
            mem[(64 * arg2) + 576] = mem[256]
            mem[(64 * arg2) + 608 len floor32(mem[256])] = mem[288 len floor32(mem[256])]
            mem[(64 * arg2) + 448] = (32 * mem[256]) + 192
            mem[(32 * mem[256]) + (64 * arg2) + 608] = mem[288]
            mem[(32 * mem[256]) + (64 * arg2) + 640 len floor32(mem[288])] = mem[320 len floor32(mem[288])]
            mem[(64 * arg2) + 480] = (32 * mem[288]) + (32 * mem[256]) + 224
            mem[(32 * mem[288]) + (32 * mem[256]) + (64 * arg2) + 640] = mem[(32 * arg2) + 320]
            mem[(32 * mem[288]) + (32 * mem[256]) + (64 * arg2) + 672 len floor32(mem[(32 * arg2) + 320])] = mem[(32 * arg2) + 352 len floor32(mem[(32 * arg2) + 320])]
            mem[(64 * arg2) + 512] = (32 * mem[(32 * arg2) + 320]) + (32 * mem[288]) + (32 * mem[256]) + 256
            mem[(32 * mem[(32 * arg2) + 320]) + (32 * mem[288]) + (32 * mem[256]) + (64 * arg2) + 672] = mem[(32 * arg2) + 352]
            mem[(32 * mem[(32 * arg2) + 320]) + (32 * mem[288]) + (32 * mem[256]) + (64 * arg2) + 704 len floor32(mem[(32 * arg2) + 352])] = mem[(32 * arg2) + 384 len floor32(mem[(32 * arg2) + 352])]
            mem[(64 * arg2) + 544] = (32 * mem[(32 * arg2) + 352]) + (32 * mem[(32 * arg2) + 320]) + (32 * mem[288]) + (32 * mem[256]) + 288
            mem[(32 * mem[(32 * arg2) + 352]) + (32 * mem[(32 * arg2) + 320]) + (32 * mem[288]) + (32 * mem[256]) + (64 * arg2) + 704] = mem[(32 * arg2) + 384]
            if 0 < 32 * mem[(32 * arg2) + 384]:
                mem[(32 * mem[(32 * arg2) + 352]) + (32 * mem[(32 * arg2) + 320]) + (32 * mem[288]) + (32 * mem[256]) + (64 * arg2) + 736] = mem[(32 * arg2) + 416]
                mem[(32 * mem[(32 * arg2) + 352]) + (32 * mem[(32 * arg2) + 320]) + (32 * mem[288]) + (32 * mem[256]) + (64 * arg2) + 768 len floor32((32 * mem[(32 * arg2) + 384]) - 1)] = mem[(32 * arg2) + 448 len floor32((32 * mem[(32 * arg2) + 384]) - 1)]
            return 160, 
                   mem[(64 * arg2) + 448 len (32 * mem[(32 * arg2) + 384]) + (32 * mem[(32 * arg2) + 352]) + (32 * mem[(32 * arg2) + 320]) + (32 * mem[288]) + (32 * mem[256]) + 288]
        mem[320] = arg2
        if 352 < (32 * arg2) + 352:
            mem[(32 * arg2) + 352] = arg2
            if 32 * arg2 < 64 * arg2:
                mem[(64 * arg2) + 384] = arg2
                s = 0
                s = 0
                s = 0
                idx = arg1
                while arg1 < idx + arg2:
                    require s < mem[256]
                    mem[(32 * s) + 288] = index2txKey[arg1 + 1]
                    mem[0] = stor11[stor9[arg1 + 1]].field_256
                    mem[32] = 5
                    require s < mem[288]
                    mem[(32 * s) + 320] = index2PolicyId[stor11[stor9[arg1 + 1]].field_256]
                    require s < mem[320]
                    mem[(32 * s) + 352] = stor11[stor9[arg1 + 1]].field_512
                    require s < mem[(32 * arg2) + 352]
                    mem[(32 * arg2) + (32 * s) + 384] = stor11[stor9[arg1 + 1]].field_768
                    require stor11[stor9[arg1 + 1]].field_0 <= 2
                    require s < mem[(64 * arg2) + 384]
                    mem[(64 * arg2) + (32 * s) + 416] = stor11[stor9[arg1 + 1]].field_0
                    s = sha3(index2txKey[arg1 + 1], 11)
                    s = index2txKey[arg1 + 1]
                    s = s + 1
                    idx = idx + 1
                    continue 
                mem[(98 * arg2) + 416] = 160
                mem[(98 * arg2) + 576] = mem[256]
                mem[(98 * arg2) + 608 len floor32(mem[256])] = mem[288 len floor32(mem[256])]
                mem[(98 * arg2) + 448] = (32 * mem[256]) + 192
                mem[(32 * mem[256]) + (98 * arg2) + 608] = mem[288]
                mem[(32 * mem[256]) + (98 * arg2) + 640 len floor32(mem[288])] = mem[320 len floor32(mem[288])]
                mem[(98 * arg2) + 480] = (32 * mem[288]) + (32 * mem[256]) + 224
                mem[(32 * mem[288]) + (32 * mem[256]) + (98 * arg2) + 640] = mem[320]
                mem[(32 * mem[288]) + (32 * mem[256]) + (98 * arg2) + 672 len floor32(mem[320])] = mem[352 len floor32(mem[320])]
                mem[(98 * arg2) + 512] = (32 * mem[320]) + (32 * mem[288]) + (32 * mem[256]) + 256
                mem[(32 * mem[320]) + (32 * mem[288]) + (32 * mem[256]) + (98 * arg2) + 672] = mem[(32 * arg2) + 352]
                mem[(32 * mem[320]) + (32 * mem[288]) + (32 * mem[256]) + (98 * arg2) + 704 len floor32(mem[(32 * arg2) + 352])] = mem[(32 * arg2) + 384 len floor32(mem[(32 * arg2) + 352])]
                mem[(98 * arg2) + 544] = (32 * mem[(32 * arg2) + 352]) + (32 * mem[320]) + (32 * mem[288]) + (32 * mem[256]) + 288
                mem[(32 * mem[(32 * arg2) + 352]) + (32 * mem[320]) + (32 * mem[288]) + (32 * mem[256]) + (98 * arg2) + 704] = mem[(64 * arg2) + 384]
                if 0 < 32 * mem[(64 * arg2) + 384]:
                    mem[(32 * mem[(32 * arg2) + 352]) + (32 * mem[320]) + (32 * mem[288]) + (32 * mem[256]) + (98 * arg2) + 736] = mem[(64 * arg2) + 416]
                    mem[(32 * mem[(32 * arg2) + 352]) + (32 * mem[320]) + (32 * mem[288]) + (32 * mem[256]) + (98 * arg2) + 768 len floor32((32 * mem[(64 * arg2) + 384]) - 1)] = mem[(64 * arg2) + 448 len floor32((32 * mem[(64 * arg2) + 384]) - 1)]
                return 160, 
                       mem[(98 * arg2) + 448 len (32 * mem[(64 * arg2) + 384]) + (32 * mem[(32 * arg2) + 352]) + (32 * mem[320]) + (32 * mem[288]) + (32 * mem[256]) + 288]
            mem[(32 * arg2) + 384] = arg2
            s = 0
            s = 0
            s = 0
            idx = arg1
            while arg1 < idx + arg2:
                require s < mem[256]
                mem[(32 * s) + 288] = index2txKey[arg1 + 1]
                mem[0] = stor11[stor9[arg1 + 1]].field_256
                mem[32] = 5
                require s < mem[288]
                mem[(32 * s) + 320] = index2PolicyId[stor11[stor9[arg1 + 1]].field_256]
                require s < mem[320]
                mem[(32 * s) + 352] = stor11[stor9[arg1 + 1]].field_512
                require s < mem[(32 * arg2) + 352]
                mem[(32 * arg2) + (32 * s) + 384] = stor11[stor9[arg1 + 1]].field_768
                require stor11[stor9[arg1 + 1]].field_0 <= 2
                require s < mem[(32 * arg2) + 384]
                mem[(32 * arg2) + (32 * s) + 416] = stor11[stor9[arg1 + 1]].field_0
                s = sha3(index2txKey[arg1 + 1], 11)
                s = index2txKey[arg1 + 1]
                s = s + 1
                idx = idx + 1
                continue 
            mem[(64 * arg2) + 416] = 160
            mem[(64 * arg2) + 576] = mem[256]
            mem[(64 * arg2) + 608 len floor32(mem[256])] = mem[288 len floor32(mem[256])]
            mem[(64 * arg2) + 448] = (32 * mem[256]) + 192
            mem[(32 * mem[256]) + (64 * arg2) + 608] = mem[288]
            mem[(32 * mem[256]) + (64 * arg2) + 640 len floor32(mem[288])] = mem[320 len floor32(mem[288])]
            mem[(64 * arg2) + 480] = (32 * mem[288]) + (32 * mem[256]) + 224
            mem[(32 * mem[288]) + (32 * mem[256]) + (64 * arg2) + 640] = mem[320]
            mem[(32 * mem[288]) + (32 * mem[256]) + (64 * arg2) + 672 len floor32(mem[320])] = mem[352 len floor32(mem[320])]
            mem[(64 * arg2) + 512] = (32 * mem[320]) + (32 * mem[288]) + (32 * mem[256]) + 256
            mem[(32 * mem[320]) + (32 * mem[288]) + (32 * mem[256]) + (64 * arg2) + 672] = mem[(32 * arg2) + 352]
            mem[(32 * mem[320]) + (32 * mem[288]) + (32 * mem[256]) + (64 * arg2) + 704 len floor32(mem[(32 * arg2) + 352])] = mem[(32 * arg2) + 384 len floor32(mem[(32 * arg2) + 352])]
            mem[(64 * arg2) + 544] = (32 * mem[(32 * arg2) + 352]) + (32 * mem[320]) + (32 * mem[288]) + (32 * mem[256]) + 288
            mem[(32 * mem[(32 * arg2) + 352]) + (32 * mem[320]) + (32 * mem[288]) + (32 * mem[256]) + (64 * arg2) + 704] = mem[(32 * arg2) + 384]
            if 0 < 32 * mem[(32 * arg2) + 384]:
                mem[(32 * mem[(32 * arg2) + 352]) + (32 * mem[320]) + (32 * mem[288]) + (32 * mem[256]) + (64 * arg2) + 736] = mem[(32 * arg2) + 416]
                mem[(32 * mem[(32 * arg2) + 352]) + (32 * mem[320]) + (32 * mem[288]) + (32 * mem[256]) + (64 * arg2) + 768 len floor32((32 * mem[(32 * arg2) + 384]) - 1)] = mem[(32 * arg2) + 448 len floor32((32 * mem[(32 * arg2) + 384]) - 1)]
            return 160, 
                   mem[(64 * arg2) + 448 len (32 * mem[(32 * arg2) + 384]) + (32 * mem[(32 * arg2) + 352]) + (32 * mem[320]) + (32 * mem[288]) + (32 * mem[256]) + 288]
        mem[352] = arg2
        if 384 < (32 * arg2) + 384:
            mem[(32 * arg2) + 384] = arg2
            s = 0
            s = 0
            s = 0
            idx = arg1
            while arg1 < idx + arg2:
                require s < mem[256]
                mem[(32 * s) + 288] = index2txKey[arg1 + 1]
                mem[0] = stor11[stor9[arg1 + 1]].field_256
                mem[32] = 5
                require s < mem[288]
                mem[(32 * s) + 320] = index2PolicyId[stor11[stor9[arg1 + 1]].field_256]
                require s < mem[320]
                mem[(32 * s) + 352] = stor11[stor9[arg1 + 1]].field_512
                require s < mem[352]
                mem[(32 * s) + 384] = stor11[stor9[arg1 + 1]].field_768
                require stor11[stor9[arg1 + 1]].field_0 <= 2
                require s < mem[(32 * arg2) + 384]
                mem[(32 * arg2) + (32 * s) + 416] = stor11[stor9[arg1 + 1]].field_0
                s = sha3(index2txKey[arg1 + 1], 11)
                s = index2txKey[arg1 + 1]
                s = s + 1
                idx = idx + 1
                continue 
            mem[(64 * arg2) + 416] = 160
            mem[(64 * arg2) + 576] = mem[256]
            mem[(64 * arg2) + 608 len floor32(mem[256])] = mem[288 len floor32(mem[256])]
            mem[(64 * arg2) + 448] = (32 * mem[256]) + 192
            mem[(32 * mem[256]) + (64 * arg2) + 608] = mem[288]
            mem[(32 * mem[256]) + (64 * arg2) + 640 len floor32(mem[288])] = mem[320 len floor32(mem[288])]
            mem[(64 * arg2) + 480] = (32 * mem[288]) + (32 * mem[256]) + 224
            mem[(32 * mem[288]) + (32 * mem[256]) + (64 * arg2) + 640] = mem[320]
            mem[(32 * mem[288]) + (32 * mem[256]) + (64 * arg2) + 672 len floor32(mem[320])] = mem[352 len floor32(mem[320])]
            mem[(64 * arg2) + 512] = (32 * mem[320]) + (32 * mem[288]) + (32 * mem[256]) + 256
            mem[(32 * mem[320]) + (32 * mem[288]) + (32 * mem[256]) + (64 * arg2) + 672] = mem[352]
            mem[(32 * mem[320]) + (32 * mem[288]) + (32 * mem[256]) + (64 * arg2) + 704 len floor32(mem[352])] = mem[384 len floor32(mem[352])]
            mem[(64 * arg2) + 544] = (32 * mem[352]) + (32 * mem[320]) + (32 * mem[288]) + (32 * mem[256]) + 288
            mem[(32 * mem[352]) + (32 * mem[320]) + (32 * mem[288]) + (32 * mem[256]) + (64 * arg2) + 704] = mem[(32 * arg2) + 384]
            if 0 < 32 * mem[(32 * arg2) + 384]:
                mem[(32 * mem[352]) + (32 * mem[320]) + (32 * mem[288]) + (32 * mem[256]) + (64 * arg2) + 736] = mem[(32 * arg2) + 416]
                mem[(32 * mem[352]) + (32 * mem[320]) + (32 * mem[288]) + (32 * mem[256]) + (64 * arg2) + 768 len floor32((32 * mem[(32 * arg2) + 384]) - 1)] = mem[(32 * arg2) + 448 len floor32((32 * mem[(32 * arg2) + 384]) - 1)]
            return Array(len=mem[256], data=mem[(64 * arg2) + 608 len (32 * mem[288]) + (32 * mem[256]) + 32], mem[320], mem[(64 * arg2) + (32 * mem[288]) + (32 * mem[256]) + 672 len (32 * mem[(32 * arg2) + 384]) + (32 * mem[352]) + (32 * mem[320]) + 64]), 
                   (32 * mem[256]) + 192,
                   (32 * mem[288]) + (32 * mem[256]) + 224,
                   (32 * mem[320]) + (32 * mem[288]) + (32 * mem[256]) + 256,
                   (32 * mem[352]) + (32 * mem[320]) + (32 * mem[288]) + (32 * mem[256]) + 288
        mem[384] = arg2
        s = 0
        s = 0
        s = 0
        idx = arg1
        while arg1 < idx + arg2:
            require s < mem[256]
            mem[(32 * s) + 288] = index2txKey[arg1 + 1]
            mem[0] = stor11[stor9[arg1 + 1]].field_256
            mem[32] = 5
            require s < mem[288]
            mem[(32 * s) + 320] = index2PolicyId[stor11[stor9[arg1 + 1]].field_256]
            require s < mem[320]
            mem[(32 * s) + 352] = stor11[stor9[arg1 + 1]].field_512
            require s < mem[352]
            mem[(32 * s) + 384] = stor11[stor9[arg1 + 1]].field_768
            require stor11[stor9[arg1 + 1]].field_0 <= 2
            require s < mem[384]
            mem[(32 * s) + 416] = stor11[stor9[arg1 + 1]].field_0
            s = sha3(index2txKey[arg1 + 1], 11)
            s = index2txKey[arg1 + 1]
            s = s + 1
            idx = idx + 1
            continue 
        mem[(32 * arg2) + 416] = 160
        mem[(32 * arg2) + 576] = mem[256]
        mem[(32 * arg2) + 608 len floor32(mem[256])] = mem[288 len floor32(mem[256])]
        mem[(32 * arg2) + 448] = (32 * mem[256]) + 192
        mem[(32 * mem[256]) + (32 * arg2) + 608] = mem[288]
        mem[(32 * mem[256]) + (32 * arg2) + 640 len floor32(mem[288])] = mem[320 len floor32(mem[288])]
        mem[(32 * arg2) + 480] = (32 * mem[288]) + (32 * mem[256]) + 224
        mem[(32 * mem[288]) + (32 * mem[256]) + (32 * arg2) + 640] = mem[320]
        mem[(32 * mem[288]) + (32 * mem[256]) + (32 * arg2) + 672 len floor32(mem[320])] = mem[352 len floor32(mem[320])]
        mem[(32 * arg2) + 512] = (32 * mem[320]) + (32 * mem[288]) + (32 * mem[256]) + 256
        mem[(32 * mem[320]) + (32 * mem[288]) + (32 * mem[256]) + (32 * arg2) + 672] = mem[352]
        mem[(32 * mem[320]) + (32 * mem[288]) + (32 * mem[256]) + (32 * arg2) + 704 len floor32(mem[352])] = mem[384 len floor32(mem[352])]
        mem[(32 * arg2) + 544] = (32 * mem[352]) + (32 * mem[320]) + (32 * mem[288]) + (32 * mem[256]) + 288
        mem[(32 * mem[352]) + (32 * mem[320]) + (32 * mem[288]) + (32 * mem[256]) + (32 * arg2) + 704] = mem[384]
        if 0 < 32 * mem[384]:
            mem[(32 * mem[352]) + (32 * mem[320]) + (32 * mem[288]) + (32 * mem[256]) + (32 * arg2) + 736] = mem[416]
            mem[(32 * mem[352]) + (32 * mem[320]) + (32 * mem[288]) + (32 * mem[256]) + (32 * arg2) + 768 len floor32((32 * mem[384]) - 1)] = mem[448 len floor32((32 * mem[384]) - 1)]
        return Array(len=mem[256], data=mem[(32 * arg2) + 608 len (32 * mem[288]) + (32 * mem[256]) + 32], mem[320], mem[(32 * arg2) + (32 * mem[288]) + (32 * mem[256]) + 672 len (32 * mem[384]) + (32 * mem[352]) + (32 * mem[320]) + 64]), 
               (32 * mem[256]) + 192,
               (32 * mem[288]) + (32 * mem[256]) + 224,
               (32 * mem[320]) + (32 * mem[288]) + (32 * mem[256]) + 256,
               (32 * mem[352]) + (32 * mem[320]) + (32 * mem[288]) + (32 * mem[256]) + 288
    mem[256] = txCount - arg1
    if 288 < (32 * txCount - arg1) + 288:
        mem[(32 * txCount - arg1) + 288] = txCount - arg1
        if 32 * txCount - arg1 >= 64 * txCount - arg1:
            mem[(32 * txCount - arg1) + 320] = txCount - arg1
            if 32 * txCount - arg1 < 64 * txCount - arg1:
                mem[(64 * txCount - arg1) + 352] = txCount - arg1
                if msize >= (98 * txCount) + (-98 * arg1) + 384:
                    _msize = max((64 * txCount - arg1) + 32, 32 * txCount - arg1)
                    mem[_msize + 352] = txCount - arg1
                    mem[64] = (_msize + 352) + (32 * txCount - arg1) + 32
                    s = 0
                    s = 0
                    s = 0
                    idx = arg1
                    while arg1 < idx + txCount - arg1:
                        require s < mem[256]
                        mem[(32 * s) + 288] = index2txKey[arg1 + 1]
                        mem[0] = stor11[stor9[arg1 + 1]].field_256
                        mem[32] = 5
                        require s < mem[(32 * txCount - arg1) + 288]
                        mem[(32 * txCount - arg1) + (32 * s) + 320] = index2PolicyId[stor11[stor9[arg1 + 1]].field_256]
                        require s < mem[(32 * txCount - arg1) + 320]
                        mem[(32 * txCount - arg1) + (32 * s) + 352] = stor11[stor9[arg1 + 1]].field_512
                        require s < mem[(64 * txCount - arg1) + 352]
                        mem[(64 * txCount - arg1) + (32 * s) + 384] = stor11[stor9[arg1 + 1]].field_768
                        require stor11[stor9[arg1 + 1]].field_0 <= 2
                        require s < mem[_msize + 352]
                        mem[(_msize + 352) + (32 * s) + 32] = stor11[stor9[arg1 + 1]].field_0
                        s = sha3(index2txKey[arg1 + 1], 11)
                        s = index2txKey[arg1 + 1]
                        s = s + 1
                        idx = idx + 1
                        continue 
                    mem[(_msize + 352) + (32 * txCount - arg1) + 32] = 160
                    mem[(_msize + 352) + (32 * txCount - arg1) + 192] = mem[256]
                    mem[(_msize + 352) + (32 * txCount - arg1) + 224 len floor32(mem[256])] = mem[288 len floor32(mem[256])]
                    mem[(_msize + 352) + (32 * txCount - arg1) + 64] = (32 * mem[256]) + 192
                    mem[(32 * mem[256]) + (_msize + 352) + (32 * txCount - arg1) + 224] = mem[(32 * txCount - arg1) + 288]
                    mem[(32 * mem[256]) + (_msize + 352) + (32 * txCount - arg1) + 256 len floor32(mem[(32 * txCount - arg1) + 288])] = mem[(32 * txCount - arg1) + 320 len floor32(mem[(32 * txCount - arg1) + 288])]
                    mem[(_msize + 352) + (32 * txCount - arg1) + 96] = (32 * mem[(32 * txCount - arg1) + 288]) + (32 * mem[256]) + 224
                    mem[(32 * mem[(32 * txCount - arg1) + 288]) + (32 * mem[256]) + (_msize + 352) + (32 * txCount - arg1) + 256] = mem[(32 * txCount - arg1) + 320]
                    mem[(32 * mem[(32 * txCount - arg1) + 288]) + (32 * mem[256]) + (_msize + 352) + (32 * txCount - arg1) + 288 len floor32(mem[(32 * txCount - arg1) + 320])] = mem[(32 * txCount - arg1) + 352 len floor32(mem[(32 * txCount - arg1) + 320])]
                    mem[(_msize + 352) + (32 * txCount - arg1) + 128] = (32 * mem[(32 * txCount - arg1) + 320]) + (32 * mem[(32 * txCount - arg1) + 288]) + (32 * mem[256]) + 256
                    mem[(32 * mem[(32 * txCount - arg1) + 320]) + (32 * mem[(32 * txCount - arg1) + 288]) + (32 * mem[256]) + (_msize + 352) + (32 * txCount - arg1) + 288] = mem[(64 * txCount - arg1) + 352]
                    _5664 = mem[(64 * txCount - arg1) + 352]
                    mem[(32 * mem[(32 * txCount - arg1) + 320]) + (32 * mem[(32 * txCount - arg1) + 288]) + (32 * mem[256]) + (_msize + 352) + (32 * txCount - arg1) + 320 len floor32(mem[(64 * txCount - arg1) + 352])] = mem[(64 * txCount - arg1) + 384 len floor32(mem[(64 * txCount - arg1) + 352])]
                    mem[(_msize + 352) + (32 * txCount - arg1) + 160] = (32 * _5664) + (32 * mem[(32 * txCount - arg1) + 320]) + (32 * mem[(32 * txCount - arg1) + 288]) + (32 * mem[256]) + 288
                    mem[(32 * _5664) + (32 * mem[(32 * txCount - arg1) + 320]) + (32 * mem[(32 * txCount - arg1) + 288]) + (32 * mem[256]) + (_msize + 352) + (32 * txCount - arg1) + 320] = mem[_msize + 352]
                    _6304 = mem[_msize + 352]
                    if 0 >= 32 * mem[max((64 * txCount - arg1) + 32, 32 * txCount - arg1) + 352]:
                        return 160, 
                               mem[(_msize + 352) + (32 * txCount - arg1) + 64 len (32 * mem[_msize + 352]) + (32 * _5664) + (32 * mem[(32 * txCount - arg1) + 320]) + (32 * mem[(32 * txCount - arg1) + 288]) + (32 * mem[256]) + 288]
                    mem[(32 * _5664) + (32 * mem[(32 * txCount - arg1) + 320]) + (32 * mem[(32 * txCount - arg1) + 288]) + (32 * mem[256]) + (_msize + 352) + (32 * txCount - arg1) + 352] = mem[(_msize + 352) + 32]
                    mem[(32 * _5664) + (32 * mem[(32 * txCount - arg1) + 320]) + (32 * mem[(32 * txCount - arg1) + 288]) + (32 * mem[256]) + (_msize + 352) + (32 * txCount - arg1) + 384 len floor32((32 * _6304) - 1)] = mem[(_msize + 352) + 64 len floor32((32 * _6304) - 1)]
                    return 160, 
                           mem[(_msize + 352) + (32 * txCount - arg1) + 64 len (32 * _6304) + (32 * _5664) + (32 * mem[(32 * txCount - arg1) + 320]) + (32 * mem[(32 * txCount - arg1) + 288]) + (32 * mem[256]) + 288]
                mem[(98 * txCount) + (-98 * arg1) + 384] = txCount - arg1
                mem[64] = (32 * txCount - arg1) + (98 * txCount) + (-98 * arg1) + 416
                s = 0
                s = 0
                s = 0
                idx = arg1
                while arg1 < idx + txCount - arg1:
                    require s < mem[256]
                    mem[(32 * s) + 288] = index2txKey[arg1 + 1]
                    mem[0] = stor11[stor9[arg1 + 1]].field_256
                    mem[32] = 5
                    require s < mem[(32 * txCount - arg1) + 288]
                    mem[(32 * txCount - arg1) + (32 * s) + 320] = index2PolicyId[stor11[stor9[arg1 + 1]].field_256]
                    require s < mem[(32 * txCount - arg1) + 320]
                    mem[(32 * txCount - arg1) + (32 * s) + 352] = stor11[stor9[arg1 + 1]].field_512
                    require s < mem[(64 * txCount - arg1) + 352]
                    mem[(64 * txCount - arg1) + (32 * s) + 384] = stor11[stor9[arg1 + 1]].field_768
                    require stor11[stor9[arg1 + 1]].field_0 <= 2
                    require s < mem[(98 * txCount) + (-98 * arg1) + 384]
                    mem[(98 * txCount) + (-98 * arg1) + (32 * s) + 416] = stor11[stor9[arg1 + 1]].field_0
                    s = sha3(index2txKey[arg1 + 1], 11)
                    s = index2txKey[arg1 + 1]
                    s = s + 1
                    idx = idx + 1
                    continue 
                mem[mem[64]] = 160
                mem[mem[64] + 160] = mem[256]
                _2362 = mem[256]
                mem[mem[64] + 192 len floor32(mem[256])] = mem[288 len floor32(mem[256])]
                mem[mem[64] + 32] = (32 * mem[256]) + 192
                mem[(32 * _2362) + mem[64] + 192] = mem[(32 * txCount - arg1) + 288]
                _3805 = mem[(32 * txCount - arg1) + 288]
                mem[(32 * _2362) + mem[64] + 224 len floor32(mem[(32 * txCount - arg1) + 288])] = mem[(32 * txCount - arg1) + 320 len floor32(mem[(32 * txCount - arg1) + 288])]
                mem[mem[64] + 64] = (32 * _3805) + (32 * _2362) + 224
                mem[(32 * _3805) + (32 * _2362) + mem[64] + 224] = mem[(32 * txCount - arg1) + 320]
                _4829 = mem[(32 * txCount - arg1) + 320]
                mem[(32 * _3805) + (32 * _2362) + mem[64] + 256 len floor32(mem[(32 * txCount - arg1) + 320])] = mem[(32 * txCount - arg1) + 352 len floor32(mem[(32 * txCount - arg1) + 320])]
                mem[mem[64] + 96] = (32 * _4829) + (32 * _3805) + (32 * _2362) + 256
                mem[(32 * _4829) + (32 * _3805) + (32 * _2362) + mem[64] + 256] = mem[(64 * txCount - arg1) + 352]
                _5661 = mem[(64 * txCount - arg1) + 352]
                mem[(32 * _4829) + (32 * _3805) + (32 * _2362) + mem[64] + 288 len floor32(mem[(64 * txCount - arg1) + 352])] = mem[(64 * txCount - arg1) + 384 len floor32(mem[(64 * txCount - arg1) + 352])]
                mem[mem[64] + 128] = (32 * _5661) + (32 * _4829) + (32 * _3805) + (32 * _2362) + 288
                mem[(32 * _5661) + (32 * _4829) + (32 * _3805) + (32 * _2362) + mem[64] + 288] = mem[(98 * txCount) + (-98 * arg1) + 384]
                _6301 = mem[(98 * txCount) + (-98 * arg1) + 384]
                if 0 >= 32 * mem[(98 * txCount) + (-98 * arg1) + 384]:
                    return 160, 
                           mem[mem[64] + 32],
                           (32 * _3805) + (32 * _2362) + 224,
                           (32 * _4829) + (32 * _3805) + (32 * _2362) + 256,
                           (32 * _5661) + (32 * _4829) + (32 * _3805) + (32 * _2362) + 288,
                           mem[mem[64] + 160 len (32 * mem[(98 * txCount) + (-98 * arg1) + 384]) + (32 * _5661) + (32 * _4829) + (32 * _3805) + (32 * _2362) + 160]
                mem[(32 * _5661) + (32 * _4829) + (32 * _3805) + (32 * _2362) + mem[64] + 320] = mem[(98 * txCount) + (-98 * arg1) + 416]
                mem[(32 * _5661) + (32 * _4829) + (32 * _3805) + (32 * _2362) + mem[64] + 352 len floor32((32 * _6301) - 1)] = mem[(98 * txCount) + (-98 * arg1) + 448 len floor32((32 * _6301) - 1)]
                return 160, 
                       mem[mem[64] + 32],
                       (32 * _3805) + (32 * _2362) + 224,
                       (32 * _4829) + (32 * _3805) + (32 * _2362) + 256,
                       (32 * _5661) + (32 * _4829) + (32 * _3805) + (32 * _2362) + 288,
                       mem[mem[64] + 160 len (32 * _6301) + (32 * _5661) + (32 * _4829) + (32 * _3805) + (32 * _2362) + 160]
            mem[(32 * txCount - arg1) + 352] = txCount - arg1
            if 32 * txCount - arg1 >= 64 * txCount - arg1:
                mem[(32 * txCount - arg1) + 384] = txCount - arg1
                s = 0
                s = 0
                s = 0
                idx = arg1
                while arg1 < idx + txCount - arg1:
                    require s < mem[256]
                    mem[(32 * s) + 288] = index2txKey[arg1 + 1]
                    mem[0] = stor11[stor9[arg1 + 1]].field_256
                    mem[32] = 5
                    require s < mem[(32 * txCount - arg1) + 288]
                    mem[(32 * txCount - arg1) + (32 * s) + 320] = index2PolicyId[stor11[stor9[arg1 + 1]].field_256]
                    require s < mem[(32 * txCount - arg1) + 320]
                    mem[(32 * txCount - arg1) + (32 * s) + 352] = stor11[stor9[arg1 + 1]].field_512
                    require s < mem[(32 * txCount - arg1) + 352]
                    mem[(32 * txCount - arg1) + (32 * s) + 384] = stor11[stor9[arg1 + 1]].field_768
                    require stor11[stor9[arg1 + 1]].field_0 <= 2
                    require s < mem[(32 * txCount - arg1) + 384]
                    mem[(32 * txCount - arg1) + (32 * s) + 416] = stor11[stor9[arg1 + 1]].field_0
                    s = sha3(index2txKey[arg1 + 1], 11)
                    s = index2txKey[arg1 + 1]
                    s = s + 1
                    idx = idx + 1
                    continue 
                mem[(64 * txCount - arg1) + 416] = 160
                mem[(64 * txCount - arg1) + 576] = mem[256]
                mem[(64 * txCount - arg1) + 608 len floor32(mem[256])] = mem[288 len floor32(mem[256])]
                mem[(64 * txCount - arg1) + 448] = (32 * mem[256]) + 192
                mem[(32 * mem[256]) + (64 * txCount - arg1) + 608] = mem[(32 * txCount - arg1) + 288]
                _3814 = mem[(32 * txCount - arg1) + 288]
                mem[(32 * mem[256]) + (64 * txCount - arg1) + 640 len floor32(mem[(32 * txCount - arg1) + 288])] = mem[(32 * txCount - arg1) + 320 len floor32(mem[(32 * txCount - arg1) + 288])]
                mem[(64 * txCount - arg1) + 480] = (32 * _3814) + (32 * mem[256]) + 224
                mem[(32 * _3814) + (32 * mem[256]) + (64 * txCount - arg1) + 640] = mem[(32 * txCount - arg1) + 320]
                _4838 = mem[(32 * txCount - arg1) + 320]
                mem[(32 * _3814) + (32 * mem[256]) + (64 * txCount - arg1) + 672 len floor32(mem[(32 * txCount - arg1) + 320])] = mem[(32 * txCount - arg1) + 352 len floor32(mem[(32 * txCount - arg1) + 320])]
                mem[(64 * txCount - arg1) + 512] = (32 * _4838) + (32 * _3814) + (32 * mem[256]) + 256
                mem[(32 * _4838) + (32 * _3814) + (32 * mem[256]) + (64 * txCount - arg1) + 672] = mem[(32 * txCount - arg1) + 352]
                _5670 = mem[(32 * txCount - arg1) + 352]
                mem[(32 * _4838) + (32 * _3814) + (32 * mem[256]) + (64 * txCount - arg1) + 704 len floor32(mem[(32 * txCount - arg1) + 352])] = mem[(32 * txCount - arg1) + 384 len floor32(mem[(32 * txCount - arg1) + 352])]
                mem[(64 * txCount - arg1) + 544] = (32 * _5670) + (32 * _4838) + (32 * _3814) + (32 * mem[256]) + 288
                mem[(32 * _5670) + (32 * _4838) + (32 * _3814) + (32 * mem[256]) + (64 * txCount - arg1) + 704] = mem[(32 * txCount - arg1) + 384]
                _6310 = mem[(32 * txCount - arg1) + 384]
                if 0 >= 32 * mem[(32 * txCount - arg1) + 384]:
                    return Array(len=mem[256], data=mem[(64 * txCount - arg1) + 608 len (32 * mem[(32 * txCount - arg1) + 384]) + (32 * _5670) + (32 * _4838) + (32 * _3814) + (32 * mem[256]) + 128]), 
                           (32 * mem[256]) + 192,
                           (32 * _3814) + (32 * mem[256]) + 224,
                           (32 * _4838) + (32 * _3814) + (32 * mem[256]) + 256,
                           (32 * _5670) + (32 * _4838) + (32 * _3814) + (32 * mem[256]) + 288
                mem[(32 * _5670) + (32 * _4838) + (32 * _3814) + (32 * mem[256]) + (64 * txCount - arg1) + 736] = mem[(32 * txCount - arg1) + 416]
                mem[(32 * _5670) + (32 * _4838) + (32 * _3814) + (32 * mem[256]) + (64 * txCount - arg1) + 768 len floor32((32 * _6310) - 1)] = mem[(32 * txCount - arg1) + 448 len floor32((32 * _6310) - 1)]
                return Array(len=mem[256], data=mem[(64 * txCount - arg1) + 608 len (32 * _6310) + (32 * _5670) + (32 * _4838) + (32 * _3814) + (32 * mem[256]) + 128]), 
                       (32 * mem[256]) + 192,
                       (32 * _3814) + (32 * mem[256]) + 224,
                       (32 * _4838) + (32 * _3814) + (32 * mem[256]) + 256,
                       (32 * _5670) + (32 * _4838) + (32 * _3814) + (32 * mem[256]) + 288
            mem[(64 * txCount - arg1) + 384] = txCount - arg1
            mem[64] = (98 * txCount) + (-98 * arg1) + 416
            s = 0
            s = 0
            s = 0
            idx = arg1
            while arg1 < idx + txCount - arg1:
                require s < mem[256]
                mem[(32 * s) + 288] = index2txKey[arg1 + 1]
                mem[0] = stor11[stor9[arg1 + 1]].field_256
                mem[32] = 5
                require s < mem[(32 * txCount - arg1) + 288]
                mem[(32 * txCount - arg1) + (32 * s) + 320] = index2PolicyId[stor11[stor9[arg1 + 1]].field_256]
                require s < mem[(32 * txCount - arg1) + 320]
                mem[(32 * txCount - arg1) + (32 * s) + 352] = stor11[stor9[arg1 + 1]].field_512
                require s < mem[(32 * txCount - arg1) + 352]
                mem[(32 * txCount - arg1) + (32 * s) + 384] = stor11[stor9[arg1 + 1]].field_768
                require stor11[stor9[arg1 + 1]].field_0 <= 2
                require s < mem[(64 * txCount - arg1) + 384]
                mem[(64 * txCount - arg1) + (32 * s) + 416] = stor11[stor9[arg1 + 1]].field_0
                s = sha3(index2txKey[arg1 + 1], 11)
                s = index2txKey[arg1 + 1]
                s = s + 1
                idx = idx + 1
                continue 
            mem[(98 * txCount) + (-98 * arg1) + 416] = 160
            mem[(98 * txCount) + (-98 * arg1) + 576] = mem[256]
            _2374 = mem[256]
            mem[(98 * txCount) + (-98 * arg1) + 608 len floor32(mem[256])] = mem[288 len floor32(mem[256])]
            mem[(98 * txCount) + (-98 * arg1) + 448] = (32 * mem[256]) + 192
            mem[(32 * _2374) + (98 * txCount) + (-98 * arg1) + 608] = mem[(32 * txCount - arg1) + 288]
            _3811 = mem[(32 * txCount - arg1) + 288]
            mem[(32 * _2374) + (98 * txCount) + (-98 * arg1) + 640 len floor32(mem[(32 * txCount - arg1) + 288])] = mem[(32 * txCount - arg1) + 320 len floor32(mem[(32 * txCount - arg1) + 288])]
            mem[(98 * txCount) + (-98 * arg1) + 480] = (32 * _3811) + (32 * _2374) + 224
            mem[(32 * _3811) + (32 * _2374) + (98 * txCount) + (-98 * arg1) + 640] = mem[(32 * txCount - arg1) + 320]
            _4835 = mem[(32 * txCount - arg1) + 320]
            mem[(32 * _3811) + (32 * _2374) + (98 * txCount) + (-98 * arg1) + 672 len floor32(mem[(32 * txCount - arg1) + 320])] = mem[(32 * txCount - arg1) + 352 len floor32(mem[(32 * txCount - arg1) + 320])]
            mem[(98 * txCount) + (-98 * arg1) + 512] = (32 * _4835) + (32 * _3811) + (32 * _2374) + 256
            mem[(32 * _4835) + (32 * _3811) + (32 * _2374) + (98 * txCount) + (-98 * arg1) + 672] = mem[(32 * txCount - arg1) + 352]
            _5667 = mem[(32 * txCount - arg1) + 352]
            mem[(32 * _4835) + (32 * _3811) + (32 * _2374) + (98 * txCount) + (-98 * arg1) + 704 len floor32(mem[(32 * txCount - arg1) + 352])] = mem[(32 * txCount - arg1) + 384 len floor32(mem[(32 * txCount - arg1) + 352])]
            mem[(98 * txCount) + (-98 * arg1) + 544] = (32 * _5667) + (32 * _4835) + (32 * _3811) + (32 * _2374) + 288
            mem[(32 * _5667) + (32 * _4835) + (32 * _3811) + (32 * _2374) + (98 * txCount) + (-98 * arg1) + 704] = mem[(64 * txCount - arg1) + 384]
            _6307 = mem[(64 * txCount - arg1) + 384]
            if 0 >= 32 * mem[(64 * txCount - arg1) + 384]:
                return 160, 
                       mem[(98 * txCount) + (-98 * arg1) + 448],
                       (32 * _3811) + (32 * _2374) + 224,
                       (32 * _4835) + (32 * _3811) + (32 * _2374) + 256,
                       (32 * _5667) + (32 * _4835) + (32 * _3811) + (32 * _2374) + 288,
                       mem[(98 * txCount) + (-98 * arg1) + 576 len (32 * mem[(64 * txCount - arg1) + 384]) + (32 * _5667) + (32 * _4835) + (32 * _3811) + (32 * _2374) + 160]
            mem[(32 * _5667) + (32 * _4835) + (32 * _3811) + (32 * _2374) + (98 * txCount) + (-98 * arg1) + 736] = mem[(64 * txCount - arg1) + 416]
            mem[(32 * _5667) + (32 * _4835) + (32 * _3811) + (32 * _2374) + (98 * txCount) + (-98 * arg1) + 768 len floor32((32 * _6307) - 1)] = mem[(64 * txCount - arg1) + 448 len floor32((32 * _6307) - 1)]
            return 160, 
                   mem[(98 * txCount) + (-98 * arg1) + 448],
                   (32 * _3811) + (32 * _2374) + 224,
                   (32 * _4835) + (32 * _3811) + (32 * _2374) + 256,
                   (32 * _5667) + (32 * _4835) + (32 * _3811) + (32 * _2374) + 288,
                   mem[(98 * txCount) + (-98 * arg1) + 576 len (32 * _6307) + (32 * _5667) + (32 * _4835) + (32 * _3811) + (32 * _2374) + 160]
        mem[(64 * txCount - arg1) + 320] = txCount - arg1
        if msize >= (98 * txCount) + (-98 * arg1) + 352:
            _msize = max((64 * txCount - arg1) + 32, 32 * txCount - arg1)
            mem[_msize + 320] = txCount - arg1
            _msize = max((32 * txCount - arg1) + 288, (64 * txCount - arg1) + 320, _msize + 320)
            mem[_msize + 32] = txCount - arg1
            mem[64] = (_msize + 32) + (32 * txCount - arg1) + 32
            s = 0
            s = 0
            s = 0
            idx = arg1
            while arg1 < idx + txCount - arg1:
                require s < mem[256]
                mem[(32 * s) + 288] = index2txKey[arg1 + 1]
                mem[0] = stor11[stor9[arg1 + 1]].field_256
                mem[32] = 5
                require s < mem[(32 * txCount - arg1) + 288]
                mem[(32 * txCount - arg1) + (32 * s) + 320] = index2PolicyId[stor11[stor9[arg1 + 1]].field_256]
                require s < mem[(64 * txCount - arg1) + 320]
                mem[(64 * txCount - arg1) + (32 * s) + 352] = stor11[stor9[arg1 + 1]].field_512
                require s < mem[_msize + 320]
                mem[(_msize + 320) + (32 * s) + 32] = stor11[stor9[arg1 + 1]].field_768
                require stor11[stor9[arg1 + 1]].field_0 <= 2
                require s < mem[_msize + 32]
                mem[(_msize + 32) + (32 * s) + 32] = stor11[stor9[arg1 + 1]].field_0
                s = sha3(index2txKey[arg1 + 1], 11)
                s = index2txKey[arg1 + 1]
                s = s + 1
                idx = idx + 1
                continue 
            mem[(_msize + 32) + (32 * txCount - arg1) + 32] = 160
            mem[(_msize + 32) + (32 * txCount - arg1) + 192] = mem[256]
            mem[(_msize + 32) + (32 * txCount - arg1) + 224 len floor32(mem[256])] = mem[288 len floor32(mem[256])]
            mem[(_msize + 32) + (32 * txCount - arg1) + 64] = (32 * mem[256]) + 192
            mem[(32 * mem[256]) + (_msize + 32) + (32 * txCount - arg1) + 224] = mem[(32 * txCount - arg1) + 288]
            mem[(32 * mem[256]) + (_msize + 32) + (32 * txCount - arg1) + 256 len floor32(mem[(32 * txCount - arg1) + 288])] = mem[(32 * txCount - arg1) + 320 len floor32(mem[(32 * txCount - arg1) + 288])]
            mem[(_msize + 32) + (32 * txCount - arg1) + 96] = (32 * mem[(32 * txCount - arg1) + 288]) + (32 * mem[256]) + 224
            mem[(32 * mem[(32 * txCount - arg1) + 288]) + (32 * mem[256]) + (_msize + 32) + (32 * txCount - arg1) + 256] = mem[(64 * txCount - arg1) + 320]
            mem[(32 * mem[(32 * txCount - arg1) + 288]) + (32 * mem[256]) + (_msize + 32) + (32 * txCount - arg1) + 288 len floor32(mem[(64 * txCount - arg1) + 320])] = mem[(64 * txCount - arg1) + 352 len floor32(mem[(64 * txCount - arg1) + 320])]
            mem[(_msize + 32) + (32 * txCount - arg1) + 128] = (32 * mem[(64 * txCount - arg1) + 320]) + (32 * mem[(32 * txCount - arg1) + 288]) + (32 * mem[256]) + 256
            mem[(32 * mem[(64 * txCount - arg1) + 320]) + (32 * mem[(32 * txCount - arg1) + 288]) + (32 * mem[256]) + (_msize + 32) + (32 * txCount - arg1) + 288] = mem[_msize + 320]
            _5658 = mem[_msize + 320]
            mem[(32 * mem[(64 * txCount - arg1) + 320]) + (32 * mem[(32 * txCount - arg1) + 288]) + (32 * mem[256]) + (_msize + 32) + (32 * txCount - arg1) + 320 len floor32(mem[_msize + 320])] = mem[(_msize + 320) + 32 len floor32(mem[_msize + 320])]
            mem[(_msize + 32) + (32 * txCount - arg1) + 160] = (32 * _5658) + (32 * mem[(64 * txCount - arg1) + 320]) + (32 * mem[(32 * txCount - arg1) + 288]) + (32 * mem[256]) + 288
            mem[(32 * _5658) + (32 * mem[(64 * txCount - arg1) + 320]) + (32 * mem[(32 * txCount - arg1) + 288]) + (32 * mem[256]) + (_msize + 32) + (32 * txCount - arg1) + 320] = mem[_msize + 32]
            _6298 = mem[_msize + 32]
            if 0 >= 32 * mem[max((32 * txCount - arg1) + 288, (64 * txCount - arg1) + 320, max((64 * txCount - arg1) + 32, 32 * txCount - arg1) + 320) + 32]:
                return 160, 
                       mem[(_msize + 32) + (32 * txCount - arg1) + 64 len (32 * mem[_msize + 32]) + (32 * _5658) + (32 * mem[(64 * txCount - arg1) + 320]) + (32 * mem[(32 * txCount - arg1) + 288]) + (32 * mem[256]) + 288]
            mem[(32 * _5658) + (32 * mem[(64 * txCount - arg1) + 320]) + (32 * mem[(32 * txCount - arg1) + 288]) + (32 * mem[256]) + (_msize + 32) + (32 * txCount - arg1) + 352] = mem[(_msize + 32) + 32]
            mem[(32 * _5658) + (32 * mem[(64 * txCount - arg1) + 320]) + (32 * mem[(32 * txCount - arg1) + 288]) + (32 * mem[256]) + (_msize + 32) + (32 * txCount - arg1) + 384 len floor32((32 * _6298) - 1)] = mem[(_msize + 32) + 64 len floor32((32 * _6298) - 1)]
            return 160, 
                   mem[(_msize + 32) + (32 * txCount - arg1) + 64 len (32 * _6298) + (32 * _5658) + (32 * mem[(64 * txCount - arg1) + 320]) + (32 * mem[(32 * txCount - arg1) + 288]) + (32 * mem[256]) + 288]
        mem[(98 * txCount) + (-98 * arg1) + 352] = txCount - arg1
        if msize < (98 * txCount) + (-98 * arg1) + (32 * txCount - arg1) + 384:
            mem[(98 * txCount) + (-98 * arg1) + (32 * txCount - arg1) + 384] = txCount - arg1
            mem[64] = (98 * txCount) + (-98 * arg1) + (64 * txCount - arg1) + 416
            s = 0
            s = 0
            s = 0
            idx = arg1
            while arg1 < idx + txCount - arg1:
                require s < mem[256]
                mem[(32 * s) + 288] = index2txKey[arg1 + 1]
                mem[0] = stor11[stor9[arg1 + 1]].field_256
                mem[32] = 5
                require s < mem[(32 * txCount - arg1) + 288]
                mem[(32 * txCount - arg1) + (32 * s) + 320] = index2PolicyId[stor11[stor9[arg1 + 1]].field_256]
                require s < mem[(64 * txCount - arg1) + 320]
                mem[(64 * txCount - arg1) + (32 * s) + 352] = stor11[stor9[arg1 + 1]].field_512
                require s < mem[(98 * txCount) + (-98 * arg1) + 352]
                mem[(98 * txCount) + (-98 * arg1) + (32 * s) + 384] = stor11[stor9[arg1 + 1]].field_768
                require stor11[stor9[arg1 + 1]].field_0 <= 2
                require s < mem[(98 * txCount) + (-98 * arg1) + (32 * txCount - arg1) + 384]
                mem[(98 * txCount) + (-98 * arg1) + (32 * txCount - arg1) + (32 * s) + 416] = stor11[stor9[arg1 + 1]].field_0
                s = sha3(index2txKey[arg1 + 1], 11)
                s = index2txKey[arg1 + 1]
                s = s + 1
                idx = idx + 1
                continue 
            mem[mem[64]] = 160
            mem[mem[64] + 160] = mem[256]
            _2338 = mem[256]
            mem[mem[64] + 192 len floor32(mem[256])] = mem[288 len floor32(mem[256])]
            mem[mem[64] + 32] = (32 * mem[256]) + 192
            mem[(32 * _2338) + mem[64] + 192] = mem[(32 * txCount - arg1) + 288]
            _3793 = mem[(32 * txCount - arg1) + 288]
            mem[(32 * _2338) + mem[64] + 224 len floor32(mem[(32 * txCount - arg1) + 288])] = mem[(32 * txCount - arg1) + 320 len floor32(mem[(32 * txCount - arg1) + 288])]
            mem[mem[64] + 64] = (32 * _3793) + (32 * _2338) + 224
            mem[(32 * _3793) + (32 * _2338) + mem[64] + 224] = mem[(64 * txCount - arg1) + 320]
            _4817 = mem[(64 * txCount - arg1) + 320]
            mem[(32 * _3793) + (32 * _2338) + mem[64] + 256 len floor32(mem[(64 * txCount - arg1) + 320])] = mem[(64 * txCount - arg1) + 352 len floor32(mem[(64 * txCount - arg1) + 320])]
            mem[mem[64] + 96] = (32 * _4817) + (32 * _3793) + (32 * _2338) + 256
            mem[(32 * _4817) + (32 * _3793) + (32 * _2338) + mem[64] + 256] = mem[(98 * txCount) + (-98 * arg1) + 352]
            _5649 = mem[(98 * txCount) + (-98 * arg1) + 352]
            mem[(32 * _4817) + (32 * _3793) + (32 * _2338) + mem[64] + 288 len floor32(mem[(98 * txCount) + (-98 * arg1) + 352])] = mem[(98 * txCount) + (-98 * arg1) + 384 len floor32(mem[(98 * txCount) + (-98 * arg1) + 352])]
            mem[mem[64] + 128] = (32 * _5649) + (32 * _4817) + (32 * _3793) + (32 * _2338) + 288
            mem[(32 * _5649) + (32 * _4817) + (32 * _3793) + (32 * _2338) + mem[64] + 288] = mem[(98 * txCount) + (-98 * arg1) + (32 * txCount - arg1) + 384]
            _6289 = mem[(98 * txCount) + (-98 * arg1) + (32 * txCount - arg1) + 384]
            if 0 >= 32 * mem[(98 * txCount) + (-98 * arg1) + (32 * txCount - arg1) + 384]:
                return 160, 
                       mem[mem[64] + 32],
                       (32 * _3793) + (32 * _2338) + 224,
                       (32 * _4817) + (32 * _3793) + (32 * _2338) + 256,
                       (32 * _5649) + (32 * _4817) + (32 * _3793) + (32 * _2338) + 288,
                       mem[mem[64] + 160 len (32 * mem[(98 * txCount) + (-98 * arg1) + (32 * txCount - arg1) + 384]) + (32 * _5649) + (32 * _4817) + (32 * _3793) + (32 * _2338) + 160]
            mem[(32 * _5649) + (32 * _4817) + (32 * _3793) + (32 * _2338) + mem[64] + 320] = mem[(98 * txCount) + (-98 * arg1) + (32 * txCount - arg1) + 416]
            mem[(32 * _5649) + (32 * _4817) + (32 * _3793) + (32 * _2338) + mem[64] + 352 len floor32((32 * _6289) - 1)] = mem[(98 * txCount) + (-98 * arg1) + (32 * txCount - arg1) + 448 len floor32((32 * _6289) - 1)]
            return 160, 
                   mem[mem[64] + 32],
                   (32 * _3793) + (32 * _2338) + 224,
                   (32 * _4817) + (32 * _3793) + (32 * _2338) + 256,
                   (32 * _5649) + (32 * _4817) + (32 * _3793) + (32 * _2338) + 288,
                   mem[mem[64] + 160 len (32 * _6289) + (32 * _5649) + (32 * _4817) + (32 * _3793) + (32 * _2338) + 160]
        _msize = max((64 * txCount - arg1) + 32, (98 * txCount) + (-98 * arg1) + 64, 32 * txCount - arg1)
        mem[_msize + 320] = txCount - arg1
        mem[64] = (_msize + 320) + (32 * txCount - arg1) + 32
        s = 0
        s = 0
        s = 0
        idx = arg1
        while arg1 < idx + txCount - arg1:
            require s < mem[256]
            mem[(32 * s) + 288] = index2txKey[arg1 + 1]
            mem[0] = stor11[stor9[arg1 + 1]].field_256
            mem[32] = 5
            require s < mem[(32 * txCount - arg1) + 288]
            mem[(32 * txCount - arg1) + (32 * s) + 320] = index2PolicyId[stor11[stor9[arg1 + 1]].field_256]
            require s < mem[(64 * txCount - arg1) + 320]
            mem[(64 * txCount - arg1) + (32 * s) + 352] = stor11[stor9[arg1 + 1]].field_512
            require s < mem[(98 * txCount) + (-98 * arg1) + 352]
            mem[(98 * txCount) + (-98 * arg1) + (32 * s) + 384] = stor11[stor9[arg1 + 1]].field_768
            require stor11[stor9[arg1 + 1]].field_0 <= 2
            require s < mem[_msize + 320]
            mem[(_msize + 320) + (32 * s) + 32] = stor11[stor9[arg1 + 1]].field_0
            s = sha3(index2txKey[arg1 + 1], 11)
            s = index2txKey[arg1 + 1]
            s = s + 1
            idx = idx + 1
            continue 
        mem[mem[64]] = 160
        mem[mem[64] + 160] = mem[256]
        _2344 = mem[256]
        mem[mem[64] + 192 len floor32(mem[256])] = mem[288 len floor32(mem[256])]
        mem[mem[64] + 32] = (32 * mem[256]) + 192
        mem[(32 * _2344) + mem[64] + 192] = mem[(32 * txCount - arg1) + 288]
        _3796 = mem[(32 * txCount - arg1) + 288]
        mem[(32 * _2344) + mem[64] + 224 len floor32(mem[(32 * txCount - arg1) + 288])] = mem[(32 * txCount - arg1) + 320 len floor32(mem[(32 * txCount - arg1) + 288])]
        mem[mem[64] + 64] = (32 * _3796) + (32 * _2344) + 224
        mem[(32 * _3796) + (32 * _2344) + mem[64] + 224] = mem[(64 * txCount - arg1) + 320]
        _4820 = mem[(64 * txCount - arg1) + 320]
        mem[(32 * _3796) + (32 * _2344) + mem[64] + 256 len floor32(mem[(64 * txCount - arg1) + 320])] = mem[(64 * txCount - arg1) + 352 len floor32(mem[(64 * txCount - arg1) + 320])]
        mem[mem[64] + 96] = (32 * _4820) + (32 * _3796) + (32 * _2344) + 256
        mem[(32 * _4820) + (32 * _3796) + (32 * _2344) + mem[64] + 256] = mem[(98 * txCount) + (-98 * arg1) + 352]
        _5652 = mem[(98 * txCount) + (-98 * arg1) + 352]
        mem[(32 * _4820) + (32 * _3796) + (32 * _2344) + mem[64] + 288 len floor32(mem[(98 * txCount) + (-98 * arg1) + 352])] = mem[(98 * txCount) + (-98 * arg1) + 384 len floor32(mem[(98 * txCount) + (-98 * arg1) + 352])]
        mem[mem[64] + 128] = (32 * _5652) + (32 * _4820) + (32 * _3796) + (32 * _2344) + 288
        mem[(32 * _5652) + (32 * _4820) + (32 * _3796) + (32 * _2344) + mem[64] + 288] = mem[_msize + 320]
        _6292 = mem[_msize + 320]
        if 0 >= 32 * mem[max((64 * txCount - arg1) + 32, (98 * txCount) + (-98 * arg1) + 64, 32 * txCount - arg1) + 320]:
            return 160, 
                   mem[mem[64] + 32],
                   (32 * _3796) + (32 * _2344) + 224,
                   (32 * _4820) + (32 * _3796) + (32 * _2344) + 256,
                   (32 * _5652) + (32 * _4820) + (32 * _3796) + (32 * _2344) + 288,
                   mem[mem[64] + 160 len (32 * mem[_msize + 320]) + (32 * _5652) + (32 * _4820) + (32 * _3796) + (32 * _2344) + 160]
        mem[(32 * _5652) + (32 * _4820) + (32 * _3796) + (32 * _2344) + mem[64] + 320] = mem[(_msize + 320) + 32]
        mem[(32 * _5652) + (32 * _4820) + (32 * _3796) + (32 * _2344) + mem[64] + 352 len floor32((32 * _6292) - 1)] = mem[(_msize + 320) + 64 len floor32((32 * _6292) - 1)]
        return 160, 
               mem[mem[64] + 32],
               (32 * _3796) + (32 * _2344) + 224,
               (32 * _4820) + (32 * _3796) + (32 * _2344) + 256,
               (32 * _5652) + (32 * _4820) + (32 * _3796) + (32 * _2344) + 288,
               mem[mem[64] + 160 len (32 * _6292) + (32 * _5652) + (32 * _4820) + (32 * _3796) + (32 * _2344) + 160]
    mem[288] = txCount - arg1
    if 320 >= (32 * txCount - arg1) + 320:
        mem[320] = txCount - arg1
        if 352 >= (32 * txCount - arg1) + 352:
            mem[352] = txCount - arg1
            if 384 >= (32 * txCount - arg1) + 384:
                mem[384] = txCount - arg1
                s = 0
                s = 0
                s = 0
                idx = arg1
                while arg1 < idx + txCount - arg1:
                    require s < mem[256]
                    mem[(32 * s) + 288] = index2txKey[arg1 + 1]
                    mem[0] = stor11[stor9[arg1 + 1]].field_256
                    mem[32] = 5
                    require s < mem[288]
                    mem[(32 * s) + 320] = index2PolicyId[stor11[stor9[arg1 + 1]].field_256]
                    require s < mem[320]
                    mem[(32 * s) + 352] = stor11[stor9[arg1 + 1]].field_512
                    require s < mem[352]
                    mem[(32 * s) + 384] = stor11[stor9[arg1 + 1]].field_768
                    require stor11[stor9[arg1 + 1]].field_0 <= 2
                    require s < mem[384]
                    mem[(32 * s) + 416] = stor11[stor9[arg1 + 1]].field_0
                    s = sha3(index2txKey[arg1 + 1], 11)
                    s = index2txKey[arg1 + 1]
                    s = s + 1
                    idx = idx + 1
                    continue 
                mem[(32 * txCount - arg1) + 416] = 160
                mem[(32 * txCount - arg1) + 576] = mem[256]
                mem[(32 * txCount - arg1) + 608 len floor32(mem[256])] = mem[288 len floor32(mem[256])]
                mem[(32 * txCount - arg1) + 448] = (32 * mem[256]) + 192
                mem[(32 * mem[256]) + (32 * txCount - arg1) + 608] = mem[288]
                mem[(32 * mem[256]) + (32 * txCount - arg1) + 640 len floor32(mem[288])] = mem[320 len floor32(mem[288])]
                mem[(32 * txCount - arg1) + 480] = (32 * mem[288]) + (32 * mem[256]) + 224
                mem[(32 * mem[288]) + (32 * mem[256]) + (32 * txCount - arg1) + 640] = mem[320]
                mem[(32 * mem[288]) + (32 * mem[256]) + (32 * txCount - arg1) + 672 len floor32(mem[320])] = mem[352 len floor32(mem[320])]
                mem[(32 * txCount - arg1) + 512] = (32 * mem[320]) + (32 * mem[288]) + (32 * mem[256]) + 256
                mem[(32 * mem[320]) + (32 * mem[288]) + (32 * mem[256]) + (32 * txCount - arg1) + 672] = mem[352]
                mem[(32 * mem[320]) + (32 * mem[288]) + (32 * mem[256]) + (32 * txCount - arg1) + 704 len floor32(mem[352])] = mem[384 len floor32(mem[352])]
                mem[(32 * txCount - arg1) + 544] = (32 * mem[352]) + (32 * mem[320]) + (32 * mem[288]) + (32 * mem[256]) + 288
                mem[(32 * mem[352]) + (32 * mem[320]) + (32 * mem[288]) + (32 * mem[256]) + (32 * txCount - arg1) + 704] = mem[384]
                if 0 < 32 * mem[384]:
                    mem[(32 * mem[352]) + (32 * mem[320]) + (32 * mem[288]) + (32 * mem[256]) + (32 * txCount - arg1) + 736] = mem[416]
                    mem[(32 * mem[352]) + (32 * mem[320]) + (32 * mem[288]) + (32 * mem[256]) + (32 * txCount - arg1) + 768 len floor32((32 * mem[384]) - 1)] = mem[448 len floor32((32 * mem[384]) - 1)]
                return Array(len=mem[256], data=mem[(32 * txCount - arg1) + 608 len (32 * mem[288]) + (32 * mem[256]) + 32], mem[320], mem[(32 * txCount - arg1) + (32 * mem[288]) + (32 * mem[256]) + 672 len (32 * mem[384]) + (32 * mem[352]) + (32 * mem[320]) + 64]), 
                       (32 * mem[256]) + 192,
                       (32 * mem[288]) + (32 * mem[256]) + 224,
                       (32 * mem[320]) + (32 * mem[288]) + (32 * mem[256]) + 256,
                       (32 * mem[352]) + (32 * mem[320]) + (32 * mem[288]) + (32 * mem[256]) + 288
            mem[(32 * txCount - arg1) + 384] = txCount - arg1
            s = 0
            s = 0
            s = 0
            idx = arg1
            while arg1 < idx + txCount - arg1:
                require s < mem[256]
                mem[(32 * s) + 288] = index2txKey[arg1 + 1]
                mem[0] = stor11[stor9[arg1 + 1]].field_256
                mem[32] = 5
                require s < mem[288]
                mem[(32 * s) + 320] = index2PolicyId[stor11[stor9[arg1 + 1]].field_256]
                require s < mem[320]
                mem[(32 * s) + 352] = stor11[stor9[arg1 + 1]].field_512
                require s < mem[352]
                mem[(32 * s) + 384] = stor11[stor9[arg1 + 1]].field_768
                require stor11[stor9[arg1 + 1]].field_0 <= 2
                require s < mem[(32 * txCount - arg1) + 384]
                mem[(32 * txCount - arg1) + (32 * s) + 416] = stor11[stor9[arg1 + 1]].field_0
                s = sha3(index2txKey[arg1 + 1], 11)
                s = index2txKey[arg1 + 1]
                s = s + 1
                idx = idx + 1
                continue 
            mem[(64 * txCount - arg1) + 416] = 160
            mem[(64 * txCount - arg1) + 576] = mem[256]
            mem[(64 * txCount - arg1) + 608 len floor32(mem[256])] = mem[288 len floor32(mem[256])]
            mem[(64 * txCount - arg1) + 448] = (32 * mem[256]) + 192
            mem[(32 * mem[256]) + (64 * txCount - arg1) + 608] = mem[288]
            mem[(32 * mem[256]) + (64 * txCount - arg1) + 640 len floor32(mem[288])] = mem[320 len floor32(mem[288])]
            mem[(64 * txCount - arg1) + 480] = (32 * mem[288]) + (32 * mem[256]) + 224
            mem[(32 * mem[288]) + (32 * mem[256]) + (64 * txCount - arg1) + 640] = mem[320]
            mem[(32 * mem[288]) + (32 * mem[256]) + (64 * txCount - arg1) + 672 len floor32(mem[320])] = mem[352 len floor32(mem[320])]
            mem[(64 * txCount - arg1) + 512] = (32 * mem[320]) + (32 * mem[288]) + (32 * mem[256]) + 256
            mem[(32 * mem[320]) + (32 * mem[288]) + (32 * mem[256]) + (64 * txCount - arg1) + 672] = mem[352]
            mem[(32 * mem[320]) + (32 * mem[288]) + (32 * mem[256]) + (64 * txCount - arg1) + 704 len floor32(mem[352])] = mem[384 len floor32(mem[352])]
            mem[(64 * txCount - arg1) + 544] = (32 * mem[352]) + (32 * mem[320]) + (32 * mem[288]) + (32 * mem[256]) + 288
            mem[(32 * mem[352]) + (32 * mem[320]) + (32 * mem[288]) + (32 * mem[256]) + (64 * txCount - arg1) + 704] = mem[(32 * txCount - arg1) + 384]
            _6331 = mem[(32 * txCount - arg1) + 384]
            if 0 >= 32 * mem[(32 * txCount - arg1) + 384]:
                return Array(len=mem[256], data=mem[(64 * txCount - arg1) + 608 len (32 * mem[288]) + (32 * mem[256]) + 32], mem[320], mem[(64 * txCount - arg1) + (32 * mem[288]) + (32 * mem[256]) + 672 len (32 * mem[(32 * txCount - arg1) + 384]) + (32 * mem[352]) + (32 * mem[320]) + 64]), 
                       (32 * mem[256]) + 192,
                       (32 * mem[288]) + (32 * mem[256]) + 224,
                       (32 * mem[320]) + (32 * mem[288]) + (32 * mem[256]) + 256,
                       (32 * mem[352]) + (32 * mem[320]) + (32 * mem[288]) + (32 * mem[256]) + 288
            mem[(32 * mem[352]) + (32 * mem[320]) + (32 * mem[288]) + (32 * mem[256]) + (64 * txCount - arg1) + 736] = mem[(32 * txCount - arg1) + 416]
            mem[(32 * mem[352]) + (32 * mem[320]) + (32 * mem[288]) + (32 * mem[256]) + (64 * txCount - arg1) + 768 len floor32((32 * _6331) - 1)] = mem[(32 * txCount - arg1) + 448 len floor32((32 * _6331) - 1)]
            return Array(len=mem[256], data=mem[(64 * txCount - arg1) + 608 len (32 * mem[288]) + (32 * mem[256]) + 32], mem[320], mem[(64 * txCount - arg1) + (32 * mem[288]) + (32 * mem[256]) + 672 len (32 * _6331) + (32 * mem[352]) + (32 * mem[320]) + 64]), 
                   (32 * mem[256]) + 192,
                   (32 * mem[288]) + (32 * mem[256]) + 224,
                   (32 * mem[320]) + (32 * mem[288]) + (32 * mem[256]) + 256,
                   (32 * mem[352]) + (32 * mem[320]) + (32 * mem[288]) + (32 * mem[256]) + 288
        mem[(32 * txCount - arg1) + 352] = txCount - arg1
        if 32 * txCount - arg1 >= 64 * txCount - arg1:
            mem[(32 * txCount - arg1) + 384] = txCount - arg1
            s = 0
            s = 0
            s = 0
            idx = arg1
            while arg1 < idx + txCount - arg1:
                require s < mem[256]
                mem[(32 * s) + 288] = index2txKey[arg1 + 1]
                mem[0] = stor11[stor9[arg1 + 1]].field_256
                mem[32] = 5
                require s < mem[288]
                mem[(32 * s) + 320] = index2PolicyId[stor11[stor9[arg1 + 1]].field_256]
                require s < mem[320]
                mem[(32 * s) + 352] = stor11[stor9[arg1 + 1]].field_512
                require s < mem[(32 * txCount - arg1) + 352]
                mem[(32 * txCount - arg1) + (32 * s) + 384] = stor11[stor9[arg1 + 1]].field_768
                require stor11[stor9[arg1 + 1]].field_0 <= 2
                require s < mem[(32 * txCount - arg1) + 384]
                mem[(32 * txCount - arg1) + (32 * s) + 416] = stor11[stor9[arg1 + 1]].field_0
                s = sha3(index2txKey[arg1 + 1], 11)
                s = index2txKey[arg1 + 1]
                s = s + 1
                idx = idx + 1
                continue 
            mem[(64 * txCount - arg1) + 416] = 160
            mem[(64 * txCount - arg1) + 576] = mem[256]
            mem[(64 * txCount - arg1) + 608 len floor32(mem[256])] = mem[288 len floor32(mem[256])]
            mem[(64 * txCount - arg1) + 448] = (32 * mem[256]) + 192
            mem[(32 * mem[256]) + (64 * txCount - arg1) + 608] = mem[288]
            mem[(32 * mem[256]) + (64 * txCount - arg1) + 640 len floor32(mem[288])] = mem[320 len floor32(mem[288])]
            mem[(64 * txCount - arg1) + 480] = (32 * mem[288]) + (32 * mem[256]) + 224
            mem[(32 * mem[288]) + (32 * mem[256]) + (64 * txCount - arg1) + 640] = mem[320]
            mem[(32 * mem[288]) + (32 * mem[256]) + (64 * txCount - arg1) + 672 len floor32(mem[320])] = mem[352 len floor32(mem[320])]
            mem[(64 * txCount - arg1) + 512] = (32 * mem[320]) + (32 * mem[288]) + (32 * mem[256]) + 256
            mem[(32 * mem[320]) + (32 * mem[288]) + (32 * mem[256]) + (64 * txCount - arg1) + 672] = mem[(32 * txCount - arg1) + 352]
            _5688 = mem[(32 * txCount - arg1) + 352]
            mem[(32 * mem[320]) + (32 * mem[288]) + (32 * mem[256]) + (64 * txCount - arg1) + 704 len floor32(mem[(32 * txCount - arg1) + 352])] = mem[(32 * txCount - arg1) + 384 len floor32(mem[(32 * txCount - arg1) + 352])]
            mem[(64 * txCount - arg1) + 544] = (32 * _5688) + (32 * mem[320]) + (32 * mem[288]) + (32 * mem[256]) + 288
            mem[(32 * _5688) + (32 * mem[320]) + (32 * mem[288]) + (32 * mem[256]) + (64 * txCount - arg1) + 704] = mem[(32 * txCount - arg1) + 384]
            _6328 = mem[(32 * txCount - arg1) + 384]
            if 0 >= 32 * mem[(32 * txCount - arg1) + 384]:
                return Array(len=mem[256], data=mem[(64 * txCount - arg1) + 608 len (32 * mem[288]) + (32 * mem[256]) + 32], mem[320], mem[(64 * txCount - arg1) + (32 * mem[288]) + (32 * mem[256]) + 672 len (32 * mem[(32 * txCount - arg1) + 384]) + (32 * _5688) + (32 * mem[320]) + 64]), 
                       (32 * mem[256]) + 192,
                       (32 * mem[288]) + (32 * mem[256]) + 224,
                       (32 * mem[320]) + (32 * mem[288]) + (32 * mem[256]) + 256,
                       (32 * _5688) + (32 * mem[320]) + (32 * mem[288]) + (32 * mem[256]) + 288
            mem[(32 * _5688) + (32 * mem[320]) + (32 * mem[288]) + (32 * mem[256]) + (64 * txCount - arg1) + 736] = mem[(32 * txCount - arg1) + 416]
            mem[(32 * _5688) + (32 * mem[320]) + (32 * mem[288]) + (32 * mem[256]) + (64 * txCount - arg1) + 768 len floor32((32 * _6328) - 1)] = mem[(32 * txCount - arg1) + 448 len floor32((32 * _6328) - 1)]
            return Array(len=mem[256], data=mem[(64 * txCount - arg1) + 608 len (32 * mem[288]) + (32 * mem[256]) + 32], mem[320], mem[(64 * txCount - arg1) + (32 * mem[288]) + (32 * mem[256]) + 672 len (32 * _6328) + (32 * _5688) + (32 * mem[320]) + 64]), 
                   (32 * mem[256]) + 192,
                   (32 * mem[288]) + (32 * mem[256]) + 224,
                   (32 * mem[320]) + (32 * mem[288]) + (32 * mem[256]) + 256,
                   (32 * _5688) + (32 * mem[320]) + (32 * mem[288]) + (32 * mem[256]) + 288
        mem[(64 * txCount - arg1) + 384] = txCount - arg1
        mem[64] = (98 * txCount) + (-98 * arg1) + 416
        s = 0
        s = 0
        s = 0
        idx = arg1
        while arg1 < idx + txCount - arg1:
            require s < mem[256]
            mem[(32 * s) + 288] = index2txKey[arg1 + 1]
            mem[0] = stor11[stor9[arg1 + 1]].field_256
            mem[32] = 5
            require s < mem[288]
            mem[(32 * s) + 320] = index2PolicyId[stor11[stor9[arg1 + 1]].field_256]
            require s < mem[320]
            mem[(32 * s) + 352] = stor11[stor9[arg1 + 1]].field_512
            require s < mem[(32 * txCount - arg1) + 352]
            mem[(32 * txCount - arg1) + (32 * s) + 384] = stor11[stor9[arg1 + 1]].field_768
            require stor11[stor9[arg1 + 1]].field_0 <= 2
            require s < mem[(64 * txCount - arg1) + 384]
            mem[(64 * txCount - arg1) + (32 * s) + 416] = stor11[stor9[arg1 + 1]].field_0
            s = sha3(index2txKey[arg1 + 1], 11)
            s = index2txKey[arg1 + 1]
            s = s + 1
            idx = idx + 1
            continue 
        mem[(98 * txCount) + (-98 * arg1) + 416] = 160
        mem[(98 * txCount) + (-98 * arg1) + 576] = mem[256]
        _2410 = mem[256]
        mem[(98 * txCount) + (-98 * arg1) + 608 len floor32(mem[256])] = mem[288 len floor32(mem[256])]
        mem[(98 * txCount) + (-98 * arg1) + 448] = (32 * mem[256]) + 192
        mem[(32 * _2410) + (98 * txCount) + (-98 * arg1) + 608] = mem[288]
        _3829 = mem[288]
        mem[(32 * _2410) + (98 * txCount) + (-98 * arg1) + 640 len floor32(mem[288])] = mem[320 len floor32(mem[288])]
        mem[(98 * txCount) + (-98 * arg1) + 480] = (32 * mem[288]) + (32 * _2410) + 224
        mem[(32 * _3829) + (32 * _2410) + (98 * txCount) + (-98 * arg1) + 640] = mem[320]
        _4853 = mem[320]
        mem[(32 * _3829) + (32 * _2410) + (98 * txCount) + (-98 * arg1) + 672 len floor32(mem[320])] = mem[352 len floor32(mem[320])]
        mem[(98 * txCount) + (-98 * arg1) + 512] = (32 * _4853) + (32 * _3829) + (32 * _2410) + 256
        mem[(32 * _4853) + (32 * _3829) + (32 * _2410) + (98 * txCount) + (-98 * arg1) + 672] = mem[(32 * txCount - arg1) + 352]
        _5685 = mem[(32 * txCount - arg1) + 352]
        mem[(32 * _4853) + (32 * _3829) + (32 * _2410) + (98 * txCount) + (-98 * arg1) + 704 len floor32(mem[(32 * txCount - arg1) + 352])] = mem[(32 * txCount - arg1) + 384 len floor32(mem[(32 * txCount - arg1) + 352])]
        mem[(98 * txCount) + (-98 * arg1) + 544] = (32 * _5685) + (32 * _4853) + (32 * _3829) + (32 * _2410) + 288
        mem[(32 * _5685) + (32 * _4853) + (32 * _3829) + (32 * _2410) + (98 * txCount) + (-98 * arg1) + 704] = mem[(64 * txCount - arg1) + 384]
        _6325 = mem[(64 * txCount - arg1) + 384]
        if 0 >= 32 * mem[(64 * txCount - arg1) + 384]:
            return 160, 
                   mem[(98 * txCount) + (-98 * arg1) + 448 len 64],
                   (32 * _4853) + (32 * _3829) + (32 * _2410) + 256,
                   (32 * _5685) + (32 * _4853) + (32 * _3829) + (32 * _2410) + 288,
                   mem[(98 * txCount) + (-98 * arg1) + 576 len (32 * mem[(64 * txCount - arg1) + 384]) + (32 * _5685) + (32 * _4853) + (32 * _3829) + (32 * _2410) + 160]
        mem[(32 * _5685) + (32 * _4853) + (32 * _3829) + (32 * _2410) + (98 * txCount) + (-98 * arg1) + 736] = mem[(64 * txCount - arg1) + 416]
        mem[(32 * _5685) + (32 * _4853) + (32 * _3829) + (32 * _2410) + (98 * txCount) + (-98 * arg1) + 768 len floor32((32 * _6325) - 1)] = mem[(64 * txCount - arg1) + 448 len floor32((32 * _6325) - 1)]
        return 160, 
               mem[(98 * txCount) + (-98 * arg1) + 448 len 64],
               (32 * _4853) + (32 * _3829) + (32 * _2410) + 256,
               (32 * _5685) + (32 * _4853) + (32 * _3829) + (32 * _2410) + 288,
               mem[(98 * txCount) + (-98 * arg1) + 576 len (32 * _6325) + (32 * _5685) + (32 * _4853) + (32 * _3829) + (32 * _2410) + 160]
    mem[(32 * txCount - arg1) + 320] = txCount - arg1
    if 32 * txCount - arg1 >= 64 * txCount - arg1:
        mem[(32 * txCount - arg1) + 352] = txCount - arg1
        if 32 * txCount - arg1 >= 64 * txCount - arg1:
            mem[(32 * txCount - arg1) + 384] = txCount - arg1
            s = 0
            s = 0
            s = 0
            idx = arg1
            while arg1 < idx + txCount - arg1:
                require s < mem[256]
                mem[(32 * s) + 288] = index2txKey[arg1 + 1]
                mem[0] = stor11[stor9[arg1 + 1]].field_256
                mem[32] = 5
                require s < mem[288]
                mem[(32 * s) + 320] = index2PolicyId[stor11[stor9[arg1 + 1]].field_256]
                require s < mem[(32 * txCount - arg1) + 320]
                mem[(32 * txCount - arg1) + (32 * s) + 352] = stor11[stor9[arg1 + 1]].field_512
                require s < mem[(32 * txCount - arg1) + 352]
                mem[(32 * txCount - arg1) + (32 * s) + 384] = stor11[stor9[arg1 + 1]].field_768
                require stor11[stor9[arg1 + 1]].field_0 <= 2
                require s < mem[(32 * txCount - arg1) + 384]
                mem[(32 * txCount - arg1) + (32 * s) + 416] = stor11[stor9[arg1 + 1]].field_0
                s = sha3(index2txKey[arg1 + 1], 11)
                s = index2txKey[arg1 + 1]
                s = s + 1
                idx = idx + 1
                continue 
            mem[(64 * txCount - arg1) + 416] = 160
            mem[(64 * txCount - arg1) + 576] = mem[256]
            mem[(64 * txCount - arg1) + 608 len floor32(mem[256])] = mem[288 len floor32(mem[256])]
            mem[(64 * txCount - arg1) + 448] = (32 * mem[256]) + 192
            mem[(32 * mem[256]) + (64 * txCount - arg1) + 608] = mem[288]
            mem[(32 * mem[256]) + (64 * txCount - arg1) + 640 len floor32(mem[288])] = mem[320 len floor32(mem[288])]
            mem[(64 * txCount - arg1) + 480] = (32 * mem[288]) + (32 * mem[256]) + 224
            mem[(32 * mem[288]) + (32 * mem[256]) + (64 * txCount - arg1) + 640] = mem[(32 * txCount - arg1) + 320]
            _4850 = mem[(32 * txCount - arg1) + 320]
            mem[(32 * mem[288]) + (32 * mem[256]) + (64 * txCount - arg1) + 672 len floor32(mem[(32 * txCount - arg1) + 320])] = mem[(32 * txCount - arg1) + 352 len floor32(mem[(32 * txCount - arg1) + 320])]
            mem[(64 * txCount - arg1) + 512] = (32 * _4850) + (32 * mem[288]) + (32 * mem[256]) + 256
            mem[(32 * _4850) + (32 * mem[288]) + (32 * mem[256]) + (64 * txCount - arg1) + 672] = mem[(32 * txCount - arg1) + 352]
            _5682 = mem[(32 * txCount - arg1) + 352]
            mem[(32 * _4850) + (32 * mem[288]) + (32 * mem[256]) + (64 * txCount - arg1) + 704 len floor32(mem[(32 * txCount - arg1) + 352])] = mem[(32 * txCount - arg1) + 384 len floor32(mem[(32 * txCount - arg1) + 352])]
            mem[(64 * txCount - arg1) + 544] = (32 * _5682) + (32 * _4850) + (32 * mem[288]) + (32 * mem[256]) + 288
            mem[(32 * _5682) + (32 * _4850) + (32 * mem[288]) + (32 * mem[256]) + (64 * txCount - arg1) + 704] = mem[(32 * txCount - arg1) + 384]
            _6322 = mem[(32 * txCount - arg1) + 384]
            if 0 >= 32 * mem[(32 * txCount - arg1) + 384]:
                return Array(len=mem[256], data=mem[(64 * txCount - arg1) + 608 len (32 * mem[(32 * txCount - arg1) + 384]) + (32 * _5682) + (32 * _4850) + (32 * mem[288]) + (32 * mem[256]) + 128]), 
                       (32 * mem[256]) + 192,
                       (32 * mem[288]) + (32 * mem[256]) + 224,
                       (32 * _4850) + (32 * mem[288]) + (32 * mem[256]) + 256,
                       (32 * _5682) + (32 * _4850) + (32 * mem[288]) + (32 * mem[256]) + 288
            mem[(32 * _5682) + (32 * _4850) + (32 * mem[288]) + (32 * mem[256]) + (64 * txCount - arg1) + 736] = mem[(32 * txCount - arg1) + 416]
            mem[(32 * _5682) + (32 * _4850) + (32 * mem[288]) + (32 * mem[256]) + (64 * txCount - arg1) + 768 len floor32((32 * _6322) - 1)] = mem[(32 * txCount - arg1) + 448 len floor32((32 * _6322) - 1)]
            return Array(len=mem[256], data=mem[(64 * txCount - arg1) + 608 len (32 * _6322) + (32 * _5682) + (32 * _4850) + (32 * mem[288]) + (32 * mem[256]) + 128]), 
                   (32 * mem[256]) + 192,
                   (32 * mem[288]) + (32 * mem[256]) + 224,
                   (32 * _4850) + (32 * mem[288]) + (32 * mem[256]) + 256,
                   (32 * _5682) + (32 * _4850) + (32 * mem[288]) + (32 * mem[256]) + 288
        mem[(64 * txCount - arg1) + 384] = txCount - arg1
        mem[64] = (98 * txCount) + (-98 * arg1) + 416
        s = 0
        s = 0
        s = 0
        idx = arg1
        while arg1 < idx + txCount - arg1:
            require s < mem[256]
            mem[(32 * s) + 288] = index2txKey[arg1 + 1]
            mem[0] = stor11[stor9[arg1 + 1]].field_256
            mem[32] = 5
            require s < mem[288]
            mem[(32 * s) + 320] = index2PolicyId[stor11[stor9[arg1 + 1]].field_256]
            require s < mem[(32 * txCount - arg1) + 320]
            mem[(32 * txCount - arg1) + (32 * s) + 352] = stor11[stor9[arg1 + 1]].field_512
            require s < mem[(32 * txCount - arg1) + 352]
            mem[(32 * txCount - arg1) + (32 * s) + 384] = stor11[stor9[arg1 + 1]].field_768
            require stor11[stor9[arg1 + 1]].field_0 <= 2
            require s < mem[(64 * txCount - arg1) + 384]
            mem[(64 * txCount - arg1) + (32 * s) + 416] = stor11[stor9[arg1 + 1]].field_0
            s = sha3(index2txKey[arg1 + 1], 11)
            s = index2txKey[arg1 + 1]
            s = s + 1
            idx = idx + 1
            continue 
        mem[(98 * txCount) + (-98 * arg1) + 416] = 160
        mem[(98 * txCount) + (-98 * arg1) + 576] = mem[256]
        _2398 = mem[256]
        mem[(98 * txCount) + (-98 * arg1) + 608 len floor32(mem[256])] = mem[288 len floor32(mem[256])]
        mem[(98 * txCount) + (-98 * arg1) + 448] = (32 * mem[256]) + 192
        mem[(32 * _2398) + (98 * txCount) + (-98 * arg1) + 608] = mem[288]
        _3823 = mem[288]
        mem[(32 * _2398) + (98 * txCount) + (-98 * arg1) + 640 len floor32(mem[288])] = mem[320 len floor32(mem[288])]
        mem[(98 * txCount) + (-98 * arg1) + 480] = (32 * mem[288]) + (32 * _2398) + 224
        mem[(32 * _3823) + (32 * _2398) + (98 * txCount) + (-98 * arg1) + 640] = mem[(32 * txCount - arg1) + 320]
        _4847 = mem[(32 * txCount - arg1) + 320]
        mem[(32 * _3823) + (32 * _2398) + (98 * txCount) + (-98 * arg1) + 672 len floor32(mem[(32 * txCount - arg1) + 320])] = mem[(32 * txCount - arg1) + 352 len floor32(mem[(32 * txCount - arg1) + 320])]
        mem[(98 * txCount) + (-98 * arg1) + 512] = (32 * _4847) + (32 * _3823) + (32 * _2398) + 256
        mem[(32 * _4847) + (32 * _3823) + (32 * _2398) + (98 * txCount) + (-98 * arg1) + 672] = mem[(32 * txCount - arg1) + 352]
        _5679 = mem[(32 * txCount - arg1) + 352]
        mem[(32 * _4847) + (32 * _3823) + (32 * _2398) + (98 * txCount) + (-98 * arg1) + 704 len floor32(mem[(32 * txCount - arg1) + 352])] = mem[(32 * txCount - arg1) + 384 len floor32(mem[(32 * txCount - arg1) + 352])]
        mem[(98 * txCount) + (-98 * arg1) + 544] = (32 * _5679) + (32 * _4847) + (32 * _3823) + (32 * _2398) + 288
        mem[(32 * _5679) + (32 * _4847) + (32 * _3823) + (32 * _2398) + (98 * txCount) + (-98 * arg1) + 704] = mem[(64 * txCount - arg1) + 384]
        _6319 = mem[(64 * txCount - arg1) + 384]
        if 0 >= 32 * mem[(64 * txCount - arg1) + 384]:
            return 160, 
                   mem[(98 * txCount) + (-98 * arg1) + 448 len 64],
                   (32 * _4847) + (32 * _3823) + (32 * _2398) + 256,
                   (32 * _5679) + (32 * _4847) + (32 * _3823) + (32 * _2398) + 288,
                   mem[(98 * txCount) + (-98 * arg1) + 576 len (32 * mem[(64 * txCount - arg1) + 384]) + (32 * _5679) + (32 * _4847) + (32 * _3823) + (32 * _2398) + 160]
        mem[(32 * _5679) + (32 * _4847) + (32 * _3823) + (32 * _2398) + (98 * txCount) + (-98 * arg1) + 736] = mem[(64 * txCount - arg1) + 416]
        mem[(32 * _5679) + (32 * _4847) + (32 * _3823) + (32 * _2398) + (98 * txCount) + (-98 * arg1) + 768 len floor32((32 * _6319) - 1)] = mem[(64 * txCount - arg1) + 448 len floor32((32 * _6319) - 1)]
        return 160, 
               mem[(98 * txCount) + (-98 * arg1) + 448 len 64],
               (32 * _4847) + (32 * _3823) + (32 * _2398) + 256,
               (32 * _5679) + (32 * _4847) + (32 * _3823) + (32 * _2398) + 288,
               mem[(98 * txCount) + (-98 * arg1) + 576 len (32 * _6319) + (32 * _5679) + (32 * _4847) + (32 * _3823) + (32 * _2398) + 160]
    mem[(64 * txCount - arg1) + 352] = txCount - arg1
    if msize >= (98 * txCount) + (-98 * arg1) + 384:
        _msize = max((64 * txCount - arg1) + 32, 32 * txCount - arg1)
        mem[_msize + 352] = txCount - arg1
        mem[64] = (_msize + 352) + (32 * txCount - arg1) + 32
        s = 0
        s = 0
        s = 0
        idx = arg1
        while arg1 < idx + txCount - arg1:
            require s < mem[256]
            mem[(32 * s) + 288] = index2txKey[arg1 + 1]
            mem[0] = stor11[stor9[arg1 + 1]].field_256
            mem[32] = 5
            require s < mem[288]
            mem[(32 * s) + 320] = index2PolicyId[stor11[stor9[arg1 + 1]].field_256]
            require s < mem[(32 * txCount - arg1) + 320]
            mem[(32 * txCount - arg1) + (32 * s) + 352] = stor11[stor9[arg1 + 1]].field_512
            require s < mem[(64 * txCount - arg1) + 352]
            mem[(64 * txCount - arg1) + (32 * s) + 384] = stor11[stor9[arg1 + 1]].field_768
            require stor11[stor9[arg1 + 1]].field_0 <= 2
            require s < mem[_msize + 352]
            mem[(_msize + 352) + (32 * s) + 32] = stor11[stor9[arg1 + 1]].field_0
            s = sha3(index2txKey[arg1 + 1], 11)
            s = index2txKey[arg1 + 1]
            s = s + 1
            idx = idx + 1
            continue 
        mem[(_msize + 352) + (32 * txCount - arg1) + 32] = 160
        mem[(_msize + 352) + (32 * txCount - arg1) + 192] = mem[256]
        mem[(_msize + 352) + (32 * txCount - arg1) + 224 len floor32(mem[256])] = mem[288 len floor32(mem[256])]
        mem[(_msize + 352) + (32 * txCount - arg1) + 64] = (32 * mem[256]) + 192
        mem[(32 * mem[256]) + (_msize + 352) + (32 * txCount - arg1) + 224] = mem[288]
        mem[(32 * mem[256]) + (_msize + 352) + (32 * txCount - arg1) + 256 len floor32(mem[288])] = mem[320 len floor32(mem[288])]
        mem[(_msize + 352) + (32 * txCount - arg1) + 96] = (32 * mem[288]) + (32 * mem[256]) + 224
        mem[(32 * mem[288]) + (32 * mem[256]) + (_msize + 352) + (32 * txCount - arg1) + 256] = mem[(32 * txCount - arg1) + 320]
        mem[(32 * mem[288]) + (32 * mem[256]) + (_msize + 352) + (32 * txCount - arg1) + 288 len floor32(mem[(32 * txCount - arg1) + 320])] = mem[(32 * txCount - arg1) + 352 len floor32(mem[(32 * txCount - arg1) + 320])]
        mem[(_msize + 352) + (32 * txCount - arg1) + 128] = (32 * mem[(32 * txCount - arg1) + 320]) + (32 * mem[288]) + (32 * mem[256]) + 256
        mem[(32 * mem[(32 * txCount - arg1) + 320]) + (32 * mem[288]) + (32 * mem[256]) + (_msize + 352) + (32 * txCount - arg1) + 288] = mem[(64 * txCount - arg1) + 352]
        _5676 = mem[(64 * txCount - arg1) + 352]
        mem[(32 * mem[(32 * txCount - arg1) + 320]) + (32 * mem[288]) + (32 * mem[256]) + (_msize + 352) + (32 * txCount - arg1) + 320 len floor32(mem[(64 * txCount - arg1) + 352])] = mem[(64 * txCount - arg1) + 384 len floor32(mem[(64 * txCount - arg1) + 352])]
        mem[(_msize + 352) + (32 * txCount - arg1) + 160] = (32 * _5676) + (32 * mem[(32 * txCount - arg1) + 320]) + (32 * mem[288]) + (32 * mem[256]) + 288
        mem[(32 * _5676) + (32 * mem[(32 * txCount - arg1) + 320]) + (32 * mem[288]) + (32 * mem[256]) + (_msize + 352) + (32 * txCount - arg1) + 320] = mem[_msize + 352]
        _6316 = mem[_msize + 352]
        if 0 >= 32 * mem[max((64 * txCount - arg1) + 32, 32 * txCount - arg1) + 352]:
            return 160, 
                   mem[(_msize + 352) + (32 * txCount - arg1) + 64 len (32 * mem[_msize + 352]) + (32 * _5676) + (32 * mem[(32 * txCount - arg1) + 320]) + (32 * mem[288]) + (32 * mem[256]) + 288]
        mem[(32 * _5676) + (32 * mem[(32 * txCount - arg1) + 320]) + (32 * mem[288]) + (32 * mem[256]) + (_msize + 352) + (32 * txCount - arg1) + 352] = mem[(_msize + 352) + 32]
        mem[(32 * _5676) + (32 * mem[(32 * txCount - arg1) + 320]) + (32 * mem[288]) + (32 * mem[256]) + (_msize + 352) + (32 * txCount - arg1) + 384 len floor32((32 * _6316) - 1)] = mem[(_msize + 352) + 64 len floor32((32 * _6316) - 1)]
        return 160, 
               mem[(_msize + 352) + (32 * txCount - arg1) + 64 len (32 * _6316) + (32 * _5676) + (32 * mem[(32 * txCount - arg1) + 320]) + (32 * mem[288]) + (32 * mem[256]) + 288]
    mem[(98 * txCount) + (-98 * arg1) + 384] = txCount - arg1
    mem[64] = (98 * txCount) + (-98 * arg1) + (32 * txCount - arg1) + 416
    s = 0
    s = 0
    s = 0
    idx = arg1
    while arg1 < idx + txCount - arg1:
        require s < mem[256]
        mem[(32 * s) + 288] = index2txKey[arg1 + 1]
        mem[0] = stor11[stor9[arg1 + 1]].field_256
        mem[32] = 5
        require s < mem[288]
        mem[(32 * s) + 320] = index2PolicyId[stor11[stor9[arg1 + 1]].field_256]
        require s < mem[(32 * txCount - arg1) + 320]
        mem[(32 * txCount - arg1) + (32 * s) + 352] = stor11[stor9[arg1 + 1]].field_512
        require s < mem[(64 * txCount - arg1) + 352]
        mem[(64 * txCount - arg1) + (32 * s) + 384] = stor11[stor9[arg1 + 1]].field_768
        require stor11[stor9[arg1 + 1]].field_0 <= 2
        require s < mem[(98 * txCount) + (-98 * arg1) + 384]
        mem[(98 * txCount) + (-98 * arg1) + (32 * s) + 416] = stor11[stor9[arg1 + 1]].field_0
        s = sha3(index2txKey[arg1 + 1], 11)
        s = index2txKey[arg1 + 1]
        s = s + 1
        idx = idx + 1
        continue 
    _2384 = mem[64]
    mem[mem[64]] = 160
    mem[mem[64] + 160] = mem[256]
    _2386 = mem[256]
    mem[mem[64] + 192 len floor32(mem[256])] = mem[288 len floor32(mem[256])]
    mem[mem[64] + 32] = (32 * mem[256]) + 192
    mem[(32 * _2386) + mem[64] + 192] = mem[288]
    _3817 = mem[288]
    mem[(32 * _2386) + mem[64] + 224 len floor32(mem[288])] = mem[320 len floor32(mem[288])]
    mem[mem[64] + 64] = (32 * _3817) + (32 * _2386) + 224
    mem[(32 * _3817) + (32 * _2386) + _2384 + 224] = mem[(32 * txCount - arg1) + 320]
    _4841 = mem[(32 * txCount - arg1) + 320]
    mem[(32 * _3817) + (32 * _2386) + _2384 + 256 len floor32(mem[(32 * txCount - arg1) + 320])] = mem[(32 * txCount - arg1) + 352 len floor32(mem[(32 * txCount - arg1) + 320])]
    mem[_2384 + 96] = (32 * _4841) + (32 * _3817) + (32 * _2386) + 256
    mem[(32 * _4841) + (32 * _3817) + (32 * _2386) + _2384 + 256] = mem[(64 * txCount - arg1) + 352]
    _5673 = mem[(64 * txCount - arg1) + 352]
    mem[(32 * _4841) + (32 * _3817) + (32 * _2386) + _2384 + 288 len floor32(mem[(64 * txCount - arg1) + 352])] = mem[(64 * txCount - arg1) + 384 len floor32(mem[(64 * txCount - arg1) + 352])]
    mem[_2384 + 128] = (32 * _5673) + (32 * _4841) + (32 * _3817) + (32 * _2386) + 288
    mem[(32 * _5673) + (32 * _4841) + (32 * _3817) + (32 * _2386) + _2384 + 288] = mem[(98 * txCount) + (-98 * arg1) + 384]
    _6313 = mem[(98 * txCount) + (-98 * arg1) + 384]
    if 0 >= 32 * mem[(98 * txCount) + (-98 * arg1) + 384]:
        return memory
          from mem[64]
           len (32 * mem[(98 * txCount) + (-98 * arg1) + 384]) + (32 * _5673) + (32 * _4841) + (32 * _3817) + (32 * _2386) + _2384 + -mem[64] + 320
    mem[(32 * _5673) + (32 * _4841) + (32 * _3817) + (32 * _2386) + _2384 + 320] = mem[(98 * txCount) + (-98 * arg1) + 416]
    mem[(32 * _5673) + (32 * _4841) + (32 * _3817) + (32 * _2386) + _2384 + 352 len floor32((32 * _6313) - 1)] = mem[(98 * txCount) + (-98 * arg1) + 448 len floor32((32 * _6313) - 1)]
    return memory
      from mem[64]
       len (32 * _6313) + (32 * _5673) + (32 * _4841) + (32 * _3817) + (32 * _2386) + _2384 + -mem[64] + 320
}



}
