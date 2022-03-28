contract main {


// =======================  Init code  ======================


uint256 stor0;
uint8 stor2;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor2 = 0
    return code.data[86 len 906]
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
    require msg.sender == owner
    require not stor2
    stor2 = 1
    showBlockmaticsCertificate[] = Array(len=arg1.length, data=arg1[all])
}



}
