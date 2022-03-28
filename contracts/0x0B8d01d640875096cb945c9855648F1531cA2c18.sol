contract main {


// =======================  Init code  ======================


address stor0;
uint8 stor2;

function _fallback() payable {
    stor0 = msg.sender
    stor2 = 0
    require not msg.value
    return code.data[62 len 786]
}



// =====================  Runtime code  =====================


address owner;
array of uint256 showBlockmaticsCertificate;
uint8 stor2;

function showBlockmaticsCertificate() {
    return showBlockmaticsCertificate[0 len showBlockmaticsCertificate.length]
}

function owner() {
    return owner
}

function _fallback() payable {
    revert 
}

function publishGraduatingClass(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    require owner == msg.sender
    require not stor2
    stor2 = 1
    showBlockmaticsCertificate.length = (2 * arg1.length) + 1
    s = 0xb10e2d527612073b26eecdfd717e6a320cf44b4afac2b0732d9fcbe2b7fa0cf6
    idx = 128
    while arg1.length + 128 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = (Mask(251, 0, arg1.length + 31) >> 5) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f30a
    while (showBlockmaticsCertificate.length + 31 / 32) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f30a > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
}



}
