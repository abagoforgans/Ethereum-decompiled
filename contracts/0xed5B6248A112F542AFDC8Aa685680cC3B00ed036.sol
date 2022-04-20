contract main {


// =======================  Init code  ======================


address stor0;
address stor2;

function _fallback() {
    stor0 = msg.sender
    stor0 = code.data[3165 len 20]
    stor2 = code.data[3197 len 20]
    return code.data[141 len 3012]
}



// =====================  Runtime code  =====================


address owner;
address newOwner;
address saleAddress;
array of struct ceilings;
uint256 currentIndex;
uint256 revealedCeilings;
uint8 stor6;

function currentIndex() {
    return currentIndex
}

function allRevealed() {
    return bool(stor6)
}

function revealedCeilings() {
    return revealedCeilings
}

function owner() {
    return owner
}

function ceilings(uint256 arg1) {
    require arg1 < ceilings.length
    return ceilings[arg1].field_0, ceilings[arg1].field_256, ceilings[arg1].field_512, ceilings[arg1].field_768
}

function nCeilings() {
    return ceilings.length
}

function newOwner() {
    return newOwner
}

function saleAddress() {
    return saleAddress
}

function _fallback() payable {
    revert
}

function changeOwner(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function moveToNextCeiling() {
    require owner == msg.sender
    require currentIndex + 1 >= currentIndex
    currentIndex++
}

function calculateHash(uint256 arg1, uint256 arg2, uint256 arg3, bool arg4, bytes32 arg5) {
    return sha3(arg1, arg2, arg3, uint8(arg4), arg5)
}

function revealCeiling(uint256 arg1, uint256 arg2, uint256 arg3, bool arg4, bytes32 arg5) {
    require not stor6
    require revealedCeilings < ceilings.length
    require ceilings[stor5].field_0 == sha3(arg1, arg2, arg3, uint8(arg4), arg5)
    require arg1
    require arg2
    require arg3
    if revealedCeilings > 0:
        require 1 <= revealedCeilings
        require revealedCeilings - 1 < ceilings.length
        require arg1 >= ceilings[stor5 - 1].field_256
    require revealedCeilings < ceilings.length
    ceilings[stor5].field_256 = arg1
    ceilings[stor5].field_512 = arg2
    ceilings[stor5].field_768 = arg3
    require revealedCeilings + 1 >= revealedCeilings
    revealedCeilings++
    if arg4:
        stor6 = 1
}

function setHiddenCeilings(bytes32[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require owner == msg.sender
    require not ceilings.length
    ceilings.length = arg1.length
    if not ceilings.length <= arg1.length:
        idx = 4 * arg1.length
        while 4 * ceilings.length > idx:
            ceilings[idx].field_0 = 0
            ceilings[idx].field_256 = 0
            ceilings[idx].field_512 = 0
            ceilings[idx].field_768 = 0
            idx = idx + 4
            continue 
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < ceilings.length
        mem[0] = 3
        ceilings[idx].field_0 = mem[(32 * idx) + 128]
        require idx + 1 >= idx
        idx = idx + 1
        continue 
}

function availableAmountToCollect(uint256 arg1) {
    require saleAddress == msg.sender
    if not revealedCeilings:
        return 0
    require currentIndex < ceilings.length
    if arg1 < ceilings[stor4].field_256:
        if currentIndex < ceilings.length:
            if arg1 <= ceilings[stor4].field_256:
                if currentIndex < ceilings.length:
                    if ceilings[stor4].field_512:
                        if currentIndex < ceilings.length:
                            if ceilings[stor4].field_256 - arg1 / ceilings[stor4].field_512 > ceilings[stor4].field_768:
                                return (ceilings[stor4].field_256 - arg1 / ceilings[stor4].field_512)
                            if currentIndex < ceilings.length:
                                if ceilings[stor4].field_256 - arg1 <= ceilings[stor4].field_768:
                                    return (ceilings[stor4].field_256 - arg1)
                                if currentIndex < ceilings.length:
                                    return ceilings[stor4].field_768
    else:
        if currentIndex + 1 >= currentIndex:
            if currentIndex + 1 >= revealedCeilings:
                return 0
            currentIndex++
            if currentIndex + 1 < ceilings.length:
                if arg1 >= ceilings[stor4 + 1].field_256:
                    return 0
                if currentIndex < ceilings.length:
                    if arg1 <= ceilings[stor4].field_256:
                        if currentIndex < ceilings.length:
                            if ceilings[stor4].field_512:
                                if currentIndex < ceilings.length:
                                    if ceilings[stor4].field_256 - arg1 / ceilings[stor4].field_512 > ceilings[stor4].field_768:
                                        return (ceilings[stor4].field_256 - arg1 / ceilings[stor4].field_512)
                                    if currentIndex < ceilings.length:
                                        if ceilings[stor4].field_256 - arg1 <= ceilings[stor4].field_768:
                                            return (ceilings[stor4].field_256 - arg1)
                                        if currentIndex < ceilings.length:
                                            return ceilings[stor4].field_768
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
        require revealedCeilings < ceilings.length
        require ceilings[stor5].field_0 == sha3(mem[mem[64]], _41, _43, uint8(bool(_45)), _47)
        require _39
        require _41
        require _43
        if revealedCeilings <= 0:
            if revealedCeilings < ceilings.length:
                ceilings[stor5].field_256 = _39
                ceilings[stor5].field_512 = _41
                mem[0] = 3
                ceilings[stor5].field_768 = _43
                if revealedCeilings + 1 >= revealedCeilings:
                    revealedCeilings++
                    if _45:
                        stor6 = 1
                    if idx + 1 >= idx:
                        idx = idx + 1
                        continue 
        else:
            if 1 <= revealedCeilings:
                if revealedCeilings - 1 < ceilings.length:
                    require _39 >= ceilings[stor5 - 1].field_256
                    if revealedCeilings < ceilings.length:
                        ceilings[stor5].field_256 = _39
                        ceilings[stor5].field_512 = _41
                        mem[0] = 3
                        ceilings[stor5].field_768 = _43
                        if revealedCeilings + 1 >= revealedCeilings:
                            revealedCeilings++
                            if _45:
                                stor6 = 1
                            if idx + 1 >= idx:
                                idx = idx + 1
                                continue 
        revert
}



}
