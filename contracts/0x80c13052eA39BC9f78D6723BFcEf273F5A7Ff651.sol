contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() {
    stor0 = code.data[311 len 32]
    return code.data[65 len 246]
}



// =====================  Runtime code  =====================


uint256 totalSupply;

function totalSupply() {
    return totalSupply
}

function _fallback() payable {
    revert
}

function add(uint256 arg1) {
    if arg1 <= 0:
        totalSupply++
    else:
        totalSupply += arg1
}



}
