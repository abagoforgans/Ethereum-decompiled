contract main {


// =======================  Init code  ======================


array of uint256 stor0;
uint256 stor1;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 0
    stor0.length.field_8 = mem[128 len 31]
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor1 = 0
    return code.data[247 len 793]
}



// =====================  Runtime code  =====================


array of struct stor0;
uint256 stor1;

function _fallback() payable {
    revert
}

function ping(string arg1) {
    stor0[].field_0 = Array(len=arg1.length, data=arg1[all])
    emit Pinged(Array(len=arg1.length, data=arg1[all]));
}

function pong() {
    stor1++
    mem[160] = uint256(stor0.field_0)
    idx = 160
    s = 0
    while stor0.length + 160 > idx + 32:
        mem[idx + 32] = stor0[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    emit Ponged(Array(len=stor0.length, data=mem[160 len stor0.length + (floor32(stor0.length - 1) + -stor0.length + 32 % 32)]), stor1);
}



}
