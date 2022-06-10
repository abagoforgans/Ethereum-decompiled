contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function isItConstantinopleYet() payable {
    if block.number >= 4080000:
        return 1
    else:
        return 0
}



}
