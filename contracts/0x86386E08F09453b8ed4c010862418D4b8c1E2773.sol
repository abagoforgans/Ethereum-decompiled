contract main {


// =======================  Init code  ======================


uint128 stor0; offset 160
address stor0;

function _fallback() payable {
    Mask(96, 0, stor0.field_160) = 0
    address(stor0.field_0) = msg.sender
    return code.data[109 len 9001]
}



// =====================  Runtime code  =====================


const sub_2be84c66(?) = 'debt-registry-edit'

const sub_8dadc81d(?) = 'debt-registry-insert'


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
mapping of struct termsContractParameters;
array of struct stor2;
mapping of uint8 stor3;
mapping of uint256 stor4;
array of struct stor5;
mapping of uint8 stor6;
mapping of uint256 stor7;
array of struct stor8;

function getTermsContractParameters(bytes32 arg1) {
    require termsContractParameters[arg1].field_256
    return termsContractParameters[arg1].field_1280
}

function paused() {
    return bool(uint8(stor0.field_160))
}

function getTerms(bytes32 arg1) {
    require termsContractParameters[arg1].field_256
    return termsContractParameters[arg1].field_1024, termsContractParameters[arg1].field_1280
}

function owner() {
    return owner
}

function get(bytes32 arg1) {
    return termsContractParameters[arg1].field_0, 
           termsContractParameters[arg1].field_256,
           termsContractParameters[arg1].field_512,
           termsContractParameters[arg1].field_768,
           termsContractParameters[arg1].field_1024,
           termsContractParameters[arg1].field_1280,
           termsContractParameters[arg1].field_1536
}

function getBeneficiary(bytes32 arg1) {
    require termsContractParameters[arg1].field_256
    return termsContractParameters[arg1].field_256
}

function getIssuanceBlockTimestamp(bytes32 arg1) {
    require termsContractParameters[arg1].field_256
    return termsContractParameters[arg1].field_1536
}

function getTermsContract(bytes32 arg1) {
    require termsContractParameters[arg1].field_256
    return termsContractParameters[arg1].field_1024
}

function _fallback() payable {
    revert
}

function doesEntryExist(bytes32 arg1) {
    return not not termsContractParameters[arg1].field_256
}

function unpause() {
    require msg.sender == owner
    require uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 1
    emit Pause()
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function modifyBeneficiary(bytes32 arg1, address arg2) {
    require stor6[address(msg.sender)]
    require not uint8(stor0.field_160)
    require termsContractParameters[arg1].field_256
    require arg2
    termsContractParameters[arg1].field_256 = arg2
    emit LogModifyEntryBeneficiary(arg1, termsContractParameters[arg1].field_256, arg2);
}

function addAuthorizedEditAgent(address arg1) {
    require msg.sender == owner
    require not stor6[address(arg1)]
    stor6[address(arg1)] = 1
    stor8.length++
    if not stor8.length <= stor8.length + 1:
        idx = stor8.length + 1
        while stor8.length > idx:
            stor8[idx].field_0 = 0
            idx = idx + 1
            continue 
    stor8[stor8.length].field_0 = arg1
    stor7[address(arg1)] = stor8.length - 1
    emit Authorized('debt-registry-edit', arg1);
}

function addAuthorizedInsertAgent(address arg1) {
    require msg.sender == owner
    require not stor3[address(arg1)]
    stor3[address(arg1)] = 1
    stor5.length++
    if not stor5.length <= stor5.length + 1:
        idx = stor5.length + 1
        while stor5.length > idx:
            stor5[idx].field_0 = 0
            idx = idx + 1
            continue 
    stor5[stor5.length].field_0 = arg1
    stor4[address(arg1)] = stor5.length - 1
    emit Authorized('debt-registry-insert', arg1);
}

function revokeEditAgentAuthorization(address arg1) {
    require msg.sender == owner
    require stor6[address(arg1)]
    require stor8.length - 1 < stor8.length
    stor6[address(arg1)] = 0
    require stor7[address(arg1)] < stor8.length
    stor8[stor7[address(arg1)]].field_0 = stor8[stor8.length].field_0
    stor7[stor8[stor8.length].field_0] = stor7[address(arg1)]
    stor7[address(arg1)] = 0
    require stor8.length - 1 < stor8.length
    stor8[stor8.length].field_0 = 0
    stor8.length--
    if not stor8.length <= stor8.length - 1:
        idx = stor8.length - 1
        while stor8.length > idx:
            stor8[idx].field_0 = 0
            idx = idx + 1
            continue 
    emit AuthorizationRevoked('debt-registry-edit', arg1);
}

function revokeInsertAgentAuthorization(address arg1) {
    require msg.sender == owner
    require stor3[address(arg1)]
    require stor5.length - 1 < stor5.length
    stor3[address(arg1)] = 0
    require stor4[address(arg1)] < stor5.length
    stor5[stor4[address(arg1)]].field_0 = stor5[stor5.length].field_0
    stor4[stor5[stor5.length].field_0] = stor4[address(arg1)]
    stor4[address(arg1)] = 0
    require stor5.length - 1 < stor5.length
    stor5[stor5.length].field_0 = 0
    stor5.length--
    if not stor5.length <= stor5.length - 1:
        idx = stor5.length - 1
        while stor5.length > idx:
            stor5[idx].field_0 = 0
            idx = idx + 1
            continue 
    emit AuthorizationRevoked('debt-registry-insert', arg1);
}

function getAuthorizedEditAgents() {
    if not stor8.length:
        mem[(32 * stor8.length) + 192] = 32
        mem[(32 * stor8.length) + 224] = stor8.length
        mem[(32 * stor8.length) + 256 len floor32(stor8.length)] = mem[192 len floor32(stor8.length)]
        return memory
          from (32 * stor8.length) + 192
           len (96 * stor8.length) + 64
    mem[192] = address(stor8.field_0)
    idx = 192
    s = 0
    while (32 * stor8.length) + 160 > idx:
        mem[idx + 32] = stor8[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor8.length) + 256 len floor32(stor8.length)] = mem[192 len floor32(stor8.length)]
    return Array(len=stor8.length, data=mem[192 len floor32(stor8.length)], mem[(32 * stor8.length) + floor32(stor8.length) + 256 len (32 * stor8.length) - floor32(stor8.length)]), 
}

function getAuthorizedInsertAgents() {
    if not stor5.length:
        mem[(32 * stor5.length) + 192] = 32
        mem[(32 * stor5.length) + 224] = stor5.length
        mem[(32 * stor5.length) + 256 len floor32(stor5.length)] = mem[192 len floor32(stor5.length)]
        return memory
          from (32 * stor5.length) + 192
           len (96 * stor5.length) + 64
    mem[192] = address(stor5.field_0)
    idx = 192
    s = 0
    while (32 * stor5.length) + 160 > idx:
        mem[idx + 32] = stor5[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor5.length) + 256 len floor32(stor5.length)] = mem[192 len floor32(stor5.length)]
    return Array(len=stor5.length, data=mem[192 len floor32(stor5.length)], mem[(32 * stor5.length) + floor32(stor5.length) + 256 len (32 * stor5.length) - floor32(stor5.length)]), 
}

function getDebtorsDebts(address arg1) {
    if not stor2[address(arg1)].field_0:
        mem[(32 * stor2[address(arg1)].field_0) + 160] = 32
        mem[(32 * stor2[address(arg1)].field_0) + 192] = stor2[address(arg1)].field_0
        mem[(32 * stor2[address(arg1)].field_0) + 224 len floor32(stor2[address(arg1)].field_0)] = mem[160 len floor32(stor2[address(arg1)].field_0)]
        return memory
          from (32 * stor2[address(arg1)].field_0) + 160
           len (96 * stor2[address(arg1)].field_0) + 64
    mem[160] = stor2[address(arg1)].field_0
    idx = 160
    s = 0
    while (32 * stor2[address(arg1)].field_0) + 128 > idx:
        mem[idx + 32] = stor2[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor2[address(arg1)].field_0) + 224 len floor32(stor2[address(arg1)].field_0)] = mem[160 len floor32(stor2[address(arg1)].field_0)]
    return Array(len=stor2[address(arg1)].field_0, data=mem[160 len floor32(stor2[address(arg1)].field_0)], mem[(32 * stor2[address(arg1)].field_0) + floor32(stor2[address(arg1)].field_0) + 224 len (32 * stor2[address(arg1)].field_0) - floor32(stor2[address(arg1)].field_0)]), 
}

function insert(address arg1, address arg2, address arg3, address arg4, uint256 arg5, address arg6, bytes32 arg7, uint256 arg8) {
    require stor3[address(msg.sender)]
    require not uint8(stor0.field_160)
    require arg2
    require not termsContractParameters[arg1][arg3][arg4][arg5][arg6][arg7][arg8].field_256
    termsContractParameters[arg1][arg3][arg4][arg5][arg6][arg7][arg8].field_0 = arg1
    termsContractParameters[arg1][arg3][arg4][arg5][arg6][arg7][arg8].field_256 = arg2
    termsContractParameters[arg1][arg3][arg4][arg5][arg6][arg7][arg8].field_512 = arg4
    termsContractParameters[arg1][arg3][arg4][arg5][arg6][arg7][arg8].field_768 = arg5
    termsContractParameters[arg1][arg3][arg4][arg5][arg6][arg7][arg8].field_1024 = arg6
    termsContractParameters[arg1][arg3][arg4][arg5][arg6][arg7][arg8].field_1280 = arg7
    termsContractParameters[arg1][arg3][arg4][arg5][arg6][arg7][arg8].field_1536 = block.timestamp
    stor2[address(arg3)].field_0++
    if not stor2[address(arg3)].field_0 <= stor2[address(arg3)].field_0 + 1:
        idx = stor2[address(arg3)].field_0 + 1
        while stor2[address(arg3)].field_0 > idx:
            stor2[address(arg3)][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor2[address(arg3)][stor2[address(arg3)].field_0].field_0 = sha3(arg1, arg3, arg4, arg5, arg6, arg7, arg8)
    emit LogInsertEntry(arg5, address(arg6), arg7, sha3(arg1, arg3, arg4, arg5, arg6, arg7, arg8), arg2, arg4);
    return sha3(arg1, arg3, arg4, arg5, arg6, arg7, arg8)
}



}
