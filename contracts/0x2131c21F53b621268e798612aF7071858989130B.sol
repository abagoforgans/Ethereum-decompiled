contract main {


// =======================  Init code  ======================


const _fallback = code.data[16 len 225]




// =====================  Runtime code  =====================


uint256 stor0;
uint256 stor1;

function voteA() {
    stor0++
}

function voteB() {
    stor1++
}

function _fallback() payable {
    revert 
}

function getResult() {
    return stor0, stor1
}



}
