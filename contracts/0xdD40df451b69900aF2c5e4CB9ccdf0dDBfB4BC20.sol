contract main {


// =======================  Init code  ======================


uint32 stor0;
uint128 stor0; offset 32

function _fallback() payable {
    uint32(stor0.field_0) = 3405691582
    uint128(stor0.field_32) = 0
    return code.data[39 len 78]
}



// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
  stop
}

function send() payable {
    call stor0 with:
       value eth.balance(this.address) wei
         gas 0 wei
}



}
