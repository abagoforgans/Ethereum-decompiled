contract main {


// =======================  Init code  ======================


uint256 stor1;

function _fallback() payable {
    stor1 = msg.sender or Mask(96, 160, stor1)
    return code.data[64 len 292]
}



// =====================  Runtime code  =====================


mapping of uint256 get;
address stor1;

function get(bytes32 arg1) payable {
    return get[arg1]
}

function _fallback() payable {
  stop
}

function set(bytes32 arg1, int256 arg2) payable {
    if stor1 == msg.sender:
        get[arg1] = arg2
}



}
