contract main {




// =====================  Runtime code  =====================


address owner;
uint256 leverage;

function leverage() {
    return leverage
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawErc20(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function sub_55e59682(?) {
    require calldata.size - 4 >= 64
    if not arg1:
        return 0
    if not arg2:
        require arg1
        require arg1
        require (0 / arg1) - 10^18 <= 0 / arg1
        if not (0 / arg1) - 10^18:
            return 0
        if (0 / arg1) - 10^18 == -1:
            require leverage != 0x8000000000000000000000000000000000000000000000000000000000000000
        require (0 / arg1) - 10^18
        require (-1 * 10^18 * leverage) + (0 / arg1 * leverage) / (0 / arg1) - 10^18 == leverage
        if arg1 >= 0:
            return ((-1 * 10^18 * leverage) + (0 / arg1 * leverage))
        if not (-1 * 10^18 * leverage) + (0 / arg1 * leverage):
            return 0
        require (-1 * 10^18 * leverage) + (0 / arg1 * leverage)
        require (-115792089237316195423570985008687907853269984665640564039457584007913129639935 * 10^18 * leverage) - (0 / arg1 * leverage) / (-1 * 10^18 * leverage) + (0 / arg1 * leverage) == -1
        return ((-115792089237316195423570985008687907853269984665640564039457584007913129639935 * 10^18 * leverage) - (0 / arg1 * leverage))
    require arg2
    require 10^18 * arg2 / arg2 == 10^18
    require arg1
    if arg1 == -1:
        require 10^18 * arg2 != 0x8000000000000000000000000000000000000000000000000000000000000000
    require arg1
    require (10^18 * arg2 / arg1) - 10^18 <= 10^18 * arg2 / arg1
    if not (10^18 * arg2 / arg1) - 10^18:
        return 0
    if (10^18 * arg2 / arg1) - 10^18 == -1:
        require leverage != 0x8000000000000000000000000000000000000000000000000000000000000000
    require (10^18 * arg2 / arg1) - 10^18
    require (-1 * 10^18 * leverage) + (10^18 * arg2 / arg1 * leverage) / (10^18 * arg2 / arg1) - 10^18 == leverage
    if arg1 >= 0:
        return ((-1 * 10^18 * leverage) + (10^18 * arg2 / arg1 * leverage))
    if not (-1 * 10^18 * leverage) + (10^18 * arg2 / arg1 * leverage):
        return 0
    require (-1 * 10^18 * leverage) + (10^18 * arg2 / arg1 * leverage)
    require (-115792089237316195423570985008687907853269984665640564039457584007913129639935 * 10^18 * leverage) - (10^18 * arg2 / arg1 * leverage) / (-1 * 10^18 * leverage) + (10^18 * arg2 / arg1 * leverage) == -1
    return ((-115792089237316195423570985008687907853269984665640564039457584007913129639935 * 10^18 * leverage) - (10^18 * arg2 / arg1 * leverage))
}



}
