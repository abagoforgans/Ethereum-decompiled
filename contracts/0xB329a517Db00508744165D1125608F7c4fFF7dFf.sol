contract main {


// =======================  Init code  ======================


const _fallback = code.data[17 len 117]




// =====================  Runtime code  =====================


uint256 stor0;

function _fallback() payable {
    if not stor0:
        stor0 = block.number
    else:
        if block.number >= stor0 + 10:
            call msg.sender with:
               value msg.value wei
                 gas 0 wei
}



}
