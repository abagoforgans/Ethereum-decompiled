contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = 0x5e2c04eefaec5b465e59e3e602b605b6037839e8
    return code.data[115 len 422]
}



// =====================  Runtime code  =====================


address stor0;

function changeOwner(address arg1) {
    require stor0 == msg.sender
    stor0 = arg1
}

function _fallback() payable {
    call stor0 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}



}
