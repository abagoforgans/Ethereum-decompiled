contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[97 len 1150]
}



// =====================  Runtime code  =====================


address owner;
array of struct stor1;

function owner() {
    return owner
}

function destruct() {
    require tx.origin == owner
    emit Destroy()
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function register() {
    require tx.origin == owner
    stor1.length++
    if not stor1.length <= stor1.length + 1:
        idx = stor1.length + 1
        while stor1.length > idx:
            stor1[idx].field_0 = 0
            idx = idx + 1
            continue 
    stor1[stor1.length].field_0 = msg.sender
    emit Register(msg.sender);
}

function lotteries() {
    if not stor1.length:
        mem[(32 * stor1.length) + 160] = 32
        mem[(32 * stor1.length) + 192] = stor1.length
        mem[(32 * stor1.length) + 224 len floor32(stor1.length)] = mem[160 len floor32(stor1.length)]
        return memory
          from (32 * stor1.length) + 160
           len (96 * stor1.length) + 64
    mem[160] = address(stor1.field_0)
    idx = 160
    s = 0
    while (32 * stor1.length) + 128 > idx:
        mem[idx + 32] = stor1[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor1.length) + 224 len floor32(stor1.length)] = mem[160 len floor32(stor1.length)]
    return Array(len=stor1.length, data=mem[160 len floor32(stor1.length)], mem[(32 * stor1.length) + floor32(stor1.length) + 224 len (32 * stor1.length) - floor32(stor1.length)]), 
}



}
