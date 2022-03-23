contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[63 len 486]
}



// =====================  Runtime code  =====================


address stor0;

function Kill() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function execute() payable {
    call 0x6bd6e16707277288e1fa43cf48ba86f1146e52f7.SendEmail(string rg1, string rg2) with:
         gas gas_remaining - 25050 wei
        args 0, 64, 128, 17, 'email@example.com', 12, 'Message body'
    require ext_call.success
}



}
