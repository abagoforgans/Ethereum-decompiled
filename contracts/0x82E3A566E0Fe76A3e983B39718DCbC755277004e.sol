contract main {


// =======================  Init code  ======================


uint128 stor0; offset 160
address stor0;
address stor2;

function _fallback() payable {
    Mask(96, 0, stor0.field_160) = 0
    require not msg.value
    address(stor0.field_0) = msg.sender
    stor2 = code.data[10751 len 20]
    return code.data[214 len 10525]
}



// =====================  Runtime code  =====================


#
#  - fillDebtOrder(address arg1, address[6] arg2, uint256[8] arg3, bytes32[1] arg4, uint8[3] arg5, bytes32[3] arg6, bytes32[3] arg7)
#
const NULL_ISSUANCE_HASH = 0

const EXTERNAL_QUERY_GAS_LIMIT = 8000


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
address debtTokenAddress;
address TOKEN_TRANSFER_PROXYAddress;
mapping of uint8 stor3;
mapping of uint8 stor4;
mapping of address sub_98495361;

function debtOrderCancelled(bytes32 arg1) {
    return bool(stor4[arg1])
}

function paused() {
    return bool(uint8(stor0.field_160))
}

function issuanceCancelled(bytes32 arg1) {
    return bool(stor3[arg1])
}

function owner() {
    return owner
}

function TOKEN_TRANSFER_PROXY() {
    return TOKEN_TRANSFER_PROXYAddress
}

function sub_98495361(?) {
    return sub_98495361[arg1]
}

function debtToken() {
    return debtTokenAddress
}

function _fallback() payable {
    revert
}

function sub_0699bf2e(?) {
    sub_98495361[address(msg.sender)] = arg1
}

function setDebtToken(address arg1) {
    require msg.sender == owner
    debtTokenAddress = arg1
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

function cancelIssuance(address arg1, address arg2, address arg3, bytes32 arg4, address arg5, uint256 arg6, uint256 arg7) {
    require not uint8(stor0.field_160)
    if arg2 != msg.sender:
        require msg.sender == arg5
    stor3[arg1][arg2][arg5][arg6][arg3][arg4][arg7] = 1
    emit LogIssuanceCancelled(sha3(arg1, arg2, arg5, arg6, arg3, arg4, arg7), msg.sender);
}

function cancelDebtOrder(address[6] arg1, uint256[8] arg2, bytes32[1] arg3) {
    require not uint8(stor0.field_160)
    require msg.sender == uint64(call.data[36]) << 96
    stor4[this.address][sha3(address(call.data[4]), address(call.data[36]), address(call.data[68]), call.data[196], address(call.data[100]), call.data[452], call.data[228])][call.data[292]][call.data[260]][address(call.data[132])][call.data[388]][call.data[356]][address(call.data[164])][call.data[324]][call.data[420]] = 1
    emit LogDebtOrderCancelled(sha3(this.address, sha3(address(call.data[4]), address(call.data[36]), address(call.data[68]), call.data[196], address(call.data[100]), call.data[452], call.data[228]), call.data[292], call.data[260], address(call.data[132]), call.data[388], call.data[356], address(call.data[164]), call.data[324], call.data[420]), msg.sender);
}



}
