contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[48 len 1464]
}



// =====================  Runtime code  =====================


address owner;
mapping of uint256 rate;

function getRate(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 160] = 0
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    hash = sha256hash(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]) 
    require sha256hash.result
    return rate[hash]
}

function owner() {
    return owner
}

function rates(bytes32 arg1) {
    return rate[arg1]
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function updateRate(string arg1, uint256 arg2) {
    mem[128 len arg1.length] = arg1[all]
    require owner == msg.sender
    mem[ceil32(arg1.length) + 160] = 0
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    hash = sha256hash(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]) 
    mem[ceil32(arg1.length) + 128] = hash
    require sha256hash.result
    rate[hash] = arg2
    mem[ceil32(arg1.length) + 160] = 0
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    hash = sha256hash(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]) 
    require sha256hash.result
    emit RateUpdated(block.timestamp, hash, arg2);
}

function updateRates(uint256[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require owner == msg.sender
    require bool(arg1.length) <= 0
    if var14005 < var14001 / 2:
        require 2 * var16003 < arg1.length
        _37 = mem[(64 * var16003) + 128]
        require (2 * var16003) + 1 < arg1.length
        _39 = mem[(32 * (2 * var16003) + 1) + 128]
        rate[mem[(64 * var16003) + 128]] = mem[(32 * (2 * var16003) + 1) + 128]
        mem[(32 * arg1.length) + 128] = block.timestamp
        mem[(32 * arg1.length) + 160] = _37
        mem[(32 * arg1.length) + 192] = _39
        emit RateUpdated(block.timestamp, _37, _39);
        s = 2 * var16003
        s = var16001
        s = var16002
        idx = var16003
        while idx + 1 < arg1.length / 2:
            require 2 * idx + 1 < arg1.length
            _37 = mem[(64 * idx + 2) + 128]
            require (2 * idx + 1) + 1 < arg1.length
            _39 = mem[(32 * (2 * idx + 1) + 1) + 128]
            mem[0] = mem[(64 * idx + 2) + 128]
            mem[32] = 1
            rate[mem[(64 * idx + 2) + 128]] = mem[(32 * (2 * idx + 1) + 1) + 128]
            mem[(32 * arg1.length) + 128] = block.timestamp
            mem[(32 * arg1.length) + 160] = _37
            mem[(32 * arg1.length) + 192] = _39
            emit RateUpdated(block.timestamp, _37, _39);
            s = 2 * idx + 1
            s = _39
            s = _37
            idx = idx + 1
            continue 
}



}
