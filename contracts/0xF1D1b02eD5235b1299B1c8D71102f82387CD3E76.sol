contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
address stor3;

function _fallback() payable {
    stor1 = 0x3df4c372a29376d2c8df33a1b5f001cd8d68b0e
    stor2 = 25
    require not msg.value
    stor0 = msg.sender
    stor3 = stor1
    return code.data[283 len 2507]
}



// =====================  Runtime code  =====================


#
#  - sub_82e376e5(?)
#
address stor0;
address sub_a2137d0eAddress;
uint256 numberOfTransactions;
address sub_7940a3efAddress;

function sub_7940a3ef(?) {
    return sub_7940a3efAddress
}

function sub_a2137d0e(?) {
    return sub_a2137d0eAddress
}

function numberOfTransactions() {
    return numberOfTransactions
}

function kill() {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
    revert
}

function sub_85a2f6d0(?) {
    if msg.sender == stor0:
        numberOfTransactions = arg1
}

function unvest(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, bool arg6) {
    if msg.sender == stor0:
        sub_a2137d0eAddress = address(arg1)
}

function sub_9f702daf(?) {
    if msg.sender == stor0:
        idx = 0
        while idx < numberOfTransactions:
            mem[128] = 0
            require ext_code.size(sub_7940a3efAddress)
            call sub_7940a3efAddress.Mine() with:
                 gas gas_remaining - 710 wei
            mem[96] = ext_call.return_data[0]
            require ext_call.success
            require ext_call.return_data[0]
            idx = idx + 1
            continue 
}

function sendTokens() {
    if msg.sender == stor0:
        require ext_code.size(sub_7940a3efAddress)
        call sub_7940a3efAddress.balanceOf(address rg1) with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        require ext_code.size(sub_7940a3efAddress)
        call sub_7940a3efAddress.transfer(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args stor0, ext_call.return_data[0]
        require ext_call.success
        require ext_call.return_data[0]
}



}
