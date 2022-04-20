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

function _fallback() {
    stor0 = code.data[2570 len 20]
    stor1 = code.data[2602 len 20]
    stor2 = 20000
    stor3 = 100
    stor4 = 10000
    uint8(stor5.field_0) = 0
    Mask(248, 0, stor5.field_8) = 1
    Mask(240, 0, stor5.field_16) = 0
    address(stor5.field_16) = msg.sender
    return code.data[224 len 2334]
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

function notifyTokensReceived(address arg1, uint256 arg2) {
    if leftTokenAddress != msg.sender:
        require rightTokenAddress == msg.sender
    require msg.sender == msg.sender
    require not uint8(stor5.field_0)
    require arg2 > 0
    if leftTokenAddress == msg.sender:
        require precision
        if 0 == fee:
            require ext_code.size(rightTokenAddress)
            call rightTokenAddress.0x867904b4 with:
                 gas gas_remaining - 710 wei
                args address(arg1), arg2 * rate / precision
        else:
            require precision
            require ext_code.size(rightTokenAddress)
            call rightTokenAddress.0x867904b4 with:
                 gas gas_remaining - 710 wei
                args address(arg1), (arg2 * rate / precision) - (arg2 * rate / precision * fee / precision)
        require ext_call.success
        if uint8(stor5.field_8):
            require ext_code.size(leftTokenAddress)
            call leftTokenAddress.0x9dc29fac with:
                 gas gas_remaining - 710 wei
                args address(this.address), arg2
            require ext_call.success
    else:
        if rightTokenAddress == msg.sender:
            require rate
            if 0 == fee:
                require ext_code.size(leftTokenAddress)
                call leftTokenAddress.0x867904b4 with:
                     gas gas_remaining - 710 wei
                    args address(arg1), arg2 * precision / rate
            else:
                require precision
                require ext_code.size(leftTokenAddress)
                call leftTokenAddress.0x867904b4 with:
                     gas gas_remaining - 710 wei
                    args address(arg1), (arg2 * precision / rate) - (arg2 * precision / rate * fee / precision)
            require ext_call.success
            if uint8(stor5.field_8):
                require ext_code.size(rightTokenAddress)
                call rightTokenAddress.0x9dc29fac with:
                     gas gas_remaining - 710 wei
                    args address(this.address), arg2
                require ext_call.success
}



}
