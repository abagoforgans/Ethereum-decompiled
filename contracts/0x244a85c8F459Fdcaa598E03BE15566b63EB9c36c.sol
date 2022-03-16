contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;

function _fallback() payable {
    stor0 = code.data[627 len 32] or Mask(96, 160, stor0)
    stor1 = msg.sender or Mask(96, 160, stor1)
    stor2 = block.timestamp + (8760 * 24 * 3600)
    return code.data[147 len 480]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;
uint256 stor2;

function _fallback() payable {
  stop
}

function sendRefund() payable {
    if block.timestamp > stor2:
        call stor1 with:
           value 5 * 10^18 wei
             gas 0 wei
}

function execute() payable {
    if msg.sender == stor1:
        call stor0 with:
           value 10^18 wei
             gas 0 wei
        call stor1 with:
           value 4 * 10^18 wei
             gas 0 wei
}



}
