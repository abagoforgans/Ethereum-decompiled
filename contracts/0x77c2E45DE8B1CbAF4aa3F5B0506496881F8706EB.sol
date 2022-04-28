contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 351]




// =====================  Runtime code  =====================


mapping of uint256 sendList;

function sendList(address arg1) {
    return sendList[arg1]
}

function _fallback() payable {
    revert
}

function logSendEvent() payable {
    call 0xe3632684db2bce417df118686f315872b2fc4e3d with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
