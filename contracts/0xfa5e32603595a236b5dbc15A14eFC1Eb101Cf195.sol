contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160
address stor0;
address stor1;
uint8 stor3;

function _fallback() payable {
    uint8(stor0.field_160) = 0
    stor3 = 0
    require not msg.value
    address(stor0.field_0) = msg.sender
    create contract with 0 wei
                    code: code.data[2706 len 3822]
    require create.new_address
    stor1 = address(create.new_address)
    return code.data[166 len 2540]
}



// =====================  Runtime code  =====================


const endTime = 1515369599

const cap = 7500000 * 10^18

const wallet = 0xe0d9f548e5a62c7a06f0690ede9621bf17620683

const startTime = 1512305200


uint8 stor0; offset 160
address owner;
address tokenAddress;
uint256 tokenRaised;
uint8 stor3;

function tokenRaised() {
    return tokenRaised
}

function paused() {
    return bool(stor0)
}

function owner() {
    return owner
}

function crowdsaleClosed() {
    return bool(stor3)
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

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getRate() {
    if block.timestamp <= 1513382399:
        return 45000
    if block.timestamp <= 1514246399:
        return 39000
    if block.timestamp > 1514764799:
        return 30000
    return (10 * 3600)
}

function finalize() {
    require owner == msg.sender
    require not stor3
    if block.timestamp < 1515369599:
        require 7500000 * 10^18 == tokenRaised
    call 0xe0d9f548e5a62c7a06f0690ede9621bf17620683 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require tokenRaised <= 7500000 * 10^18
    if -tokenRaised + 7500000 * 10^18 > 0:
        require ext_code.size(tokenAddress)
        call tokenAddress.0x42966c68 with:
             gas gas_remaining - 710 wei
            args (-tokenRaised + 7500000 * 10^18)
        require ext_call.success
    stor3 = 1
}

function buyTokens(address arg1) payable {
    require not stor0
    require arg1
    require block.timestamp >= 1512305200
    require block.timestamp <= 1515369599
    require msg.value
    if block.timestamp <= 1513382399:
        if msg.value:
            require msg.value
            require 45000 * msg.value / msg.value == 45000
        require (45000 * msg.value / 10) + tokenRaised >= tokenRaised
        tokenRaised += 45000 * msg.value / 10
        require (45000 * msg.value / 10) + tokenRaised <= 7500000 * 10^18
        require -(45000 * msg.value / 10) + -tokenRaised + 7500000 * 10^18 >= 0
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args address(arg1), 45000 * msg.value / 10
        require ext_call.success
        emit TokenPurchase(msg.value, 45000 * msg.value / 10, msg.sender, arg1);
    else:
        if block.timestamp <= 1514246399:
            if msg.value:
                require msg.value
                require 39000 * msg.value / msg.value == 39000
            require (39000 * msg.value / 10) + tokenRaised >= tokenRaised
            tokenRaised += 39000 * msg.value / 10
            require (39000 * msg.value / 10) + tokenRaised <= 7500000 * 10^18
            require -(39000 * msg.value / 10) + -tokenRaised + 7500000 * 10^18 >= 0
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args address(arg1), 39000 * msg.value / 10
            require ext_call.success
            emit TokenPurchase(msg.value, 39000 * msg.value / 10, msg.sender, arg1);
        else:
            if block.timestamp > 1514764799:
                if msg.value:
                    require msg.value
                    require 30000 * msg.value / msg.value == 30000
                require (30000 * msg.value / 10) + tokenRaised >= tokenRaised
                tokenRaised += 30000 * msg.value / 10
                require (30000 * msg.value / 10) + tokenRaised <= 7500000 * 10^18
                require -(30000 * msg.value / 10) + -tokenRaised + 7500000 * 10^18 >= 0
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args address(arg1), 30000 * msg.value / 10
                require ext_call.success
                emit TokenPurchase(msg.value, 30000 * msg.value / 10, msg.sender, arg1);
            else:
                if msg.value:
                    require msg.value
                    require 10 * 3600 * msg.value / msg.value == 10 * 3600
                require (10 * 3600 * msg.value / 10) + tokenRaised >= tokenRaised
                tokenRaised += 10 * 3600 * msg.value / 10
                require (10 * 3600 * msg.value / 10) + tokenRaised <= 7500000 * 10^18
                require -(10 * 3600 * msg.value / 10) + -tokenRaised + 7500000 * 10^18 >= 0
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args address(arg1), 10 * 3600 * msg.value / 10
                require ext_call.success
                emit TokenPurchase(msg.value, 10 * 3600 * msg.value / 10, msg.sender, arg1);
    call 0xe0d9f548e5a62c7a06f0690ede9621bf17620683 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}

function _fallback() payable {
    require not stor0
    require msg.sender
    require block.timestamp >= 1512305200
    require block.timestamp <= 1515369599
    require msg.value
    if block.timestamp <= 1513382399:
        if msg.value:
            require msg.value
            require 45000 * msg.value / msg.value == 45000
        require (45000 * msg.value / 10) + tokenRaised >= tokenRaised
        tokenRaised += 45000 * msg.value / 10
        require (45000 * msg.value / 10) + tokenRaised <= 7500000 * 10^18
        require -(45000 * msg.value / 10) + -tokenRaised + 7500000 * 10^18 >= 0
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, 45000 * msg.value / 10
        require ext_call.success
        emit TokenPurchase(msg.value, 45000 * msg.value / 10, msg.sender, msg.sender);
    else:
        if block.timestamp <= 1514246399:
            if msg.value:
                require msg.value
                require 39000 * msg.value / msg.value == 39000
            require (39000 * msg.value / 10) + tokenRaised >= tokenRaised
            tokenRaised += 39000 * msg.value / 10
            require (39000 * msg.value / 10) + tokenRaised <= 7500000 * 10^18
            require -(39000 * msg.value / 10) + -tokenRaised + 7500000 * 10^18 >= 0
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, 39000 * msg.value / 10
            require ext_call.success
            emit TokenPurchase(msg.value, 39000 * msg.value / 10, msg.sender, msg.sender);
        else:
            if block.timestamp > 1514764799:
                if msg.value:
                    require msg.value
                    require 30000 * msg.value / msg.value == 30000
                require (30000 * msg.value / 10) + tokenRaised >= tokenRaised
                tokenRaised += 30000 * msg.value / 10
                require (30000 * msg.value / 10) + tokenRaised <= 7500000 * 10^18
                require -(30000 * msg.value / 10) + -tokenRaised + 7500000 * 10^18 >= 0
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 30000 * msg.value / 10
                require ext_call.success
                emit TokenPurchase(msg.value, 30000 * msg.value / 10, msg.sender, msg.sender);
            else:
                if msg.value:
                    require msg.value
                    require 10 * 3600 * msg.value / msg.value == 10 * 3600
                require (10 * 3600 * msg.value / 10) + tokenRaised >= tokenRaised
                tokenRaised += 10 * 3600 * msg.value / 10
                require (10 * 3600 * msg.value / 10) + tokenRaised <= 7500000 * 10^18
                require -(10 * 3600 * msg.value / 10) + -tokenRaised + 7500000 * 10^18 >= 0
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 10 * 3600 * msg.value / 10
                require ext_call.success
                emit TokenPurchase(msg.value, 10 * 3600 * msg.value / 10, msg.sender, msg.sender);
    call 0xe0d9f548e5a62c7a06f0690ede9621bf17620683 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}



}
