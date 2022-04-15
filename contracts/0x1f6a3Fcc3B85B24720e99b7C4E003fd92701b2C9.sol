contract main {


// =======================  Init code  ======================


uint256 stor0;
array of address stor1;
array of struct stor2;

function _fallback() payable {
    stor0 = 1
    mem[96] = 0x366ca16b8b9aaaf258953ab932ea0482437984
    mem[128] = 0xe39b9ba4a7645bfa4ef3963088cc7abd88b4dd
    stor1.length = 2
    s = 0
    idx = 96
    while 160 > idx:
        stor1[s] = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 2
    while stor1.length > idx:
        stor1[idx] = 0
        idx = idx + 1
        continue 
    mem[160] = 50
    mem[192] = 50
    stor2.length = 2
    s = 0
    idx = 160
    while 224 > idx:
        stor2[s].field_0 = mem[idx + 31 len 1]
        stor2[s].field_8 = 0
        s = s + 1
        idx = idx + 32
        continue 
    idx = 2
    while stor2.length > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    return code.data[407 len 508]
}



// =====================  Runtime code  =====================


#
#  - contribute()
#
function _fallback() payable {
    revert
}



}
