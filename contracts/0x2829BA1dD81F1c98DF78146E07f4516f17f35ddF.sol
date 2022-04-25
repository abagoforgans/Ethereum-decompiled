contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = msg.sender
    require msg.sender == stor0
    stor1 = code.data[1389 len 20]
    return code.data[348 len 1029]
}



// =====================  Runtime code  =====================


address owner;
address libAddress;
mapping of uint32 sub_206bd362;

function sub_206bd362(?) {
    return sub_206bd362[Mask(32, 224, arg1)]
}

function owner() {
    return owner
}

function lib() {
    return libAddress
}

function _fallback() payable {
    revert
}

function replace(address arg1) {
    require msg.sender == owner
    libAddress = arg1
}

function transferOwnershipTo(address arg1) {
    require msg.sender == owner
    require arg1
    owner = arg1
}



}
