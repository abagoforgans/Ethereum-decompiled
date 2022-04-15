contract main {


// =======================  Init code  ======================


mapping of struct stor0;
uint256 stor5;
uint256 stor6;
address stor8;
uint256 stor9;
array of address stor10;
uint8 stor11;
uint256 stor11; offset 56
uint256 stor11; offset 48
uint256 stor11; offset 40
uint256 stor11; offset 32
uint256 stor11; offset 24
uint256 stor11; offset 16
uint256 stor11; offset 8

function _fallback() payable {
    stor5 = 32 * 10^9
    stor6 = 13 * 10^9
    stor9 = 0
    uint8(stor11.field_0) = 0
    Mask(248, 0, stor11.field_8) = 0
    Mask(240, 0, stor11.field_16) = 0
    Mask(232, 0, stor11.field_24) = 0
    Mask(224, 0, stor11.field_32) = 0
    Mask(216, 0, stor11.field_40) = 0
    Mask(208, 0, stor11.field_48) = 0
    Mask(200, 0, stor11.field_56) = 0
    require not msg.value
    stor8 = msg.sender
    require stor0[stor8].field_0 + 13 * 10^9 >= stor0[stor8].field_0
    require stor0[stor8].field_0 + 13 * 10^9 >= 13 * 10^9
    stor0[stor8].field_0 += 13 * 10^9
    stor0[stor8].field_256 = 1
    stor9++
    stor10.length++
    if not stor10.length <= stor10.length + 1:
        idx = stor10.length + 1
        while stor10.length > idx:
            uint256(stor10[idx]) = 0
            idx = idx + 1
            continue 
    address(stor10[stor10.length]) = stor8
    return code.data[1402 len 9619]
}



// =====================  Runtime code  =====================


#
#  - _fallback()
#


}
