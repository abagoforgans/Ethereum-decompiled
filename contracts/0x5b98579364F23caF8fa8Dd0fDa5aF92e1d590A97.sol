contract main {




// =====================  Runtime code  =====================


uint8 stor0;

function isGameLogicContract() {
    return bool(stor0)
}

function _fallback() payable {
    revert
}



}
