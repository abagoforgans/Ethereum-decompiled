contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
uint256 stor3;
array of address stor4;
array of uint256 stor8;

function _fallback() {
    mem[96 len 384] = code.data[1391 len 384]
    stor0 = code.data[1391 len 20]
    stor1 = code.data[1435 len 20]
    stor2 = code.data[1467 len 20]
    stor3 = code.data[1487 len 32]
    idx = 0
    while uint8(idx) < 4:
        stor4[uint8(idx)] = mem[(32 * uint8(idx)) + 236 len 20]
        stor8[uint8(idx) / 32] = mem[(32 * uint8(idx)) + 383 len 1] * 256^(idx % 32) or !(255 * 256^(idx % 32)) and stor8[uint8(idx) / 32]
        idx = idx + 1
        continue 
    return code.data[327 len 1064]
}



// =====================  Runtime code  =====================


address idAddress;
array of address stor1;
address collectorAddress;
uint256 fee;
array of address stor4;
array of uint8 stor8;

function owner() {
    return stor1.length
}

function collector() {
    return collectorAddress
}

function id() {
    return Mask(160, 96, idAddress)
}

function fee() {
    return fee
}

function sub_a6fb9ac3(?) {
    require stor1.length == msg.sender
    selfdestruct(collectorAddress)
}

function _fallback() payable {
    revert
}

function getRecipients() {
    idx = 224
    s = 4
    while 352 > idx + 32:
        mem[idx + 32] = stor1[s]
        idx = idx + 32
        s = s + 1
        continue 
    return stor4.length, mem[256 len 96]
}

function getShares() {
    idx = 224
    s = 0
    while 352 > idx + 32:
        mem[idx + 32] = stor8[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
        idx = idx + 32
        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
        continue 
    return stor8.length, mem[256 len 96]
}

function donate() payable {
    if msg.value <= fee:
        call collectorAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    else:
        call collectorAddress with:
           value fee wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        s = 0
        idx = 0
        while uint8(idx) < 4:
            if (msg.value * stor8[uint8(idx)]) - (fee * stor8[uint8(idx)]) / 100 > 0:
                require uint8(idx) < 4
                call stor4[uint8(idx)] with:
                   value (msg.value * stor8[uint8(idx)]) - (fee * stor8[uint8(idx)]) / 100 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
            s = (msg.value * stor8[uint8(idx)]) - (fee * stor8[uint8(idx)]) / 100
            idx = idx + 1
            continue 
}



}
