contract main {




// =====================  Runtime code  =====================


function destroy() payable {
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert
}



}
