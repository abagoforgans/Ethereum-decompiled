contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() payable {
    stor1 = 0xb7b8f253f9df281efe9e34f07f598f9817d6eb83
    require not msg.value
    stor0 = msg.sender
    return code.data[168 len 488]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;

function kill() {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function return_funds() payable {
    require msg.sender == stor1
    require msg.value == 100 * 10^18
    call stor1 with:
       value 210 * 10^18 wei
         gas 0 wei
    require ext_call.success
}



}
