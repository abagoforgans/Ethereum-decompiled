contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function doStuff() {
    idx = 0
    while idx < 1000:
        idx = idx + 1
        continue 
}



}
