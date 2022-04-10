contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;

function _fallback() {
    stor0 = 1234
    stor1[0x1f4e7db8514ec4e99467a8d2ee3a63094a904e7a] = 5678
    return code.data[107 len 54]
}



// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}



}
