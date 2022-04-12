contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
address stor3;

function _fallback() payable {
    create contract with 0 wei
                    code: code.data[5584 len 1851], address(this.address)
    require create.new_address
    stor3 = address(create.new_address)
    require not msg.value
    stor0 = msg.sender
    stor2 = msg.sender
    stor1 = msg.sender
    return code.data[396 len 5188]
}



// =====================  Runtime code  =====================


address owner;
address authorizedCallerAddress;
uint8 stor2; offset 160
uint128 stor2; offset 160
address destinationAddress;
address defaultSweeperAddress;
mapping of address stor4;

function defaultSweeper() {
    return defaultSweeperAddress
}

function owner() {
    return owner
}

function authorizedCaller() {
    return authorizedCallerAddress
}

function destination() {
    return destinationAddress
}

function halted() {
    return bool(uint8(stor2.field_160))
}

function _fallback() payable {
    revert
}

function changeOwner(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function start() {
    require msg.sender == owner
    Mask(96, 0, stor2.field_160) = 0
}

function changeDestination(address arg1) {
    require msg.sender == owner
    destinationAddress = arg1
}

function addSweeper(address arg1, address arg2) {
    require msg.sender == owner
    stor4[address(arg1)] = arg2
}

function changeAuthorizedCaller(address arg1) {
    require msg.sender == owner
    authorizedCallerAddress = arg1
}

function logSweep(address arg1, address arg2, uint256 arg3) {
    emit LogSweep(address(arg1), address(arg2), arg3);
}

function sweeperOf(address arg1) {
    if stor4[address(arg1)]:
        return stor4[address(arg1)]
    return defaultSweeperAddress
}

function halt() {
    if authorizedCallerAddress != msg.sender:
        require msg.sender == owner
    Mask(96, 0, stor2.field_160) = 1
}

function makeWallet() {
    if authorizedCallerAddress != msg.sender:
        require msg.sender == owner
    create contract with 0 wei
                    code: code.data[4177 len 968], address(this.address)
    require create.new_address
    emit LogNewWallet(address(create.new_address));
    return address(create.new_address)
}

function sub_dbdcf9c7(?) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + 160
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    if msg.sender == authorizedCallerAddress:
        call destinationAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        s = 0
        idx = 0
        s = ext_call.success
        while idx < arg1.length:
            require idx < mem[96]
            _47 = mem[(32 * idx) + 128]
            require idx < mem[(32 * arg1.length) + 128]
            _51 = mem[(32 * idx) + (32 * arg1.length) + 160]
            mem[mem[64] + 4] = destinationAddress
            mem[mem[64] + 36] = _51
            require ext_code.size(address(_47))
            call address(_47).0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args destinationAddress, _51
            mem[mem[64]] = ext_call.return_data[0]
            require ext_call.success
            if not ext_call.return_data[0]:
                s = _47
                idx = idx + 1
                s = 0
                continue 
            require idx < mem[96]
            _69 = mem[(32 * idx) + 128]
            require idx < mem[(32 * arg1.length) + 128]
            _73 = mem[(32 * idx) + (32 * arg1.length) + 160]
            mem[mem[64]] = this.address
            mem[mem[64] + 32] = address(_69)
            mem[mem[64] + 64] = _73
            emit LogSweep(address(this.address), address(_69), _73);
            s = _47
            idx = idx + 1
            s = s
            continue 
    else:
        require msg.sender == owner
        call destinationAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        s = 0
        idx = 0
        s = ext_call.success
        while idx < arg1.length:
            require idx < mem[96]
            _49 = mem[(32 * idx) + 128]
            require idx < mem[(32 * arg1.length) + 128]
            _55 = mem[(32 * idx) + (32 * arg1.length) + 160]
            mem[mem[64] + 4] = destinationAddress
            mem[mem[64] + 36] = _55
            require ext_code.size(address(_49))
            call address(_49).0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args destinationAddress, _55
            mem[mem[64]] = ext_call.return_data[0]
            require ext_call.success
            if not ext_call.return_data[0]:
                s = _49
                idx = idx + 1
                s = 0
                continue 
            require idx < mem[96]
            _71 = mem[(32 * idx) + 128]
            require idx < mem[(32 * arg1.length) + 128]
            _76 = mem[(32 * idx) + (32 * arg1.length) + 160]
            mem[mem[64]] = this.address
            mem[mem[64] + 32] = address(_71)
            mem[mem[64] + 64] = _76
            emit LogSweep(address(this.address), address(_71), _76);
            s = _49
            idx = idx + 1
            s = s
            continue 
    return bool(s)
}



}
