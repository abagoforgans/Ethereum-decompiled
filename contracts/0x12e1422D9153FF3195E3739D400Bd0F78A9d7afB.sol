contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() payable {
    stor0 = 0x1db3439a222c519ab44bb1144fc28167b4fa6ee6
    stor1 = 0x5ed8cee6b63b1c6afce3ad7c92f4fd7e1b8fad9f
    call stor0 with:
       value msg.value / 2 wei
         gas 0 wei
    call stor1 with:
       value msg.value / 2 wei
         gas 0 wei
    return code.data[321 len 10]
}



// =====================  Runtime code  =====================


function _fallback() payable {
  stop
}



}
