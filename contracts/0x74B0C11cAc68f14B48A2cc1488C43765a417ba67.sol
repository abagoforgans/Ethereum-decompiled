contract main {


// =======================  Init code  ======================


const _fallback = code.data[23 len 130]




// =====================  Runtime code  =====================


uint256 stor0;
uint256 stor1;

function _fallback() payable {
    revert 
}

function result() {
    return stor0, stor1
}

function vote(bool arg1) {
    if not arg1:
        stor1++
    else:
        stor0++
}



}
