contract main {




// =====================  Runtime code  =====================


const name = 'MutiSigPTN'

const approve(address arg1, uint256 arg2) = 0

const transferFrom(address arg1, address arg2, uint256 arg3) = 0

const decimals = 18

const symbol = 'MPTN'

const allowance(address arg1, address arg2) = 0


address stor0;
address stor1;
address stor2;
mapping of struct stor3;

function _fallback() payable {
    revert
}

function getAddrs() {
    return stor0, stor1, stor2
}

function totalSupply() {
    require ext_code.size(stor2)
    call stor2.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function balanceOf(address arg1) {
    if arg1 != stor0:
        if arg1 != stor1:
            return 0
    require ext_code.size(stor2)
    call stor2.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function transfer(address arg1, uint256 arg2) {
    require ext_code.size(stor2)
    call stor2.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= arg2
    if msg.sender == stor0:
        stor3[address(arg1)][arg2].field_0 = 1
    else:
        require msg.sender == stor1
        stor3[address(arg1)][arg2].field_8 = 1
    if bool(stor3[address(arg1)][arg2].field_0) == 1:
        if bool(stor3[address(arg1)][arg2].field_8) == 1:
            require ext_code.size(stor2)
            call stor2.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            stor3[address(arg1)][arg2].field_0 = 0
            stor3[address(arg1)][arg2].field_8 = 0
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}



}
