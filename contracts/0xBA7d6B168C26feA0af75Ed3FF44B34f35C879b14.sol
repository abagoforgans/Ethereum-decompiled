contract main {




// =====================  Runtime code  =====================


address initOwner;
array of address owner;
uint256 stor3;
address uSEAddr;
address allocTokenHolderAddress;

function USEAddr() {
    return uSEAddr
}

function owner(uint256 arg1) {
    require arg1 < owner.length
    return owner[arg1]
}

function allocTokenHolder() {
    return allocTokenHolderAddress
}

function initOwner() {
    return initOwner
}

function _fallback() payable {
    revert
}

function changeInitOwner(address arg1) {
    require msg.sender == initOwner
    initOwner = arg1
}

function changeTokenHolder(address arg1) {
    require msg.sender == initOwner
    allocTokenHolderAddress = arg1
}

function addOwner(address arg1) {
    require msg.sender == initOwner
    idx = 0
    while idx < owner.length:
        mem[0] = 1
        require owner[idx] != arg1
        idx = idx + 1
        continue 
    owner.length++
    owner[owner.length] = arg1
    return 1
}

function delOwner(address arg1) {
    require msg.sender == initOwner
    idx = 0
    s = 0
    while idx < owner.length:
        mem[0] = 1
        if owner[idx] != arg1:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    require bool(s) == 1
    idx = 0
    while idx < owner.length:
        mem[0] = 1
        if owner[idx] == arg1:
            require owner.length - 1 < owner.length
            require idx < owner.length
            mem[0] = 1
            owner[idx] = owner[owner.length]
            owner.length--
            if owner.length > owner.length - 1:
                mem[0] = 1
                s = owner.length + sha3(1) - 1
                while sha3(1) + owner.length > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
        idx = idx + 1
        continue 
    return 1
}

function allocateToken(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    idx = 0
    while idx < owner.length:
        mem[0] = 1
        if owner[idx] != msg.sender:
            idx = idx + 1
            continue 
        require arg1.length == arg2.length
        s = 0
        idx = 0
        while idx < arg1.length:
            require idx < arg2.length
            _55 = mem[(32 * arg1.length) + (32 * idx) + 160]
            require idx < arg1.length
            _60 = mem[(32 * idx) + 128]
            mem[(32 * arg2.length) + (32 * arg1.length) + 164] = allocTokenHolderAddress
            mem[(32 * arg2.length) + (32 * arg1.length) + 196] = address(_60)
            mem[(32 * arg2.length) + (32 * arg1.length) + 228] = _55 * 10^stor3
            require ext_code.size(uSEAddr)
            call uSEAddr.0x23b872dd with:
                 gas gas_remaining wei
                args allocTokenHolderAddress, address(_60), _55 * 10^stor3
            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 1 == bool(ext_call.return_data[0])
            s = _55 * 10^stor3
            idx = idx + 1
            continue 
    revert
}



}
