contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = code.data[434 len 20]
    return code.data[74 len 348]
}



// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;

function owner() {
    return owner
}

function approved(address arg1) {
    return bool(stor1[arg1])
}

function _fallback() payable {
    revert 
}

function transfer_ownership(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function setApproval(address arg1, bool arg2) {
    require owner == msg.sender
    stor1[address(arg1)] = uint8(arg2)
}



}
