contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 2488]




// =====================  Runtime code  =====================


mapping of struct indexName;
mapping of uint256 stor1;

function getIndexName(bytes32 arg1) payable {
    return indexName[arg1].field_256
}

function getIndexRoot(bytes32 arg1) payable {
    return indexName[arg1].field_512
}

function _fallback() payable {
  stop
}

function getNodeId(bytes32 arg1) payable {
    codecall 0xd07ce4329b27eb8896c51458468d98a0e4c0394c.0xbfdf87c0 with:
         gas gas_remaining - 50 wei
        args sha3(stor1[arg1], 0), arg1
    require callcode.return_code
    return callcode.return_data[0]
}

function getNextNode(bytes32 arg1) payable {
    codecall 0xd07ce4329b27eb8896c51458468d98a0e4c0394c.0xc4144b26 with:
         gas gas_remaining - 50 wei
        args sha3(stor1[arg1], 0), arg1
    require callcode.return_code
    return callcode.return_data[0]
}

function getNodeValue(bytes32 arg1) payable {
    codecall 0xd07ce4329b27eb8896c51458468d98a0e4c0394c.0xa3119e57 with:
         gas gas_remaining - 50 wei
        args sha3(stor1[arg1], 0), arg1
    require callcode.return_code
    return callcode.return_data[0]
}

function exists(bytes32 arg1, bytes32 arg2) payable {
    codecall 0xd07ce4329b27eb8896c51458468d98a0e4c0394c.0xed5bd7ea with:
         gas gas_remaining - 50 wei
        args sha3(arg1, 0), arg2
    require callcode.return_code
    return callcode.return_data[0]
}

function getNodeParent(bytes32 arg1) payable {
    codecall 0xd07ce4329b27eb8896c51458468d98a0e4c0394c.0x6ec13982 with:
         gas gas_remaining - 50 wei
        args sha3(stor1[arg1], 0), arg1
    require callcode.return_code
    return callcode.return_data[0]
}

function getNodeHeight(bytes32 arg1) payable {
    codecall 0xd07ce4329b27eb8896c51458468d98a0e4c0394c.0xa749f19b with:
         gas gas_remaining - 50 wei
        args sha3(stor1[arg1], 0), arg1
    require callcode.return_code
    return callcode.return_data[0]
}

function getNodeIndexId(bytes32 arg1) payable {
    codecall 0xd07ce4329b27eb8896c51458468d98a0e4c0394c.0x40d59849 with:
         gas gas_remaining - 50 wei
        args sha3(stor1[arg1], 0), arg1
    require callcode.return_code
    return callcode.return_data[0]
}

function getPreviousNode(bytes32 arg1) payable {
    codecall 0xd07ce4329b27eb8896c51458468d98a0e4c0394c.0xcaa46c9c with:
         gas gas_remaining - 50 wei
        args sha3(stor1[arg1], 0), arg1
    require callcode.return_code
    return callcode.return_data[0]
}

function getNodeLeftChild(bytes32 arg1) payable {
    codecall 0xd07ce4329b27eb8896c51458468d98a0e4c0394c.0x2b4096b4 with:
         gas gas_remaining - 50 wei
        args sha3(stor1[arg1], 0), arg1
    require callcode.return_code
    return callcode.return_data[0]
}

function getNodeRightChild(bytes32 arg1) payable {
    codecall 0xd07ce4329b27eb8896c51458468d98a0e4c0394c.0xe9f1a3c with:
         gas gas_remaining - 50 wei
        args sha3(stor1[arg1], 0), arg1
    require callcode.return_code
    return callcode.return_data[0]
}

function computeIndexId(address arg1, bytes32 arg2) payable {
    codecall 0xd07ce4329b27eb8896c51458468d98a0e4c0394c.0x103b5dad with:
         gas gas_remaining - 50 wei
        args address(arg1), arg2
    require callcode.return_code
    return callcode.return_data[0]
}

function query(bytes32 arg1, bytes2 arg2, int256 arg3) payable {
    codecall 0xd07ce4329b27eb8896c51458468d98a0e4c0394c.0xe6ce3a6a with:
         gas gas_remaining - 50 wei
        args sha3(arg1, 0), arg2, arg3
    require callcode.return_code
    return callcode.return_data[0]
}

function computeNodeId(bytes32 arg1, bytes32 arg2) payable {
    codecall 0xd07ce4329b27eb8896c51458468d98a0e4c0394c.computeNodeId(bytes32 rg1, bytes32 rg2) with:
         gas gas_remaining - 50 wei
        args arg1, arg2
    require callcode.return_code
    return callcode.return_data[0]
}

function remove(bytes32 arg1, bytes32 arg2) payable {
    codecall 0xd07ce4329b27eb8896c51458468d98a0e4c0394c.0x103b5dad with:
         gas gas_remaining - 50 wei
        args msg.sender, arg1
    require callcode.return_code
    codecall 0xd07ce4329b27eb8896c51458468d98a0e4c0394c.0xab7366f7 with:
         gas gas_remaining - 50 wei
        args sha3(callcode.return_data[0], 0), arg2
}

function insert(bytes32 arg1, bytes32 arg2, int256 arg3) payable {
    codecall 0xd07ce4329b27eb8896c51458468d98a0e4c0394c.0x103b5dad with:
         gas gas_remaining - 50 wei
        args msg.sender, arg1
    require callcode.return_code
    if arg1 != indexName[callcode.return_data[0]].field_256:
        indexName[callcode.return_data[0]].field_256 = arg1
        indexName[callcode.return_data[0]].field_0 = callcode.return_data[0]
    codecall 0xd07ce4329b27eb8896c51458468d98a0e4c0394c.computeNodeId(bytes32 rg1, bytes32 rg2) with:
         gas gas_remaining - 50 wei
        args callcode.return_data[0], arg2
    require callcode.return_code
    stor1[callcode.return_data[0]] = callcode.return_data[0]
    codecall 0xd07ce4329b27eb8896c51458468d98a0e4c0394c.0xbacd6958 with:
         gas gas_remaining - 50 wei
        args sha3(callcode.return_data[0], 0), arg2, arg3
}



}
