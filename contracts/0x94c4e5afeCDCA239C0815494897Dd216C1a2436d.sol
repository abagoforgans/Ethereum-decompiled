contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[57 len 1102]
}



// =====================  Runtime code  =====================


address owner;
mapping of struct secretBids;
uint256 secretBidCount;
uint8 lockState;

function lockState() {
    require lockState <= 1
    return lockState
}

function owner() {
    return owner
}

function secretBids(address arg1) {
    return bool(secretBids[arg1].field_0), bool(secretBids[arg1].field_8), secretBids[arg1].field_256, secretBids[arg1].field_512
}

function secretBidCount() {
    return secretBidCount
}

function haraKiri() {
    require owner == msg.sender
    require lockState <= 1
    require not lockState
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function sub_724ea4c9(?) payable {
    require not secretBids[address(msg.sender)].field_0
    secretBids[address(msg.sender)].field_0 = 1
    secretBids[address(msg.sender)].field_512 = arg1
    secretBids[address(msg.sender)].field_256 = msg.value
    secretBidCount++
    emit 0x37425c0f: arg1, call.data[36], call.data[68 len 8160], Mask(247, 9, secretBidCount + 1) >> 9
}

function sub_ce2f3d1a(?) payable {
    require not secretBids[address(msg.sender)].field_0
    secretBids[address(msg.sender)].field_0 = 1
    secretBids[address(msg.sender)].field_512 = arg1
    secretBids[address(msg.sender)].field_256 = msg.value
    secretBidCount++
    emit 0x253ca708: arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, Mask(247, 9, secretBidCount + 1) >> 9
}



}
