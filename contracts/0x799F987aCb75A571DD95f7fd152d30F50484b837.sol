contract main {


// =======================  Init code  ======================


address stor1;

function _fallback() {
    stor1 = msg.sender
    return code.data[57 len 839]
}



// =====================  Runtime code  =====================


mapping of uint16 pubKeyByHash;
address stor1;

function getPubKeyByHash(bytes28 arg1) {
    return uint256(pubKeyByHash[Mask(224, 32, arg1)][1][uint16(pubKeyByHash[Mask(224, 32, arg1)])][0 len pubKeyByHash[Mask(224, 32, arg1)][1][uint16(pubKeyByHash[Mask(224, 32, arg1)])].length])
}

function _fallback() payable {
    revert
}

function registerNewPubKeyForHash(bytes28 arg1, string arg2) {
    require stor1 == msg.sender
    uint16(pubKeyByHash[Mask(224, 32, arg1)]) = uint16(uint16(pubKeyByHash[Mask(224, 32, arg1)]) + 1)
    uint256(pubKeyByHash[Mask(224, 32, arg1)][1][uint16(pubKeyByHash[Mask(224, 32, arg1)])][]) = Array(len=arg2.length, data=arg2[all])
}



}
