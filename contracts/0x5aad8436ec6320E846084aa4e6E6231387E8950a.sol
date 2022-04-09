contract main {


// =======================  Init code  ======================


address stor1;

function _fallback() payable {
    stor1 = 0x562b85aceee81876d27252b7dc06f03f6a2565fc
    require not msg.value
    return code.data[66 len 8555]
}



// =====================  Runtime code  =====================


#
#  - newArtwork(bytes32 arg1, uint256 arg2, string arg3, string arg4, string arg5, uint256 arg6)
#
array of address artworks;

function artworks(uint256 arg1) {
    require arg1 < artworks.length
    return artworks[arg1]
}

function getContractCount() {
    return artworks.length
}

function _fallback() payable {
    revert
}



}
