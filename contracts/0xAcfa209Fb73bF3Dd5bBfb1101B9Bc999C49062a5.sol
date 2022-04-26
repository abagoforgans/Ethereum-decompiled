contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160
address stor4;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint8 stor13; offset 160
uint256 stor14;

function _fallback() payable {
    stor0 = 0
    stor8 = 13000
    stor9 = 5 * 10^17 * 3600
    stor10 = 5 * 10^17 * 3600
    stor11 = 10^18 * 3600
    stor13 = 0
    stor14 = 100000000 * 10^18
    require not msg.value
    stor4 = msg.sender
    return code.data[137 len 6992]
}



// =====================  Runtime code  =====================


#
#  - _fallback()
#


}
