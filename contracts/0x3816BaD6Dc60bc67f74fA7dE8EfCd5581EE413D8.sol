contract main {




// =====================  Runtime code  =====================


address owner;
uint256 sub_c0188387;
uint256 sub_68b2045a;

function sub_68b2045a(?) {
    return sub_68b2045a
}

function owner() {
    return owner
}

function sub_c0188387(?) {
    return sub_c0188387
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function changeExchangeRate(uint256 arg1, uint256 arg2) {
    require msg.sender == owner
    sub_c0188387 = arg1
    sub_68b2045a = arg2
    emit 0xe231859a: arg1, arg2
    return 1
}

function calculate(uint256 arg1) {
    require ext_code.size(msg.sender) > 0
    require arg1 > 0
    require ext_code.size(msg.sender)
    call msg.sender.ico() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    if sub_c0188387:
        if not arg1:
            require sub_68b2045a > 0
            if sub_68b2045a:
                return (0 / sub_68b2045a)
        else:
            require sub_c0188387 * arg1 / arg1 == sub_c0188387
            require sub_68b2045a > 0
            if sub_68b2045a:
                return (sub_c0188387 * arg1 / sub_68b2045a)
        ('iszero', ('stor', ('name', 'sub_68b2045a', 2)))
        revert
    if sub_68b2045a:
        if not arg1:
            require sub_68b2045a > 0
            if sub_68b2045a:
                return (0 / sub_68b2045a)
        else:
            require sub_c0188387 * arg1 / arg1 == sub_c0188387
            require sub_68b2045a > 0
            if sub_68b2045a:
                return (sub_c0188387 * arg1 / sub_68b2045a)
        ('iszero', ('stor', ('name', 'sub_68b2045a', 2)))
        revert
    require ext_code.size(msg.sender)
    call msg.sender.0xc00c4da1 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(msg.sender)
    call msg.sender.totalSupply() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(msg.sender)
    call msg.sender.decimals() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 3 * 10^ext_call.return_data[31 len 1] > 0
    require 3 * 10^ext_call.return_data[31 len 1]
    if ext_call.return_data[0] / 3 * 10^ext_call.return_data[31 len 1] > ext_call.return_data[0]:
        if not arg1:
            return 0
        require 3 * arg1 / arg1 == 3
        return (3 * arg1)
    require ext_code.size(msg.sender)
    call msg.sender.decimals() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 3 * 10^uint8(ext_call.return_data[0]) > 0
    require 3 * 10^uint8(ext_call.return_data[0])
    if not ext_call.return_data[0] / 3 * 10^uint8(ext_call.return_data[0]):
        if 0 <= ext_call.return_data[0]:
            return arg1
    else:
        require 2 * 10^ext_call.return_data[31 len 1] * ext_call.return_data[0] / 3 * 10^uint8(ext_call.return_data[0]) / ext_call.return_data[0] / 3 * 10^uint8(ext_call.return_data[0]) == 2 * 10^ext_call.return_data[31 len 1]
        if 2 * 10^ext_call.return_data[31 len 1] * ext_call.return_data[0] / 3 * 10^uint8(ext_call.return_data[0]) <= ext_call.return_data[0]:
            return arg1
    if not arg1:
        return 0
    require 2 * arg1 / arg1 == 2
    return (2 * arg1)
}



}
