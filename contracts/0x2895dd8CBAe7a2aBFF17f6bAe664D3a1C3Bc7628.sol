contract main {




// =====================  Runtime code  =====================


address stor0;
uint8 stor1; offset 160
address stor1;
mapping of uint256 stor2;

function _fallback() payable {
    revert
}

function openToThePublic() {
    require msg.sender == address(stor1.field_0)
    uint8(stor1.field_160) = 1
}

function BITBalanceOf(address arg1) {
    require ext_code.size(stor0)
    call stor0.0x70a08231 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function firstPlacePot() {
    require ext_code.size(stor0)
    call stor0.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (ext_call.return_data[0] / 4)
}

function thirdPlacePot() {
    require ext_code.size(stor0)
    call stor0.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (ext_call.return_data[0] / 10)
}

function secondPlacePot() {
    require ext_code.size(stor0)
    call stor0.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (15 * ext_call.return_data[0] / 100)
}

function getTokensPaidToGame(address arg1) {
    require ext_code.size(stor0)
    call stor0.gamePlayers(address arg1, address arg2) with:
         gas gas_remaining wei
        args this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function returnAnyERC20Token(address arg1, address arg2, uint256 arg3) {
    require msg.sender == address(stor1.field_0)
    require stor0 != arg1
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function start() {
    require uint8(stor1.field_160)
    require tx.origin == msg.sender
    require ext_code.size(stor0)
    call stor0.gamePlayers(address arg1, address arg2) with:
         gas gas_remaining wei
        args this.address, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > stor2[msg.sender]
    stor2[msg.sender] = ext_call.return_data[0]
    require ext_code.size(stor0)
    call stor0.0xa9059cbb with:
         gas gas_remaining wei
        args address(stor1.field_0), 5 * 10^16
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit StartGame(msg.sender);
}

function PayWinners(uint256 arg1, address arg2) {
    require uint8(stor1.field_160)
    require tx.origin == msg.sender
    require msg.sender == address(stor1.field_0)
    if arg1 == 1:
        require ext_code.size(stor0)
        call stor0.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor0)
        call stor0.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg2), ext_call.return_data[0] / 4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit WinnerPaid(Mask(254, 2, ext_call.return_data[0]), arg2);
    else:
        if 2 == arg1:
            require ext_code.size(stor0)
            call stor0.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor0)
            call stor0.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg2), 15 * ext_call.return_data[0] / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit WinnerPaid(15 * ext_call.return_data[0] / 100, arg2);
        else:
            if arg1 != 3:
                emit WinnerPaid(0, arg2);
            else:
                require ext_code.size(stor0)
                call stor0.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor0)
                call stor0.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg2), ext_call.return_data[0] / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit WinnerPaid(ext_call.return_data[0] / 10, arg2);
}



}
