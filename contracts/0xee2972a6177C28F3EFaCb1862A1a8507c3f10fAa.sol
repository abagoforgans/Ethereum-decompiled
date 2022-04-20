contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint8 stor5;
address stor5; offset 16
uint256 stor5; offset 16
uint256 stor5; offset 8
uint8 stor6; offset 160
address stor6;

function _fallback() {
    stor0 = code.data[3225 len 20]
    stor1 = code.data[3257 len 20]
    stor2 = 2 * 10^6
    stor3 = 0
    stor4 = 1
    uint8(stor5.field_0) = 0
    Mask(248, 0, stor5.field_8) = 0
    Mask(240, 0, stor5.field_16) = 0
    address(stor5.field_16) = msg.sender
    address(stor6.field_0) = code.data[3193 len 20]
    uint8(stor6.field_160) = 1
    return code.data[293 len 2888]
}



// =====================  Runtime code  =====================


address leftTokenAddress;
address rightTokenAddress;
uint256 rate;
uint256 fee;
uint256 precision;
uint8 stor5;
uint8 stor5; offset 8
address owner; offset 16
uint8 stor6; offset 160
address stor6;

function getLeftToken() {
    return leftTokenAddress
}

function getRightToken() {
    return rightTokenAddress
}

function getRate() {
    return rate
}

function getOwner() {
    return owner
}

function isAuthenticating() {
    return bool(uint8(stor6.field_160))
}

function getPrecision() {
    return precision
}

function isPaused() {
    return bool(uint8(stor5.field_0))
}

function getFee() {
    return fee
}

function _fallback() payable {
    revert
}

function isOwner(address arg1) {
    return (owner == arg1)
}

function pause() {
    require owner == msg.sender
    uint8(stor5.field_0) = 1
}

function resume() {
    require owner == msg.sender
    uint8(stor5.field_0) = 0
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function enableAuthentication() {
    require owner == msg.sender
    uint8(stor6.field_160) = 1
}

function disableAuthentication() {
    require owner == msg.sender
    uint8(stor6.field_160) = 0
}

function isToken(address arg1) {
    if leftTokenAddress == arg1:
        return True
    return (rightTokenAddress == arg1)
}

function calculateFee(uint256 arg1) {
    if 0 == fee:
        return 0
    require precision
    return (arg1 * fee / precision)
}

function retrieveTokens(address arg1) {
    require owner == msg.sender
    require leftTokenAddress != arg1
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    if ext_call.return_data[0] > 0:
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, ext_call.return_data[0]
        require ext_call.success
}

function requestConversion(uint256 arg1) {
    require arg1 > 0
    if uint8(stor6.field_160):
        require ext_code.size(address(stor6.field_0))
        call address(stor6.field_0).authenticate(address rg1) with:
             gas gas_remaining - 710 wei
            args msg.sender
        require ext_call.success
        require ext_call.return_data[0]
    require ext_code.size(leftTokenAddress)
    call leftTokenAddress.0x23b872dd with:
         gas gas_remaining - 710 wei
        args msg.sender, address(this.address), arg1
    require ext_call.success
    require not uint8(stor5.field_0)
    require arg1 > 0
    if leftTokenAddress == leftTokenAddress:
        require precision
        if 0 == fee:
            require ext_code.size(rightTokenAddress)
            call rightTokenAddress.0x867904b4 with:
                 gas gas_remaining - 710 wei
                args msg.sender, arg1 * rate / precision
        else:
            require precision
            require ext_code.size(rightTokenAddress)
            call rightTokenAddress.0x867904b4 with:
                 gas gas_remaining - 710 wei
                args msg.sender, (arg1 * rate / precision) - (arg1 * rate / precision * fee / precision)
        require ext_call.success
        if uint8(stor5.field_8):
            require ext_code.size(leftTokenAddress)
            call leftTokenAddress.0x9dc29fac with:
                 gas gas_remaining - 710 wei
                args address(this.address), arg1
            require ext_call.success
    else:
        if rightTokenAddress == leftTokenAddress:
            require rate
            if 0 == fee:
                require ext_code.size(leftTokenAddress)
                call leftTokenAddress.0x867904b4 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, arg1 * precision / rate
            else:
                require precision
                require ext_code.size(leftTokenAddress)
                call leftTokenAddress.0x867904b4 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, (arg1 * precision / rate) - (arg1 * precision / rate * fee / precision)
            require ext_call.success
            if uint8(stor5.field_8):
                require ext_code.size(rightTokenAddress)
                call rightTokenAddress.0x9dc29fac with:
                     gas gas_remaining - 710 wei
                    args address(this.address), arg1
                require ext_call.success
}



}
