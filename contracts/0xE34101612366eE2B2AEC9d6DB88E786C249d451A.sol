contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;

function owner() payable {
    return owner
}

function whitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor1[arg1])
}

function _fallback() payable {
    revert
}

function remove(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require stor1[address(arg1)]
    stor1[address(arg1)] = 0
}

function add(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require not stor1[address(arg1)]
    stor1[address(arg1)] = 1
}



}
