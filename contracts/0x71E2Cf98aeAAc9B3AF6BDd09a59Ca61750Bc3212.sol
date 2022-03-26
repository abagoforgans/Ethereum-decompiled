contract main {


// =======================  Init code  ======================


const _fallback = code.data[20 len 2500]




// =====================  Runtime code  =====================


mapping of struct channelID;

function getChannelID(uint256 arg1) {
    return channelID[arg1].field_256
}

function getPublisher(uint256 arg1) {
    return channelID[arg1].field_0
}

function getTimestamp(uint256 arg1) {
    return channelID[arg1].field_512
}

function _fallback() {
    revert 
}

function getAttributes(uint256 arg1) {
    return channelID[arg1].field_0, channelID[arg1].field_256, channelID[arg1].field_512
}

function toContentID(address arg1, uint256 arg2, string arg3, bytes arg4) {
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 212 len arg3.length] = arg3[all]
    mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 212 len arg4.length] = arg4[all]
    return sha3(arg1, arg2, mem[ceil32(arg3.length) + ceil32(arg4.length) + 212 len arg4.length + arg3.length])
}

function toChannelID(string arg1) {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[64] = ceil32(arg1.length) + 160
    mem[ceil32(arg1.length) + 128] = 0
    require arg1.length >= 3
    require arg1.length <= 30
    s = 0
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        if mem[idx + 128 len 1] >= 48:
            if mem[idx + 128 len 1] <= 57:
                s = mem[idx + 128 len 1]
                idx = idx + 1
                s = (256 * s) + mem[idx + 128 len 1]
                continue 
            if mem[idx + 128 len 1] >= 97:
                if mem[idx + 128 len 1] <= 122:
                    s = mem[idx + 128 len 1]
                    idx = idx + 1
                    s = (256 * s) + mem[idx + 128 len 1]
                    continue 
        if mem[idx + 128 len 1] == 95:
            s = mem[idx + 128 len 1]
            idx = idx + 1
            s = (256 * s) + mem[idx + 128 len 1]
            continue 
        require mem[idx + 128 len 1] >= 65
        require mem[idx + 128 len 1] <= 90
        s = mem[idx + 128 len 1]
        idx = idx + 1
        s = (256 * s) + uint8(mem[idx + 128 len 1] + 32)
        continue 
    return s
}

function publish(string arg1, string arg2, bytes arg3, address[] arg4) {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = arg3.length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len arg3.length] = arg3[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 192] = arg4.length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 224 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[64] = ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + (32 * arg4.length) + 256
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + (32 * arg4.length) + 224] = 0
    require arg1.length >= 3
    require arg1.length <= 30
    s = 0
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        if mem[idx + 128 len 1] >= 48:
            if mem[idx + 128 len 1] <= 57:
                s = mem[idx + 128 len 1]
                idx = idx + 1
                s = (256 * s) + mem[idx + 128 len 1]
                continue 
            if mem[idx + 128 len 1] >= 97:
                if mem[idx + 128 len 1] <= 122:
                    s = mem[idx + 128 len 1]
                    idx = idx + 1
                    s = (256 * s) + mem[idx + 128 len 1]
                    continue 
        if mem[idx + 128 len 1] == 95:
            s = mem[idx + 128 len 1]
            idx = idx + 1
            s = (256 * s) + mem[idx + 128 len 1]
            continue 
        require mem[idx + 128 len 1] >= 65
        require mem[idx + 128 len 1] <= 90
        s = mem[idx + 128 len 1]
        idx = idx + 1
        s = (256 * s) + uint8(mem[idx + 128 len 1] + 32)
        continue 
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + (32 * arg4.length) + 308 len arg2.length] = arg2[all]
    mem[arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + (32 * arg4.length) + 308 len arg3.length] = arg3[all]
    _63 = sha3(msg.sender, s, mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + (32 * arg4.length) + 308 len arg3.length + arg2.length])
    require not channelID[msg.sender][s][mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + (32 * arg4.length) + 308 len arg3.length + arg2.length]].field_512
    channelID[msg.sender][s][mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + (32 * arg4.length) + 308 len arg3.length + arg2.length]].field_0 = msg.sender
    channelID[msg.sender][s][mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + (32 * arg4.length) + 308 len arg3.length + arg2.length]].field_256 = s
    channelID[msg.sender][s][mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + (32 * arg4.length) + 308 len arg3.length + arg2.length]].field_512 = block.timestamp
    emit Publish(Array(len=arg2.length, data=arg2[all]), arg2.length + 128, block.timestamp, _63, msg.sender, s);
    if not arg3.length % 32:
        idx = 0
        while idx < arg4.length:
            require idx < arg4.length
            _112 = mem[(32 * idx) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 224]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + (32 * arg4.length) + 352] = 0x1003e2d200000000000000000000000000000000000000000000000000000000
            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + (32 * arg4.length) + 356] = _63
            require ext_code.size(address(_112))
            call address(_112).0x1003e2d2 with:
                 gas gas_remaining - 50 wei
                args _63
            require ext_call.success
            idx = idx + 1
            continue 
    else:
        idx = 0
        while idx < arg4.length:
            require idx < arg4.length
            _115 = mem[(32 * idx) + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 224]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + (32 * arg4.length) + 352] = 0x1003e2d200000000000000000000000000000000000000000000000000000000
            mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + (32 * arg4.length) + 356] = _63
            require ext_code.size(address(_115))
            call address(_115).0x1003e2d2 with:
                 gas gas_remaining - 50 wei
                args _63
            require ext_call.success
            idx = idx + 1
            continue 
}



}
