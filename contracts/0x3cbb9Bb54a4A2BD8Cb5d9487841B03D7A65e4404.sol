contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
address stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor15;
uint256 stor16;

function _fallback() payable {
    stor6 = 3000
    stor7 = 0
    stor8 = 10^15
    stor9 = 5 * 10^18
    stor11 = 0
    stor12 = 0
    stor15 = 0
    stor16 = 0
    require not msg.value
    stor0 = code.data[9349 len 20]
    stor1 = code.data[9381 len 20]
    stor2 = code.data[9413 len 20]
    stor3 = code.data[9445 len 20]
    stor10 = 10^18 * code.data[9465 len 32]
    if code.data[9497 len 32] >= block.timestamp:
        stor4 = code.data[9497 len 32]
    else:
        stor4 = block.timestamp
    if code.data[9529 len 32] <= stor4:
        stor5 = stor4 + (720 * 24 * 3600)
    else:
        if code.data[9529 len 32] - stor4 >= 720 * 24 * 3600:
            stor5 = code.data[9529 len 32]
        else:
            stor5 = stor4 + (720 * 24 * 3600)
    return code.data[525 len 8812]
}



// =====================  Runtime code  =====================


#
#  - _fallback()
#


}
