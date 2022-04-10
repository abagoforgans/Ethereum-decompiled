contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 240]




// =====================  Runtime code  =====================


uint256 stor0;

function _fallback() payable {
    revert
}

function update(uint256 arg1) {
    stor0 += arg1
    return msg.sender, stor0
}



}
