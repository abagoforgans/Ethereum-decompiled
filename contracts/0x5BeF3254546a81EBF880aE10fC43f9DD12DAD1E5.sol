contract main {


// =======================  Init code  ======================


const _fallback = code.data[24 len 623]




// =====================  Runtime code  =====================


mapping of uint8 stor0;

function checkDocument(string arg1) {
    hash = sha256hash(arg1[all]) 
    require sha256hash.result
    return bool(stor0[hash])
}

function hasProof(bytes32 arg1) {
    return bool(stor0[arg1])
}

function _fallback() payable {
    revert 
}

function storeProof(bytes32 arg1) {
    stor0[arg1] = 1
}

function notarize(string arg1) {
    hash = sha256hash(arg1[all]) 
    require sha256hash.result
    stor0[hash] = 1
}

function calculateProof(string arg1) {
    hash = sha256hash(arg1[all]) 
    require sha256hash.result
    return hash
}



}
