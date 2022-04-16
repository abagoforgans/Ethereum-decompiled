contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[49 len 1271]
}



// =====================  Runtime code  =====================


const fund = 1


address owner;
uint256 expiration;

function expiration() {
    return expiration
}

function owner() {
    return owner
}

function kill() {
    require owner == msg.sender
    if block.timestamp <= expiration:
    selfdestruct(owner)
}

function _fallback() payable {
  stop
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function lock(uint256 arg1) {
    require owner == msg.sender
    if block.timestamp + (24 * 3600 * arg1) < expiration:
        return 0
    expiration = (60 * arg1) + block.timestamp
    return 1
}

function redeemToken(address arg1) {
    require owner == msg.sender
    if block.timestamp > expiration:
        require ext_code.size(arg1)
        call arg1.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        if ext_call.return_data[0] > 0:
            require ext_code.size(arg1)
            call arg1.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args owner, ext_call.return_data[0]
            require ext_call.success
}

function emergencyDrain(address arg1) {
    require owner == msg.sender
    if arg1:
        if block.timestamp > expiration:
            require ext_code.size(arg1)
            call arg1.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args this.address
            require ext_call.success
            require ext_code.size(arg1)
            call arg1.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args owner, ext_call.return_data[0]
            require ext_call.success
    return 1
}



}
