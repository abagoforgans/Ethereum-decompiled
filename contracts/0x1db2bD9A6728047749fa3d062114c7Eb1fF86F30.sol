contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint256 balanceOf;
uint256 totalShares;
address wethAddress;
address compoundAddress;
address sub_88b4564fAddress;
uint256 stor6;

function totalShares() {
    return totalShares
}

function weth() {
    return wethAddress
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function sub_88b4564f(?) {
    return sub_88b4564fAddress
}

function owner() {
    return owner
}

function shares(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[arg1]
}

function compound() {
    return compoundAddress
}

function _fallback() payable {
  stop
}

function isOwner() {
    return (msg.sender == owner)
}

function sub_b0594bcb(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor6 = arg1
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

function reserve() {
    require ext_code.size(compoundAddress)
    staticcall compoundAddress.getSupplyBalance(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(this.address), wethAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function NAV() {
    require ext_code.size(sub_88b4564fAddress)
    call sub_88b4564fAddress.0x52fd856b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(compoundAddress)
    staticcall compoundAddress.getSupplyBalance(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(this.address), wethAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (2 * ext_call.return_data[0])
}

function sub_fd5c8f03(?) {
    require ext_code.size(sub_88b4564fAddress)
    staticcall sub_88b4564fAddress.0xfd5c8f03 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(compoundAddress)
    staticcall compoundAddress.getSupplyBalance(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(this.address), wethAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (2 * ext_call.return_data[0])
}

function sub_d1c23814(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_88b4564fAddress)
    call sub_88b4564fAddress.0x52fd856b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(compoundAddress)
    staticcall compoundAddress.getSupplyBalance(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(this.address), wethAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require totalShares
    return ((ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalShares)
}

function sub_25e596d0(?) {
    require calldata.size - 4 >= 32
    if eth.balance(this.address) < arg1:
        if arg1 - eth.balance(this.address):
            require ext_code.size(compoundAddress)
            staticcall compoundAddress.getSupplyBalance(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(this.address), wethAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < arg1 - eth.balance(this.address):
                revert with 0, 'insufficient balance'
            require ext_code.size(compoundAddress)
            call compoundAddress.withdraw(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args wethAddress, arg1 - eth.balance(this.address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 'compound withdraw failed'
            require ext_code.size(wethAddress)
            call wethAddress.0x2e1a7d4d with:
                 gas gas_remaining wei
                args (arg1 - eth.balance(this.address))
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call this.address with:
               value arg1 - eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
    require ext_code.size(sub_88b4564fAddress)
    call sub_88b4564fAddress.0xd0e30db0 with:
       value arg1 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if balanceOf[address(msg.sender)] < arg1:
        revert with 0, 'insufficent shares'
    require ext_code.size(sub_88b4564fAddress)
    call sub_88b4564fAddress.0x52fd856b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(compoundAddress)
    staticcall compoundAddress.getSupplyBalance(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(this.address), wethAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require totalShares
    totalShares -= arg1
    balanceOf[address(msg.sender)] -= arg1
    require ext_code.size(compoundAddress)
    staticcall compoundAddress.getSupplyBalance(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(this.address), wethAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalShares <= ext_call.return_data[0]:
        if (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalShares:
            require ext_code.size(compoundAddress)
            staticcall compoundAddress.getSupplyBalance(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(this.address), wethAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalShares:
                revert with 0, 'insufficient balance'
            require ext_code.size(compoundAddress)
            call compoundAddress.withdraw(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args wethAddress, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalShares
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 'compound withdraw failed'
            require ext_code.size(wethAddress)
            call wethAddress.0x2e1a7d4d with:
                 gas gas_remaining wei
                args ((ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalShares)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call msg.sender with:
               value (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalShares wei
                 gas 2300 * is_zero(value) wei
    else:
        if ext_call.return_data[0]:
            require ext_code.size(compoundAddress)
            staticcall compoundAddress.getSupplyBalance(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(this.address), wethAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'insufficient balance'
            require ext_code.size(compoundAddress)
            call compoundAddress.withdraw(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args wethAddress, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 'compound withdraw failed'
            require ext_code.size(wethAddress)
            call wethAddress.0x2e1a7d4d with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call this.address with:
               value ext_call.return_data[0] wei
                 gas 2300 * is_zero(value) wei
        require ext_code.size(sub_88b4564fAddress)
        call sub_88b4564fAddress.0x2e1a7d4d with:
             gas gas_remaining wei
            args (((ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalShares) - ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= ((ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalShares) - ext_call.return_data[0]:
            call msg.sender with:
               value 2 * ext_call.return_data[0] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit Withdraw(arg1, 2 * ext_call.return_data[0], msg.sender);
            return (2 * ext_call.return_data[0])
        require ext_code.size(wethAddress)
        call wethAddress.0xd0e30db0 with:
           value (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalShares) wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(wethAddress)
        call wethAddress.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args compoundAddress, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalShares)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(compoundAddress)
        call compoundAddress.supply(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args wethAddress, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalShares)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'compound supply failed'
        call msg.sender with:
           value (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalShares wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit Withdraw(arg1, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalShares, msg.sender);
    return ((ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalShares)
}

function supply() payable {
    require ext_code.size(sub_88b4564fAddress)
    call sub_88b4564fAddress.0x52fd856b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(compoundAddress)
    staticcall compoundAddress.getSupplyBalance(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(this.address), wethAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not uint255(ext_call.return_data[0]):
        totalShares += msg.value
        balanceOf[address(msg.sender)] += msg.value
        require ext_code.size(wethAddress)
        call wethAddress.0xd0e30db0 with:
           value msg.value * stor6 / 1000 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(wethAddress)
        call wethAddress.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args compoundAddress, msg.value * stor6 / 1000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(compoundAddress)
        call compoundAddress.supply(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args wethAddress, msg.value * stor6 / 1000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'compound supply failed'
        if eth.balance(this.address) < msg.value - (msg.value * stor6 / 1000):
            if msg.value - (msg.value * stor6 / 1000) - eth.balance(this.address):
                require ext_code.size(compoundAddress)
                staticcall compoundAddress.getSupplyBalance(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(this.address), wethAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < msg.value - (msg.value * stor6 / 1000) - eth.balance(this.address):
                    revert with 0, 'insufficient balance'
                require ext_code.size(compoundAddress)
                call compoundAddress.withdraw(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args wethAddress, msg.value - (msg.value * stor6 / 1000) - eth.balance(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 'compound withdraw failed'
                require ext_code.size(wethAddress)
                call wethAddress.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args (msg.value - (msg.value * stor6 / 1000) - eth.balance(this.address))
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call this.address with:
                   value msg.value - (msg.value * stor6 / 1000) - eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
        require ext_code.size(sub_88b4564fAddress)
        call sub_88b4564fAddress.0xd0e30db0 with:
           value msg.value - (msg.value * stor6 / 1000) wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0x9d624b01: msg.value, msg.value, msg.sender
        return msg.value
    require 2 * ext_call.return_data[0]
    totalShares += msg.value * totalShares / 2 * ext_call.return_data[0]
    balanceOf[address(msg.sender)] += msg.value * totalShares / 2 * ext_call.return_data[0]
    require ext_code.size(wethAddress)
    call wethAddress.0xd0e30db0 with:
       value msg.value * stor6 / 1000 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(wethAddress)
    call wethAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args compoundAddress, msg.value * stor6 / 1000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(compoundAddress)
    call compoundAddress.supply(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args wethAddress, msg.value * stor6 / 1000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'compound supply failed'
    if eth.balance(this.address) < msg.value - (msg.value * stor6 / 1000):
        if msg.value - (msg.value * stor6 / 1000) - eth.balance(this.address):
            require ext_code.size(compoundAddress)
            staticcall compoundAddress.getSupplyBalance(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(this.address), wethAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < msg.value - (msg.value * stor6 / 1000) - eth.balance(this.address):
                revert with 0, 'insufficient balance'
            require ext_code.size(compoundAddress)
            call compoundAddress.withdraw(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args wethAddress, msg.value - (msg.value * stor6 / 1000) - eth.balance(this.address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 'compound withdraw failed'
            require ext_code.size(wethAddress)
            call wethAddress.0x2e1a7d4d with:
                 gas gas_remaining wei
                args (msg.value - (msg.value * stor6 / 1000) - eth.balance(this.address))
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call this.address with:
               value msg.value - (msg.value * stor6 / 1000) - eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
    require ext_code.size(sub_88b4564fAddress)
    call sub_88b4564fAddress.0xd0e30db0 with:
       value msg.value - (msg.value * stor6 / 1000) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x9d624b01: msg.value, msg.value * totalShares / 2 * ext_call.return_data[0], msg.sender
    return (msg.value * totalShares / 2 * ext_call.return_data[0])
}



}
