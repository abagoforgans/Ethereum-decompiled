contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 2692]




// =====================  Runtime code  =====================


#
#  - insert(bytes32 arg1, bytes32 arg2, int256 arg3)
#  - query(bytes32 arg1, bytes2 arg2, int256 arg3)
#
mapping of uint256 indexRoot;
mapping of struct nodeLeftChild;
mapping of uint256 indexName;

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



}
