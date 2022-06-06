contract main {




// =====================  Runtime code  =====================


function destruct() {
    if 0xccd7bdff63017081b5cf72993d5d84cf2a266330 != msg.sender:
        revert with 0, 'go away'
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert
}

function sub_1be40162(?) {
    idx = arg1
    while idx < arg1 + arg2:
        stor[idx] = 1
        idx = idx + 1
        continue 
}



}
