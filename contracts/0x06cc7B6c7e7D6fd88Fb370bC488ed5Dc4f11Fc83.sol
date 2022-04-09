contract main {


// =======================  Init code  ======================


array of uint256 stor0;

function _fallback() payable {
    bool(stor0.length) = 0
    stor0.length.field_1 = 3
    stor0.length.field_8 = '0.1' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not msg.value:
        return code.data[276 len 637]
    revert
}



// =====================  Runtime code  =====================


const calculatePurchaseReturn(uint256 arg1, uint256 arg2, uint16 arg3, uint256 arg4) = 10^6

const calculateSaleReturn(uint256 arg1, uint256 arg2, uint16 arg3, uint256 arg4) = 100 * 10^6


array of uint256 version;

function version() {
    return version[0 len version.length]
}

function _fallback() payable {
    revert
}



}
