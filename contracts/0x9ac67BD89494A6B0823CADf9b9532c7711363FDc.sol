contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 274]
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
    call 0x1234567891234567891234567891234567891234.0x9b617cec with:
       value 12 wei
         gas gas_remaining - 34050 wei
        args 'arg1TEXT', 'arg2TEXT'
}



}
