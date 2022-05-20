contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
address stor0;
address sub_7b133c65Address;
uint256 soldToken;
array of uint256 sub_3721894e;
array of uint256 sub_d15d0245;
uint256 startTime;
uint256 endTime;

function sold() {
    return soldToken
}

function endTime() {
    return endTime
}

function sub_3721894e(?) {
    require arg1 < sub_3721894e.length
    return sub_3721894e[arg1]
}

function ico() {
    return sub_7b133c65Address
}

function startTime() {
    return startTime
}

function sub_7b133c65(?) {
    return sub_7b133c65Address
}

function isClosed() {
    return bool(uint8(stor0.field_160))
}

function sub_d15d0245(?) {
    require arg1 < sub_d15d0245.length
    return sub_d15d0245[arg1]
}

function getSoldToken() {
    return soldToken
}

function close() {
    uint8(stor0.field_160) = 1
}

function owner() {
    require ext_code.size(address(stor0.field_0))
    call address(stor0.field_0).0x8da5cb5b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function sub_e1eb0600(?) {
    require ext_code.size(sub_7b133c65Address)
    call sub_7b133c65Address.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function isValidOwner(address arg1) {
    require ext_code.size(address(stor0.field_0))
    call address(stor0.field_0).0x8da5cb5b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 != ext_call.return_data[12 len 20]:
        return 0
    return 1
}

function withdraw() {
    require ext_code.size(address(stor0.field_0))
    call address(stor0.field_0).0xb8248dff with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    if eth.balance(this.address) > 0:
        require ext_code.size(address(stor0.field_0))
        call address(stor0.field_0).0x8da5cb5b with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        call ext_call.return_data[12 len 20] with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function returnToken() {
    require ext_code.size(address(stor0.field_0))
    call address(stor0.field_0).0xb8248dff with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require not uint8(stor0.field_160)
    require ext_code.size(sub_7b133c65Address)
    call sub_7b133c65Address.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0 <= ext_call.return_data[0]
    require ext_call.return_data[0] > 0
    require ext_code.size(address(stor0.field_0))
    call address(stor0.field_0).0x8da5cb5b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_7b133c65Address)
    call sub_7b133c65Address.0xa9059cbb with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function release() {
    require ext_code.size(address(stor0.field_0))
    call address(stor0.field_0).0xb8248dff with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require not uint8(stor0.field_160)
    if eth.balance(this.address) > 0:
        require ext_code.size(address(stor0.field_0))
        call address(stor0.field_0).0x8da5cb5b with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        call ext_call.return_data[12 len 20] with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_7b133c65Address)
    call sub_7b133c65Address.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    require ext_code.size(address(stor0.field_0))
    call address(stor0.field_0).0x8da5cb5b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_7b133c65Address)
    call sub_7b133c65Address.0xa9059cbb with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint8(stor0.field_160) = 1
}

function _fallback() payable {
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require not uint8(stor0.field_160)
    require 0 < sub_3721894e.length
    require msg.value >= sub_3721894e
    idx = 0
    while idx < sub_3721894e.length:
        mem[0] = 3
        if msg.value >= sub_3721894e[idx]:
            idx = idx + 1
            continue 
        require idx > 0
        require ext_code.size(sub_7b133c65Address)
        call sub_7b133c65Address.0xdfd19762 with:
             gas gas_remaining wei
            args msg.value
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx - 1 < sub_d15d0245.length
        if not ext_call.return_data[0]:
            require ext_call.return_data[0] >= ext_call.return_data[0]
            require ext_code.size(sub_7b133c65Address)
            call sub_7b133c65Address.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] <= ext_call.return_data[0]
            require ext_code.size(address(stor0.field_0))
            call address(stor0.field_0).0x8da5cb5b with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            call ext_call.return_data[12 len 20] with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_7b133c65Address)
            call sub_7b133c65Address.0x7e190ab9 with:
                 gas gas_remaining wei
                args msg.sender, msg.value, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                require ext_call.return_data[0] + soldToken >= soldToken
                soldToken += ext_call.return_data[0]
        else:
            require sub_d15d0245[idx] * ext_call.return_data[0] / ext_call.return_data[0] == sub_d15d0245[idx]
            require (sub_d15d0245[idx] * ext_call.return_data[0] / 100) + ext_call.return_data[0] >= ext_call.return_data[0]
            require ext_code.size(sub_7b133c65Address)
            call sub_7b133c65Address.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require (sub_d15d0245[idx] * ext_call.return_data[0] / 100) + ext_call.return_data[0] <= ext_call.return_data[0]
            require ext_code.size(address(stor0.field_0))
            call address(stor0.field_0).0x8da5cb5b with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            call ext_call.return_data[12 len 20] with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_7b133c65Address)
            call sub_7b133c65Address.0x7e190ab9 with:
                 gas gas_remaining wei
                args msg.sender, msg.value, (sub_d15d0245[idx] * ext_call.return_data[0] / 100) + ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                require (sub_d15d0245[idx] * ext_call.return_data[0] / 100) + ext_call.return_data[0] + soldToken >= soldToken
                soldToken = (sub_d15d0245[idx] * ext_call.return_data[0] / 100) + ext_call.return_data[0] + soldToken
    require sub_3721894e.length > 0
    require ext_code.size(sub_7b133c65Address)
    call sub_7b133c65Address.0xdfd19762 with:
         gas gas_remaining wei
        args msg.value
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require sub_3721894e.length - 1 < sub_d15d0245.length
    if not ext_call.return_data[0]:
        require ext_call.return_data[0] >= ext_call.return_data[0]
        require ext_code.size(sub_7b133c65Address)
        call sub_7b133c65Address.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] <= ext_call.return_data[0]
        require ext_code.size(address(stor0.field_0))
        call address(stor0.field_0).0x8da5cb5b with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        call ext_call.return_data[12 len 20] with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_7b133c65Address)
        call sub_7b133c65Address.0x7e190ab9 with:
             gas gas_remaining wei
            args msg.sender, msg.value, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require ext_call.return_data[0] + soldToken >= soldToken
            soldToken += ext_call.return_data[0]
    else:
        require sub_d15d0245[stor3.length] * ext_call.return_data[0] / ext_call.return_data[0] == sub_d15d0245[stor3.length]
        require (sub_d15d0245[stor3.length] * ext_call.return_data[0] / 100) + ext_call.return_data[0] >= ext_call.return_data[0]
        require ext_code.size(sub_7b133c65Address)
        call sub_7b133c65Address.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require (sub_d15d0245[stor3.length] * ext_call.return_data[0] / 100) + ext_call.return_data[0] <= ext_call.return_data[0]
        require ext_code.size(address(stor0.field_0))
        call address(stor0.field_0).0x8da5cb5b with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        call ext_call.return_data[12 len 20] with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_7b133c65Address)
        call sub_7b133c65Address.0x7e190ab9 with:
             gas gas_remaining wei
            args msg.sender, msg.value, (sub_d15d0245[stor3.length] * ext_call.return_data[0] / 100) + ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require (sub_d15d0245[stor3.length] * ext_call.return_data[0] / 100) + ext_call.return_data[0] + soldToken >= soldToken
            soldToken = (sub_d15d0245[stor3.length] * ext_call.return_data[0] / 100) + ext_call.return_data[0] + soldToken
}

function buyToken() payable {
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require not uint8(stor0.field_160)
    require 0 < sub_3721894e.length
    require msg.value >= sub_3721894e
    idx = 0
    while idx < sub_3721894e.length:
        mem[0] = 3
        if msg.value >= sub_3721894e[idx]:
            idx = idx + 1
            continue 
        require idx > 0
        require ext_code.size(sub_7b133c65Address)
        call sub_7b133c65Address.0xdfd19762 with:
             gas gas_remaining wei
            args msg.value
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx - 1 < sub_d15d0245.length
        if not ext_call.return_data[0]:
            require ext_call.return_data[0] >= ext_call.return_data[0]
            require ext_code.size(sub_7b133c65Address)
            call sub_7b133c65Address.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] <= ext_call.return_data[0]
            require ext_code.size(address(stor0.field_0))
            call address(stor0.field_0).0x8da5cb5b with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            call ext_call.return_data[12 len 20] with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_7b133c65Address)
            call sub_7b133c65Address.0x7e190ab9 with:
                 gas gas_remaining wei
                args msg.sender, msg.value, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                require ext_call.return_data[0] + soldToken >= soldToken
                soldToken += ext_call.return_data[0]
        else:
            require sub_d15d0245[idx] * ext_call.return_data[0] / ext_call.return_data[0] == sub_d15d0245[idx]
            require (sub_d15d0245[idx] * ext_call.return_data[0] / 100) + ext_call.return_data[0] >= ext_call.return_data[0]
            require ext_code.size(sub_7b133c65Address)
            call sub_7b133c65Address.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require (sub_d15d0245[idx] * ext_call.return_data[0] / 100) + ext_call.return_data[0] <= ext_call.return_data[0]
            require ext_code.size(address(stor0.field_0))
            call address(stor0.field_0).0x8da5cb5b with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            call ext_call.return_data[12 len 20] with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_7b133c65Address)
            call sub_7b133c65Address.0x7e190ab9 with:
                 gas gas_remaining wei
                args msg.sender, msg.value, (sub_d15d0245[idx] * ext_call.return_data[0] / 100) + ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                require (sub_d15d0245[idx] * ext_call.return_data[0] / 100) + ext_call.return_data[0] + soldToken >= soldToken
                soldToken = (sub_d15d0245[idx] * ext_call.return_data[0] / 100) + ext_call.return_data[0] + soldToken
        return bool(ext_call.return_data[0])
    require sub_3721894e.length > 0
    require ext_code.size(sub_7b133c65Address)
    call sub_7b133c65Address.0xdfd19762 with:
         gas gas_remaining wei
        args msg.value
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require sub_3721894e.length - 1 < sub_d15d0245.length
    if not ext_call.return_data[0]:
        require ext_call.return_data[0] >= ext_call.return_data[0]
        require ext_code.size(sub_7b133c65Address)
        call sub_7b133c65Address.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] <= ext_call.return_data[0]
        require ext_code.size(address(stor0.field_0))
        call address(stor0.field_0).0x8da5cb5b with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        call ext_call.return_data[12 len 20] with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_7b133c65Address)
        call sub_7b133c65Address.0x7e190ab9 with:
             gas gas_remaining wei
            args msg.sender, msg.value, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require ext_call.return_data[0] + soldToken >= soldToken
            soldToken += ext_call.return_data[0]
    else:
        require sub_d15d0245[stor3.length] * ext_call.return_data[0] / ext_call.return_data[0] == sub_d15d0245[stor3.length]
        require (sub_d15d0245[stor3.length] * ext_call.return_data[0] / 100) + ext_call.return_data[0] >= ext_call.return_data[0]
        require ext_code.size(sub_7b133c65Address)
        call sub_7b133c65Address.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require (sub_d15d0245[stor3.length] * ext_call.return_data[0] / 100) + ext_call.return_data[0] <= ext_call.return_data[0]
        require ext_code.size(address(stor0.field_0))
        call address(stor0.field_0).0x8da5cb5b with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        call ext_call.return_data[12 len 20] with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_7b133c65Address)
        call sub_7b133c65Address.0x7e190ab9 with:
             gas gas_remaining wei
            args msg.sender, msg.value, (sub_d15d0245[stor3.length] * ext_call.return_data[0] / 100) + ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require (sub_d15d0245[stor3.length] * ext_call.return_data[0] / 100) + ext_call.return_data[0] + soldToken >= soldToken
            soldToken = (sub_d15d0245[stor3.length] * ext_call.return_data[0] / 100) + ext_call.return_data[0] + soldToken
    return bool(ext_call.return_data[0])
}



}
