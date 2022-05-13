contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
address owner;
address saleAddress;
uint256 cap;
uint8 feePerc;
address managerAddress; offset 8
mapping of uint256 deposits;
uint256 weiCollected;
uint256 tokensReceived;
uint8 stor7;
uint8 stor7; offset 8

function paid() {
    return bool(uint8(stor7.field_8))
}

function cap() {
    return cap
}

function weiCollected() {
    return weiCollected
}

function tokensReceived() {
    return tokensReceived
}

function canceled() {
    return bool(uint8(stor7.field_0))
}

function manager() {
    return managerAddress
}

function paused() {
    return bool(stor0)
}

function sale() {
    return saleAddress
}

function owner() {
    return owner
}

function feePerc() {
    return feePerc
}

function deposits(address arg1) {
    return deposits[arg1]
}

function destroy() {
    require owner == msg.sender
    require ext_code.size(saleAddress)
    call saleAddress.0xfc0c546a with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(saleAddress)
        call saleAddress.0xfc0c546a with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args owner, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    selfdestruct(owner)
}

function capReached() {
    return weiCollected >= cap
}

function unpause() {
    require owner == msg.sender
    require stor0
    stor0 = 0
    emit Unpause()
}

function pause() {
    require owner == msg.sender
    require not stor0
    stor0 = 1
    emit Pause()
}

function cancel() {
    require owner == msg.sender
    require stor0
    require not uint8(stor7.field_8)
    uint8(stor7.field_0) = 1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function isOpen() {
    if stor0:
        return not bool(stor0)
    if weiCollected >= cap:
        return (weiCollected < cap)
    if uint8(stor7.field_0):
        return not bool(uint8(stor7.field_0))
    return not bool(uint8(stor7.field_8))
}

function getToken() {
    require ext_code.size(saleAddress)
    call saleAddress.0xfc0c546a with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function withdraw() {
    require uint8(stor7.field_0)
    require deposits[address(msg.sender)]
    deposits[address(msg.sender)] = 0
    require deposits[address(msg.sender)] <= weiCollected
    weiCollected -= deposits[address(msg.sender)]
    call msg.sender with:
       value deposits[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Withdrawn(deposits[address(msg.sender)], msg.sender);
}

function deposit(address arg1) payable {
    require not stor0
    require weiCollected < cap
    require not uint8(stor7.field_0)
    require not uint8(stor7.field_8)
    require arg1
    require msg.value + weiCollected >= weiCollected
    require msg.value + weiCollected <= cap
    require msg.value + deposits[address(arg1)] >= deposits[address(arg1)]
    deposits[address(arg1)] += msg.value
    require msg.value + weiCollected >= weiCollected
    weiCollected += msg.value
    emit Deposited(msg.value, arg1);
}

function claimTokens(address arg1) {
    require uint8(stor7.field_8)
    require arg1
    if deposits[address(arg1)]:
        if not tokensReceived:
            require weiCollected
            require 0 / weiCollected
            deposits[address(arg1)] = 0
            require ext_code.size(saleAddress)
            call saleAddress.0xfc0c546a with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), 0 / weiCollected
        else:
            require deposits[address(arg1)] * tokensReceived / tokensReceived == deposits[address(arg1)]
            require weiCollected
            require deposits[address(arg1)] * tokensReceived / weiCollected
            deposits[address(arg1)] = 0
            require ext_code.size(saleAddress)
            call saleAddress.0xfc0c546a with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), deposits[address(arg1)] * tokensReceived / weiCollected
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function _fallback() payable {
    if msg.value:
        require not stor0
        require weiCollected < cap
        require not uint8(stor7.field_0)
        require not uint8(stor7.field_8)
        require msg.sender
        require msg.value + weiCollected >= weiCollected
        require msg.value + weiCollected <= cap
        require msg.value + deposits[address(msg.sender)] >= deposits[address(msg.sender)]
        deposits[address(msg.sender)] += msg.value
        require msg.value + weiCollected >= weiCollected
        weiCollected += msg.value
        emit Deposited(msg.value, msg.sender);
    else:
        require uint8(stor7.field_8)
        require msg.sender
        if deposits[address(msg.sender)]:
            if not tokensReceived:
                require weiCollected
                require 0 / weiCollected
                deposits[address(msg.sender)] = 0
                require ext_code.size(saleAddress)
                call saleAddress.0xfc0c546a with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, 0 / weiCollected
            else:
                require deposits[address(msg.sender)] * tokensReceived / tokensReceived == deposits[address(msg.sender)]
                require weiCollected
                require deposits[address(msg.sender)] * tokensReceived / weiCollected
                deposits[address(msg.sender)] = 0
                require ext_code.size(saleAddress)
                call saleAddress.0xfc0c546a with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, deposits[address(msg.sender)] * tokensReceived / weiCollected
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
}

function pay() {
    require owner == msg.sender
    require not uint8(stor7.field_0)
    require 0 < weiCollected
    if not weiCollected / 100:
        require 0 <= weiCollected
        call saleAddress with:
           funct Mask(32, 128, this.address) >> 128
           value weiCollected wei
             gas gas_remaining wei
            args (uint128(this.address) << 96)
        require ext_call.success
        require ext_code.size(saleAddress)
        call saleAddress.0xfc0c546a with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        tokensReceived = ext_call.return_data[0]
        uint8(stor7.field_8) = 1
        emit Paid(weiCollected, 0);
    else:
        require feePerc * weiCollected / 100 / weiCollected / 100 == feePerc
        require feePerc * weiCollected / 100 <= weiCollected
        call saleAddress with:
           funct Mask(32, 128, this.address) >> 128
           value weiCollected - (feePerc * weiCollected / 100) wei
             gas gas_remaining wei
            args (uint128(this.address) << 96)
        require ext_call.success
        require ext_code.size(saleAddress)
        call saleAddress.0xfc0c546a with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        tokensReceived = ext_call.return_data[0]
        if feePerc * weiCollected / 100:
            call managerAddress with:
               value feePerc * weiCollected / 100 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        uint8(stor7.field_8) = 1
        emit Paid(weiCollected - (feePerc * weiCollected / 100), feePerc * weiCollected / 100);
}



}
