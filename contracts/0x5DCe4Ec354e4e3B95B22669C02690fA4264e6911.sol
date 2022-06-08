contract main {




// =====================  Runtime code  =====================


address owner;
array of uint256 name;
mapping of struct amount;
array of uint256 sub_9777f31e;
mapping of uint256 member;
array of struct memberAt;

function count() {
    return sub_9777f31e.length
}

function name() {
    return name[0 len name.length]
}

function getMembersCount() {
    return memberAt.length
}

function getAmount(bytes32 arg1) {
    return uint256(amount[arg1].field_256)
}

function getToken(bytes32 arg1) {
    return address(amount[arg1].field_1040)
}

function getCancelled(bytes32 arg1) {
    return bool(uint8(amount[arg1].field_1032))
}

function getMember(address arg1) {
    require member[address(arg1)]
    require member[address(arg1)] <= memberAt.length
    require member[address(arg1)] < memberAt.length
    return address(memberAt[stor4[address(arg1)]].field_0), 
           uint256(memberAt[stor4[address(arg1)]].field_256),
           uint256(memberAt[stor4[address(arg1)]].field_512),
           uint256(memberAt[stor4[address(arg1)]].field_768)
}

function memberId(address arg1) {
    return member[arg1]
}

function getDate(bytes32 arg1) {
    return uint256(amount[arg1].field_768)
}

function sub_51051c50(?) {
    return address(amount[arg1].field_1280)
}

function sub_5f0632ff(?) {
    return bool(uint8(amount[arg1].field_1200))
}

function owner() {
    return owner
}

function get(bytes32 arg1) {
    return address(amount[arg1].field_0), 
           uint256(amount[arg1].field_256),
           uint256(amount[arg1].field_512),
           uint256(amount[arg1].field_768),
           bool(uint8(amount[arg1].field_1024)),
           bool(uint8(amount[arg1].field_1032)),
           address(amount[arg1].field_1040)
}

function sub_9777f31e(?) {
    require arg1 < sub_9777f31e.length
    return sub_9777f31e[arg1]
}

function getDescription(bytes32 arg1) {
    return uint256(amount[arg1].field_512)
}

function getMemberAt(uint256 arg1) {
    require arg1 <= memberAt.length
    require arg1 < memberAt.length
    return address(memberAt[arg1].field_0), 
           uint256(memberAt[arg1].field_256),
           uint256(memberAt[arg1].field_512),
           uint256(memberAt[arg1].field_768)
}

function sub_f17b3e69(?) {
    return bool(uint8(amount[arg1].field_1024))
}

function sub_fbc6da75(?) {
    return address(amount[arg1].field_0)
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function cancel(bytes32 arg1) {
    require msg.sender == address(amount[arg1].field_1280)
    uint8(amount[arg1].field_1032) = 1
}

function execute(bytes32 arg1) {
    require msg.sender == address(amount[arg1].field_1280)
    uint8(amount[arg1].field_1024) = 1
}

function isMember(address arg1) {
    require member[address(arg1)] < memberAt.length
    return (address(memberAt[stor4[address(arg1)]].field_0) == arg1)
}

function sub_684bfaac(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require msg.sender == address(amount[mem[(32 * idx) + 128]].field_1280)
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 2
        uint8(amount[mem[(32 * idx) + 128]].field_1032) = 1
        idx = idx + 1
        continue 
    return arg1.length
}

function sub_c63b8d19(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require msg.sender == address(amount[mem[(32 * idx) + 128]].field_1280)
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 2
        uint8(amount[mem[(32 * idx) + 128]].field_1024) = 1
        idx = idx + 1
        continue 
    return arg1.length
}

function sub_d594c465(?) {
    require member[msg.sender]
    address(amount[arg1].field_0) = arg2
    uint256(amount[arg1].field_256) = arg3
    uint256(amount[arg1].field_512) = arg4
    uint256(amount[arg1].field_768) = block.timestamp
    uint8(amount[arg1].field_1024) = uint8(arg6)
    Mask(248, 0, amount[arg1].field_1032) = Mask(248, 0, arg7)
    address(amount[arg1].field_1040) = arg5
    Mask(80, 0, amount[arg1].field_1200) = 1
    address(amount[arg1].field_1280) = msg.sender
    sub_9777f31e.length++
    sub_9777f31e[sub_9777f31e.length] = arg1
    emit 0xf451ca8c: arg1, address(arg2), arg3, arg4, arg5
    return 1
}

function sub_5b453140(?) {
    require msg.sender == owner
    if member[address(arg1)]:
        require member[address(arg1)] < memberAt.length
        address(memberAt[stor4[address(arg1)]].field_0) = arg1
        uint256(memberAt[stor4[address(arg1)]].field_256) = arg2
        uint256(memberAt[stor4[address(arg1)]].field_512) = block.timestamp
        uint256(memberAt[stor4[address(arg1)]].field_768) = arg3
    else:
        member[address(arg1)] = memberAt.length
        memberAt.length++
        if memberAt.length > memberAt.length + 1:
            idx = 4 * memberAt.length + 1
            while 4 * memberAt.length > idx:
                address(memberAt[idx].field_0) = 0
                uint256(memberAt[idx].field_256) = 0
                uint256(memberAt[idx].field_512) = 0
                uint256(memberAt[idx].field_768) = 0
                idx = idx + 4
                continue 
        require memberAt.length < memberAt.length
        address(memberAt[memberAt.length].field_0) = arg1
        uint256(memberAt[memberAt.length].field_256) = arg2
        uint256(memberAt[memberAt.length].field_512) = block.timestamp
        uint256(memberAt[memberAt.length].field_768) = arg3
    emit MembershipChanged(address(arg1), 1);
}

function removeMember(address arg1) {
    require msg.sender == owner
    require member[address(arg1)]
    mem[0] = arg1
    idx = member[mem[0]]
    while idx < memberAt.length - 1:
        require idx + 1 < memberAt.length
        require idx < memberAt.length
        mem[0] = 5
        address(memberAt[idx].field_0) = address(memberAt[idx + 1].field_0)
        uint256(memberAt[idx].field_256) = uint256(memberAt[idx + 1].field_256)
        uint256(memberAt[idx].field_512) = uint256(memberAt[idx + 1].field_512)
        uint256(memberAt[idx].field_768) = uint256(memberAt[idx + 1].field_768)
        idx = idx + 1
        continue 
    require memberAt.length - 1 < memberAt.length
    address(memberAt[memberAt.length - 1].field_0) = 0
    uint256(memberAt[memberAt.length - 1].field_256) = 0
    uint256(memberAt[memberAt.length - 1].field_512) = 0
    uint256(memberAt[memberAt.length - 1].field_768) = 0
    memberAt.length--
    if memberAt.length > memberAt.length - 1:
        idx = 4 * memberAt.length - 1
        while 4 * memberAt.length > idx:
            address(memberAt[idx].field_0) = 0
            uint256(memberAt[idx].field_256) = 0
            uint256(memberAt[idx].field_512) = 0
            uint256(memberAt[idx].field_768) = 0
            idx = idx + 4
            continue 
}

function removeMembers(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require msg.sender == owner
        require member[mem[(32 * idx) + 140 len 20]]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 4
        s = member[mem[0]]
        while s < memberAt.length - 1:
            require s + 1 < memberAt.length
            require s < memberAt.length
            mem[0] = 5
            address(memberAt[s].field_0) = address(memberAt[s + 1].field_0)
            uint256(memberAt[s].field_256) = uint256(memberAt[s + 1].field_256)
            uint256(memberAt[s].field_512) = uint256(memberAt[s + 1].field_512)
            uint256(memberAt[s].field_768) = uint256(memberAt[s + 1].field_768)
            s = s + 1
            continue 
        require memberAt.length - 1 < memberAt.length
        mem[0] = 5
        address(memberAt[memberAt.length - 1].field_0) = 0
        uint256(memberAt[memberAt.length - 1].field_256) = 0
        uint256(memberAt[memberAt.length - 1].field_512) = 0
        uint256(memberAt[memberAt.length - 1].field_768) = 0
        memberAt.length--
        if memberAt.length > memberAt.length - 1:
            mem[0] = 5
            s = (4 * memberAt.length - 1) + sha3(5)
            while sha3(5) + (4 * memberAt.length) > s:
                address(stor[s]) = 0
                name[s] = 0
                uint256(amount[s].field_0) = 0
                sub_9777f31e[s] = 0
                s = s + 4
                continue 
        idx = idx + 1
        continue 
    return idx
}

function sub_800687f7(?) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[64] = (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 192
    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = arg3.length
    mem[(32 * arg2.length) + (32 * arg1.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _44 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg1.length) + 128]
        _46 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
        _48 = mem[(32 * idx) + (32 * arg2.length) + (32 * arg1.length) + 192]
        require msg.sender == owner
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 4
        _49 = sha3(mem[(32 * idx) + 140 len 20], 4)
        if member[mem[(32 * idx) + 140 len 20]]:
            _50 = mem[64]
            mem[64] = mem[64] + 128
            mem[_50] = mem[(32 * idx) + 140 len 20]
            mem[_50 + 32] = _46
            mem[_50 + 64] = block.timestamp
            mem[_50 + 96] = _48
            require uint256(stor[_49]) < memberAt.length
            mem[0] = 5
            address(memberAt[uint256(stor[_49])].field_0) = address(_44)
            uint256(memberAt[uint256(stor[_49])].field_256) = _46
            uint256(memberAt[uint256(stor[_49])].field_512) = block.timestamp
            uint256(memberAt[uint256(stor[_49])].field_768) = _48
        else:
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 4
            member[address(mem[(32 * idx) + 128])] = memberAt.length
            memberAt.length++
            if memberAt.length <= memberAt.length + 1:
                _60 = mem[64]
                mem[64] = mem[64] + 128
                mem[_60] = mem[(32 * idx) + 140 len 20]
                mem[_60 + 32] = _46
                mem[_60 + 64] = block.timestamp
                mem[_60 + 96] = _48
            else:
                mem[0] = 5
                s = (4 * memberAt.length + 1) + sha3(5)
                while sha3(5) + (4 * memberAt.length) > s:
                    address(stor[s]) = 0
                    name[s] = 0
                    uint256(amount[s].field_0) = 0
                    sub_9777f31e[s] = 0
                    s = s + 4
                    continue 
                _76 = mem[64]
                mem[64] = mem[64] + 128
                mem[_76] = mem[(32 * idx) + 140 len 20]
                mem[_76 + 32] = _46
                mem[_76 + 64] = block.timestamp
                mem[_76 + 96] = _48
            require memberAt.length < memberAt.length
            mem[0] = 5
            address(memberAt[memberAt.length].field_0) = address(_44)
            uint256(memberAt[memberAt.length].field_256) = _46
            uint256(memberAt[memberAt.length].field_512) = block.timestamp
            uint256(memberAt[memberAt.length].field_768) = _48
        mem[mem[64]] = address(_44)
        mem[mem[64] + 32] = 1
        emit MembershipChanged(address(_44), 1);
        idx = idx + 1
        continue 
    return idx
}

function sub_055b100b(?) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = arg3.length
    mem[(32 * arg2.length) + (32 * arg1.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 192] = arg4.length
    mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 224 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 224] = arg5.length
    mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 256 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    mem[(32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 256] = arg6.length
    mem[(32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 288 len 32 * arg6.length] = call.data[arg6 + 36 len 32 * arg6.length]
    mem[64] = (32 * arg7.length) + (32 * arg6.length) + (32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 320
    mem[(32 * arg6.length) + (32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 288] = arg7.length
    mem[(32 * arg6.length) + (32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 320 len 32 * arg7.length] = call.data[arg7 + 36 len 32 * arg7.length]
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        require idx < mem[(32 * arg1.length) + 128]
        _44 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
        _46 = mem[(32 * idx) + (32 * arg2.length) + (32 * arg1.length) + 192]
        require idx < mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 192]
        _48 = mem[(32 * idx) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 224]
        require idx < mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 224]
        _50 = mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 256]
        require idx < mem[(32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 256]
        require idx < mem[(32 * arg6.length) + (32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 288]
        require member[msg.sender]
        address(amount[mem[(32 * idx) + 128]].field_0) = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
        uint256(amount[mem[(32 * idx) + 128]].field_256) = mem[(32 * idx) + (32 * arg2.length) + (32 * arg1.length) + 192]
        uint256(amount[mem[(32 * idx) + 128]].field_512) = mem[(32 * idx) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 224]
        uint256(amount[mem[(32 * idx) + 128]].field_768) = block.timestamp
        uint8(amount[mem[(32 * idx) + 128]].field_1024) = uint8(bool(mem[(32 * idx) + (32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 288]))
        Mask(248, 0, amount[mem[(32 * idx) + 128]].field_1032) = Mask(248, 0, bool(mem[(32 * idx) + (32 * arg6.length) + (32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 320]))
        address(amount[mem[(32 * idx) + 128]].field_1040) = mem[(32 * idx) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 268 len 20]
        Mask(80, 0, amount[mem[(32 * idx) + 128]].field_1200) = 1
        mem[32] = 2
        address(amount[mem[(32 * idx) + 128]].field_1280) = msg.sender
        sub_9777f31e.length++
        mem[0] = 3
        sub_9777f31e[sub_9777f31e.length] = mem[(32 * idx) + 128]
        mem[mem[64]] = mem[(32 * idx) + 128]
        mem[mem[64] + 32] = address(_44)
        mem[mem[64] + 64] = _46
        mem[mem[64] + 96] = _48
        mem[mem[64] + 128] = address(_50)
        emit 0xf451ca8c: mem[mem[64]], address(_44), _46, _48, address(_50)
        idx = idx + 1
        continue 
    return arg1.length
}



}
