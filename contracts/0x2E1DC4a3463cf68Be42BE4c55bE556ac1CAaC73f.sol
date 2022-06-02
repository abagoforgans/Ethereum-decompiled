contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function codeSize(address arg1) {
    return ext_code.size(arg1)
}



}
