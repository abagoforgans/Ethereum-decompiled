contract main {




// =====================  Runtime code  =====================


#
#  - register(string arg1, string arg2)
#
array of uint256 account;
mapping of bool stor99;

function keys(address arg1) {
    return uint256(stor[_85][0 len stor[_85].length])
}

function account(address arg1) {
    return account[address(arg1)][0 len account[address(arg1)].length]
}

function _fallback() payable {
    revert
}

function nameAvailable(string arg1) {
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 1
    if Mask(255, 1, (256 * not bool(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]])) - 1 and uint256(stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]])):
        return 0
    if arg1.length < 3:
        if arg1.length > 16:
            return 0
    require 0 < arg1.length
    require 0 < arg1.length
    if Mask(8, 248, mem[128]) < 'a':
        if Mask(8, 248, mem[128]) < '0':
            return 0
        require 0 < arg1.length
        if Mask(8, 248, mem[128]) > '9':
            return 0
    else:
        if Mask(8, 248, mem[128]) > 'z':
            require 0 < arg1.length
            if Mask(8, 248, mem[128]) < '0':
                return 0
            require 0 < arg1.length
            if Mask(8, 248, mem[128]) > '9':
                return 0
    idx = 1
    while idx < arg1.length:
        require 0 < arg1.length
        require 0 < arg1.length
        if Mask(8, 248, mem[128]) >= 'a':
            if Mask(8, 248, mem[128]) <= 'z':
                idx = idx + 1
                continue 
        if Mask(8, 248, mem[128]) >= '0':
            require 0 < arg1.length
            if Mask(8, 248, mem[128]) <= '9':
                idx = idx + 1
                continue 
        require idx < arg1.length
        if Mask(8, 248, mem[idx + 128]) == '-':
            idx = idx + 1
            continue 
        require idx < arg1.length
        if Mask(8, 248, mem[idx + 128]) == '.':
            idx = idx + 1
            continue 
        else:
            return 0
    return 1
}



}
