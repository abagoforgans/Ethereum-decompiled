contract main {




// =====================  Runtime code  =====================


address owner;

function owner() {
    return owner
}

function destroy(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    selfdestruct(arg1)
}

function _fallback() payable {
  stop
}

function setOwner(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    owner = arg1
}



}
