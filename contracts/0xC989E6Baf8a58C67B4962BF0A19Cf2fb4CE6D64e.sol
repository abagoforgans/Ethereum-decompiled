contract main {


// =======================  Init code  ======================


address stor0;
address stor2;

function _fallback() {
    stor0 = msg.sender
    stor0 = code.data[3891 len 20]
    stor2 = code.data[3923 len 20]
    return code.data[266 len 3613]
}



// =====================  Runtime code  =====================


address owner;
address newOwner;
address contributionAddress;
array of struct curves;
uint256 currentIndex;
uint256 revealedCurves;
uint8 stor6;

function curves(uint256 arg1) {
    require arg1 < curves.length
    return curves[arg1].field_0, curves[arg1].field_256, curves[arg1].field_512, curves[arg1].field_768
}

function currentIndex() {
    return currentIndex
}

function nCurves() {
    return curves.length
}

function allRevealed() {
    return bool(stor6)
}

function contribution() {
    return contributionAddress
}

function revealedCurves() {
    return revealedCurves
}

function owner() {
    return owner
}

function newOwner() {
    return newOwner
}

function _fallback() payable {
    revert
}

function acceptOwnership() {
    if msg.sender == newOwner:
        owner = newOwner
}

function moveTo(uint256 arg1) {
    require msg.sender == owner
    currentIndex = arg1
}

function changeOwner(address arg1) {
    require msg.sender == owner
    newOwner = arg1
}

function calculateHash(uint256 arg1, uint256 arg2, uint256 arg3, bool arg4, bytes32 arg5) {
    return sha3(arg1, arg2, arg3, uint8(arg4), arg5)
}

function revealCurve(uint256 arg1, uint256 arg2, uint256 arg3, bool arg4, bytes32 arg5) {
    require revealedCurves + 1 >= revealedCurves
    revealedCurves++
}

function revealMulti(uint256[] arg1, uint256[] arg2, uint256[] arg3, bool[] arg4, bytes32[] arg5) {
    require arg1.length
    require arg1.length == arg2.length
    require arg1.length == arg3.length
    require arg1.length == arg4.length
    require arg1.length == arg5.length
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg2.length
        require idx < arg3.length
        require idx < arg4.length
        require idx < arg5.length
        require revealedCurves + 1 >= revealedCurves
        revealedCurves++
        require idx + 1 >= idx
        idx = idx + 1
        continue 
}

function setHiddenCurves(bytes32[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    require not curves.length
    curves.length = arg1.length
    if not curves.length <= arg1.length:
        idx = 4 * arg1.length
        while 4 * curves.length > idx:
            curves[idx].field_0 = 0
            curves[idx].field_256 = 0
            curves[idx].field_512 = 0
            curves[idx].field_768 = 0
            idx = idx + 4
            continue 
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < curves.length
        mem[0] = 3
        curves[idx].field_0 = mem[(32 * idx) + 128]
        require idx + 1 >= idx
        idx = idx + 1
        continue 
}

function toCollect(uint256 arg1) {
    require msg.sender == contributionAddress
    if not revealedCurves:
        return 0
    require currentIndex < curves.length
    if arg1 < curves[stor4].field_256:
        if currentIndex < curves.length:
            if arg1 <= curves[stor4].field_256:
                if currentIndex < curves.length:
                    if curves[stor4].field_512:
                        if currentIndex < curves.length:
                            if curves[stor4].field_256 - arg1 / curves[stor4].field_512 > curves[stor4].field_768:
                                return (curves[stor4].field_256 - arg1 / curves[stor4].field_512)
                            if currentIndex < curves.length:
                                if curves[stor4].field_256 - arg1 <= curves[stor4].field_768:
                                    return (curves[stor4].field_256 - arg1)
                                if currentIndex < curves.length:
                                    return curves[stor4].field_768
    else:
        if currentIndex + 1 >= currentIndex:
            if currentIndex + 1 >= revealedCurves:
                return 0
            currentIndex++
            if currentIndex < curves.length:
                if arg1 >= curves[stor4].field_256:
                    return 0
                if currentIndex < curves.length:
                    if arg1 <= curves[stor4].field_256:
                        if currentIndex < curves.length:
                            if curves[stor4].field_512:
                                if currentIndex < curves.length:
                                    if curves[stor4].field_256 - arg1 / curves[stor4].field_512 > curves[stor4].field_768:
                                        return (curves[stor4].field_256 - arg1 / curves[stor4].field_512)
                                    if currentIndex < curves.length:
                                        if curves[stor4].field_256 - arg1 <= curves[stor4].field_768:
                                            return (curves[stor4].field_256 - arg1)
                                        if currentIndex < curves.length:
                                            return curves[stor4].field_768
    revert
}



}
