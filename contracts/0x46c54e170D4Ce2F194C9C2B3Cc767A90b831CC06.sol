contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[59 len 2119]
}



// =====================  Runtime code  =====================


address owner;
address newOwner;
mapping of uint8 stor2;
uint8 stor3;
mapping of uint256 bonusList;

function admins(address arg1) {
    return bool(stor2[arg1])
}

function bonusList(address arg1) {
    return bonusList[arg1]
}

function owner() {
    return owner
}

function newOwner() {
    return newOwner
}

function sealed() {
    return bool(stor3)
}

function _fallback() {
    revert
}

function seal() {
    require owner == msg.sender
    require not stor3
    stor3 = 1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    newOwner = arg1
}

function acceptOwnership() {
    require newOwner == msg.sender
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function addAdmin(address arg1) {
    require owner == msg.sender
    require not stor2[address(arg1)]
    stor2[address(arg1)] = 1
    emit AdminAdded(arg1);
}

function removeAdmin(address arg1) {
    require owner == msg.sender
    require stor2[address(arg1)]
    stor2[address(arg1)] = 0
    emit AdminRemoved(arg1);
}

function remove(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if stor2[address(msg.sender)]:
        require not stor3
        require arg1.length
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            require mem[(32 * idx) + 140 len 20]
            require idx < arg1.length
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 4
            if bonusList[mem[(32 * idx) + 140 len 20]]:
                require idx < arg1.length
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 4
                bonusList[mem[(32 * idx) + 140 len 20]] = 0
                require idx < arg1.length
                _51 = mem[(32 * idx) + 128]
                mem[(32 * arg1.length) + 128] = 0
                emit AddressListed(0, address(_51));
            idx = idx + 1
            continue 
    else:
        require owner == msg.sender
        require not stor3
        require arg1.length
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            require mem[(32 * idx) + 140 len 20]
            require idx < arg1.length
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 4
            if bonusList[mem[(32 * idx) + 140 len 20]]:
                require idx < arg1.length
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 4
                bonusList[mem[(32 * idx) + 140 len 20]] = 0
                require idx < arg1.length
                _54 = mem[(32 * idx) + 128]
                mem[(32 * arg1.length) + 128] = 0
                emit AddressListed(0, address(_54));
            idx = idx + 1
            continue 
}

function add(address[] arg1, uint256 arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if stor2[address(msg.sender)]:
        require not stor3
        require arg1.length
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            require mem[(32 * idx) + 140 len 20]
            require idx < arg1.length
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 4
            if bonusList[mem[(32 * idx) + 140 len 20]] != arg2:
                require idx < arg1.length
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 4
                bonusList[mem[(32 * idx) + 140 len 20]] = arg2
                require idx < arg1.length
                _51 = mem[(32 * idx) + 128]
                mem[(32 * arg1.length) + 128] = arg2
                emit AddressListed(arg2, address(_51));
            idx = idx + 1
            continue 
    else:
        require owner == msg.sender
        require not stor3
        require arg1.length
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            require mem[(32 * idx) + 140 len 20]
            require idx < arg1.length
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 4
            if bonusList[mem[(32 * idx) + 140 len 20]] != arg2:
                require idx < arg1.length
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 4
                bonusList[mem[(32 * idx) + 140 len 20]] = arg2
                require idx < arg1.length
                _54 = mem[(32 * idx) + 128]
                mem[(32 * arg1.length) + 128] = arg2
                emit AddressListed(arg2, address(_54));
            idx = idx + 1
            continue 
}



}
