contract main {


// =======================  Init code  ======================


address stor2;
address stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint8 stor8;

function _fallback() payable {
    stor4 = 100 * 10^6
    stor5 = 20
    stor6 = 10^10
    stor7 = 100
    stor8 = 1
    require not msg.value
    stor2 = code.data[4347 len 20]
    stor3 = code.data[4379 len 20]
    return code.data[144 len 4191]
}



// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint8 stor1;
address ebyteTokenAddress;
address owner;
uint256 rate;
uint256 percentage;
uint256 ethBalance;
uint256 ebyteBalance;
uint8 stor8;

function ebyteBalance() {
    return ebyteBalance
}

function rate() {
    return rate
}

function contractLocked() {
    return bool(stor8)
}

function ethBalance() {
    return ethBalance
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function ebyteToken() {
    return ebyteTokenAddress
}

function percentage() {
    return percentage
}

function blacklist(address arg1) {
    return bool(stor1[arg1])
}

function getEthBalance(address arg1) {
    return eth.balance(arg1)
}

function lockContract() {
    require owner == msg.sender
    stor8 = 1
    emit Locked()
    return 1
}

function unlockContract() {
    require owner == msg.sender
    stor8 = 0
    emit Unlocked()
    return 0
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function withdraw() {
    require owner == msg.sender
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function setParameters(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require owner == msg.sender
    rate = arg1
    percentage = arg2
    ethBalance = arg3
    ebyteBalance = arg4
}

function tokensAvailable() {
    require ext_code.size(ebyteTokenAddress)
    call ebyteTokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    return ext_call.return_data[0]
}

function getTokenBalance(address arg1) {
    require ext_code.size(ebyteTokenAddress)
    call ebyteTokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0]
}

function enableWhitelist(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require owner == msg.sender
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        stor1[mem[(32 * idx) + 140 len 20]] = 0
        idx = idx + 1
        continue 
}

function disableWhitelist(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require owner == msg.sender
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        stor1[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
}

function withdrawForeignTokens(address arg1) {
    require owner == msg.sender
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args owner, ext_call.return_data[0]
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function distributeEbyte(address[] arg1, uint256 arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require owner == msg.sender
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _18 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 128] = arg2
        emit 0x5ab421db: arg2, address(_18)
        require idx < arg1.length
        mem[(32 * arg1.length) + 132] = mem[(32 * idx) + 140 len 20]
        mem[(32 * arg1.length) + 164] = arg2
        require ext_code.size(ebyteTokenAddress)
        call ebyteTokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args mem[(32 * arg1.length) + 132], arg2
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        require ext_call.success
        idx = idx + 1
        continue 
}

function _fallback() payable {
    require not stor1[address(msg.sender)]
    require not stor8
    require ext_code.size(ebyteTokenAddress)
    call ebyteTokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    emit 0x5ab421db: (ext_call.return_data[0] / 100 * percentage), msg.sender
    require ext_code.size(ebyteTokenAddress)
    call ebyteTokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, ext_call.return_data[0] / 100 * percentage
    require ext_call.success
    emit 0x5ab421db: (rate * eth.balance(msg.sender) / 10^9 / 10^9), msg.sender
    require ext_code.size(ebyteTokenAddress)
    call ebyteTokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, rate * eth.balance(msg.sender) / 10^9 / 10^9
    require ext_call.success
    stor1[address(msg.sender)] = 1
}

function distributeEbyteForETH(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require owner == msg.sender
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        if eth.balance(mem[(32 * idx) + 128]) >= ethBalance:
            require idx < arg1.length
            _24 = mem[(32 * idx) + 128]
            require idx < arg1.length
            _26 = mem[(32 * idx) + 128]
            mem[(32 * arg1.length) + 128] = rate * eth.balance(mem[(32 * idx) + 128]) / 10^9 / 10^9
            emit 0x5ab421db: mem[(32 * arg1.length) + 128], address(_26)
            require idx < arg1.length
            mem[(32 * arg1.length) + 132] = mem[(32 * idx) + 140 len 20]
            mem[(32 * arg1.length) + 164] = rate * eth.balance(_24) / 10^9 / 10^9
            require ext_code.size(ebyteTokenAddress)
            call ebyteTokenAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args mem[(32 * arg1.length) + 132], rate * eth.balance(_24) / 10^9 / 10^9
            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
            require ext_call.success
        idx = idx + 1
        continue 
}

function distributeEbyteForEBYTE(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require owner == msg.sender
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _32 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 160] = 0
        mem[(32 * arg1.length) + 132] = address(_32)
        require ext_code.size(ebyteTokenAddress)
        call ebyteTokenAddress.0x70a08231 with:
             gas gas_remaining - 710 wei
            args address(_32)
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        require ext_call.success
        if ext_call.return_data[0] >= ebyteBalance:
            require idx < arg1.length
            _39 = mem[(32 * idx) + 128]
            mem[(32 * arg1.length) + 160] = 0
            mem[(32 * arg1.length) + 132] = address(_39)
            require ext_code.size(ebyteTokenAddress)
            call ebyteTokenAddress.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args address(_39)
            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
            require ext_call.success
            require idx < arg1.length
            _46 = mem[(32 * idx) + 128]
            mem[(32 * arg1.length) + 128] = ext_call.return_data[0] / 100 * percentage
            emit 0x5ab421db: (ext_call.return_data[0] / 100 * percentage), address(_46)
            require idx < arg1.length
            mem[(32 * arg1.length) + 132] = mem[(32 * idx) + 140 len 20]
            mem[(32 * arg1.length) + 164] = ext_call.return_data[0] / 100 * percentage
            require ext_code.size(ebyteTokenAddress)
            call ebyteTokenAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args mem[(32 * arg1.length) + 132], ext_call.return_data[0] / 100 * percentage
            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
            require ext_call.success
        idx = idx + 1
        continue 
}

function distribution(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require owner == msg.sender
    if 0 < arg1.length:
        require owner == msg.sender
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            _51 = mem[(32 * idx) + 128]
            mem[(32 * arg1.length) + 160] = 0
            mem[(32 * arg1.length) + 132] = address(_51)
            require ext_code.size(ebyteTokenAddress)
            call ebyteTokenAddress.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args address(_51)
            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
            require ext_call.success
            if ext_call.return_data[0] >= ebyteBalance:
                require idx < arg1.length
                _61 = mem[(32 * idx) + 128]
                mem[(32 * arg1.length) + 160] = 0
                mem[(32 * arg1.length) + 132] = address(_61)
                require ext_code.size(ebyteTokenAddress)
                call ebyteTokenAddress.0x70a08231 with:
                     gas gas_remaining - 710 wei
                    args address(_61)
                mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                require ext_call.success
                require idx < arg1.length
                _70 = mem[(32 * idx) + 128]
                mem[(32 * arg1.length) + 128] = ext_call.return_data[0] / 100 * percentage
                emit 0x5ab421db: (ext_call.return_data[0] / 100 * percentage), address(_70)
                require idx < arg1.length
                mem[(32 * arg1.length) + 132] = mem[(32 * idx) + 140 len 20]
                mem[(32 * arg1.length) + 164] = ext_call.return_data[0] / 100 * percentage
                require ext_code.size(ebyteTokenAddress)
                call ebyteTokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args mem[(32 * arg1.length) + 132], ext_call.return_data[0] / 100 * percentage
                mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                require ext_call.success
            idx = idx + 1
            continue 
        require owner == msg.sender
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            if eth.balance(mem[(32 * idx) + 128]) >= ethBalance:
                require idx < arg1.length
                _99 = mem[(32 * idx) + 128]
                require idx < arg1.length
                _101 = mem[(32 * idx) + 128]
                mem[(32 * arg1.length) + 128] = rate * eth.balance(mem[(32 * idx) + 128]) / 10^9 / 10^9
                emit 0x5ab421db: mem[(32 * arg1.length) + 128], address(_101)
                require idx < arg1.length
                mem[(32 * arg1.length) + 132] = mem[(32 * idx) + 140 len 20]
                mem[(32 * arg1.length) + 164] = rate * eth.balance(_99) / 10^9 / 10^9
                require ext_code.size(ebyteTokenAddress)
                call ebyteTokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args mem[(32 * arg1.length) + 132], rate * eth.balance(_99) / 10^9 / 10^9
                mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                require ext_call.success
            idx = idx + 1
            continue 
}



}
