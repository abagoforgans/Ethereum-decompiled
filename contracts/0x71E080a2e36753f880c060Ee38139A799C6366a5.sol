contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 338]




// =====================  Runtime code  =====================


mapping of address blobStore;

function getBlobStore(bytes12 arg1) {
    require blobStore[Mask(96, 160, arg1)]
    return blobStore[Mask(96, 160, arg1)]
}

function _fallback() payable {
    revert 
}

function register(bytes12 arg1) {
    require not blobStore[Mask(96, 160, arg1)]
    blobStore[Mask(96, 160, arg1)] = msg.sender
    emit Register(Mask(96, 160, arg1), msg.sender);
}



}
