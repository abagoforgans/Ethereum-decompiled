contract main {




// =====================  Runtime code  =====================


address stor0;
mapping of address ticketOwner;

function ticketOwner(uint256 arg1) {
    return ticketOwner[arg1]
}

function kill() {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
    revert
}

function transferTicket(address arg1, uint256 arg2) {
    if msg.sender == stor0:
        ticketOwner[arg2] = arg1
}

function sub_7a4b7aa7(?) {
    if msg.sender == stor0:
        require ext_code.size(arg1)
        call arg1.balanceOf(address arg1) with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        call arg1.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor0, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        emit 0xf7bc0731: ext_call.return_data[0]
}



}
