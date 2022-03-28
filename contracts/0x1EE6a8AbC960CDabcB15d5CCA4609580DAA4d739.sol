contract main {


// =======================  Init code  ======================


const _fallback = code.data[25 len 315]




// =====================  Runtime code  =====================


address owner;

function owner() {
    return owner
}

function owned() {
    owner = msg.sender
}

function _fallback() payable {
    revert 
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    owner = arg1
}



}
