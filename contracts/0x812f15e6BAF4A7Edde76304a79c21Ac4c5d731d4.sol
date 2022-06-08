contract main {




// =====================  Runtime code  =====================


mapping of struct resolver;

function resolver(bytes32 arg1) {
    return resolver[arg1].field_256
}

function owner(bytes32 arg1) {
    return resolver[arg1].field_0
}

function ttl(bytes32 arg1) {
    return resolver[arg1].field_416
}

function _fallback() payable {
    revert
}

function setTTL(bytes32 arg1, uint64 arg2) {
    if resolver[arg1].field_0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'eENSTest: this method needs to b called by the owner of the nod'
    emit NewTTL(arg2, arg1);
    resolver[arg1].field_416 = arg2
}

function setOwner(bytes32 arg1, address arg2) {
    if resolver[arg1].field_0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'eENSTest: this method needs to b called by the owner of the nod'
    emit Transfer(arg2, arg1);
    resolver[arg1].field_0 = arg2
}

function setResolver(bytes32 arg1, address arg2) {
    if resolver[arg1].field_0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'eENSTest: this method needs to b called by the owner of the nod'
    emit NewResolver(arg2, arg1);
    resolver[arg1].field_256 = arg2
}

function setSubnodeOwner(bytes32 arg1, bytes32 arg2, address arg3) {
    if resolver[arg1].field_0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'eENSTest: this method needs to b called by the owner of the nod'
    emit NewOwner(arg3, arg1, arg2);
    resolver[arg1][arg2].field_0 = arg3
}



}
