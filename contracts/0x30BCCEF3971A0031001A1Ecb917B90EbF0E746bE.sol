contract main {




// =====================  Runtime code  =====================


#
#  - sub_5d1bcb59(?)
#
const sub_0cdd44a7(?) = 0xe41d2489571d322189246dafa5ebde1f4699f498

const weth = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2

const sub_ccc07959(?) = 0x1985365e9f78359a9b6ad760e32412f4a445e862

const dai = 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359

const bat = 0xd8775f648430679a709e98d2b0cb6250d2887ef


address adminOwner;
address sub_44aa49a5Address;
address sub_b46b02c6Address;
address stor3;
address stor4;
address liquidatorAddress;
address sub_c2d5a053Address;

function adminOwner() {
    return adminOwner
}

function liquidator() {
    return liquidatorAddress
}

function sub_44aa49a5(?) {
    return sub_44aa49a5Address
}

function sub_b46b02c6(?) {
    return sub_b46b02c6Address
}

function sub_c2d5a053(?) {
    return sub_c2d5a053Address
}

function _fallback() payable {
  stop
}

function sub_e0f18c28(?) {
    return (msg.sender == adminOwner)
}

function sub_48b6c985(?) {
    return (msg.sender == sub_b46b02c6Address)
}

function sub_867b0870(?) {
    return (msg.sender == sub_44aa49a5Address)
}

function sub_4bb6e041(?) {
    require msg.sender == adminOwner
    require arg1
    sub_b46b02c6Address = arg1
}

function sub_e1cd61bd(?) {
    require msg.sender == adminOwner
    require arg1
    sub_44aa49a5Address = arg1
}

function transferAdminOwnership(address arg1) {
    require msg.sender == adminOwner
    require arg1
    adminOwner = arg1
}

function withdrawEth() {
    require msg.sender == adminOwner
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    else:
        return 0
}

function sub_5619a704(?) {
    require msg.sender == adminOwner
    require ext_code.size(stor4)
    call stor4.borrow(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_77634644(?) {
    require msg.sender == adminOwner
    require ext_code.size(stor4)
    call stor4.withdraw(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_8f0d400e(?) {
    if sub_b46b02c6Address != msg.sender:
        if sub_44aa49a5Address != msg.sender:
            require msg.sender == adminOwner
    require ext_code.size(stor4)
    call stor4.supply(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_647f24ac(?) {
    if sub_b46b02c6Address != msg.sender:
        if sub_44aa49a5Address != msg.sender:
            require msg.sender == adminOwner
    require ext_code.size(stor4)
    call stor4.repayBorrow(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_1fc2b883(?) {
    require msg.sender == adminOwner
    require ext_code.size(stor3)
    call stor3.getExchange(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).tokenToEthSwapInput(uint256 arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args arg2, 1, 455832 * 24 * 3600
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_09b4255b(?) payable {
    require msg.sender == adminOwner
    require ext_code.size(stor3)
    call stor3.getExchange(address arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).ethToTokenSwapOutput(uint256 arg1, uint256 arg2) with:
       value arg1 wei
         gas gas_remaining wei
        args arg3, 455832 * 24 * 3600
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_36040931(?) payable {
    require msg.sender == adminOwner
    require ext_code.size(stor3)
    call stor3.getExchange(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).ethToTokenSwapInput(uint256 arg1, uint256 arg2) with:
       value msg.value wei
         gas gas_remaining wei
        args 1, 455832 * 24 * 3600
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_b5158c53(?) {
    require msg.sender == adminOwner
    require ext_code.size(stor3)
    call stor3.getExchange(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).tokenToTokenSwapOutput(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) with:
         gas gas_remaining wei
        args 0, arg4, arg2, -1, 455832 * 24 * 3600, address(arg3)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function returnToken(address arg1) {
    require msg.sender == adminOwner
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if return_data.size:
            require return_data.size == 32
            if not ext_call.return_data[0]:
                revert with 0, 'FAILED_1'
}

function sub_1edc87b1(?) {
    require msg.sender == sub_44aa49a5Address
    require ext_code.size(arg2)
    call arg2.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor4)
    if arg1 != 0xd8775f648430679a709e98d2b0cb6250d2887ef:
        if arg1 != 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359:
            call stor4.borrow(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg1), arg3
        else:
            call stor4.withdraw(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg1), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    else:
        call stor4.borrow(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), arg3 + 10^9
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xd8775f648430679a709e98d2b0cb6250d2887ef)
        call 0x0d8775f648430679a709e98d2b0cb6250d2887ef.0xa9059cbb with:
             gas gas_remaining wei
            args liquidatorAddress, 10^9
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if return_data.size:
            require return_data.size == 32
    require ext_code.size(liquidatorAddress)
    call liquidatorAddress.liquidateBorrow(address arg1, address arg2, address arg3, uint256 arg4) with:
         gas gas_remaining wei
        args 0, 0, address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg2)
    call arg2.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    revert with 0, 'No profit1'
}

function returnAllTokens() {
    require msg.sender == adminOwner
    require ext_code.size(0xd8775f648430679a709e98d2b0cb6250d2887ef)
    call 0x0d8775f648430679a709e98d2b0cb6250d2887ef.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(0xd8775f648430679a709e98d2b0cb6250d2887ef)
        call 0x0d8775f648430679a709e98d2b0cb6250d2887ef.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if return_data.size:
            require return_data.size == 32
            if not ext_call.return_data[0]:
                revert with 0, 'FAILED_1'
    require ext_code.size(0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359)
    call 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359)
        call 0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if return_data.size:
            require return_data.size == 32
            if not ext_call.return_data[0]:
                revert with 0, 'FAILED_1'
    require ext_code.size(0x1985365e9f78359a9b6ad760e32412f4a445e862)
    call 0x1985365e9f78359a9b6ad760e32412f4a445e862.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(0x1985365e9f78359a9b6ad760e32412f4a445e862)
        call 0x1985365e9f78359a9b6ad760e32412f4a445e862.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if return_data.size:
            require return_data.size == 32
            if not ext_call.return_data[0]:
                revert with 0, 'FAILED_1'
    require ext_code.size(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)
    call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)
        call 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if return_data.size:
            require return_data.size == 32
            if not ext_call.return_data[0]:
                revert with 0, 'FAILED_1'
    require ext_code.size(0xe41d2489571d322189246dafa5ebde1f4699f498)
    call 0xe41d2489571d322189246dafa5ebde1f4699f498.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(0xe41d2489571d322189246dafa5ebde1f4699f498)
        call 0xe41d2489571d322189246dafa5ebde1f4699f498.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if return_data.size:
            require return_data.size == 32
            if not ext_call.return_data[0]:
                revert with 0, 'FAILED_1'
}



}
