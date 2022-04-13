contract main {


// =======================  Init code  ======================


const _fallback = code.data[33 len 907]




// =====================  Runtime code  =====================


const approve(address arg1, uint256 arg2) = 1

const transferFrom(address arg1, address arg2, uint256 arg3) = 1

const approveAndCall(address arg1, uint256 arg2, bytes arg3) = 1


mapping of uint256 balanceOf;
mapping of uint256 allowance;

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function _fallback() {
    revert
}

function transfer(address arg1, uint256 arg2) {
  stop
}



}
