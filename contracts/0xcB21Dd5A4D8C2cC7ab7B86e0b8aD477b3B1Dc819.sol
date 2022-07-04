contract main {




// =====================  Runtime code  =====================


address owner;
mapping of struct findDocHash;

function findDocHash(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return findDocHash[arg1].field_0, findDocHash[arg1].field_256
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function changeOwner(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Unauthorized: only owner'
    owner = arg1
}

function addDocHash(bytes32 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Unauthorized: only owner'
    findDocHash[arg1].field_0 = block.timestamp
    findDocHash[arg1].field_256 = block.number
}



}
