contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[49 len 663]
}



// =====================  Runtime code  =====================


address owner;
address eSOPAddress;

function owner() {
    return owner
}

function ESOPAddress() {
    return eSOPAddress
}

function killOnUnsupportedFork() {
    require owner == msg.sender
    eSOPAddress = 0
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function setESOP(address arg1, address arg2) {
    require owner == msg.sender
    eSOPAddress = arg1
    if arg2:
        owner = arg2
    emit ESOPAndCompanySet(address(arg1), arg2);
}



}
