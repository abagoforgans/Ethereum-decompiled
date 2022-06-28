contract main {




// =====================  Runtime code  =====================


const whoAmI = msg.sender


function _fallback() payable {
    revert
}



}
