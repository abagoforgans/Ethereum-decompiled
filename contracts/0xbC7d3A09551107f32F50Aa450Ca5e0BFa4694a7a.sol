contract main {


// =======================  Init code  ======================


const _fallback = code.data[19 len 1108]




// =====================  Runtime code  =====================


function getAvatarCount(address arg1) payable {
    return avatarCount[address(arg1)].field_2560
}

function _fallback() payable {
  stop
}

function deleteAvatar(uint256 arg1) payable {
    require arg1 < avatarCount[address(msg.sender)].field_2560
    stor[arg1 + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'avatarCount', 0)))].field_0 = 0
    idx = 0
    while stor[arg1 + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'avatarCount', 0)))].field_0 + 31 / 32 > idx:
        stor[idx + sha3(arg1 + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'avatarCount', 0))))].field_0 = 0
        idx = idx + 1
        continue 
    emit Update(msg.sender);
}

function deleteAllAvatars() payable {
    avatarCount[address(msg.sender)].field_2560 = 0
    mem[0] = sha3(address(msg.sender), 0) + 10
    idx = 0
    while sha3(sha3(address(msg.sender), 0) + 10) + avatarCount[address(msg.sender)].field_2560 > idx + sha3(mem[0]):
        stor[idx + sha3(mem[0])] = 0
        mem[0] = idx + sha3(mem[0])
        s = sha3(s + sha3(mem[0]))
        while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])] + 31 / 32) > s + sha3(mem[0]):
            stor[s + sha3(mem[0])] = 0
            s = s + 1
            continue 
        s = s + 1
        continue 
    emit Update(msg.sender);
}

function getAvatar(address arg1, uint256 arg2) payable {
    require arg2 < avatarCount[address(arg1)].field_2560
    if stor[arg2 + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'avatarCount', 0)))].field_0:
        mem[160] = stor[sha3(arg2 + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'avatarCount', 0))))].field_0
        idx = 160
        s = 0
        while stor[arg2 + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'avatarCount', 0)))].field_0 + 128 > idx:
            mem[idx + 32] = stor[s + sha3(arg2 + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'avatarCount', 0))))].field_256
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=stor[arg2 + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'avatarCount', 0)))].field_0, data=mem[160 len stor[arg2 + ('array', 10, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'avatarCount', 0)))].field_0]), 
}

function setAvatar(uint256 arg1, bytes arg2) payable {
    mem[128 len arg2.length] = arg2[all]
    if avatarCount[address(msg.sender)].field_2560 <= arg1:
        avatarCount[address(msg.sender)].field_2560 = arg1 + 1
        if not avatarCount[address(msg.sender)].field_2560 <= arg1 + 1:
            mem[0] = sha3(address(msg.sender), 0) + 10
            idx = arg1 + 1
            while sha3(sha3(address(msg.sender), 0) + 10) + avatarCount[address(msg.sender)].field_2560 > idx + sha3(mem[0]):
                stor[idx + sha3(mem[0])] = 0
                mem[0] = idx + sha3(mem[0])
                s = sha3(s + sha3(mem[0]))
                while sha3(s + sha3(mem[0])) + (stor[s + sha3(mem[0])] + 31 / 32) > s + sha3(mem[0]):
                    stor[s + sha3(mem[0])] = 0
                    s = s + 1
                    continue 
                s = s + 1
                continue 
    require arg1 < avatarCount[address(msg.sender)].field_2560
    stor[arg1 + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'avatarCount', 0)))].field_0 = arg2.length
    if not arg2.length:
        idx = 0
        while stor[arg1 + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'avatarCount', 0)))].field_0 + 31 / 32 > idx:
            stor[idx + sha3(arg1 + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'avatarCount', 0))))].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while arg2.length + 128 > idx:
            stor[s + sha3(arg1 + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'avatarCount', 0))))].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, arg2.length + 31) >> 5
        while stor[arg1 + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'avatarCount', 0)))].field_0 + 31 / 32 > idx:
            stor[idx + sha3(arg1 + ('array', 10, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'avatarCount', 0))))].field_0 = 0
            idx = idx + 1
            continue 
    emit Update(msg.sender);
}



}
