contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 698]




// =====================  Runtime code  =====================


array of struct get;

function get() {
    return get[0 len get.length].field_0
}

function _fallback() payable {
    revert 
}

function set(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    get[].field_0 = Array(len=arg1.length, data=arg1[all])
    mem[ceil32(arg1.length) + 128] = uint256(get.field_0)
    idx = ceil32(arg1.length) + 128
    s = 0
    while ceil32(arg1.length) + get.length + 128 > idx + 32:
        mem[idx + 32] = get[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    emit 0x58aee2c4: sha3(mem[ceil32(arg1.length) + 128 len get.length])
}



}
