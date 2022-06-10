contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function test(uint256 arg1) {
    require arg1 == 1
}



}
