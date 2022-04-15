contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160
address stor0;
mapping of uint8 stor2;

function _fallback() payable {
    uint8(stor0.field_160) = 0
    require not msg.value
    address(stor0.field_0) = msg.sender
    stor2[address(msg.sender)] = 1
    return code.data[113 len 2403]
}



// =====================  Runtime code  =====================


uint8 stor0; offset 160
address owner;
mapping of uint8 stor1;
mapping of uint8 stor2;

function paused() {
    return bool(stor0)
}

function admin(address arg1) {
    return bool(stor2[arg1])
}

function owner() {
    return owner
}

function registeredAddress(address arg1) {
    return bool(stor1[arg1])
}

function isRegistered(address arg1) {
    return bool(stor1[address(arg1)])
}

function _fallback() payable {
    revert
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
    owner = arg1
}

function unregister(address arg1) {
    require stor2[address(msg.sender)]
    require stor1[address(arg1)]
    stor1[address(arg1)] = 0
    emit Unregistered(arg1);
}

function setAdmin(address arg1) {
    require owner == msg.sender
    require arg1
    require not stor2[address(arg1)]
    stor2[address(arg1)] = 1
    emit NewAdmin(arg1);
}

function register(address arg1) {
    require stor2[address(msg.sender)]
    require not stor0
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
    require not stor0
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



}
