contract main {


// =======================  Init code  ======================


array of address stor0;
uint256 stor1;
mapping of struct stor2;
array of uint256 stor3;

function _fallback() {
    stor0.length++
    if not stor0.length <= stor0.length + 1:
        idx = stor0.length + 1
        while stor0.length > idx:
            uint256(stor0[idx]) = 0
            idx = idx + 1
            continue 
    address(stor0[stor0.length]) = msg.sender
    stor2[1509302402021].field_0 = msg.sender
    stor2[1509302402021].field_256 = 0
    stor2[1509302402021].field_512 = 3
    stor2[1509302402021].field_768 = 1509302402021
    stor2[1509302402021].field_1024 = 0
    stor2[1509302402021].field_1280 = 0
    stor2[1509302402021].field_1536 = 0
    stor2[1509302402021].field_1792 = 0
    stor2[1509302402021].field_2048 = 0
    stor2[1509302402021].field_2304 = 0
    stor2[1509302402021].field_2560 = 0
    stor2[1509302402021].field_2816 = 0
    stor2[1509302402021].field_2568 = 0
    stor3.length++
    if not stor3.length <= stor3.length + 1:
        idx = stor3.length + 1
        while stor3.length > idx:
            stor3[idx] = 0
            idx = idx + 1
            continue 
    stor3[stor3.length] = 1509302402021
    require stor1 + 1 >= stor1
    require stor1 + 1 >= 1
    stor1++
    return code.data[957 len 4341]
}



// =====================  Runtime code  =====================


#
#  - sub_1c615889(?)
#  - sub_314fb59d(?)
#  - addCaller(address arg1)
#  - sub_dd42a140(?)
#  - deleteCaller(uint256 arg1)
#  - transferCallership(address arg1, uint256 arg2)
#  - sub_ff82ae8c(?)
#
array of address callers;
uint256 numeroCeldas;
mapping of struct sub_da3d6ca4;
array of uint256 stor3;

function callers(uint256 arg1) {
    require arg1 < callers.length
    return callers[arg1]
}

function sub_c054935c(?) {
    require sub_da3d6ca4[arg1].field_2560 <= 5
    return sub_da3d6ca4[arg1].field_0, 
           sub_da3d6ca4[arg1].field_256,
           sub_da3d6ca4[arg1].field_512,
           sub_da3d6ca4[arg1].field_768,
           sub_da3d6ca4[arg1].field_1024,
           sub_da3d6ca4[arg1].field_1280,
           sub_da3d6ca4[arg1].field_1536
}

function getNumeroCeldas() {
    return numeroCeldas
}

function sub_da3d6ca4(?) {
    require sub_da3d6ca4[arg1].field_2560 <= 5
    require sub_da3d6ca4[arg1].field_2560 <= 5
    return sub_da3d6ca4[arg1].field_1792, 
           sub_da3d6ca4[arg1].field_2048,
           sub_da3d6ca4[arg1].field_2304,
           sub_da3d6ca4[arg1].field_2560,
           bool(sub_da3d6ca4[arg1].field_2568)
}

function _fallback() payable {
    revert
}

function sub_def58399(?) {
    if not stor3.length:
        return 0
    require arg1 < stor3.length
    return stor3[arg1]
}



}
