contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = code.data[769 len 20]
    return code.data[124 len 633]
}



// =====================  Runtime code  =====================


const approved(address arg1) = 1


address owner;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function setApproval(address arg1, bool arg2) {
  stop
}

function transfer_ownership(address arg1) {
    require msg.sender == owner
    owner = arg1
}



}
