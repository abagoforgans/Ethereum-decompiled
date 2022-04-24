contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[59 len 629]
}



// =====================  Runtime code  =====================


const VERSION = 1


address owner;
address address;

function getAddress() {
    return address
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function setAddress(address arg1) {
    require owner == msg.sender
    address = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require owner != arg1
    require arg1
    owner = arg1
    emit OwnerChanged(owner, arg1);
}



}
