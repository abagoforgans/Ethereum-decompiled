contract main {


// =======================  Init code  ======================


address stor0;
address stor2;

function _fallback() {
    stor0 = msg.sender
    stor0 = code.data[4436 len 20]
    stor2 = code.data[4468 len 20]
    return code.data[266 len 4158]
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

function sub_ad45555a(?) {
    require currentIndex + 1 >= currentIndex
}

function sub_c75df565(?) {
    require revealedCurves + 1 >= revealedCurves
}

function acceptOwnership() {
    if msg.sender == newOwner:
        owner = newOwner
}

function changeOwner(address arg1) {
    require msg.sender == owner
    newOwner = arg1
}

function calculateHash(uint256 arg1, uint256 arg2, uint256 arg3, bool arg4, bytes32 arg5) {
    return sha3(arg1, arg2, arg3, uint8(arg4), arg5)
}

function moveTo(uint256 arg1) {
    require arg1 < revealedCurves
    require currentIndex + 1 >= currentIndex
    require arg1 == currentIndex + 1
    currentIndex = arg1
}

function revealCurve(uint256 arg1, uint256 arg2, uint256 arg3, bool arg4, bytes32 arg5) {
    require not stor6
    require revealedCurves < curves.length
    require curves[stor5].field_0 == sha3(arg1, arg2, arg3, uint8(arg4), arg5)
    require arg1
    require arg2
    require arg3
    if revealedCurves > 0:
        require 1 <= revealedCurves
        require revealedCurves - 1 < curves.length
        require arg1 >= curves[stor5 - 1].field_256
    require revealedCurves < curves.length
    curves[stor5].field_256 = arg1
    curves[stor5].field_512 = arg2
    curves[stor5].field_768 = arg3
    require revealedCurves + 1 >= revealedCurves
    revealedCurves++
    if arg4:
        stor6 = 1
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

function revealMulti(uint256[] arg1, uint256[] arg2, uint256[] arg3, bool[] arg4, bytes32[] arg5) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = arg4.length
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = arg5.length
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    require arg1.length
    require arg1.length == arg2.length
    require arg1.length == arg3.length
    require arg1.length == arg4.length
    require arg1.length == arg5.length
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _39 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg1.length) + 128]
        _41 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        _43 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
        _45 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]
        _47 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256]
        require not stor6
        mem[mem[64]] = mem[(32 * idx) + 128]
        mem[mem[64] + 32] = _41
        mem[mem[64] + 64] = _43
        mem[mem[64] + 96] = bool(_45) << 248
        mem[mem[64] + 97] = _47
        require revealedCurves < curves.length
        require curves[stor5].field_0 == sha3(mem[mem[64]], _41, _43, uint8(bool(_45)), _47)
        require _39
        require _41
        require _43
        if revealedCurves <= 0:
            if revealedCurves < curves.length:
                curves[stor5].field_256 = _39
                curves[stor5].field_512 = _41
                mem[0] = 3
                curves[stor5].field_768 = _43
                if revealedCurves + 1 >= revealedCurves:
                    revealedCurves++
                    if _45:
                        stor6 = 1
                    if idx + 1 >= idx:
                        idx = idx + 1
                        continue 
        else:
            if 1 <= revealedCurves:
                if revealedCurves - 1 < curves.length:
                    require _39 >= curves[stor5 - 1].field_256
                    if revealedCurves < curves.length:
                        curves[stor5].field_256 = _39
                        curves[stor5].field_512 = _41
                        mem[0] = 3
                        curves[stor5].field_768 = _43
                        if revealedCurves + 1 >= revealedCurves:
                            revealedCurves++
                            if _45:
                                stor6 = 1
                            if idx + 1 >= idx:
                                idx = idx + 1
                                continue 
        revert
}



}
