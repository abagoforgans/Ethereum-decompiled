contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[64 len 666]
}



// =====================  Runtime code  =====================


address owner;
address pendingOwner;

function owner() {
    return owner
}

function pendingOwner() {
    return pendingOwner
}

function _fallback() {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    pendingOwner = arg1
}

function claimOwnership() {
    if pendingOwner == msg.sender:
        owner = pendingOwner
        pendingOwner = 0
}

function transfer(address arg1, address arg2, uint256 arg3) {
    require owner == msg.sender
    call arg1 with:
       funct Mask(32, 224, sha3('transfer(address,uint256)')) >> 224
         gas gas_remaining - 25710 wei
        args address(arg2), arg3
    return bool(ext_call.success)
}



}
