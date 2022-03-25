contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 305]
}



// =====================  Runtime code  =====================


address owner;
mapping of uint256 get;

function signatures(bytes32 arg1) payable {
    return get[arg1]
}

function owner() payable {
    return owner
}

function get(bytes32 arg1) payable {
    return get[arg1]
}

function kill() payable {
    if owner != msg.sender:
    selfdestruct(owner)
}

function _fallback() payable {
  stop
}

function unset(bytes32 arg1) payable {
    require owner == msg.sender
    get[arg1] = 0
}

function set(bytes32 arg1, bytes32 arg2) payable {
    require owner == msg.sender
    get[arg1] = arg2
}



}
