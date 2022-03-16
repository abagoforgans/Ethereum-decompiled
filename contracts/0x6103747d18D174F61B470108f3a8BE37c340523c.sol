contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 106]




// =====================  Runtime code  =====================


function _fallback() payable {
    if bool(block.timestamp):
        call msg.sender with:
           value 2 * msg.value wei
             gas 0 wei
}



}
