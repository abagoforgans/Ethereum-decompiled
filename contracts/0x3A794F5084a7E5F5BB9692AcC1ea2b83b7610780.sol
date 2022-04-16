contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[49 len 1668]
}



// =====================  Runtime code  =====================


address owner;
mapping of uint256 model;
array of address assets;
uint256 numAssets;

function model(address arg1) {
    return model[arg1]
}

function owner() {
    return owner
}

function numAssets() {
    return numAssets
}

function assets(uint256 arg1) {
    require arg1 < assets.length
    return address(assets[arg1])
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function setAssets(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require owner == msg.sender
    idx = 0
    while uint16(idx) < assets.length:
        mem[0] = address(assets[uint16(idx)])
        mem[32] = 1
        model[address(stor2[uint16(idx)])] = 0
        idx = idx + 1
        continue 
    numAssets = arg1.length
    assets.length = arg1.length
    if not assets.length <= arg1.length:
        idx = arg1.length
        while assets.length > idx:
            uint256(assets[idx]) = 0
            idx = idx + 1
            continue 
    idx = 0
    while idx < numAssets:
        require idx < arg1.length
        require idx < assets.length
        mem[0] = 2
        address(assets[idx]) = mem[(32 * idx) + 140 len 20]
        idx = idx + 1
        continue 
}

function setModel(address[] arg1, uint256[] arg2) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require owner == msg.sender
    require arg1.length == arg2.length
    require assets.length == arg1.length
    idx = 0
    while uint16(idx) < assets.length:
        mem[0] = 2
        require uint16(idx) < arg1.length
        require mem[(32 * uint16(idx)) + 140 len 20] == address(assets[uint16(idx)])
        idx = idx + 1
        continue 
    idx = 0
    while uint16(idx) < assets.length:
        mem[0] = address(assets[uint16(idx)])
        mem[32] = 1
        model[address(stor2[uint16(idx)])] = 0
        idx = idx + 1
        continue 
    s = 0
    s = 0
    idx = 0
    s = 0
    while uint16(idx) < arg1.length:
        require uint16(idx) < arg2.length
        _42 = mem[(32 * uint16(idx)) + (32 * arg1.length) + 160]
        require uint16(idx) < arg1.length
        _44 = mem[(32 * uint16(idx)) + 128]
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * uint16(idx)) + (32 * arg1.length) + 160]
        emit 0xc49f4577: mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        require _42 + s >= s
        mem[0] = address(_44)
        mem[32] = 1
        model[address(_44)] = _42
        s = _44
        s = _42
        idx = idx + 1
        s = _42 + s
        continue 
    if _42 * None <= 10^18:
        if (-1 * _42 * None) + 10^18 < 10^16:
    revert
}



}
