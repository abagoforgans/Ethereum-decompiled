contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;

function whiteList(address arg1) {
    return bool(stor0[arg1])
}

function _fallback() payable {
    revert
}

function canCall(address arg1, address arg2, bytes4 arg3) {
    if stor0[address(arg1)]:
        if Mask(32, 224, sha3('createApostle(uint256,uint256,ui', 'nt256,uint256,uint256,address)')) == Mask(32, 224, arg3):
            return True
    if stor0[address(arg1)]:
        if Mask(32, 224, sha3('breedWithInAuction(uint256,uint2', '56)')) == Mask(32, 224, arg3):
            return True
    if stor0[address(arg1)]:
        if Mask(32, 224, sha3('activityAdded(uint256,address,ad', 'dress)')) == Mask(32, 224, arg3):
            return True
    if stor0[address(arg1)]:
        if Mask(32, 224, sha3('activityRemoved(uint256,address,', 'address)')) == Mask(32, 224, arg3):
            return True
    if stor0[address(arg1)]:
        if Mask(32, 224, sha3('updateGenesAndTalents(uint256,ui', 'nt256,uint256)')) == Mask(32, 224, arg3):
            return True
    if stor0[address(arg1)]:
        if Mask(32, 224, sha3('batchUpdate(uint256[],uint256[],', 'uint256[])')) == Mask(32, 224, arg3):
            return True
    if not stor0[address(arg1)]:
        return bool(stor0[address(arg1)])
    return (Mask(32, 224, sha3('activityStopped(uint256)')) == Mask(32, 224, arg3))
}



}
