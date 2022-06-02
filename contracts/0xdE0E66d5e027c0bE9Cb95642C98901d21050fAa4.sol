contract main {




// =====================  Runtime code  =====================


address owner;
address redEnvelopeAddress;

function redEnvelope() {
    return redEnvelopeAddress
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function sub_27507605(?) {
    require msg.sender == owner
    redEnvelopeAddress = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getRandom(bytes32 arg1) {
    require redEnvelopeAddress
    require ext_code.size(redEnvelopeAddress)
    call redEnvelopeAddress.0x932a3ca1 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[64]
    hash = sha256hash(this.address, block.timestamp, block.hash(block.number - 1)) 
    if not sha256hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ((ext_call.return_data[32] - ext_call.return_data[96] - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * ext_call.return_data[32] / ext_call.return_data[64] / ext_call.return_data[64]) - (ext_call.return_data[64] * ext_call.return_data[32] / ext_call.return_data[64] / ext_call.return_data[64]) + (ext_call.return_data[128] * ext_call.return_data[32] / ext_call.return_data[64] / ext_call.return_data[64]) / 100 * hash % 100) + (ext_call.return_data[32] / ext_call.return_data[64] / ext_call.return_data[64]))
}



}
