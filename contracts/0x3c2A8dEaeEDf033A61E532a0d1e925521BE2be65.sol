contract main {


// =======================  Init code  ======================


array of address stor0;

function _fallback() {
    stor0.length++
    if not stor0.length <= stor0.length + 1:
        idx = stor0.length + 1
        while stor0.length > idx:
            uint256(stor0[idx]) = 0
            idx = idx + 1
            continue 
    address(stor0[stor0.length]) = msg.sender
    return code.data[215 len 2850]
}



// =====================  Runtime code  =====================


#
#  - sub_27c55f06(?)
#  - addCaller(address arg1)
#  - sub_c439f33f(?)
#  - sub_c49d605e(?)
#  - deleteCaller(uint256 arg1)
#  - transferCallership(address arg1, uint256 arg2)
#
array of address callers;
uint256 sub_4b4a33c7;
mapping of struct sub_8ff38795;
array of uint256 sub_547b04bf;

function sub_4b4a33c7(?) {
    return sub_4b4a33c7
}

function sub_547b04bf(?) {
    require arg1 < sub_547b04bf.length
    return sub_547b04bf[arg1]
}

function sub_8ff38795(?) {
    return sub_8ff38795[arg1].field_0, sub_8ff38795[arg1].field_256, sub_8ff38795[arg1].field_512
}

function callers(uint256 arg1) {
    require arg1 < callers.length
    return callers[arg1]
}

function _fallback() payable {
    revert
}



}
