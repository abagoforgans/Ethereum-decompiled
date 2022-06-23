contract main {




// =====================  Runtime code  =====================


const ETH = 0

const MAX_UINT = -1


address owner;
address exchangeAddress;

function owner() {
    return owner
}

function exchange() {
    return exchangeAddress
}

function _fallback() payable {
  stop
}

function setExchange(address arg1) {
    require msg.sender == owner
    exchangeAddress = arg1
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

function withdraw() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawToken(address arg1, bool arg2) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        if not arg1:
            call owner with:
               value ext_call.return_data[0] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            require ext_code.size(arg1)
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args owner, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not arg2:
            else:
                require return_data.size >= 32
    return 1
}

function sub_f84960c8(?) payable {
    require ext_code.size(exchangeAddress)
    call exchangeAddress.convert(address[] arg1, uint256 arg2, uint256 arg3) with:
       value msg.value wei
         gas gas_remaining wei
        args 0, 96, msg.value, cd[36], ('cd', 68).length, call.data[cd[68] + 36 len 32 * ('cd', 68).length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ('cd', 68).length - 1 < ('cd', 68).length
    if ext_call.return_data[0]:
        if not address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]):
            call msg.sender with:
               value ext_call.return_data[0] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            require ext_code.size(address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]))
            call address(cd[((32 * ('cd', 68).length - 1) + cd[68] + 36)]).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not cd[4]:
            else:
                require return_data.size >= 32
    if eth.balance(this.address):
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0]
}

function sub_619bc8c1(?) {
    require 0 < ('cd', 68).length
    require ext_code.size(address(('cd', 68)[0]))
    call address(('cd', 68)[0]).0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(('cd', 68)[0]))
    call address(('cd', 68)[0]).0xdd62ed3e with:
         gas gas_remaining wei
        args address(this.address), exchangeAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not cd[4]:
        if ext_call.return_data[0] < ext_call.return_data[0]:
            require ext_code.size(address(('cd', 68)[0]))
            call address(('cd', 68)[0]).0xdd62ed3e with:
                 gas gas_remaining wei
                args address(this.address), exchangeAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(('cd', 68)[0]))
            if ext_call.return_data[0]:
                call address(('cd', 68)[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args exchangeAddress, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            call address(('cd', 68)[0]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args exchangeAddress, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        if ext_call.return_data[0] < ext_call.return_data[0]:
            require ext_code.size(address(('cd', 68)[0]))
            call address(('cd', 68)[0]).0xdd62ed3e with:
                 gas gas_remaining wei
                args address(this.address), exchangeAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(('cd', 68)[0]))
            if ext_call.return_data[0]:
                call address(('cd', 68)[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args exchangeAddress, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
            call address(('cd', 68)[0]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args exchangeAddress, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
    require ext_code.size(exchangeAddress)
    call exchangeAddress.claimAndConvert(address[] arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args 0, 96, ext_call.return_data[0], cd[36], ('cd', 68).length, call.data[cd[68] + 36 len 32 * ('cd', 68).length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(('cd', 68)[0]))
    call address(('cd', 68)[0]).0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        if not address(('cd', 68)[0]):
            call msg.sender with:
               value ext_call.return_data[0] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            require ext_code.size(address(('cd', 68)[0]))
            call address(('cd', 68)[0]).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not cd[4]:
            else:
                require return_data.size >= 32
    if ext_call.return_data[0]:
        call msg.sender with:
           value ext_call.return_data[0] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0]
}



}
