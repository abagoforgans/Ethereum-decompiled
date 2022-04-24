contract main {


// =======================  Init code  ======================


address stor0;
mapping of uint8 stor2;

function _fallback() {
    stor0 = msg.sender
    stor2[address(msg.sender)] = 1
    return code.data[182 len 4205]
}



// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
mapping of uint8 stor2;

function admin(address arg1) {
    return bool(stor2[arg1])
}

function owner() {
    return owner
}

function registeredAddress(address arg1) {
    return bool(stor1[arg1])
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    owner = arg1
}

function unregister(address arg1) {
    require stor2[address(msg.sender)]
    require stor1[address(arg1)]
    stor1[address(arg1)] = 0
    emit Unregistered(arg1);
}

function setAdmin(address arg1) {
    require msg.sender == owner
    require arg1
    require not stor2[address(arg1)]
    stor2[address(arg1)] = 1
    emit NewAdmin(arg1);
}

function register(address arg1) {
    require stor2[address(msg.sender)]
    require arg1
    require not stor1[address(arg1)]
    stor1[address(arg1)] = 1
    emit Registered(arg1);
}

function unregisterByList(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require stor2[address(msg.sender)]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require stor1[mem[(32 * idx) + 140 len 20]]
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        stor1[mem[(32 * idx) + 140 len 20]] = 0
        require idx < arg1.length
        emit Unregistered(mem[(32 * idx) + 140 len 20]);
        idx = idx + 1
        continue 
}

function registerByList(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require stor2[address(msg.sender)]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require mem[(32 * idx) + 140 len 20]
        require idx < arg1.length
        require not stor1[mem[(32 * idx) + 140 len 20]]
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        stor1[mem[(32 * idx) + 140 len 20]] = 1
        require idx < arg1.length
        emit Registered(mem[(32 * idx) + 140 len 20]);
        idx = idx + 1
        continue 
}

function claimTokens(address arg1) {
    require msg.sender == owner
    if not arg1:
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    else:
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
        emit ClaimedTokens(address(arg1), owner, ext_call.return_data[0]);
}



}
