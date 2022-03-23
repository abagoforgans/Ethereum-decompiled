contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = 10^15
    return code.data[32 len 1255]
}



// =====================  Runtime code  =====================


uint256 stor0;
mapping of struct stor1;

function _fallback() payable {
    revert 
}

function get(string arg1) payable {
    if not stor1[arg1[all]].field_160:
        return 0
    return 1, stor1[arg1[all]].field_512, stor1[arg1[all]].field_256, stor1[arg1[all]].field_0
}

function record(string arg1) payable {
    if msg.value < stor0:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
        return 0
    if stor1[arg1[all]].field_160:
        return 1, 1, stor1[arg1[all]].field_512
    stor1[arg1[all]].field_160 = 1
    stor1[arg1[all]].field_0 = msg.sender or Mask(96, 160, stor1[arg1[all]].field_0)
    stor1[arg1[all]].field_256 = block.timestamp
    stor1[arg1[all]].field_512 = block.number
    return 1, 0, stor1[arg1[all]].field_512
}



}
