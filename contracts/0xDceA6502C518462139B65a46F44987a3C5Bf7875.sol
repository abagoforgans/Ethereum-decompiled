contract main {


// =======================  Init code  ======================


#
#  - _fallback()
#


// =====================  Runtime code  =====================


#
#  - sub_a026af67(?)
#
address managerAddress;
address sub_6fc54e21Address;
mapping of uint256 balanceOf;
mapping of struct proposals;
uint256 numProposals;
mapping of uint256 memberId;
array of struct members;
uint256 numMembers;
uint256 sub_69a3437a;
uint256 sub_690cdcc5;
array of struct stor10;
array of struct stor11;
array of struct stor12;
uint256 stor13;
uint256 stor14;

function proposals(uint256 arg1) {
    require arg1 < proposals.length
    mem[416] = uint256(stor[sha3((9 * arg1) + ('name', 'proposals', 3) + 2)].field_0)
    idx = 416
    s = 0
    while stor[(9 * arg1) + ('name', 'proposals', 3) + 2].length + 416 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((9 * arg1) + ('name', 'proposals', 3) + 2)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return uint256(proposals[arg1].field_0), 
           address(proposals[arg1].field_256),
           Array(len=stor[(9 * arg1) + ('name', 'proposals', 3) + 2].length, data=mem[416 len stor[(9 * arg1) + ('name', 'proposals', 3) + 2].length + (floor32(stor[(9 * arg1) + ('name', 'proposals', 3) + 2].length - 1) + -stor[(9 * arg1) + ('name', 'proposals', 3) + 2].length + 32 % 32)]),
           bool(uint8(proposals[arg1].field_768)),
           bool(uint8(proposals[arg1].field_776)),
           uint256(proposals[arg1].field_1024),
           uint256(proposals[arg1].field_1280),
           bool(uint8(proposals[arg1].field_1536)),
           bool(uint8(proposals[arg1].field_1544))
}

function memberId(address arg1) {
    return memberId[arg1]
}

function numProposals() {
    return numProposals
}

function numMembers() {
    return numMembers
}

function manager() {
    return managerAddress
}

function members(uint256 arg1) {
    require arg1 < members.length
    mem[256] = uint256(stor[sha3((4 * arg1) + ('name', 'members', 6) + 1)].field_0)
    idx = 256
    s = 0
    while stor[(4 * arg1) + ('name', 'members', 6) + 1].length + 256 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((4 * arg1) + ('name', 'members', 6) + 1)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return address(members[arg1].field_0), 
           Array(len=stor[(4 * arg1) + ('name', 'members', 6) + 1].length, data=mem[256 len stor[(4 * arg1) + ('name', 'members', 6) + 1].length + (floor32(stor[(4 * arg1) + ('name', 'members', 6) + 1].length - 1) + -stor[(4 * arg1) + ('name', 'members', 6) + 1].length + 32 % 32)]),
           uint256(members[arg1].field_512),
           uint8(members[arg1].field_768)
}

function sub_690cdcc5(?) {
    return sub_690cdcc5
}

function sub_69a3437a(?) {
    return sub_69a3437a
}

function sub_6fc54e21(?) {
    return sub_6fc54e21Address
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function sub_be896369(?) {
    mem[128 len arg1.length] = arg1[all]
    require managerAddress == msg.sender
    mem[ceil32(arg1.length) + 128] = eth.balance(this.address)
    mem[ceil32(arg1.length) + 160] = 64
    mem[ceil32(arg1.length) + 192] = arg1.length
    if arg1.length:
        mem[ceil32(arg1.length) + 224] = mem[128]
        mem[ceil32(arg1.length) + 256 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
    emit 0xbeaf7f78: eth.balance(this.address), Array(len=arg1.length, data=mem[ceil32(arg1.length) + 224 len arg1.length])
    mem[ceil32(arg1.length) + 128] = 32
    mem[ceil32(arg1.length) + 160] = arg1.length
    if arg1.length:
        mem[ceil32(arg1.length) + 192] = mem[128]
        mem[ceil32(arg1.length) + 224 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
    emit 0xc6d6c181: Array(len=arg1.length, data=mem[ceil32(arg1.length) + 192 len arg1.length])
    selfdestruct(managerAddress)
}

function _fallback() payable {
    emit Funded(msg.sender, msg.value);
}

function sub_215ffa02(?) {
    require managerAddress == msg.sender
    sub_6fc54e21Address = arg1
}

function transfer(address arg1, uint256 arg2) {
    require sub_6fc54e21Address == msg.sender
    if balanceOf[0] < arg2:
        balanceOf[0] += 1000
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    if 1 == balanceOf[address(arg1)]:
        if arg2 > 0:
            sub_69a3437a++
    balanceOf[0] -= arg2
    balanceOf[arg1] += arg2
}

function transferManagement(address arg1) {
    require managerAddress == msg.sender
    require memberId[address(arg1)]
    require memberId[address(arg1)] < members.length
    uint8(members[stor5[address(arg1)]].field_768) = 0
    require memberId[stor0] < members.length
    uint8(members[stor5[stor0]].field_768) = 2
    managerAddress = arg1
    emit 0xabae4dd8: arg1
}

function sub_81de4cb9(?) {
    require managerAddress == msg.sender
    require memberId[address(arg1)]
    if balanceOf[address(arg1)] > 1:
        if 3 == arg2:
            sub_69a3437a--
    require memberId[address(arg1)] < members.length
    if balanceOf[address(arg1)] > 1:
        if uint8(members[stor5[address(arg1)]].field_768) == 3:
            if arg2 != 3:
                sub_69a3437a++
    uint8(members[stor5[address(arg1)]].field_768) = arg2
}

function sub_7daff299(?) {
    require managerAddress == msg.sender
    require block.timestamp > stor13
    require block.timestamp < stor14
    require arg1 < proposals.length
    require bool(uint8(proposals[arg1].field_768)) != 1
    if uint256(proposals[arg1].field_1280) <= 0:
        uint8(proposals[arg1].field_776) = 0
    else:
        if 100 * uint256(proposals[arg1].field_1280) < 200 * uint256(proposals[arg1].field_1024) / 3:
            uint8(proposals[arg1].field_776) = 0
        else:
            uint8(proposals[arg1].field_776) = 1
    uint8(proposals[arg1].field_768) = 1
    sub_690cdcc5 = arg1
    emit 0xb5f95c60: arg1, bool(uint8(proposals[arg1].field_776))
}

function sub_6a6732b5(?) {
    mem[128 len arg1.length] = arg1[all]
    require managerAddress == msg.sender
    call managerAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if ext_call.success:
        mem[ceil32(arg1.length) + 128] = eth.balance(this.address)
        mem[ceil32(arg1.length) + 160] = 64
        mem[ceil32(arg1.length) + 192] = arg1.length
        if arg1.length:
            mem[ceil32(arg1.length) + 224] = mem[128]
            mem[ceil32(arg1.length) + 256 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
        emit 0xbeaf7f78: eth.balance(this.address), Array(len=arg1.length, data=mem[ceil32(arg1.length) + 224 len arg1.length])
}

function sub_6f22a1d8(?) {
    mem[128 len arg3.length] = arg3[all]
    require balanceOf[address(msg.sender)] >= 2
    require memberId[address(msg.sender)] < members.length
    require uint8(members[stor5[address(msg.sender)]].field_768) != 3
    require arg1 < proposals.length
    require bool(uint8(stor[(9 * arg1) + ('name', 'proposals', 3) + 8][address(msg.sender)].field_0)) != 1
    require bool(uint8(proposals[arg1].field_768)) != 1
    uint8(stor[(9 * arg1) + ('name', 'proposals', 3) + 8][address(msg.sender)].field_0) = 1
    uint256(proposals[arg1].field_1024)++
    if arg2:
        uint256(proposals[arg1].field_1280)++
    mem[ceil32(arg3.length) + 128] = arg1
    mem[ceil32(arg3.length) + 160] = arg2
    mem[ceil32(arg3.length) + 192] = msg.sender
    mem[ceil32(arg3.length) + 224] = 128
    mem[ceil32(arg3.length) + 256] = arg3.length
    if arg3.length:
        mem[ceil32(arg3.length) + 288] = mem[128]
        mem[ceil32(arg3.length) + 320 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
    emit 0x2928de6e: arg1, arg2, msg.sender, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 288 len arg3.length])
    return uint256(proposals[arg1].field_1024)
}

function sub_4282342a(?) {
    mem[288] = uint256(stor10.field_0)
    idx = 288
    s = 0
    while stor10.length + 288 > idx + 32:
        mem[idx + 32] = uint256(stor10[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[stor10.length + (floor32(stor10.length - 1) + -stor10.length + 32 % 32) + 288] = stor11.length
    mem[stor10.length + (floor32(stor10.length - 1) + -stor10.length + 32 % 32) + 320] = uint256(stor11.field_0)
    idx = stor10.length + (floor32(stor10.length - 1) + -stor10.length + 32 % 32) + 320
    s = 0
    while stor10.length + (floor32(stor10.length - 1) + -stor10.length + 32 % 32) + stor11.length + 320 > idx + 32:
        mem[idx + 32] = uint256(stor11[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[stor10.length + (floor32(stor10.length - 1) + -stor10.length + 32 % 32) + stor11.length + (floor32(stor11.length - 1) + -stor11.length + 32 % 32) + 352] = uint256(stor12.field_0)
    idx = stor10.length + (floor32(stor10.length - 1) + -stor10.length + 32 % 32) + stor11.length + (floor32(stor11.length - 1) + -stor11.length + 32 % 32) + 352
    s = 0
    while stor10.length + (floor32(stor10.length - 1) + -stor10.length + 32 % 32) + stor11.length + (floor32(stor11.length - 1) + -stor11.length + 32 % 32) + stor12.length + 352 > idx + 32:
        mem[idx + 32] = uint256(stor12[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=stor10.length, data=mem[288 len stor10.length + (floor32(stor10.length - 1) + -stor10.length + 32 % 32) + stor11.length + (floor32(stor11.length - 1) + -stor11.length + 32 % 32) + 32], stor12.length, mem[stor10.length + (floor32(stor10.length - 1) + -stor10.length + 32 % 32) + stor11.length + (floor32(stor11.length - 1) + -stor11.length + 32 % 32) + 352 len stor12.length + (floor32(stor12.length - 1) + -stor12.length + 32 % 32)]), 
           stor10.length + (floor32(stor10.length - 1) + -stor10.length + 32 % 32) + 192,
           stor10.length + (floor32(stor10.length - 1) + -stor10.length + 32 % 32) + stor11.length + (floor32(stor11.length - 1) + -stor11.length + 32 % 32) + 224,
           stor13,
           stor14
}

function addMember(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    require sub_6fc54e21Address == msg.sender
    require not memberId[address(arg1)]
    memberId[address(arg1)] = members.length
    members.length++
    if not members.length <= members.length + 1:
        mem[0] = 6
        idx = 4 * members.length + 1
        while sha3(6) + (4 * members.length) > idx + sha3(mem[0]):
            address(stor[idx + sha3(mem[0])]) = 0
            uint256(stor[idx + sha3(mem[0]) + 1]) = 0
            if 31 < stor[idx + sha3(mem[0]) + 1].length:
                mem[0] = idx + sha3(mem[0]) + 1
                if sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > sha3(idx + sha3(mem[0]) + 1):
                    uint256(stor[sha3(idx + sha3(mem[0]) + 1)]) = 0
                    s = sha3(idx + sha3(mem[0]) + 1) + 1
                    while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
            uint256(stor[idx + sha3(mem[0]) + 2]) = 0
            uint8(stor[idx + sha3(mem[0]) + 3]) = 0
            idx = idx + 4
            continue 
    mem[ceil32(arg2.length) + 128] = arg1
    mem[ceil32(arg2.length) + 160] = 96
    mem[ceil32(arg2.length) + 192] = block.timestamp
    mem[ceil32(arg2.length) + 224] = 2
    require members.length < members.length
    address(members[members.length].field_0) = arg1
    uint256(members[members.length].field_256) = (2 * arg2.length) + 1
    s = 0
    idx = 128
    while arg2.length + 128 > idx:
        uint256(stor[s + sha3((4 * members.length) + ('name', 'members', 6) + 1)].field_0) = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    if stor[(4 * members.length) + ('name', 'members', 6) + 1].length + 31 / 32 > Mask(251, 0, arg2.length + 31) >> 5:
        uint256(stor[sha3((4 * members.length) + ('name', 'members', 6) + 1) + (Mask(251, 0, arg2.length + 31) >> 5)].field_0) = 0
        idx = (Mask(251, 0, arg2.length + 31) >> 5) + 1
        while stor[(4 * members.length) + ('name', 'members', 6) + 1].length + 31 / 32 > idx:
            uint256(stor[idx + sha3((4 * members.length) + ('name', 'members', 6) + 1)].field_0) = 0
            idx = idx + 1
            continue 
    uint256(members[members.length].field_512) = block.timestamp
    uint8(members[members.length].field_768) = 2
    balanceOf[0]++
    require sub_6fc54e21Address == msg.sender
    if balanceOf[0] < 1:
        balanceOf[0] += 1000
    require balanceOf[address(arg1)] + 1 >= balanceOf[address(arg1)]
    if 1 == balanceOf[address(arg1)]:
        sub_69a3437a++
    balanceOf[0]--
    balanceOf[arg1]++
    numMembers = members.length
    mem[ceil32(arg2.length) + 256] = arg1
    mem[ceil32(arg2.length) + 288] = 64
    mem[ceil32(arg2.length) + 320] = arg2.length
    if arg2.length:
        mem[ceil32(arg2.length) + 352] = mem[128]
        mem[ceil32(arg2.length) + 384 len floor32(arg2.length - 1)] = mem[160 len floor32(arg2.length - 1)]
    emit 0x5660dfed: address(arg1), Array(len=arg2.length, data=mem[ceil32(arg2.length) + 352 len arg2.length])
}

function sub_65feafdc(?) {
    mem[128 len arg1.length] = arg1[all]
    require balanceOf[address(msg.sender)] >= 2
    require memberId[address(msg.sender)] < members.length
    require uint8(members[stor5[address(msg.sender)]].field_768) != 3
    proposals.length++
    if not proposals.length <= proposals.length + 1:
        mem[0] = 3
        idx = (9 * proposals.length) + 9
        while sha3(3) + (9 * proposals.length) > idx + sha3(mem[0]):
            uint256(stor[idx + sha3(mem[0])]) = 0
            address(stor[idx + sha3(mem[0]) + 1]) = 0
            uint256(stor[idx + sha3(mem[0]) + 2]) = 0
            if 31 < stor[idx + sha3(mem[0]) + 2].length:
                s = sha3(idx + sha3(mem[0]) + 2)
                while sha3(idx + sha3(mem[0]) + 2) + (stor[idx + sha3(mem[0]) + 2].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            uint16(stor[idx + sha3(mem[0]) + 3]) = 0
            uint256(stor[idx + sha3(mem[0]) + 4]) = 0
            uint256(stor[idx + sha3(mem[0]) + 5]) = 0
            uint16(stor[idx + sha3(mem[0]) + 6]) = 0
            uint256(stor[idx + sha3(mem[0]) + 7]) = 0
            mem[0] = idx + sha3(mem[0]) + 7
            s = sha3(idx + sha3(mem[0]) + 7)
            while sha3(idx + sha3(mem[0]) + 7) + uint256(stor[idx + sha3(mem[0]) + 7]) > s:
                Mask(168, 0, stor[s]) = 0
                s = s + 1
                continue 
            idx = idx + 9
            continue 
    require proposals.length < proposals.length
    address(proposals[proposals.length].field_256) = msg.sender
    uint256(proposals[proposals.length].field_512) = (2 * arg1.length) + 1
    s = 0
    idx = 128
    while arg1.length + 128 > idx:
        uint256(stor[s + sha3((9 * proposals.length) + ('name', 'proposals', 3) + 2)].field_0) = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    if stor[(9 * proposals.length) + ('name', 'proposals', 3) + 2].length + 31 / 32 > Mask(251, 0, arg1.length + 31) >> 5:
        uint256(stor[sha3((9 * proposals.length) + ('name', 'proposals', 3) + 2) + (Mask(251, 0, arg1.length + 31) >> 5)].field_0) = 0
        idx = (Mask(251, 0, arg1.length + 31) >> 5) + 1
        while stor[(9 * proposals.length) + ('name', 'proposals', 3) + 2].length + 31 / 32 > idx:
            uint256(stor[idx + sha3((9 * proposals.length) + ('name', 'proposals', 3) + 2)].field_0) = 0
            idx = idx + 1
            continue 
    uint16(proposals[proposals.length].field_768) = 0
    uint256(proposals[proposals.length].field_1024) = 0
    uint8(proposals[proposals.length].field_1536) = uint8(arg2)
    Mask(248, 0, proposals[proposals.length].field_1544) = Mask(248, 0, arg3)
    Mask(240, 0, proposals[proposals.length].field_1552) = Mask(240, 16, arg2) >> 16
    mem[ceil32(arg1.length) + 128] = proposals.length
    mem[ceil32(arg1.length) + 160] = msg.sender
    mem[ceil32(arg1.length) + 192] = 96
    mem[ceil32(arg1.length) + 224] = arg1.length
    if arg1.length:
        mem[ceil32(arg1.length) + 256] = mem[128]
        mem[ceil32(arg1.length) + 288 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
    emit ProposalAdded(proposals.length, msg.sender, Array(len=arg1.length, data=mem[ceil32(arg1.length) + 256 len arg1.length]));
    numProposals = proposals.length + 1
    uint256(proposals[proposals.length].field_0) = proposals.length
    return proposals.length
}



}
