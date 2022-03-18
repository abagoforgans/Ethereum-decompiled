contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;

function _fallback() payable {
    stor0 = code.data[272 len 32]
    stor1 = msg.sender or Mask(96, 160, stor1)
    stor2 = msg.value
    return code.data[111 len 161]
}



// =====================  Runtime code  =====================


address stor1;
uint256 stor2;

function _fallback() payable {
  stop
}

function send() payable {
    call stor1 with:
       value stor2 wei
         gas 0 wei
}



}
