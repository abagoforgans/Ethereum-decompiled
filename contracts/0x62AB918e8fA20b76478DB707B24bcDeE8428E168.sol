contract main {


// =======================  Init code  ======================


address stor0;
uint8 stor2;

function _fallback() payable {
    stor0 = msg.sender
    stor2 = 0
    require not msg.value
    return code.data[120 len 1012]
}



// =====================  Runtime code  =====================


address owner;
array of uint256 showCertificate;
uint8 stor2;

function showCertificate() {
    return showCertificate[0 len showCertificate.length]
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function publishGraduatingClass(string arg1) {
    require msg.sender == owner
    require not stor2
    stor2 = 1
    showCertificate[] = Array(len=arg1.length, data=arg1[all])
}



}
