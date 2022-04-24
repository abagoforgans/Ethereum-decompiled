contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 560]




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
    require msg.sender == owner
    owner = arg1
}



}
