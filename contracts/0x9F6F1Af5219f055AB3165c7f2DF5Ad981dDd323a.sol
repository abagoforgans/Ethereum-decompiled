contract main {


// =======================  Init code  ======================


const _fallback = code.data[19 len 731]




// =====================  Runtime code  =====================


uint256 stor0;
array of struct stor1;

function saysomething() payable {
    if stor1.length:
        mem[160] = uint256(stor1.field_0)
        idx = 160
        s = 0
        while stor1.length + 128 > idx:
            mem[idx + 32] = stor1[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=stor1.length, data=mem[160 len stor1.length])
}

function _fallback() payable {
    mem[128] = 'nothing'
    stor1.length = 7
    s = 0
    idx = 128
    while 135 > idx:
        stor1[s].field_0 = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 1
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not stor0:
        stor0 = block.number
    else:
        if block.number >= stor0 + 10:
            mem[192] = 'itworked'
            stor1.length = 8
            s = 0
            idx = 192
            while 200 > idx:
                stor1[s].field_0 = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = 1
            while stor1.length + 31 / 32 > idx:
                stor1[idx].field_0 = 0
                idx = idx + 1
                continue 
}



}
