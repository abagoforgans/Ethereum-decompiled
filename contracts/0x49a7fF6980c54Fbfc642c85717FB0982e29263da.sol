contract main {




// =====================  Runtime code  =====================


uint256 one;
array of struct stor1;
address stor2;

function getOne() {
    return one
}

function _fallback() payable {
    revert
}

function getTwo() {
    mem[128] = uint256(stor1.field_0)
    idx = 128
    s = 0
    while stor1.length + 96 > idx:
        mem[idx + 32] = stor1[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return one, Array(len=stor1.length, data=mem[128 len stor1.length])
}

function getThree() {
    mem[128] = uint256(stor1.field_0)
    idx = 128
    s = 0
    while stor1.length + 96 > idx:
        mem[idx + 32] = stor1[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return one, Array(len=stor1.length, data=mem[128 len stor1.length]), stor2
}



}
