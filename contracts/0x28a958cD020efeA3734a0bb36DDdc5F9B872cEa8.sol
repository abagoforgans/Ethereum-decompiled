contract main {




// =====================  Runtime code  =====================


uint256 a;
uint256 b;

function a() {
    return a
}

function b() {
    return b
}

function _fallback() payable {
    revert
}

function test(uint256 arg1) {
    if block.gasprice > arg1:
        a = 1
    else:
        if block.gasprice < arg1:
            a = 1
            b = 1
}



}
