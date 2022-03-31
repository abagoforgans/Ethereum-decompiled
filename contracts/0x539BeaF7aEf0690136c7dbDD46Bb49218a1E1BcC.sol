contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor2;

function _fallback() {
    mem[96 len -1831] = code.data[2083 len -1831]
    mem[64] = -1735
    stor0 = msg.sender
    stor2[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    return code.data[252 len 1831]
}



// =====================  Runtime code  =====================


address owner;
array of uint256 name;
array of uint256 version;

function name() {
    return name[0 len name.length]
}

function getVersion() {
    return version[0 len version.length]
}

function getName() {
    return name[0 len name.length]
}

function version() {
    return version[0 len version.length]
}

function owner() {
    return owner
}

function _fallback() payable {
    revert 
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function set(string arg1, string arg2) {
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    require owner == msg.sender
    name[] = Array(len=arg1.length, data=arg1[all])
    version.length = (2 * arg2.length) + 1
    s = 0
    idx = ceil32(arg1.length) + 160
    while ceil32(arg1.length) + arg2.length + 160 > idx:
        version[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    if version.length + 31 / 32 > Mask(251, 0, arg2.length + 31) >> 5:
        version[Mask(251, 0, arg2.length + 31) >> 5] = 0
        idx = (Mask(251, 0, arg2.length + 31) >> 5) + 1
        while version.length + 31 / 32 > idx:
            version[idx] = 0
            idx = idx + 1
            continue 
}



}
