contract main {


// =======================  Init code  ======================


address stor1;

function _fallback() {
    stor1 = msg.sender
    return code.data[61 len 437]
}



// =====================  Runtime code  =====================


address addr;
address owner;

function getAddress() {
    return addr
}

function addr() {
    return addr
}

function owner() {
    return owner
}

function _fallback() payable {
    revert 
}

function setAddress(address arg1) {
    require owner == msg.sender
    addr = arg1
}

function updateOwner(address arg1) {
    require owner == msg.sender
    owner = arg1
}



}
