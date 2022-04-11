contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;

function _fallback() payable {
    stor4 = 5 * 10^12
    require not msg.value
    stor0 = msg.sender
    stor1 = code.data[1834 len 32]
    stor2 = code.data[1866 len 32]
    stor3 = code.data[1898 len 32]
    return code.data[179 len 1655]
}



// =====================  Runtime code  =====================


const isPricingStrategy = 1

const isSane(address arg1) = 1


address owner;
uint256 stor2;
uint256 stor3;
uint256 stor4;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function getCurrentRound() {
    if block.timestamp < stor2:
        return 0
    if block.timestamp >= stor3:
        return 2
    return 1
}

function tokensToWei(uint256 arg1) {
    require ext_code.size(0xfb03d29397b5504f28d8aa47ffb84f152613e725)
    delegate 0xfb03d29397b5504f28d8aa47ffb84f152613e725.0x1d3b9edf with:
         gas gas_remaining - 710 wei
        args arg1, stor4
    require delegate.return_code
    return delegate.return_data[0]
}

function calculatePrice(uint256 arg1, uint256 arg2, uint256 arg3, address arg4, uint256 arg5) {
    if arg1 < 10^16:
        return 0
    if block.timestamp < stor2:
        require stor4
        require ext_code.size(0xfb03d29397b5504f28d8aa47ffb84f152613e725)
        delegate 0xfb03d29397b5504f28d8aa47ffb84f152613e725.0x1d3b9edf with:
             gas gas_remaining - 710 wei
            args arg1 / stor4 / 100, 115
    else:
        if block.timestamp < stor2:
            require stor4
            return (arg1 / stor4)
        if block.timestamp >= stor3:
            require stor4
            return (arg1 / stor4)
        require stor4
        require ext_code.size(0xfb03d29397b5504f28d8aa47ffb84f152613e725)
        delegate 0xfb03d29397b5504f28d8aa47ffb84f152613e725.0x1d3b9edf with:
             gas gas_remaining - 710 wei
            args arg1 / stor4 / 100, 110
    require delegate.return_code
    return delegate.return_data[0]
}



}
