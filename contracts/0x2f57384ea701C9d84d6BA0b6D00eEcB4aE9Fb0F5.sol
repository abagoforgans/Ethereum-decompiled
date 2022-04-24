contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160
address stor0;
address stor1;
uint256 stor2;
address stor3;
address stor4;

function _fallback() payable {
    stor2 = 100000000 * 10^18
    stor3 = 0x38489489663b56d2a3037c7f1b517d258a34f883
    stor4 = 0xdf09bc91943d0b2fec08a8c8d2065d5c3c577e0
    address(stor0.field_0) = msg.sender
    uint8(stor0.field_160) = 0
    create contract with 0 wei
                    code: code.data[2757 len 3312]
    require create.new_address
    stor1 = address(create.new_address)
    return code.data[218 len 2539]
}



// =====================  Runtime code  =====================


const START = (420768 * 24 * 3600)

const END = 1517250730


uint8 stor0; offset 160
address owner;
address tokenAddress;
uint256 tokensLeft;
address walletAddress;
address bountyWalletAddress;
uint256 weiRaised;
uint8 stor6;

function weiRaised() {
    return weiRaised
}

function wallet() {
    return walletAddress
}

function paused() {
    return bool(stor0)
}

function owner() {
    return owner
}

function tokensLeft() {
    return tokensLeft
}

function bountyWallet() {
    return bountyWalletAddress
}

function bountyDistributed() {
    return bool(stor6)
}

function token() {
    return tokenAddress
}

function destroy(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require owner == msg.sender
    s = 0
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _17 = mem[(32 * idx) + 128]
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        call mem[(32 * idx) + 140 len 20].0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        mem[(32 * arg1.length) + 132] = owner
        mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
        require ext_code.size(address(_17))
        call address(_17).0xa9059cbb with:
             gas gas_remaining - 710 wei
            args owner, ext_call.return_data[0]
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        require ext_call.success
        s = ext_call.return_data[0]
        s = _17
        idx = idx + 1
        continue 
    selfdestruct(owner)
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function unpause() {
    require owner == msg.sender
    require stor0
    stor0 = 0
    emit Unpause()
    return 1
}

function pause() {
    require owner == msg.sender
    require not stor0
    stor0 = 1
    emit Pause()
    return 1
}

function getRate() {
    if block.timestamp < 420768 * 24 * 3600:
        return 200
    if block.timestamp <= 421104 * 24 * 3600:
        return 167
    if block.timestamp > 421440 * 24 * 3600:
        return 100
    return 133
}

function finishMinting() {
    require owner == msg.sender
    require stor6
    require block.timestamp >= 1517250730
    require ext_code.size(tokenAddress)
    call tokenAddress.0x7d64bcb4 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function distributeBounty() {
    require owner == msg.sender
    require not stor6
    require block.timestamp >= 1517250730
    if weiRaised / 100:
        require weiRaised / 100
        require 10 * weiRaised / 100 / weiRaised / 100 == 10
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args bountyWalletAddress, 10 * weiRaised / 100
    require ext_call.success
    stor6 = 1
}

function _fallback() payable {
    require not stor0
    require msg.sender
    require msg.value
    require block.timestamp <= 1517250730
    if block.timestamp >= 420768 * 24 * 3600:
        if block.timestamp > 421104 * 24 * 3600:
            if block.timestamp > 421440 * 24 * 3600:
                require 0 <= tokensLeft
                require tokensLeft >= 0
                require 0 <= tokensLeft
                require msg.value + weiRaised >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 0
                require ext_call.success
                call walletAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
            else:
                require 0 <= tokensLeft
                require tokensLeft >= 0
                require 0 <= tokensLeft
                require msg.value + weiRaised >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 0
                require ext_call.success
                call walletAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
        else:
            require 0 <= tokensLeft
            require tokensLeft >= 0
            require 0 <= tokensLeft
            require msg.value + weiRaised >= weiRaised
            weiRaised += msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args msg.sender, 0
            require ext_call.success
            call walletAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
    else:
        require 0 <= tokensLeft
        require tokensLeft >= 0
        require 0 <= tokensLeft
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args msg.sender, 0
        require ext_call.success
        call walletAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
}

function buyTokens(address arg1) payable {
    require not stor0
    require arg1
    require msg.value
    require block.timestamp <= 1517250730
    if block.timestamp >= 420768 * 24 * 3600:
        if block.timestamp > 421104 * 24 * 3600:
            if block.timestamp > 421440 * 24 * 3600:
                require 0 <= tokensLeft
                require tokensLeft >= 0
                require 0 <= tokensLeft
                require msg.value + weiRaised >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args address(arg1), 0
                require ext_call.success
                call walletAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
            else:
                require 0 <= tokensLeft
                require tokensLeft >= 0
                require 0 <= tokensLeft
                require msg.value + weiRaised >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args address(arg1), 0
                require ext_call.success
                call walletAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
        else:
            require 0 <= tokensLeft
            require tokensLeft >= 0
            require 0 <= tokensLeft
            require msg.value + weiRaised >= weiRaised
            weiRaised += msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args address(arg1), 0
            require ext_call.success
            call walletAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
    else:
        require 0 <= tokensLeft
        require tokensLeft >= 0
        require 0 <= tokensLeft
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args address(arg1), 0
        require ext_call.success
        call walletAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
}



}
