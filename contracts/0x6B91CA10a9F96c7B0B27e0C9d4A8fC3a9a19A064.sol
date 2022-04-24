contract main {


// =======================  Init code  ======================


array of address stor0;
uint256 stor1;
array of address stor2;

function _fallback() {
    stor0.length++
    if not stor0.length <= stor0.length + 1:
        idx = stor0.length + 1
        while stor0.length > idx:
            uint256(stor0[idx]) = 0
            idx = idx + 1
            continue 
    address(stor0[stor0.length]) = msg.sender
    stor2.length++
    if not stor2.length <= stor2.length + 1:
        idx = stor2.length + 1
        while stor2.length > idx:
            uint256(stor2[idx]) = 0
            idx = idx + 1
            continue 
    address(stor2[stor2.length]) = msg.sender
    stor1 = 1
    return code.data[321 len 2158]
}



// =====================  Runtime code  =====================


#
#  - sub_58fc82ef(?)
#  - addCaller(address arg1)
#  - sub_d1de5139(?)
#  - deleteCaller(uint256 arg1)
#  - transferCallership(address arg1, uint256 arg2)
#
array of address callers;
uint256 sub_d489b68f;
array of address sub_d819c426;

function callers(uint256 arg1) {
    require arg1 < callers.length
    return callers[arg1]
}

function sub_d489b68f(?) {
    return sub_d489b68f
}

function sub_d819c426(?) {
    require arg1 < sub_d819c426.length
    return sub_d819c426[arg1]
}

function _fallback() payable {
    revert
}



}
