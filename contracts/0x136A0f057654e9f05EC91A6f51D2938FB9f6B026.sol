contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 299]
}



// =====================  Runtime code  =====================


address stor0;

function kill() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function execute() payable {
    call 0x508bf9319405e1c319439f1707c4c6c210b5c521.0xb1d05422 with:
       value 12 wei
         gas gas_remaining - 34050 wei
        args 64, 128, 17, 'email@example.com', 12, 'Message body'
    require ext_call.success
}



}
