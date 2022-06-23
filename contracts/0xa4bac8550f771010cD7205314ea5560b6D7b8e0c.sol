contract main {




// =====================  Runtime code  =====================


uint256 name;

function name() {
    return name
}

function getName() {
    return name
}

function _fallback() payable {
    revert
}



}
