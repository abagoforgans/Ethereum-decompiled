contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 773]




// =====================  Runtime code  =====================


array of struct stor0;
uint256 stor1;

function _fallback() payable {
    revert
}

function setInstructor(string arg1, uint256 arg2) {
    stor0[].field_0 = Array(len=arg1.length, data=arg1[all])
    stor1 = arg2
}

function getInstructor() {
    mem[160] = uint256(stor0.field_0)
    idx = 160
    s = 0
    while stor0.length + 128 > idx:
        mem[idx + 32] = stor0[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=stor0.length, data=mem[160 len stor0.length]), stor1
}



}
