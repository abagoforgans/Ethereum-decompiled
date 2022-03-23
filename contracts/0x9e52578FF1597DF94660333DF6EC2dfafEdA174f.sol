contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;

function _fallback() payable {
    stor1 = 0x6bd6e16707277288e1fa43cf48ba86f1146e52f7
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[126 len 482]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;

function Kill() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function execute() payable {
    call stor1 with:
       funct Mask(32, 224, sha3('SendEmail(string,string)')) >> 224
       value 9 wei
         gas gas_remaining - 34050 wei
        args 123, 99
}



}
