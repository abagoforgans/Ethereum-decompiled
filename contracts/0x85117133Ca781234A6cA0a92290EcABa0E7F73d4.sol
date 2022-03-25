contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 1026]




// =====================  Runtime code  =====================


mapping of uint256 stor0;
array of uint256 stor1;
array of uint256 query;

function getQuery() {
    return query[0 len query.length]
}

function _fallback() payable {
    revert 
}

function setQuery(string arg1) {
    query[] = Array(len=arg1.length, data=arg1[all])
}

function sub_8fba96e4(?) {
    stor1.length = 0
    idx = 0
    while stor1.length + 7 / 8 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
}

function sub_54f6aa20(?) {
    if stor1.length:
        mem[160] = uint32(stor1.field_0)
        idx = 160
        s = 0
        while (32 * stor1.length) + 128 > idx:
            mem[idx + 32] = uint32(stor1.field_8 * (4 * -(s + 7 / 32) + 1) + s - (s + 7 / 32 * s))
            idx = idx + 32
            s = (4 * -(s + 7 / 32) + 1) + s - (s + 7 / 32 * s)
            continue 
    return Array(len=stor1.length, data=mem[160 len 32 * stor1.length])
}

function sub_22c1973b(?) {
    stor0[arg1 << 224] = msg.sender or Mask(96, 160, stor0[arg1 << 224])
    stor1.length++
    if not stor1.length <= stor1.length + 1:
        idx = stor1.length + 8 / 8
        while stor1.length + 7 / 8 > idx:
            stor1[idx].field_0 = 0
            idx = idx + 1
            continue 
    stor1[stor1.length.field_3].field_0 = arg1 * 256^(4 * stor1.length % 8) or !(test266151307() * 256^(4 * stor1.length % 8)) and stor1[stor1.length.field_3].field_0
}



}
