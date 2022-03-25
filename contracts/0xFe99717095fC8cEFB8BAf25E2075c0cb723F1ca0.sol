contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 316]




// =====================  Runtime code  =====================


mapping of address blobStore;

function getBlobStore(bytes12 arg1) {
    require address(blobStore[Mask(96, 160, arg1)])
    return address(blobStore[Mask(96, 160, arg1)])
}

function _fallback() payable {
    revert 
}

function register(bytes12 arg1) {
    require not address(blobStore[Mask(96, 160, arg1)])
    uint256(blobStore[Mask(96, 160, arg1)]) = msg.sender or Mask(96, 160, uint256(blobStore[Mask(96, 160, arg1)]))
    emit Register(Mask(96, 160, arg1), msg.sender);
}



}
