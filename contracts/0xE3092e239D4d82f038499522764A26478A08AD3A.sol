contract main {




// =====================  Runtime code  =====================


const sub_8df8e17c(?) = 0


address owner;
uint256 minConversionRate;
mapping of address sub_29679132;
mapping of address sub_75e37b9a;
address sub_976975e8Address;
address sub_0609ccb7Address;
address etherERC20Address;
address bntTokenAddress;

function sub_0609ccb7(?) {
    return sub_0609ccb7Address
}

function sub_29679132(?) {
    return sub_29679132[address(arg1)]
}

function sub_5f3519a6(?) {
    return sub_29679132[arg1]
}

function sub_75e37b9a(?) {
    return sub_75e37b9a[arg1]
}

function etherERC20() {
    return etherERC20Address
}

function minConversionRate() {
    return minConversionRate
}

function owner() {
    return owner
}

function sub_976975e8(?) {
    return sub_976975e8Address
}

function bntToken() {
    return bntTokenAddress
}

function _fallback() payable {
  stop
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function sub_74b8b494(?) {
    require msg.sender == owner
    bntTokenAddress = arg1
    emit 0x2a59ac6a: arg1
}

function sub_6fdcb6e3(?) {
    require msg.sender == owner
    sub_0609ccb7Address = arg1
    emit 0x3529a61d: arg1
}

function sub_a511d6c3(?) {
    require msg.sender == owner
    sub_976975e8Address = arg1
    emit 0xac12cde1: arg1
}

function sub_8b41e37a(?) {
    require msg.sender == owner
    sub_75e37b9a[address(arg1)] = arg3
    sub_29679132[address(arg1)] = arg2
}

function sub_9ada4778(?) {
    if bntTokenAddress == arg1:
        mem[288 len 0] = None
        return Array(len=3, data=mem[288 len 96])
    if bntTokenAddress == arg2:
        mem[288 len 0] = None
        return Array(len=3, data=mem[288 len 96])
    mem[352 len 0] = None
    return Array(len=5, data=mem[352 len 160])
}

function trade(address arg1, address arg2, uint256 arg3) payable {
    if etherERC20Address == arg1:
        require msg.value == arg3
    else:
        require ext_code.size(arg1)
        call arg1.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(arg1)
        call arg1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sub_29679132[address(arg1)], arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if bntTokenAddress == arg1:
        mem[356 len 0] = None
        require ext_code.size(sub_29679132[address(arg1)])
        call sub_29679132[address(arg1)].quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
           value msg.value wei
             gas gas_remaining wei
            args Array(len=3, data=mem[356 len 96]), arg3, minConversionRate
    else:
        if bntTokenAddress == arg2:
            mem[356 len 0] = None
            require ext_code.size(sub_29679132[address(arg1)])
            call sub_29679132[address(arg1)].quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
               value msg.value wei
                 gas gas_remaining wei
                args Array(len=3, data=mem[356 len 96]), arg3, minConversionRate
        else:
            mem[420 len 0] = None
            require ext_code.size(sub_29679132[address(arg1)])
            call sub_29679132[address(arg1)].quickConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
               value msg.value wei
                 gas gas_remaining wei
                args Array(len=5, data=mem[420 len 160]), arg3, minConversionRate
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if etherERC20Address == arg2:
        call msg.sender with:
           value ext_call.return_data[0] wei
             gas 2300 * is_zero(value) wei
    else:
        require ext_code.size(arg2)
        call arg2.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Trade(address(arg1), arg3, address(arg2), ext_call.return_data[0]);
    return ext_call.return_data[0]
}



}
