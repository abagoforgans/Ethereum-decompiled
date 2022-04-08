contract main {


// =======================  Init code  ======================


const _fallback = code.data[28 len 887]




// =====================  Runtime code  =====================


mapping of address owners;

function addr(bytes32 arg1) {
    return owners[arg1]
}

function owners(bytes32 arg1) {
    return owners[arg1]
}

function kill() {
    selfdestruct(0x18ee650c5fa2130b581184a3705d8a554a5cdbc1)
}

function _fallback() payable {
    revert
}

function supportsInterface(bytes4 arg1) {
    return (Mask(32, 224, arg1) == 0x3b3b57de00000000000000000000000000000000000000000000000000000000)
}

function setAddr(bytes32 arg1, address arg2) {
    if owners[0xe575c31542ca71be288942af54f438e05e0767059a847d3d8a35e06ff3cb0f86][arg1]:
        require owners[0xe575c31542ca71be288942af54f438e05e0767059a847d3d8a35e06ff3cb0f86][arg1] == msg.sender
    owners[0xe575c31542ca71be288942af54f438e05e0767059a847d3d8a35e06ff3cb0f86][arg1] = arg2
    owners[0x75d59894034fc8b754d867e0641568c686a9a0dee43550703d8686f99457d6d2][arg1] = arg2
    emit AddrChanged(arg2, sha3(0xe575c31542ca71be288942af54f438e05e0767059a847d3d8a35e06ff3cb0f86, arg1));
    emit AddrChanged(arg2, sha3(0x75d59894034fc8b754d867e0641568c686a9a0dee43550703d8686f99457d6d2, arg1));
}



}
