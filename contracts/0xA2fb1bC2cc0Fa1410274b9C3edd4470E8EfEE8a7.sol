contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint8 stor2;
uint8 stor2; offset 8
uint256 stor7;
array of uint256 stor8;

function _fallback() {
    require 110 <= code.data[7607 len 1]
    require code.data[7607 len 1] <= 130
    require 5 <= code.data[7639 len 1]
    require code.data[7639 len 1] <= 10
    require 1 <= code.data[7671 len 1]
    require code.data[7671 len 1] <= 5
    stor0 = msg.sender
    stor1 = 0
    stor7 = 0
    uint8(stor2.field_0) = code.data[7607 len 1]
    uint8(stor8.length) = code.data[7639 len 1]
    stor8.length.field_8 = 0
    if not stor8.length <= code.data[7639 len 1]:
        idx = code.data[7639 len 1]
        while stor8.length > idx:
            stor8[idx].field_0 = 0
            idx = idx + 1
            continue 
    uint8(stor2.field_8) = code.data[7671 len 1]
    emit 0xcd4179d0: 0, stor0
    return code.data[446 len 7130]
}



// =====================  Runtime code  =====================


#
#  - _fallback()
#


}
