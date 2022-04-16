contract main {


// =======================  Init code  ======================


uint8 stor0; offset 168
address stor0;
array of struct stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;

function _fallback() payable {
    uint8(stor0.field_168) = 0
    require not msg.value
    address(stor0.field_0) = msg.sender
    stor7.length++
    if not stor7.length > stor7.length + 1:
        stor7[stor7.length].field_0 = 0
        stor7[stor7.length].field_256 = 75 * 10^14
        stor7[stor7.length].field_512 = 35460992907801
        stor7[stor7.length].field_768 = 4
        stor7.length++
        stor7[stor7.length].field_0 = 1
        stor7[stor7.length].field_256 = 15 * 10^15
        stor7[stor7.length].field_512 = 106382978723404
        stor7[stor7.length].field_768 = 10
        stor7.length++
        stor7[stor7.length].field_0 = 2
        stor7[stor7.length].field_256 = 25 * 10^15
        stor7[stor7.length].field_512 = 212765957446808
        stor7[stor7.length].field_768 = 0
        stor7.length++
    else:
        idx = 4 * stor7.length + 1
        while 4 * stor7.length > idx:
            stor7[idx].field_0 = 0
            stor7[idx].field_256 = 0
            stor7[idx].field_512 = 0
            stor7[idx].field_768 = 0
            idx = idx + 4
            continue 
        stor7[stor7.length].field_0 = 0
        stor7[stor7.length].field_256 = 75 * 10^14
        stor7[stor7.length].field_512 = 35460992907801
        stor7[stor7.length].field_768 = 4
        stor7.length++
        if not stor7.length > stor7.length + 1:
            stor7[stor7.length].field_0 = 1
            stor7[stor7.length].field_256 = 15 * 10^15
            stor7[stor7.length].field_512 = 106382978723404
            stor7[stor7.length].field_768 = 10
            stor7.length++
            stor7[stor7.length].field_0 = 2
            stor7[stor7.length].field_256 = 25 * 10^15
            stor7[stor7.length].field_512 = 212765957446808
            stor7[stor7.length].field_768 = 0
            stor7.length++
        else:
            idx = 4 * stor7.length + 1
            while 4 * stor7.length > idx:
                stor7[idx].field_0 = 0
                stor7[idx].field_256 = 0
                stor7[idx].field_512 = 0
                stor7[idx].field_768 = 0
                idx = idx + 4
                continue 
            stor7[stor7.length].field_0 = 1
            stor7[stor7.length].field_256 = 15 * 10^15
            stor7[stor7.length].field_512 = 106382978723404
            stor7[stor7.length].field_768 = 10
            stor7.length++
            if not stor7.length > stor7.length + 1:
                stor7[stor7.length].field_0 = 2
                stor7[stor7.length].field_256 = 25 * 10^15
                stor7[stor7.length].field_512 = 212765957446808
                stor7[stor7.length].field_768 = 0
                stor7.length++
            else:
                idx = 4 * stor7.length + 1
                while 4 * stor7.length > idx:
                    stor7[idx].field_0 = 0
                    stor7[idx].field_256 = 0
                    stor7[idx].field_512 = 0
                    stor7[idx].field_768 = 0
                    idx = idx + 4
                    continue 
                stor7[stor7.length].field_0 = 2
                stor7[stor7.length].field_256 = 25 * 10^15
                stor7[stor7.length].field_512 = 212765957446808
                stor7[stor7.length].field_768 = 0
                stor7.length++
                if not stor7.length <= stor7.length + 1:
                    idx = 4 * stor7.length + 1
                    while 4 * stor7.length > idx:
                        stor7[idx].field_0 = 0
                        stor7[idx].field_256 = 0
                        stor7[idx].field_512 = 0
                        stor7[idx].field_768 = 0
                        idx = idx + 4
                        continue 
    stor7[stor7.length].field_0 = 3
    stor7[stor7.length].field_256 = 125 * 10^11 * 3600
    stor7[stor7.length].field_512 = 319148936170213
    stor7[stor7.length].field_768 = 0
    require 0 < stor7.length
    stor8 = uint256(stor7.field_0)
    stor9 = uint256(stor7.field_256)
    stor10 = uint256(stor7.field_512)
    stor11 = uint256(stor7.field_768)
    return code.data[758 len 4261]
}



// =====================  Runtime code  =====================


#
#  - _fallback()
#


}
