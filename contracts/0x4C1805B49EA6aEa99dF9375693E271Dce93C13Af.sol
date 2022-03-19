contract main {


// =======================  Init code  ======================


const _fallback = code.data[16 len 80]




// =====================  Runtime code  =====================


function _fallback() payable {
    if bool(block.timestamp) != 0:
        call msg.sender with:
           value 2 * msg.value wei
             gas 0 wei
}



}
