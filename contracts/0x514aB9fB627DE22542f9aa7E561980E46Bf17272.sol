contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[92 len 392]
}



// =====================  Runtime code  =====================


address stor0;

function kill() {
    require msg.sender == stor0
    selfdestruct(stor0)
}

function _fallback() payable {
    revert 
}

function transfer(address arg1) payable {
    call arg1 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}



}
