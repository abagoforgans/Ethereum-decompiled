contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
address tokenAddress;
uint256 n;
uint256 m;
mapping of uint8 stor4;
uint8 stor5;

function n() {
    return n
}

function m() {
    return m
}

function pause() {
    return bool(uint8(stor0.field_160))
}

function owner() {
    return owner
}

function sub_9ec3620a(?) {
    return bool(stor5)
}

function token() {
    return tokenAddress
}

function setOwner(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function setState(bool arg1) {
    require msg.sender == owner
    Mask(96, 0, stor0.field_160) = Mask(96, 0, arg1)
    if not uint8(stor0.field_160):
        emit STARTED()
    else:
        emit PAUSED()
}

function withdrawal() {
    require not uint8(stor0.field_160)
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    require not uint8(stor0.field_160)
    if stor4[address(msg.sender)]:
        if msg.value > 0:
            if m > 0:
                require msg.value * m >= msg.value
                require msg.value * m >= 0
                if msg.value * m:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args owner, msg.sender, msg.value * m
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call owner with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
    else:
        stor4[address(msg.sender)] = 1
        if msg.value <= 0:
            if n:
                require ext_code.size(tokenAddress)
                call tokenAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args owner, msg.sender, n
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call owner with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
        else:
            if m <= 0:
                if n:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args owner, msg.sender, n
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call owner with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
            else:
                require msg.value * m >= msg.value
                require n + (msg.value * m) >= n
                if n + (msg.value * m):
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args owner, msg.sender, n + (msg.value * m)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call owner with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
}



}
