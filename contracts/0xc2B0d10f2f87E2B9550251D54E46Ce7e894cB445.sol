contract main {




// =====================  Runtime code  =====================


uint256 a;
uint8 b;
uint256 c;

function a() payable {
    return a
}

function b() payable {
    return b
}

function c() payable {
    return c
}

function _fallback() payable {
    revert
}

function gas() payable {
    a = block.gasprice
    b = 5
    c = block.gasprice
    return block.gasprice
}



}
