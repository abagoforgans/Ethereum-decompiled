contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor4;
uint256 stor7;
address stor8;
uint8 stor9;
address stor9; offset 8
mapping of struct stor10;
address stor11;
address stor12;

function _fallback() payable {
    stor0 = 10^17
    stor1 = 10^18
    stor4 = 8760 * 24 * 3600
    mem[96] = 168 * 24 * 3600
    mem[128] = 168 * 24 * 3600
    s = 5
    idx = 96
    while 160 > idx:
        stor[s].field_0 % 16777216 = mem[idx + 29 len 3]
        Mask(232, 0, stor[s].field_24) = 0
        s = s + 1
        idx = idx + 32
        continue 
    idx = 7
    while 7 > idx:
        uint256(stor[idx].field_0) = 0
        idx = idx + 1
        continue 
    stor7 = 1000
    stor8 = 0
    uint8(stor9.field_0) = 1
    Mask(152, 0, stor9.field_8) = 0
    require not msg.value
    mem[160 len -6380] = code.data[7589 len -6380]
    s = 0
    idx = 0
    while idx < mem[mem[160] + 160]:
        require idx < mem[mem[160] + 160]
        mem[0] = mem[(32 * idx) + mem[160] + 204 len 20]
        mem[32] = 10
        uint256(stor10[mem[(32 * idx) + mem[160] + 204 len 20]].field_0) = block.timestamp
        if not idx:
            require 0 < mem[mem[160] + 160]
            stor11 = mem[mem[160] + 204 len 20]
            require 0 < mem[mem[160] + 160]
            stor12 = mem[mem[160] + 204 len 20]
        else:
            require idx < mem[mem[160] + 160]
            address(stor10[stor12].field_1024) = mem[(32 * idx) + mem[160] + 204 len 20]
            mem[0] = mem[(32 * idx) + mem[160] + 204 len 20]
            mem[32] = 10
            address(stor10[address(mem[(32 * idx) + mem[160] + 192])].field_768) = stor12
            stor12 = mem[(32 * idx) + mem[160] + 204 len 20]
        s = sha3(mem[(32 * idx) + mem[160] + 204 len 20], 10)
        idx = idx + 1
        continue 
    stor2 = mem[mem[160] + 160]
    return code.data[1209 len 6380]
}



// =====================  Runtime code  =====================


uint256 sub_c713a289;
uint256 deposit;
uint256 sub_e1bac4a0;
uint256 sub_e79979e5;
uint256 registrationTime;
array of uint256 sub_8b112311;
uint256 stor7;
address stor8;
address stor9;
mapping of struct members;
address stor11;
address stor12;
array of struct proposals;

function proposals(uint256 arg1) {
    require arg1 < proposals.length
    require uint8(proposals[arg1].field_1536) <= 1
    return uint256(proposals[arg1].field_0), 
           uint256(proposals[arg1].field_256),
           uint256(proposals[arg1].field_512),
           proposals[arg1].field_768,
           uint256(proposals[arg1].field_1024),
           uint256(proposals[arg1].field_1280),
           uint8(proposals[arg1].field_1536),
           uint256(proposals[arg1].field_1792),
           proposals[arg1].field_2048,
           bool(uint8(proposals[arg1].field_2208))
}

function members(address arg1) {
    return uint256(members[arg1].field_0), members[arg1].field_768, members[arg1].field_1024, uint256(members[arg1].field_1280)
}

function registrationTime() {
    return registrationTime
}

function getDelegate(address arg1, uint8 arg2) {
    require arg2 < 2
    return members[address(arg1)][arg2].field_256
}

function sub_8b112311(?) {
    require arg1 < 2
    return sub_8b112311[arg1]
}

function sub_c713a289(?) {
    return sub_c713a289
}

function deposit() {
    return deposit
}

function sub_e1bac4a0(?) {
    return sub_e1bac4a0
}

function sub_e79979e5(?) {
    return sub_e79979e5
}

function _fallback() payable {
    emit Donated(msg.sender, msg.value);
}

function setDelegate(uint8 arg1, address arg2) {
    require arg1 < 2
    members[address(msg.sender)][arg1].field_256 = arg2
}

function isValidMember(address arg1) {
    if uint256(members[address(arg1)].field_0):
        if uint256(members[address(arg1)].field_0) + registrationTime >= block.timestamp:
            return 1
        else:
            return 0
    else:
        return 0
}

function isExecutable(uint256 arg1) {
    require arg1 < proposals.length
    if proposals[arg1].field_2048 == stor9:
        if not uint8(proposals[arg1].field_2208):
            if uint256(proposals[arg1].field_1024) <= eth.balance(this.address):
                return (uint256(proposals[arg1].field_256) > uint256(proposals[arg1].field_512))
            else:
                return 0
        else:
            return 0
    else:
        return 0
}

function vote(uint256 arg1, uint8 arg2) {
    require uint256(members[address(msg.sender)].field_0)
    require uint256(members[address(msg.sender)].field_0) + registrationTime >= block.timestamp
    require arg1 < proposals.length
    require uint8(stor[(10 * arg1) + ('name', 'proposals', 13) + 9][address(msg.sender)].field_0) <= 2
    require not uint8(stor[(10 * arg1) + ('name', 'proposals', 13) + 9][address(msg.sender)].field_0)
    require uint256(proposals[arg1].field_1792) >= block.timestamp
    require arg1 < proposals.length
    require arg2 <= 2
    uint8(stor[(10 * arg1) + ('name', 'proposals', 13) + 9][address(msg.sender)].field_0) = arg2
}

function executeAddMemberProposal(uint256 arg1) {
    require arg1 < proposals.length
    require uint8(proposals[arg1].field_1536) <= 1
    require not uint8(proposals[arg1].field_1536)
    require arg1 < proposals.length
    require proposals[arg1].field_2048 == stor9
    require not uint8(proposals[arg1].field_2208)
    require uint256(proposals[arg1].field_1024) <= eth.balance(this.address)
    require uint256(proposals[arg1].field_256) > uint256(proposals[arg1].field_512)
    Mask(96, 0, proposals[arg1].field_2208) = 1
    members[stor12].field_1024 = proposals[arg1].field_768
    members[stor13[arg1].field_768].field_768 = stor12
    stor12 = proposals[arg1].field_768
}

function addProposal(bytes32 arg1, uint256 arg2, bytes32 arg3) payable {
    require msg.value >= deposit
    emit Donated(msg.sender, msg.value);
    proposals.length++
    if not proposals.length <= proposals.length + 1:
        idx = (10 * proposals.length) + 10
        while 10 * proposals.length > idx:
            uint256(proposals[idx].field_0) = 0
            uint256(proposals[idx].field_256) = 0
            uint256(proposals[idx].field_512) = 0
            proposals[idx].field_768 = 0
            uint256(proposals[idx].field_1024) = 0
            uint256(proposals[idx].field_1280) = 0
            uint8(proposals[idx].field_1536) = 0
            uint256(proposals[idx].field_1792) = 0
            proposals[idx].field_2048 = 0
            uint8(proposals[idx].field_2208) = 0
            idx = idx + 10
            continue 
    uint256(proposals[proposals.length].field_0) = arg1
    uint256(proposals[proposals.length].field_256) = 0
    uint256(proposals[proposals.length].field_512) = 0
    proposals[proposals.length].field_768 = msg.sender
    uint256(proposals[proposals.length].field_1024) = arg2
    uint256(proposals[proposals.length].field_1280) = arg3
    uint8(proposals[proposals.length].field_1536) = 1
    uint256(proposals[proposals.length].field_1792) = block.timestamp
    proposals[proposals.length].field_2048 = 0
    proposals[proposals.length].field_2304 % 1 = 0
    Mask(96, 0, proposals[proposals.length].field_2208) = 0
    sub_e79979e5++
}

function askMembership() payable {
    require msg.value >= sub_c713a289
    emit Donated(msg.sender, msg.value);
    proposals.length++
    if not proposals.length <= proposals.length + 1:
        idx = (10 * proposals.length) + 10
        while 10 * proposals.length > idx:
            uint256(proposals[idx].field_0) = 0
            uint256(proposals[idx].field_256) = 0
            uint256(proposals[idx].field_512) = 0
            proposals[idx].field_768 = 0
            uint256(proposals[idx].field_1024) = 0
            uint256(proposals[idx].field_1280) = 0
            uint8(proposals[idx].field_1536) = 0
            uint256(proposals[idx].field_1792) = 0
            proposals[idx].field_2048 = 0
            uint8(proposals[idx].field_2208) = 0
            idx = idx + 10
            continue 
    uint256(proposals[proposals.length].field_0) = 0
    uint256(proposals[proposals.length].field_256) = 0
    uint256(proposals[proposals.length].field_512) = 0
    proposals[proposals.length].field_768 = msg.sender
    uint256(proposals[proposals.length].field_1024) = 0
    uint256(proposals[proposals.length].field_1280) = 0
    uint8(proposals[proposals.length].field_1536) = 0
    proposals[proposals.length].field_1792 % 1 = 0
    uint256(proposals[proposals.length].field_1792) = block.timestamp + sub_8b112311.length
    proposals[proposals.length].field_2048 = 0
    proposals[proposals.length].field_2304 % 1 = 0
    Mask(96, 0, proposals[proposals.length].field_2208) = 0
}

function countAllVotes(uint256 arg1) {
    require arg1 < proposals.length
    mem[0] = 13
    require uint256(proposals[arg1].field_1792) <= block.timestamp
    require proposals[arg1].field_2048 != stor9
    if proposals[arg1].field_2048 != stor8:
        s = 0
        s = 0
        s = stor[(10 * arg1) + sha3(mem[0]) + 8]
        idx = -1
        while idx:
            mem[0] = address(s)
            mem[32] = 10
            if not uint256(members[address(s)].field_0):
                if members[address(s)].field_1024:
                    s = s
                    s = sha3(address(s), 10)
                    s = members[address(s)].field_1024
                    idx = idx - 1
                    continue 
            else:
                mem[0] = address(s)
                mem[32] = 10
                if uint256(members[address(s)].field_0) + registrationTime < block.timestamp:
                    if members[address(s)].field_1024:
                        s = s
                        s = sha3(address(s), 10)
                        s = members[address(s)].field_1024
                        idx = idx - 1
                        continue 
                else:
                    mem[0] = address(var41003)
                    mem[32] = (10 * arg1) + sha3(13) + 9
                    require uint8(stor[(10 * arg1) + ('name', 'proposals', 13) + 9][address(var41003)].field_0) <= 2
                    if uint8(stor[(10 * arg1) + ('name', 'proposals', 13) + 9][address(var41003)].field_0):
                        require uint8(stor[(10 * arg1) + ('name', 'proposals', 13) + 9][address(var41003)].field_0) <= 2
                        if uint8(stor[(10 * arg1) + ('name', 'proposals', 13) + 9][address(var41003)].field_0) == 1:
                            uint256(proposals[arg1].field_256)++
                        else:
                            require uint8(stor[(10 * arg1) + ('name', 'proposals', 13) + 9][address(var41003)].field_0) <= 2
                            if uint8(stor[(10 * arg1) + ('name', 'proposals', 13) + 9][address(var41003)].field_0) != 2:
                                var41001 = uint8(stor[(10 * arg1) + ('name', 'proposals', 13) + 9][address(var41003)].field_0)
                                var41002 = var41002
                                var41003 = var41003
                                continue 
                            uint256(proposals[arg1].field_512)++
                        if members[address(s)].field_1024:
                            s = var41003
                            s = sha3(address(s), 10)
                            s = members[address(s)].field_1024
                            idx = idx - 1
                            continue 
                    else:
                        mem[0] = address(var41003)
                        mem[32] = 10
                        require uint8(proposals[arg1].field_1536) <= 1
                        require uint8(proposals[arg1].field_1536) < 2
                        if members[address(var41003)][uint8(stor13[arg1].field_1536)].field_256 != address(s):
                            if members[address(var41003)][uint8(stor13[arg1].field_1536)].field_256:
                                if var41002 + 1 <= stor7:
                                    require uint8(stor[(10 * arg1) + ('name', 'proposals', 13) + 9][address(var41003)].field_0) <= 2
                                    if uint8(stor[(10 * arg1) + ('name', 'proposals', 13) + 9][address(var41003)].field_0) == 1:
                                        uint256(proposals[arg1].field_256)++
                                    else:
                                        require uint8(stor[(10 * arg1) + ('name', 'proposals', 13) + 9][address(var41003)].field_0) <= 2
                                        if uint8(stor[(10 * arg1) + ('name', 'proposals', 13) + 9][address(var41003)].field_0) != 2:
                                            var41001 = uint8(stor[(10 * arg1) + ('name', 'proposals', 13) + 9][address(var41003)].field_0)
                                            var41002 = var41002 + 1
                                            var41003 = members[address(var41003)][uint8(stor13[arg1].field_1536)].field_256
                                            continue 
                                        uint256(proposals[arg1].field_512)++
                        if members[address(s)].field_1024:
                            s = members[address(var41003)][uint8(stor13[arg1].field_1536)].field_256
                            s = sha3(address(s), 10)
                            s = members[address(s)].field_1024
                            idx = idx - 1
                            continue 
            ('iszero', ('field', 1024, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', 1)), ('name', 'members', 10)))))
            proposals[arg1].field_2048 = stor9
    else:
        s = 0
        s = 0
        s = stor11
        idx = -1
        while idx:
            mem[0] = address(s)
            mem[32] = 10
            if not uint256(members[address(s)].field_0):
                if members[address(s)].field_1024:
                    s = s
                    s = sha3(address(s), 10)
                    s = members[address(s)].field_1024
                    idx = idx - 1
                    continue 
            else:
                mem[0] = address(s)
                mem[32] = 10
                if uint256(members[address(s)].field_0) + registrationTime < block.timestamp:
                    if members[address(s)].field_1024:
                        s = s
                        s = sha3(address(s), 10)
                        s = members[address(s)].field_1024
                        idx = idx - 1
                        continue 
                else:
                    mem[0] = address(var41003)
                    mem[32] = (10 * arg1) + sha3(13) + 9
                    require uint8(stor[(10 * arg1) + ('name', 'proposals', 13) + 9][address(var41003)].field_0) <= 2
                    if uint8(stor[(10 * arg1) + ('name', 'proposals', 13) + 9][address(var41003)].field_0):
                        require uint8(stor[(10 * arg1) + ('name', 'proposals', 13) + 9][address(var41003)].field_0) <= 2
                        if uint8(stor[(10 * arg1) + ('name', 'proposals', 13) + 9][address(var41003)].field_0) == 1:
                            uint256(proposals[arg1].field_256)++
                        else:
                            require uint8(stor[(10 * arg1) + ('name', 'proposals', 13) + 9][address(var41003)].field_0) <= 2
                            if uint8(stor[(10 * arg1) + ('name', 'proposals', 13) + 9][address(var41003)].field_0) != 2:
                                var41001 = uint8(stor[(10 * arg1) + ('name', 'proposals', 13) + 9][address(var41003)].field_0)
                                var41002 = var41002
                                var41003 = var41003
                                continue 
                            uint256(proposals[arg1].field_512)++
                        if members[address(s)].field_1024:
                            s = var41003
                            s = sha3(address(s), 10)
                            s = members[address(s)].field_1024
                            idx = idx - 1
                            continue 
                    else:
                        mem[0] = address(var41003)
                        mem[32] = 10
                        require uint8(proposals[arg1].field_1536) <= 1
                        require uint8(proposals[arg1].field_1536) < 2
                        if members[address(var41003)][uint8(stor13[arg1].field_1536)].field_256 != address(s):
                            if members[address(var41003)][uint8(stor13[arg1].field_1536)].field_256:
                                if var41002 + 1 <= stor7:
                                    require uint8(stor[(10 * arg1) + ('name', 'proposals', 13) + 9][address(var41003)].field_0) <= 2
                                    if uint8(stor[(10 * arg1) + ('name', 'proposals', 13) + 9][address(var41003)].field_0) == 1:
                                        uint256(proposals[arg1].field_256)++
                                    else:
                                        require uint8(stor[(10 * arg1) + ('name', 'proposals', 13) + 9][address(var41003)].field_0) <= 2
                                        if uint8(stor[(10 * arg1) + ('name', 'proposals', 13) + 9][address(var41003)].field_0) != 2:
                                            var41001 = uint8(stor[(10 * arg1) + ('name', 'proposals', 13) + 9][address(var41003)].field_0)
                                            var41002 = var41002 + 1
                                            var41003 = members[address(var41003)][uint8(stor13[arg1].field_1536)].field_256
                                            continue 
                                        uint256(proposals[arg1].field_512)++
                        if members[address(s)].field_1024:
                            s = members[address(var41003)][uint8(stor13[arg1].field_1536)].field_256
                            s = sha3(address(s), 10)
                            s = members[address(s)].field_1024
                            idx = idx - 1
                            continue 
            ('iszero', ('field', 1024, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', 1)), ('name', 'members', 10)))))
            proposals[arg1].field_2048 = stor9
}

function countVotes(uint256 arg1, uint256 arg2) {
    require arg1 < proposals.length
    mem[0] = 13
    require uint256(proposals[arg1].field_1792) <= block.timestamp
    require proposals[arg1].field_2048 != stor9
    if proposals[arg1].field_2048 != stor8:
        s = 0
        s = 0
        s = stor[(10 * arg1) + sha3(mem[0]) + 8]
        idx = arg2
        while idx:
            mem[0] = address(s)
            mem[32] = 10
            if not uint256(members[address(s)].field_0):
                if members[address(s)].field_1024:
                    s = s
                    s = sha3(address(s), 10)
                    s = members[address(s)].field_1024
                    idx = idx - 1
                    continue 
            else:
                mem[0] = address(s)
                mem[32] = 10
                if uint256(members[address(s)].field_0) + registrationTime < block.timestamp:
                    if members[address(s)].field_1024:
                        s = s
                        s = sha3(address(s), 10)
                        s = members[address(s)].field_1024
                        idx = idx - 1
                        continue 
                else:
                    mem[0] = address(var40003)
                    mem[32] = (10 * arg1) + sha3(13) + 9
                    require uint8(stor[(10 * arg1) + ('name', 'proposals', 13) + 9][address(var40003)].field_0) <= 2
                    if uint8(stor[(10 * arg1) + ('name', 'proposals', 13) + 9][address(var40003)].field_0):
                        require uint8(stor[(10 * arg1) + ('name', 'proposals', 13) + 9][address(var40003)].field_0) <= 2
                        if uint8(stor[(10 * arg1) + ('name', 'proposals', 13) + 9][address(var40003)].field_0) == 1:
                            uint256(proposals[arg1].field_256)++
                        else:
                            require uint8(stor[(10 * arg1) + ('name', 'proposals', 13) + 9][address(var40003)].field_0) <= 2
                            if uint8(stor[(10 * arg1) + ('name', 'proposals', 13) + 9][address(var40003)].field_0) != 2:
                                var40001 = uint8(stor[(10 * arg1) + ('name', 'proposals', 13) + 9][address(var40003)].field_0)
                                var40002 = var40002
                                var40003 = var40003
                                continue 
                            uint256(proposals[arg1].field_512)++
                        if members[address(s)].field_1024:
                            s = var40003
                            s = sha3(address(s), 10)
                            s = members[address(s)].field_1024
                            idx = idx - 1
                            continue 
                    else:
                        mem[0] = address(var40003)
                        mem[32] = 10
                        require uint8(proposals[arg1].field_1536) <= 1
                        require uint8(proposals[arg1].field_1536) < 2
                        if members[address(var40003)][uint8(stor13[arg1].field_1536)].field_256 != address(s):
                            if members[address(var40003)][uint8(stor13[arg1].field_1536)].field_256:
                                if var40002 + 1 <= stor7:
                                    require uint8(stor[(10 * arg1) + ('name', 'proposals', 13) + 9][address(var40003)].field_0) <= 2
                                    if uint8(stor[(10 * arg1) + ('name', 'proposals', 13) + 9][address(var40003)].field_0) == 1:
                                        uint256(proposals[arg1].field_256)++
                                    else:
                                        require uint8(stor[(10 * arg1) + ('name', 'proposals', 13) + 9][address(var40003)].field_0) <= 2
                                        if uint8(stor[(10 * arg1) + ('name', 'proposals', 13) + 9][address(var40003)].field_0) != 2:
                                            var40001 = uint8(stor[(10 * arg1) + ('name', 'proposals', 13) + 9][address(var40003)].field_0)
                                            var40002 = var40002 + 1
                                            var40003 = members[address(var40003)][uint8(stor13[arg1].field_1536)].field_256
                                            continue 
                                        uint256(proposals[arg1].field_512)++
                        if members[address(s)].field_1024:
                            s = members[address(var40003)][uint8(stor13[arg1].field_1536)].field_256
                            s = sha3(address(s), 10)
                            s = members[address(s)].field_1024
                            idx = idx - 1
                            continue 
            ('iszero', ('field', 1024, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', 1)), ('name', 'members', 10)))))
            proposals[arg1].field_2048 = stor9
    else:
        s = 0
        s = 0
        s = stor11
        idx = arg2
        while idx:
            mem[0] = address(s)
            mem[32] = 10
            if not uint256(members[address(s)].field_0):
                if members[address(s)].field_1024:
                    s = s
                    s = sha3(address(s), 10)
                    s = members[address(s)].field_1024
                    idx = idx - 1
                    continue 
            else:
                mem[0] = address(s)
                mem[32] = 10
                if uint256(members[address(s)].field_0) + registrationTime < block.timestamp:
                    if members[address(s)].field_1024:
                        s = s
                        s = sha3(address(s), 10)
                        s = members[address(s)].field_1024
                        idx = idx - 1
                        continue 
                else:
                    mem[0] = address(var40003)
                    mem[32] = (10 * arg1) + sha3(13) + 9
                    require uint8(stor[(10 * arg1) + ('name', 'proposals', 13) + 9][address(var40003)].field_0) <= 2
                    if uint8(stor[(10 * arg1) + ('name', 'proposals', 13) + 9][address(var40003)].field_0):
                        require uint8(stor[(10 * arg1) + ('name', 'proposals', 13) + 9][address(var40003)].field_0) <= 2
                        if uint8(stor[(10 * arg1) + ('name', 'proposals', 13) + 9][address(var40003)].field_0) == 1:
                            uint256(proposals[arg1].field_256)++
                        else:
                            require uint8(stor[(10 * arg1) + ('name', 'proposals', 13) + 9][address(var40003)].field_0) <= 2
                            if uint8(stor[(10 * arg1) + ('name', 'proposals', 13) + 9][address(var40003)].field_0) != 2:
                                var40001 = uint8(stor[(10 * arg1) + ('name', 'proposals', 13) + 9][address(var40003)].field_0)
                                var40002 = var40002
                                var40003 = var40003
                                continue 
                            uint256(proposals[arg1].field_512)++
                        if members[address(s)].field_1024:
                            s = var40003
                            s = sha3(address(s), 10)
                            s = members[address(s)].field_1024
                            idx = idx - 1
                            continue 
                    else:
                        mem[0] = address(var40003)
                        mem[32] = 10
                        require uint8(proposals[arg1].field_1536) <= 1
                        require uint8(proposals[arg1].field_1536) < 2
                        if members[address(var40003)][uint8(stor13[arg1].field_1536)].field_256 != address(s):
                            if members[address(var40003)][uint8(stor13[arg1].field_1536)].field_256:
                                if var40002 + 1 <= stor7:
                                    require uint8(stor[(10 * arg1) + ('name', 'proposals', 13) + 9][address(var40003)].field_0) <= 2
                                    if uint8(stor[(10 * arg1) + ('name', 'proposals', 13) + 9][address(var40003)].field_0) == 1:
                                        uint256(proposals[arg1].field_256)++
                                    else:
                                        require uint8(stor[(10 * arg1) + ('name', 'proposals', 13) + 9][address(var40003)].field_0) <= 2
                                        if uint8(stor[(10 * arg1) + ('name', 'proposals', 13) + 9][address(var40003)].field_0) != 2:
                                            var40001 = uint8(stor[(10 * arg1) + ('name', 'proposals', 13) + 9][address(var40003)].field_0)
                                            var40002 = var40002 + 1
                                            var40003 = members[address(var40003)][uint8(stor13[arg1].field_1536)].field_256
                                            continue 
                                        uint256(proposals[arg1].field_512)++
                        if members[address(s)].field_1024:
                            s = members[address(var40003)][uint8(stor13[arg1].field_1536)].field_256
                            s = sha3(address(s), 10)
                            s = members[address(s)].field_1024
                            idx = idx - 1
                            continue 
            ('iszero', ('field', 1024, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', 1)), ('name', 'members', 10)))))
            proposals[arg1].field_2048 = stor9
}



}
