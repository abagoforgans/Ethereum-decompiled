contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;

function _fallback() payable {
    stor0 = 0
    stor1 = 10000
    stor2 = 1
    require not msg.value
    return code.data[41 len 51]
}



// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}



}
