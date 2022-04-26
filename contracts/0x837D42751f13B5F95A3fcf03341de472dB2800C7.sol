contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[97 len 2191]
}



// =====================  Runtime code  =====================


address stor0;
array of address stor1;
array of uint256 stor2;

function partnerExists(address arg1) {
    idx = 0
    while idx < stor1.length:
        mem[0] = 1
        if arg1 != address(stor1[idx]):
            idx = idx + 1
            continue 
        return 1
    return 0
}

function partnerWeight(address arg1) {
    idx = 0
    while idx < stor1.length:
        mem[0] = 1
        if arg1 != address(stor1[idx]):
            idx = idx + 1
            continue 
        require idx < stor2.length
        return stor2[idx]
    return 0
}

function partnersRemove() {
    if stor0 != msg.sender:
        require 0 < stor1.length
        idx = 0
        while address(stor1[idx]) != msg.sender:
            require idx + 1 < stor1.length
            mem[0] = 1
            idx = idx + 1
            continue 
    stor1.length = 0
    if not stor1.length <= 0:
        idx = 0
        while stor1.length > idx:
            uint256(stor1[idx]) = 0
            idx = idx + 1
            continue 
    stor2.length = 0
    if not stor2.length <= 0:
        idx = 0
        while stor2.length > idx:
            stor2[idx] = 0
            idx = idx + 1
            continue 
}

function partnerAdd(address arg1, uint256 arg2) {
    if stor0 != msg.sender:
        require 0 < stor1.length
        idx = 0
        while address(stor1[idx]) != msg.sender:
            require idx + 1 < stor1.length
            mem[0] = 1
            idx = idx + 1
            continue 
    idx = 0
    while idx < stor1.length:
        mem[0] = 1
        require arg1 != address(stor1[idx])
        idx = idx + 1
        continue 
    stor1.length++
    if not stor1.length <= stor1.length + 1:
        idx = stor1.length + 1
        while stor1.length > idx:
            uint256(stor1[idx]) = 0
            idx = idx + 1
            continue 
    address(stor1[stor1.length]) = arg1
    stor2.length++
    if not stor2.length <= stor2.length + 1:
        idx = stor2.length + 1
        while stor2.length > idx:
            stor2[idx] = 0
            idx = idx + 1
            continue 
    stor2[stor2.length] = arg2
}

function _fallback() payable {
    mem[64] = 96
    idx = 0
    s = 0
    while idx < stor1.length:
        require idx < stor2.length
        mem[0] = 2
        idx = idx + 1
        s = s + stor2[idx]
        continue 
    emit Sum((s * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length));
    t = 0
    t = 0
    idx = 0
    while idx < stor1.length:
        require idx < stor2.length
        require s * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length
        call address(stor1[idx]) with:
           value msg.value * stor2[idx] / s * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require idx < stor2.length
        mem[0] = 2
        mem[mem[64]] = address(stor1[idx])
        mem[mem[64] + 32] = stor2[idx]
        mem[mem[64] + 64] = msg.value * stor2[idx] / s * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length
        emit 0xb877c885: address(stor1[idx]), stor2[idx], msg.value * stor2[idx] / s * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length
        t = msg.value * stor2[idx] / s * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length * stor1.length
        t = address(stor1[idx])
        idx = idx + 1
        continue 
}



}
