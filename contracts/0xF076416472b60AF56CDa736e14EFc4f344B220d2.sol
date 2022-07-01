contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint256 hash;

function getHash(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return hash[arg1]
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    owner = arg1
}

function storeHash(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require not hash[arg1]
    hash[arg1] = block.timestamp
}



}
