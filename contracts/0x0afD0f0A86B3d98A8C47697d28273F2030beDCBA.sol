contract main {


// =======================  Init code  ======================


uint256 stor1;

function _fallback() payable {
    stor1 = msg.sender or Mask(96, 160, stor1)
    return code.data[55 len 883]
}



// =====================  Runtime code  =====================


array of uint256 get;
address owner;

function get(string arg1) payable {
    return get[arg1[all]][0 len get[arg1[all]].length]
}

function owner() payable {
    return owner
}

function die() payable {
    if owner != msg.sender:
    selfdestruct(owner)
}

function _fallback() payable {
  stop
}

function set(string arg1, string arg2) payable {
    get[arg1[all]][] = Array(len=arg2.length, data=arg2[all])
}



}
