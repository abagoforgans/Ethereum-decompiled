contract main {




// =====================  Runtime code  =====================


uint256 EUR_WEI;
uint256 lastUpdate;
address sub_a48e77f6Address;
address tokenAssignmentControlAddress;

function EUR_WEI() {
    return EUR_WEI
}

function sub_a48e77f6(?) {
    return sub_a48e77f6Address
}

function lastUpdate() {
    return lastUpdate
}

function tokenAssignmentControl() {
    return tokenAssignmentControlAddress
}

function ETH_EUR() {
    require EUR_WEI > 0
    require EUR_WEI
    return (10^18 / EUR_WEI)
}

function ETH_EURCENT() {
    require EUR_WEI > 0
    require EUR_WEI
    return (100 * 10^18 / EUR_WEI)
}

function _fallback() payable {
    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                32,
                41,
                0x2e54686520636f6e74726163742063616e6e6f74207265636569766520455448207061796d656e7473,
                mem[205 len 23]
}

function setRate(uint256 arg1) {
    require calldata.size - 4 >= 32
    if sub_a48e77f6Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0xfe72617465436f6e74726f6c206b657920726571756972656420666f7220746869732066756e6374696f6e,
                    mem[207 len 21]
    lastUpdate = block.timestamp
    if not arg1:
        revert with 0, 'Please assign a valid rate.'
    EUR_WEI = arg1
}

function rescueToken(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if tokenAssignmentControlAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    54,
                    0x2e746f6b656e41737369676e6d656e74436f6e74726f6c206b657920726571756972656420666f7220746869732066756e6374696f6e,
                    mem[218 len 10]
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
