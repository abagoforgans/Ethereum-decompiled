contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[124 len 2249]
}



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
    require resolver[arg1].field_0 == msg.sender
    emit NewTTL(arg2, arg1);
    resolver[arg1].field_416 = arg2
}

function setOwner(bytes32 arg1, address arg2) {
    require resolver[arg1].field_0 == msg.sender
    emit Transfer(arg2, arg1);
    resolver[arg1].field_0 = arg2
}

function setResolver(bytes32 arg1, address arg2) {
    require resolver[arg1].field_0 == msg.sender
    emit NewResolver(arg2, arg1);
    resolver[arg1].field_256 = arg2
}

function setSubnodeOwner(bytes32 arg1, bytes32 arg2, address arg3) {
    require resolver[arg1].field_0 == msg.sender
    emit NewOwner(arg3, arg1, arg2);
    resolver[arg1][arg2].field_0 = arg3
}



}
