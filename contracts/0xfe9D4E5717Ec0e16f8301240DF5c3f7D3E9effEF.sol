contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 4099]




// =====================  Runtime code  =====================


#
#  - insert(bytes32 arg1, bytes32 arg2, int256 arg3)
#  - remove(bytes32 arg1, bytes32 arg2)
#  - query(bytes32 arg1, bytes2 arg2, int256 arg3)
#
mapping of uint256 indexRoot;
array of struct nodeLeftChild;
mapping of uint256 indexName;
array of uint256 stor4;
array of uint256 stor5;
array of uint256 stor6;

function getNodeLeftChild(bytes32 arg1) payable {
    return nodeLeftChild[arg1].field_1280
}

function getNodeValue(bytes32 arg1) payable {
    return nodeLeftChild[arg1].field_768
}

function getNodeRightChild(bytes32 arg1) payable {
    return nodeLeftChild[arg1].field_1536
}

function getNodeParent(bytes32 arg1) payable {
    return nodeLeftChild[arg1].field_1024
}

function getIndexName(bytes32 arg1) payable {
    return indexName[arg1]
}

function getNodeIndexId(bytes32 arg1) payable {
    return nodeLeftChild[arg1].field_256
}

function getNodeHeight(bytes32 arg1) payable {
    return nodeLeftChild[arg1].field_1792
}

function getNodeId(bytes32 arg1) payable {
    return nodeLeftChild[arg1].field_512
}

function getIndexRoot(bytes32 arg1) payable {
    return indexRoot[arg1]
}

function _fallback() payable {
  stop
}

function getNodeId(bytes32 arg1, bytes32 arg2) payable {
    return sha3(arg1, arg2)
}

function getIndexId(address arg1, bytes32 arg2) payable {
    return sha3(arg1, arg2)
}

function exists(bytes32 arg1, bytes32 arg2) payable {
    return (nodeLeftChild[arg1][arg2].field_0 == sha3(arg1, arg2))
}

function getNextNode(bytes32 arg1) payable {
    if 0 == nodeLeftChild[arg1].field_0:
        return 0
    if nodeLeftChild[arg1].field_1536 != 0:
        mem[0] = nodeLeftChild[arg1].field_1536
        mem[32] = 1
        idx = sha3(mem[0 len 64])
        while stor5[idx] != 0:
            mem[0] = stor5[idx]
            mem[32] = 1
            idx = sha3(stor5[idx], 1)
            continue 
        return stor[idx]
    if 0 == nodeLeftChild[arg1].field_1024:
        return 0
    mem[0] = nodeLeftChild[arg1].field_1024
    mem[32] = 1
    s = 0
    t = 0
    while stor[s + sha3(mem[0 len 64]) + 5] != nodeLeftChild[arg1][t].field_0:
        if 0 == stor[s + sha3(mem[0 len 64]) + 4]:
            return 0
        mem[0] = stor[s + sha3(mem[0 len 64]) + 4]
        mem[32] = 1
        s = sha3(stor4[s], 1)
        t = s
        continue 
    return stor[s]
}

function getPreviousNode(bytes32 arg1) payable {
    if 0 == nodeLeftChild[arg1].field_0:
        return 0
    if nodeLeftChild[arg1].field_1280 != 0:
        mem[0] = nodeLeftChild[arg1].field_1280
        mem[32] = 1
        idx = sha3(mem[0 len 64])
        while stor6[idx] != 0:
            mem[0] = stor6[idx]
            mem[32] = 1
            idx = sha3(stor6[idx], 1)
            continue 
        return stor[idx]
    if 0 == nodeLeftChild[arg1].field_1024:
        return 0
    mem[0] = nodeLeftChild[arg1].field_1024
    mem[32] = 1
    s = 0
    t = 0
    while stor[s + sha3(mem[0 len 64]) + 6] != nodeLeftChild[arg1][t].field_0:
        if 0 == stor[s + sha3(mem[0 len 64]) + 4]:
            return 0
        mem[0] = stor[s + sha3(mem[0 len 64]) + 4]
        mem[32] = 1
        s = sha3(stor4[s], 1)
        t = s
        continue 
    return stor[s]
}



}
