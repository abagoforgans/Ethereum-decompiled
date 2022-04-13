contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[57 len 902]
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

function sub_6a640e95(?) payable {
    mem[128 len arg2.length] = arg2[all]
    require not secretBids[address(msg.sender)].field_0
    secretBids[address(msg.sender)].field_0 = 1
    secretBids[address(msg.sender)].field_512 = arg1
    secretBids[address(msg.sender)].field_256 = msg.value
    secretBidCount++
    mem[ceil32(arg2.length) + 128] = arg1
    mem[ceil32(arg2.length) + 160] = 64
    mem[ceil32(arg2.length) + 192] = arg2.length
    if arg2.length:
        mem[ceil32(arg2.length) + 224] = mem[128]
        mem[ceil32(arg2.length) + 256 len floor32(arg2.length - 1)] = mem[160 len floor32(arg2.length - 1)]
    emit 0x10a98867: arg1, Array(len=arg2.length, data=mem[ceil32(arg2.length) + 224 len arg2.length]), secretBidCount + 1 / 4
}



}
