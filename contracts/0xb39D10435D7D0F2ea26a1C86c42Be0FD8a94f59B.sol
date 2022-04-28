contract main {


// =======================  Init code  ======================


#
#  - _fallback()
#


// =====================  Runtime code  =====================


const implementsERC721 = 1


array of struct totalAccessories;
array of struct stor1;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address tittyApproveIndex;
array of uint256 name;
array of uint256 symbol;
address stor7;
address stor8;

function name() {
    return name[0 len name.length]
}

function tittyIndexToOwner(uint256 arg1) {
    return ownerOf[arg1]
}

function getAmountOfTitties() {
    return totalAccessories.length
}

function ownerOf(uint256 arg1) {
    require ownerOf[arg1]
    return ownerOf[arg1]
}

function tittyApproveIndex(uint256 arg1) {
    return tittyApproveIndex[arg1]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function totalAccessories(uint256 arg1) {
    require arg1 < totalAccessories.length
    return uint256(totalAccessories[arg1].field_1280)
}

function symbol() {
    return symbol[0 len symbol.length]
}

function ownerTittiesCount(address arg1) {
    return balanceOf[arg1]
}

function _fallback() {
  stop
}

function totalSupply() {
    return (totalAccessories.length - 1)
}

function getLatestId() {
    return (totalAccessories.length - 1)
}

function belongsTo(address arg1, uint256 arg2) {
    return (ownerOf[arg2] == arg1)
}

function approve(address arg1, uint256 arg2) {
    require ownerOf[arg2] == msg.sender
    tittyApproveIndex[arg2] = arg1
    emit Approval(msg.sender, arg1, arg2);
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require ownerOf[arg2] == msg.sender
    balanceOf[address(arg1)]++
    ownerOf[arg2] = arg1
    if msg.sender:
        balanceOf[address(msg.sender)]--
        tittyApproveIndex[arg2] = 0
    emit Transfer(msg.sender, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require tittyApproveIndex[arg3] == msg.sender
    require ownerOf[arg3] == arg1
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    if arg1:
        balanceOf[address(arg1)]--
        tittyApproveIndex[arg3] = 0
    emit Transfer(arg1, arg2);
}

function getTittyByWpId(address arg1, uint256 arg2) {
    s = var14001
    s = var14002
    idx = var14003
    while idx <= totalAccessories.length - 1:
        require idx < totalAccessories.length
        mem[0] = idx
        mem[32] = 2
        if uint256(totalAccessories[idx].field_0) != arg2:
            s = ownerOf[idx] == arg1
            s = (7 * idx) + sha3(0)
            idx = idx + 1
            continue 
        if ownerOf[idx] != arg1:
            s = ownerOf[idx] == arg1
            s = (7 * idx) + sha3(0)
            idx = idx + 1
            continue 
        return 1, idx
    return 0
}

function purchaseExistent(uint256 arg1) payable {
    require arg1 < totalAccessories.length
    if not msg.value:
        require msg.value == uint256(totalAccessories[arg1].field_1024)
    tittyApproveIndex[arg1] = msg.sender
    require tittyApproveIndex[arg1] == msg.sender
    require ownerOf[arg1] == ownerOf[arg1]
    balanceOf[address(msg.sender)]++
    ownerOf[arg1] = msg.sender
    if ownerOf[arg1]:
        balanceOf[stor2[arg1]]--
        tittyApproveIndex[arg1] = 0
    emit Transfer(ownerOf[arg1], msg.sender);
    call ownerOf[arg1] with:
       value msg.value - (10 * uint256(totalAccessories[arg1].field_1024) / 100) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call stor7 with:
       value 10 * uint256(totalAccessories[arg1].field_1024) / 100 wei
         gas 2300 * is_zero(value) wei
}

function getAccessory(uint256 arg1, uint256 arg2) {
    require arg1 < totalAccessories.length
    require arg2 < uint256(totalAccessories[arg1].field_1280)
    require uint256(stor[arg2 + sha3((7 * arg1) + ('name', 'totalAccessories', 0) + 5)].field_0) < stor1.length
    mem[160] = uint256(stor[sha3((4 * uint256(stor[arg2 + sha3((7 * arg1) + ('name', 'stor0', 0) + 5)].field_0)) + ('name', 'stor1', 1) + 1)].field_0)
    idx = 160
    s = 0
    while stor[(4 * uint256(stor[arg2 + sha3((7 * arg1) + ('name', 'stor0', 0) + 5)].field_0)) + ('name', 'stor1', 1) + 1].length + 128 > idx:
        mem[idx + 32] = uint256(stor[s + sha3((4 * uint256(stor[arg2 + sha3((7 * arg1) + ('name', 'stor0', 0) + 5)].field_0)) + ('name', 'stor1', 1) + 1)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return uint256(stor1[uint256(stor[arg2 + sha3((7 * arg1) + ('name', 'stor0', 0) + 5)].field_0)].field_0), 
           Array(len=stor[(4 * uint256(stor[arg2 + sha3((7 * arg1) + ('name', 'stor0', 0) + 5)].field_0)) + ('name', 'stor1', 1) + 1].length, data=mem[160 len stor[(4 * uint256(stor[arg2 + sha3((7 * arg1) + ('name', 'stor0', 0) + 5)].field_0)) + ('name', 'stor1', 1) + 1].length]),
           uint256(stor1[uint256(stor[arg2 + sha3((7 * arg1) + ('name', 'stor0', 0) + 5)].field_0)].field_512),
           bool(uint8(stor1[uint256(stor[arg2 + sha3((7 * arg1) + ('name', 'stor0', 0) + 5)].field_0)].field_768))
}

function purchaseAccessory(uint256 arg1, uint256 arg2, string arg3, uint256 arg4) payable {
    if not msg.value:
        require msg.value == arg4
    call stor7 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require arg1 < totalAccessories.length
    stor1.length++
    if not stor1.length <= stor1.length + 1:
        mem[0] = 1
        idx = 4 * stor1.length + 1
        while sha3(1) + (4 * stor1.length) > idx + sha3(mem[0]):
            uint256(stor[idx + sha3(mem[0])]) = 0
            uint256(stor[idx + sha3(mem[0]) + 1]) = 0
            if 31 < stor[idx + sha3(mem[0]) + 1].length:
                mem[0] = idx + sha3(mem[0]) + 1
                s = sha3(idx + sha3(mem[0]) + 1)
                while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            uint256(stor[idx + sha3(mem[0]) + 2]) = 0
            uint8(stor[idx + sha3(mem[0]) + 3]) = 0
            idx = idx + 4
            continue 
    uint256(stor1[stor1.length].field_0) = arg2
    uint256(stor[sha3((4 * stor1.length) + ('name', 'stor1', 1) + 1)][].field_0) = Array(len=arg3.length, data=arg3[all])
    uint256(stor1[stor1.length].field_512) = arg4
    uint8(stor1[stor1.length].field_768) = 1
    uint256(totalAccessories[arg1].field_1280)++
    if not uint256(totalAccessories[arg1].field_1280) <= uint256(totalAccessories[arg1].field_1280) + 1:
        idx = uint256(totalAccessories[arg1].field_1280) + 1
        while uint256(totalAccessories[arg1].field_1280) > idx:
            uint256(stor[idx + sha3((7 * arg1) + ('name', 'totalAccessories', 0) + 5)].field_0) = 0
            idx = idx + 1
            continue 
    uint256(stor[uint256(totalAccessories[arg1].field_1280) + sha3((7 * arg1) + ('name', 'totalAccessories', 0) + 5)].field_0) = stor1.length
    emit AddAccessory(arg1, stor1.length);
}

function purchaseNew(uint256 arg1, string arg2, string arg3, uint256 arg4) payable {
    if not msg.value:
        require msg.value == arg4
    totalAccessories.length++
    if not totalAccessories.length <= totalAccessories.length + 1:
        mem[0] = 0
        idx = (7 * totalAccessories.length) + 7
        while sha3(0) + (7 * totalAccessories.length) > idx + sha3(mem[0]):
            uint256(stor[idx + sha3(mem[0])]) = 0
            uint256(stor[idx + sha3(mem[0]) + 1]) = 0
            if 31 < stor[idx + sha3(mem[0]) + 1].length:
                s = sha3(idx + sha3(mem[0]) + 1)
                while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            uint256(stor[idx + sha3(mem[0]) + 2]) = 0
            if 31 < stor[idx + sha3(mem[0]) + 2].length:
                s = sha3(idx + sha3(mem[0]) + 2)
                while sha3(idx + sha3(mem[0]) + 2) + (stor[idx + sha3(mem[0]) + 2].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            uint256(stor[idx + sha3(mem[0]) + 3]) = 0
            uint256(stor[idx + sha3(mem[0]) + 4]) = 0
            uint256(stor[idx + sha3(mem[0]) + 5]) = 0
            mem[0] = idx + sha3(mem[0]) + 5
            s = sha3(idx + sha3(mem[0]) + 5)
            while sha3(idx + sha3(mem[0]) + 5) + uint256(stor[idx + sha3(mem[0]) + 5]) > s:
                uint256(stor[s]) = 0
                s = s + 1
                continue 
            uint8(stor[idx + sha3(mem[0]) + 6]) = 0
            idx = idx + 7
            continue 
    uint256(totalAccessories[totalAccessories.length].field_0) = arg1
    uint256(stor[sha3((7 * totalAccessories.length) + ('name', 'totalAccessories', 0) + 1)][].field_0) = Array(len=arg2.length, data=arg2[all])
    uint256(stor[sha3((7 * totalAccessories.length) + ('name', 'totalAccessories', 0) + 2)][].field_0) = Array(len=arg3.length, data=arg3[all])
    uint256(totalAccessories[totalAccessories.length].field_768) = arg4
    uint256(totalAccessories[totalAccessories.length].field_1024) = arg4
    uint256(totalAccessories[totalAccessories.length].field_1280) = 0
    idx = 0
    while uint256(totalAccessories[totalAccessories.length].field_1280) > idx:
        uint256(stor[idx + sha3((7 * totalAccessories.length) + ('name', 'totalAccessories', 0) + 5)].field_0) = 0
        idx = idx + 1
        continue 
    uint8(totalAccessories[totalAccessories.length].field_1536) = 0
    emit Creation(totalAccessories.length, arg1, msg.sender);
    balanceOf[address(msg.sender)]++
    ownerOf[stor0.length] = msg.sender
    emit Transfer(0, msg.sender);
    call stor7 with:
       value msg.value - (25 * msg.value / 100) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call stor8 with:
       value 25 * msg.value / 100 wei
         gas 2300 * is_zero(value) wei
}

function getATitty(uint256 arg1) {
    mem[96] = 0
    mem[128] = 0
    require arg1 < totalAccessories.length
    mem[160] = stor[(7 * arg1) + ('name', 'totalAccessories', 0) + 1].length
    mem[192] = uint256(stor[sha3((7 * arg1) + ('name', 'totalAccessories', 0) + 1)].field_0)
    idx = 192
    s = 0
    while stor[(7 * arg1) + ('name', 'totalAccessories', 0) + 1].length + 160 > idx:
        mem[idx + 32] = uint256(stor[s + sha3((7 * arg1) + ('name', 'totalAccessories', 0) + 1)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(stor[(7 * arg1) + ('name', 'totalAccessories', 0) + 1].length) + ceil32(stor[(7 * arg1) + ('name', 'totalAccessories', 0) + 2].length) + 224
    mem[ceil32(stor[(7 * arg1) + ('name', 'totalAccessories', 0) + 1].length) + 192] = stor[(7 * arg1) + ('name', 'totalAccessories', 0) + 2].length
    mem[0] = (7 * arg1) + sha3(0) + 2
    mem[ceil32(stor[(7 * arg1) + ('name', 'totalAccessories', 0) + 1].length) + 224] = uint256(stor[sha3((7 * arg1) + ('name', 'totalAccessories', 0) + 2)].field_0)
    idx = ceil32(stor[(7 * arg1) + ('name', 'totalAccessories', 0) + 1].length) + 224
    s = 0
    while ceil32(stor[(7 * arg1) + ('name', 'totalAccessories', 0) + 1].length) + stor[(7 * arg1) + ('name', 'totalAccessories', 0) + 2].length + 192 > idx:
        mem[idx + 32] = uint256(stor[s + sha3((7 * arg1) + ('name', 'totalAccessories', 0) + 2)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor[(7 * arg1) + ('name', 'totalAccessories', 0) + 1].length) + ceil32(stor[(7 * arg1) + ('name', 'totalAccessories', 0) + 2].length) + 224] = uint256(totalAccessories[arg1].field_0)
    mem[ceil32(stor[(7 * arg1) + ('name', 'totalAccessories', 0) + 1].length) + ceil32(stor[(7 * arg1) + ('name', 'totalAccessories', 0) + 2].length) + 320] = uint256(totalAccessories[arg1].field_768)
    mem[ceil32(stor[(7 * arg1) + ('name', 'totalAccessories', 0) + 1].length) + ceil32(stor[(7 * arg1) + ('name', 'totalAccessories', 0) + 2].length) + 352] = uint256(totalAccessories[arg1].field_1024)
    mem[ceil32(stor[(7 * arg1) + ('name', 'totalAccessories', 0) + 1].length) + ceil32(stor[(7 * arg1) + ('name', 'totalAccessories', 0) + 2].length) + 384] = bool(uint8(totalAccessories[arg1].field_1536))
    mem[ceil32(stor[(7 * arg1) + ('name', 'totalAccessories', 0) + 1].length) + ceil32(stor[(7 * arg1) + ('name', 'totalAccessories', 0) + 2].length) + 256] = 192
    mem[ceil32(stor[(7 * arg1) + ('name', 'totalAccessories', 0) + 1].length) + ceil32(stor[(7 * arg1) + ('name', 'totalAccessories', 0) + 2].length) + 416] = stor[(7 * arg1) + ('name', 'totalAccessories', 0) + 1].length
    mem[ceil32(stor[(7 * arg1) + ('name', 'totalAccessories', 0) + 1].length) + ceil32(stor[(7 * arg1) + ('name', 'totalAccessories', 0) + 2].length) + 448 len ceil32(stor[(7 * arg1) + ('name', 'totalAccessories', 0) + 1].length)] = mem[192 len ceil32(stor[(7 * arg1) + ('name', 'totalAccessories', 0) + 1].length)]
    mem[ceil32(stor[(7 * arg1) + ('name', 'totalAccessories', 0) + 1].length) + ceil32(stor[(7 * arg1) + ('name', 'totalAccessories', 0) + 2].length) + 288] = stor[(7 * arg1) + ('name', 'totalAccessories', 0) + 1].length + 224
    mem[stor[(7 * arg1) + ('name', 'totalAccessories', 0) + 1].length + ceil32(stor[(7 * arg1) + ('name', 'totalAccessories', 0) + 1].length) + ceil32(stor[(7 * arg1) + ('name', 'totalAccessories', 0) + 2].length) + 448] = stor[(7 * arg1) + ('name', 'totalAccessories', 0) + 2].length
    mem[stor[(7 * arg1) + ('name', 'totalAccessories', 0) + 1].length + ceil32(stor[(7 * arg1) + ('name', 'totalAccessories', 0) + 1].length) + ceil32(stor[(7 * arg1) + ('name', 'totalAccessories', 0) + 2].length) + 480 len ceil32(stor[(7 * arg1) + ('name', 'totalAccessories', 0) + 2].length)] = mem[ceil32(stor[(7 * arg1) + ('name', 'totalAccessories', 0) + 1].length) + 224 len ceil32(stor[(7 * arg1) + ('name', 'totalAccessories', 0) + 2].length)]
    if not stor[(7 * arg1) + ('name', 'totalAccessories', 0) + 2].length % 32:
        return uint256(totalAccessories[arg1].field_0), 
               Array(len=stor[(7 * arg1) + ('name', 'totalAccessories', 0) + 1].length, data=mem[192 len ceil32(stor[(7 * arg1) + ('name', 'totalAccessories', 0) + 1].length)], mem[(2 * ceil32(stor[(7 * arg1) + ('name', 'totalAccessories', 0) + 1].length)) + ceil32(stor[(7 * arg1) + ('name', 'totalAccessories', 0) + 2].length) + 448 len stor[(7 * arg1) + ('name', 'totalAccessories', 0) + 2].length + stor[(7 * arg1) + ('name', 'totalAccessories', 0) + 1].length + -ceil32(stor[(7 * arg1) + ('name', 'totalAccessories', 0) + 1].length) + 32]),
               stor[(7 * arg1) + ('name', 'totalAccessories', 0) + 1].length + 224,
               uint256(totalAccessories[arg1].field_768),
               uint256(totalAccessories[arg1].field_1024),
               bool(uint8(totalAccessories[arg1].field_1536))
    mem[floor32(stor[(7 * arg1) + ('name', 'totalAccessories', 0) + 2].length) + stor[(7 * arg1) + ('name', 'totalAccessories', 0) + 1].length + ceil32(stor[(7 * arg1) + ('name', 'totalAccessories', 0) + 1].length) + ceil32(stor[(7 * arg1) + ('name', 'totalAccessories', 0) + 2].length) + 480] = mem[floor32(stor[(7 * arg1) + ('name', 'totalAccessories', 0) + 2].length) + stor[(7 * arg1) + ('name', 'totalAccessories', 0) + 1].length + ceil32(stor[(7 * arg1) + ('name', 'totalAccessories', 0) + 1].length) + ceil32(stor[(7 * arg1) + ('name', 'totalAccessories', 0) + 2].length) + -stor[(7 * arg1) + ('name', 'totalAccessories', 0) + 2].length % 32 + 512 len stor[(7 * arg1) + ('name', 'totalAccessories', 0) + 2].length % 32]
    return uint256(totalAccessories[arg1].field_0), 
           Array(len=stor[(7 * arg1) + ('name', 'totalAccessories', 0) + 1].length, data=mem[192 len ceil32(stor[(7 * arg1) + ('name', 'totalAccessories', 0) + 1].length)], mem[(2 * ceil32(stor[(7 * arg1) + ('name', 'totalAccessories', 0) + 1].length)) + ceil32(stor[(7 * arg1) + ('name', 'totalAccessories', 0) + 2].length) + 448 len floor32(stor[(7 * arg1) + ('name', 'totalAccessories', 0) + 2].length) + stor[(7 * arg1) + ('name', 'totalAccessories', 0) + 1].length + -ceil32(stor[(7 * arg1) + ('name', 'totalAccessories', 0) + 1].length) + 64]),
           stor[(7 * arg1) + ('name', 'totalAccessories', 0) + 1].length + 224,
           uint256(totalAccessories[arg1].field_768),
           uint256(totalAccessories[arg1].field_1024),
           bool(uint8(totalAccessories[arg1].field_1536))
}

function makeItSellable(uint256 arg1) {
    require ownerOf[arg1] == msg.sender
    require arg1 < totalAccessories.length
    uint8(totalAccessories[arg1].field_1536) = 1
    if 31 >= stor[(7 * arg1) + ('name', 'totalAccessories', 0) + 1].length:
        idx = 0
        while stor[(7 * arg1) + ('name', 'totalAccessories', 0) + 1].length + 31 / 32 > idx:
            uint256(stor[idx + sha3((7 * arg1) + ('name', 'totalAccessories', 0) + 1)].field_0) = 0
            idx = idx + 1
            continue 
        if 31 >= stor[(7 * arg1) + ('name', 'totalAccessories', 0) + 2].length:
            idx = 0
            while stor[(7 * arg1) + ('name', 'totalAccessories', 0) + 2].length + 31 / 32 > idx:
                uint256(stor[idx + sha3((7 * arg1) + ('name', 'totalAccessories', 0) + 2)].field_0) = 0
                idx = idx + 1
                continue 
            if not uint256(totalAccessories[arg1].field_1280):
                idx = 0
                while uint256(totalAccessories[arg1].field_1280) > idx:
                    uint256(stor[idx + sha3((7 * arg1) + ('name', 'totalAccessories', 0) + 5)].field_0) = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while uint256(totalAccessories[arg1].field_1280) > idx:
                    uint256(stor[s + sha3((7 * arg1) + ('name', 'totalAccessories', 0) + 5)].field_0) = uint256(stor[idx + sha3((7 * arg1) + ('name', 'totalAccessories', 0) + 5)].field_0)
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = uint256(totalAccessories[arg1].field_1280)
                while uint256(totalAccessories[arg1].field_1280) > idx:
                    uint256(stor[idx + sha3((7 * arg1) + ('name', 'totalAccessories', 0) + 5)].field_0) = 0
                    idx = idx + 1
                    continue 
        else:
            uint256(totalAccessories[arg1].field_512) = Mask(255, 1, (256 * not bool(totalAccessories[arg1].field_512)) - 1 and uint256(totalAccessories[arg1].field_512)) + 1
            if not Mask(255, 1, (256 * not bool(totalAccessories[arg1].field_512)) - 1 and uint256(totalAccessories[arg1].field_512)):
                idx = 0
                while stor[(7 * arg1) + ('name', 'totalAccessories', 0) + 2].length + 31 / 32 > idx:
                    uint256(stor[idx + sha3((7 * arg1) + ('name', 'totalAccessories', 0) + 2)].field_0) = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while stor[(7 * arg1) + ('name', 'totalAccessories', 0) + 2].length + 31 / 32 > idx:
                    uint256(stor[s + sha3((7 * arg1) + ('name', 'totalAccessories', 0) + 2)].field_0) = uint256(stor[idx + sha3((7 * arg1) + ('name', 'totalAccessories', 0) + 2)].field_0)
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = stor[(7 * arg1) + ('name', 'totalAccessories', 0) + 2].length + 31 / 32
                while stor[(7 * arg1) + ('name', 'totalAccessories', 0) + 2].length + 31 / 32 > idx:
                    uint256(stor[idx + sha3((7 * arg1) + ('name', 'totalAccessories', 0) + 2)].field_0) = 0
                    idx = idx + 1
                    continue 
            if not uint256(totalAccessories[arg1].field_1280):
                idx = 0
                while uint256(totalAccessories[arg1].field_1280) > idx:
                    uint256(stor[idx + sha3((7 * arg1) + ('name', 'totalAccessories', 0) + 5)].field_0) = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while uint256(totalAccessories[arg1].field_1280) > idx:
                    uint256(stor[s + sha3((7 * arg1) + ('name', 'totalAccessories', 0) + 5)].field_0) = uint256(stor[idx + sha3((7 * arg1) + ('name', 'totalAccessories', 0) + 5)].field_0)
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = uint256(totalAccessories[arg1].field_1280)
                while uint256(totalAccessories[arg1].field_1280) > idx:
                    uint256(stor[idx + sha3((7 * arg1) + ('name', 'totalAccessories', 0) + 5)].field_0) = 0
                    idx = idx + 1
                    continue 
    else:
        uint256(totalAccessories[arg1].field_256) = Mask(255, 1, (256 * not bool(totalAccessories[arg1].field_256)) - 1 and uint256(totalAccessories[arg1].field_256)) + 1
        if not Mask(255, 1, (256 * not bool(totalAccessories[arg1].field_256)) - 1 and uint256(totalAccessories[arg1].field_256)):
            idx = 0
            while stor[(7 * arg1) + ('name', 'totalAccessories', 0) + 1].length + 31 / 32 > idx:
                uint256(stor[idx + sha3((7 * arg1) + ('name', 'totalAccessories', 0) + 1)].field_0) = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 0
            while stor[(7 * arg1) + ('name', 'totalAccessories', 0) + 1].length + 31 / 32 > idx:
                uint256(stor[s + sha3((7 * arg1) + ('name', 'totalAccessories', 0) + 1)].field_0) = uint256(stor[idx + sha3((7 * arg1) + ('name', 'totalAccessories', 0) + 1)].field_0)
                s = s + 1
                idx = idx + 1
                continue 
            idx = stor[(7 * arg1) + ('name', 'totalAccessories', 0) + 1].length + 31 / 32
            while stor[(7 * arg1) + ('name', 'totalAccessories', 0) + 1].length + 31 / 32 > idx:
                uint256(stor[idx + sha3((7 * arg1) + ('name', 'totalAccessories', 0) + 1)].field_0) = 0
                idx = idx + 1
                continue 
        if 31 >= stor[(7 * arg1) + ('name', 'totalAccessories', 0) + 2].length:
            idx = 0
            while stor[(7 * arg1) + ('name', 'totalAccessories', 0) + 2].length + 31 / 32 > idx:
                uint256(stor[idx + sha3((7 * arg1) + ('name', 'totalAccessories', 0) + 2)].field_0) = 0
                idx = idx + 1
                continue 
            if not uint256(totalAccessories[arg1].field_1280):
                idx = 0
                while uint256(totalAccessories[arg1].field_1280) > idx:
                    uint256(stor[idx + sha3((7 * arg1) + ('name', 'totalAccessories', 0) + 5)].field_0) = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while uint256(totalAccessories[arg1].field_1280) > idx:
                    uint256(stor[s + sha3((7 * arg1) + ('name', 'totalAccessories', 0) + 5)].field_0) = uint256(stor[idx + sha3((7 * arg1) + ('name', 'totalAccessories', 0) + 5)].field_0)
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = uint256(totalAccessories[arg1].field_1280)
                while uint256(totalAccessories[arg1].field_1280) > idx:
                    uint256(stor[idx + sha3((7 * arg1) + ('name', 'totalAccessories', 0) + 5)].field_0) = 0
                    idx = idx + 1
                    continue 
        else:
            uint256(totalAccessories[arg1].field_512) = Mask(255, 1, (256 * not bool(totalAccessories[arg1].field_512)) - 1 and uint256(totalAccessories[arg1].field_512)) + 1
            if not Mask(255, 1, (256 * not bool(totalAccessories[arg1].field_512)) - 1 and uint256(totalAccessories[arg1].field_512)):
                idx = 0
                while stor[(7 * arg1) + ('name', 'totalAccessories', 0) + 2].length + 31 / 32 > idx:
                    uint256(stor[idx + sha3((7 * arg1) + ('name', 'totalAccessories', 0) + 2)].field_0) = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while stor[(7 * arg1) + ('name', 'totalAccessories', 0) + 2].length + 31 / 32 > idx:
                    uint256(stor[s + sha3((7 * arg1) + ('name', 'totalAccessories', 0) + 2)].field_0) = uint256(stor[idx + sha3((7 * arg1) + ('name', 'totalAccessories', 0) + 2)].field_0)
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = stor[(7 * arg1) + ('name', 'totalAccessories', 0) + 2].length + 31 / 32
                while stor[(7 * arg1) + ('name', 'totalAccessories', 0) + 2].length + 31 / 32 > idx:
                    uint256(stor[idx + sha3((7 * arg1) + ('name', 'totalAccessories', 0) + 2)].field_0) = 0
                    idx = idx + 1
                    continue 
            if not uint256(totalAccessories[arg1].field_1280):
                idx = 0
                while uint256(totalAccessories[arg1].field_1280) > idx:
                    uint256(stor[idx + sha3((7 * arg1) + ('name', 'totalAccessories', 0) + 5)].field_0) = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while uint256(totalAccessories[arg1].field_1280) > idx:
                    uint256(stor[s + sha3((7 * arg1) + ('name', 'totalAccessories', 0) + 5)].field_0) = uint256(stor[idx + sha3((7 * arg1) + ('name', 'totalAccessories', 0) + 5)].field_0)
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = uint256(totalAccessories[arg1].field_1280)
                while uint256(totalAccessories[arg1].field_1280) > idx:
                    uint256(stor[idx + sha3((7 * arg1) + ('name', 'totalAccessories', 0) + 5)].field_0) = 0
                    idx = idx + 1
                    continue 
    uint8(totalAccessories[arg1].field_1536) = uint8(bool(uint8(totalAccessories[arg1].field_1536)))
}

function changePrice(uint256 arg1, uint256 arg2) {
    require ownerOf[arg2] == msg.sender
    require arg2 < totalAccessories.length
    uint256(totalAccessories[arg2].field_1024) = arg1
    if 31 >= stor[(7 * arg2) + ('name', 'totalAccessories', 0) + 1].length:
        idx = 0
        while stor[(7 * arg2) + ('name', 'totalAccessories', 0) + 1].length + 31 / 32 > idx:
            uint256(stor[idx + sha3((7 * arg2) + ('name', 'totalAccessories', 0) + 1)].field_0) = 0
            idx = idx + 1
            continue 
        if 31 >= stor[(7 * arg2) + ('name', 'totalAccessories', 0) + 2].length:
            idx = 0
            while stor[(7 * arg2) + ('name', 'totalAccessories', 0) + 2].length + 31 / 32 > idx:
                uint256(stor[idx + sha3((7 * arg2) + ('name', 'totalAccessories', 0) + 2)].field_0) = 0
                idx = idx + 1
                continue 
            if not uint256(totalAccessories[arg2].field_1280):
                idx = 0
                while uint256(totalAccessories[arg2].field_1280) > idx:
                    uint256(stor[idx + sha3((7 * arg2) + ('name', 'totalAccessories', 0) + 5)].field_0) = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while uint256(totalAccessories[arg2].field_1280) > idx:
                    uint256(stor[s + sha3((7 * arg2) + ('name', 'totalAccessories', 0) + 5)].field_0) = uint256(stor[idx + sha3((7 * arg2) + ('name', 'totalAccessories', 0) + 5)].field_0)
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = uint256(totalAccessories[arg2].field_1280)
                while uint256(totalAccessories[arg2].field_1280) > idx:
                    uint256(stor[idx + sha3((7 * arg2) + ('name', 'totalAccessories', 0) + 5)].field_0) = 0
                    idx = idx + 1
                    continue 
        else:
            uint256(totalAccessories[arg2].field_512) = Mask(255, 1, (256 * not bool(totalAccessories[arg2].field_512)) - 1 and uint256(totalAccessories[arg2].field_512)) + 1
            if not Mask(255, 1, (256 * not bool(totalAccessories[arg2].field_512)) - 1 and uint256(totalAccessories[arg2].field_512)):
                idx = 0
                while stor[(7 * arg2) + ('name', 'totalAccessories', 0) + 2].length + 31 / 32 > idx:
                    uint256(stor[idx + sha3((7 * arg2) + ('name', 'totalAccessories', 0) + 2)].field_0) = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while stor[(7 * arg2) + ('name', 'totalAccessories', 0) + 2].length + 31 / 32 > idx:
                    uint256(stor[s + sha3((7 * arg2) + ('name', 'totalAccessories', 0) + 2)].field_0) = uint256(stor[idx + sha3((7 * arg2) + ('name', 'totalAccessories', 0) + 2)].field_0)
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = stor[(7 * arg2) + ('name', 'totalAccessories', 0) + 2].length + 31 / 32
                while stor[(7 * arg2) + ('name', 'totalAccessories', 0) + 2].length + 31 / 32 > idx:
                    uint256(stor[idx + sha3((7 * arg2) + ('name', 'totalAccessories', 0) + 2)].field_0) = 0
                    idx = idx + 1
                    continue 
            if not uint256(totalAccessories[arg2].field_1280):
                idx = 0
                while uint256(totalAccessories[arg2].field_1280) > idx:
                    uint256(stor[idx + sha3((7 * arg2) + ('name', 'totalAccessories', 0) + 5)].field_0) = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while uint256(totalAccessories[arg2].field_1280) > idx:
                    uint256(stor[s + sha3((7 * arg2) + ('name', 'totalAccessories', 0) + 5)].field_0) = uint256(stor[idx + sha3((7 * arg2) + ('name', 'totalAccessories', 0) + 5)].field_0)
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = uint256(totalAccessories[arg2].field_1280)
                while uint256(totalAccessories[arg2].field_1280) > idx:
                    uint256(stor[idx + sha3((7 * arg2) + ('name', 'totalAccessories', 0) + 5)].field_0) = 0
                    idx = idx + 1
                    continue 
    else:
        uint256(totalAccessories[arg2].field_256) = Mask(255, 1, (256 * not bool(totalAccessories[arg2].field_256)) - 1 and uint256(totalAccessories[arg2].field_256)) + 1
        if not Mask(255, 1, (256 * not bool(totalAccessories[arg2].field_256)) - 1 and uint256(totalAccessories[arg2].field_256)):
            idx = 0
            while stor[(7 * arg2) + ('name', 'totalAccessories', 0) + 1].length + 31 / 32 > idx:
                uint256(stor[idx + sha3((7 * arg2) + ('name', 'totalAccessories', 0) + 1)].field_0) = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 0
            while stor[(7 * arg2) + ('name', 'totalAccessories', 0) + 1].length + 31 / 32 > idx:
                uint256(stor[s + sha3((7 * arg2) + ('name', 'totalAccessories', 0) + 1)].field_0) = uint256(stor[idx + sha3((7 * arg2) + ('name', 'totalAccessories', 0) + 1)].field_0)
                s = s + 1
                idx = idx + 1
                continue 
            idx = stor[(7 * arg2) + ('name', 'totalAccessories', 0) + 1].length + 31 / 32
            while stor[(7 * arg2) + ('name', 'totalAccessories', 0) + 1].length + 31 / 32 > idx:
                uint256(stor[idx + sha3((7 * arg2) + ('name', 'totalAccessories', 0) + 1)].field_0) = 0
                idx = idx + 1
                continue 
        if 31 >= stor[(7 * arg2) + ('name', 'totalAccessories', 0) + 2].length:
            idx = 0
            while stor[(7 * arg2) + ('name', 'totalAccessories', 0) + 2].length + 31 / 32 > idx:
                uint256(stor[idx + sha3((7 * arg2) + ('name', 'totalAccessories', 0) + 2)].field_0) = 0
                idx = idx + 1
                continue 
            if not uint256(totalAccessories[arg2].field_1280):
                idx = 0
                while uint256(totalAccessories[arg2].field_1280) > idx:
                    uint256(stor[idx + sha3((7 * arg2) + ('name', 'totalAccessories', 0) + 5)].field_0) = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while uint256(totalAccessories[arg2].field_1280) > idx:
                    uint256(stor[s + sha3((7 * arg2) + ('name', 'totalAccessories', 0) + 5)].field_0) = uint256(stor[idx + sha3((7 * arg2) + ('name', 'totalAccessories', 0) + 5)].field_0)
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = uint256(totalAccessories[arg2].field_1280)
                while uint256(totalAccessories[arg2].field_1280) > idx:
                    uint256(stor[idx + sha3((7 * arg2) + ('name', 'totalAccessories', 0) + 5)].field_0) = 0
                    idx = idx + 1
                    continue 
        else:
            uint256(totalAccessories[arg2].field_512) = Mask(255, 1, (256 * not bool(totalAccessories[arg2].field_512)) - 1 and uint256(totalAccessories[arg2].field_512)) + 1
            if not Mask(255, 1, (256 * not bool(totalAccessories[arg2].field_512)) - 1 and uint256(totalAccessories[arg2].field_512)):
                idx = 0
                while stor[(7 * arg2) + ('name', 'totalAccessories', 0) + 2].length + 31 / 32 > idx:
                    uint256(stor[idx + sha3((7 * arg2) + ('name', 'totalAccessories', 0) + 2)].field_0) = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while stor[(7 * arg2) + ('name', 'totalAccessories', 0) + 2].length + 31 / 32 > idx:
                    uint256(stor[s + sha3((7 * arg2) + ('name', 'totalAccessories', 0) + 2)].field_0) = uint256(stor[idx + sha3((7 * arg2) + ('name', 'totalAccessories', 0) + 2)].field_0)
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = stor[(7 * arg2) + ('name', 'totalAccessories', 0) + 2].length + 31 / 32
                while stor[(7 * arg2) + ('name', 'totalAccessories', 0) + 2].length + 31 / 32 > idx:
                    uint256(stor[idx + sha3((7 * arg2) + ('name', 'totalAccessories', 0) + 2)].field_0) = 0
                    idx = idx + 1
                    continue 
            if not uint256(totalAccessories[arg2].field_1280):
                idx = 0
                while uint256(totalAccessories[arg2].field_1280) > idx:
                    uint256(stor[idx + sha3((7 * arg2) + ('name', 'totalAccessories', 0) + 5)].field_0) = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while uint256(totalAccessories[arg2].field_1280) > idx:
                    uint256(stor[s + sha3((7 * arg2) + ('name', 'totalAccessories', 0) + 5)].field_0) = uint256(stor[idx + sha3((7 * arg2) + ('name', 'totalAccessories', 0) + 5)].field_0)
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = uint256(totalAccessories[arg2].field_1280)
                while uint256(totalAccessories[arg2].field_1280) > idx:
                    uint256(stor[idx + sha3((7 * arg2) + ('name', 'totalAccessories', 0) + 5)].field_0) = 0
                    idx = idx + 1
                    continue 
    uint8(totalAccessories[arg2].field_1536) = uint8(bool(uint8(totalAccessories[arg2].field_1536)))
}

function changeName(string arg1, uint256 arg2) {
    require ownerOf[arg2] == msg.sender
    require arg2 < totalAccessories.length
    uint256(stor[sha3((7 * arg2) + ('name', 'totalAccessories', 0) + 1)][].field_0) = Array(len=arg1.length, data=arg1[all])
    require arg2 < totalAccessories.length
    if 31 >= stor[(7 * arg2) + ('name', 'totalAccessories', 0) + 1].length:
        idx = 0
        while stor[(7 * arg2) + ('name', 'totalAccessories', 0) + 1].length + 31 / 32 > idx:
            uint256(stor[idx + sha3((7 * arg2) + ('name', 'totalAccessories', 0) + 1)].field_0) = 0
            idx = idx + 1
            continue 
        if 31 >= stor[(7 * arg2) + ('name', 'totalAccessories', 0) + 2].length:
            idx = 0
            while stor[(7 * arg2) + ('name', 'totalAccessories', 0) + 2].length + 31 / 32 > idx:
                uint256(stor[idx + sha3((7 * arg2) + ('name', 'totalAccessories', 0) + 2)].field_0) = 0
                idx = idx + 1
                continue 
            if not uint256(totalAccessories[arg2].field_1280):
                idx = 0
                while uint256(totalAccessories[arg2].field_1280) > idx:
                    uint256(stor[idx + sha3((7 * arg2) + ('name', 'totalAccessories', 0) + 5)].field_0) = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while uint256(totalAccessories[arg2].field_1280) > idx:
                    uint256(stor[s + sha3((7 * arg2) + ('name', 'totalAccessories', 0) + 5)].field_0) = uint256(stor[idx + sha3((7 * arg2) + ('name', 'totalAccessories', 0) + 5)].field_0)
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = uint256(totalAccessories[arg2].field_1280)
                while uint256(totalAccessories[arg2].field_1280) > idx:
                    uint256(stor[idx + sha3((7 * arg2) + ('name', 'totalAccessories', 0) + 5)].field_0) = 0
                    idx = idx + 1
                    continue 
        else:
            uint256(totalAccessories[arg2].field_512) = Mask(255, 1, (256 * not bool(totalAccessories[arg2].field_512)) - 1 and uint256(totalAccessories[arg2].field_512)) + 1
            if not Mask(255, 1, (256 * not bool(totalAccessories[arg2].field_512)) - 1 and uint256(totalAccessories[arg2].field_512)):
                idx = 0
                while stor[(7 * arg2) + ('name', 'totalAccessories', 0) + 2].length + 31 / 32 > idx:
                    uint256(stor[idx + sha3((7 * arg2) + ('name', 'totalAccessories', 0) + 2)].field_0) = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while stor[(7 * arg2) + ('name', 'totalAccessories', 0) + 2].length + 31 / 32 > idx:
                    uint256(stor[s + sha3((7 * arg2) + ('name', 'totalAccessories', 0) + 2)].field_0) = uint256(stor[idx + sha3((7 * arg2) + ('name', 'totalAccessories', 0) + 2)].field_0)
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = stor[(7 * arg2) + ('name', 'totalAccessories', 0) + 2].length + 31 / 32
                while stor[(7 * arg2) + ('name', 'totalAccessories', 0) + 2].length + 31 / 32 > idx:
                    uint256(stor[idx + sha3((7 * arg2) + ('name', 'totalAccessories', 0) + 2)].field_0) = 0
                    idx = idx + 1
                    continue 
            if not uint256(totalAccessories[arg2].field_1280):
                idx = 0
                while uint256(totalAccessories[arg2].field_1280) > idx:
                    uint256(stor[idx + sha3((7 * arg2) + ('name', 'totalAccessories', 0) + 5)].field_0) = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while uint256(totalAccessories[arg2].field_1280) > idx:
                    uint256(stor[s + sha3((7 * arg2) + ('name', 'totalAccessories', 0) + 5)].field_0) = uint256(stor[idx + sha3((7 * arg2) + ('name', 'totalAccessories', 0) + 5)].field_0)
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = uint256(totalAccessories[arg2].field_1280)
                while uint256(totalAccessories[arg2].field_1280) > idx:
                    uint256(stor[idx + sha3((7 * arg2) + ('name', 'totalAccessories', 0) + 5)].field_0) = 0
                    idx = idx + 1
                    continue 
    else:
        uint256(totalAccessories[arg2].field_256) = Mask(255, 1, (256 * not bool(totalAccessories[arg2].field_256)) - 1 and uint256(totalAccessories[arg2].field_256)) + 1
        if not Mask(255, 1, (256 * not bool(totalAccessories[arg2].field_256)) - 1 and uint256(totalAccessories[arg2].field_256)):
            idx = 0
            while stor[(7 * arg2) + ('name', 'totalAccessories', 0) + 1].length + 31 / 32 > idx:
                uint256(stor[idx + sha3((7 * arg2) + ('name', 'totalAccessories', 0) + 1)].field_0) = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 0
            while stor[(7 * arg2) + ('name', 'totalAccessories', 0) + 1].length + 31 / 32 > idx:
                uint256(stor[s + sha3((7 * arg2) + ('name', 'totalAccessories', 0) + 1)].field_0) = uint256(stor[idx + sha3((7 * arg2) + ('name', 'totalAccessories', 0) + 1)].field_0)
                s = s + 1
                idx = idx + 1
                continue 
            idx = stor[(7 * arg2) + ('name', 'totalAccessories', 0) + 1].length + 31 / 32
            while stor[(7 * arg2) + ('name', 'totalAccessories', 0) + 1].length + 31 / 32 > idx:
                uint256(stor[idx + sha3((7 * arg2) + ('name', 'totalAccessories', 0) + 1)].field_0) = 0
                idx = idx + 1
                continue 
        if 31 >= stor[(7 * arg2) + ('name', 'totalAccessories', 0) + 2].length:
            idx = 0
            while stor[(7 * arg2) + ('name', 'totalAccessories', 0) + 2].length + 31 / 32 > idx:
                uint256(stor[idx + sha3((7 * arg2) + ('name', 'totalAccessories', 0) + 2)].field_0) = 0
                idx = idx + 1
                continue 
            if not uint256(totalAccessories[arg2].field_1280):
                idx = 0
                while uint256(totalAccessories[arg2].field_1280) > idx:
                    uint256(stor[idx + sha3((7 * arg2) + ('name', 'totalAccessories', 0) + 5)].field_0) = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while uint256(totalAccessories[arg2].field_1280) > idx:
                    uint256(stor[s + sha3((7 * arg2) + ('name', 'totalAccessories', 0) + 5)].field_0) = uint256(stor[idx + sha3((7 * arg2) + ('name', 'totalAccessories', 0) + 5)].field_0)
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = uint256(totalAccessories[arg2].field_1280)
                while uint256(totalAccessories[arg2].field_1280) > idx:
                    uint256(stor[idx + sha3((7 * arg2) + ('name', 'totalAccessories', 0) + 5)].field_0) = 0
                    idx = idx + 1
                    continue 
        else:
            uint256(totalAccessories[arg2].field_512) = Mask(255, 1, (256 * not bool(totalAccessories[arg2].field_512)) - 1 and uint256(totalAccessories[arg2].field_512)) + 1
            if not Mask(255, 1, (256 * not bool(totalAccessories[arg2].field_512)) - 1 and uint256(totalAccessories[arg2].field_512)):
                idx = 0
                while stor[(7 * arg2) + ('name', 'totalAccessories', 0) + 2].length + 31 / 32 > idx:
                    uint256(stor[idx + sha3((7 * arg2) + ('name', 'totalAccessories', 0) + 2)].field_0) = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while stor[(7 * arg2) + ('name', 'totalAccessories', 0) + 2].length + 31 / 32 > idx:
                    uint256(stor[s + sha3((7 * arg2) + ('name', 'totalAccessories', 0) + 2)].field_0) = uint256(stor[idx + sha3((7 * arg2) + ('name', 'totalAccessories', 0) + 2)].field_0)
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = stor[(7 * arg2) + ('name', 'totalAccessories', 0) + 2].length + 31 / 32
                while stor[(7 * arg2) + ('name', 'totalAccessories', 0) + 2].length + 31 / 32 > idx:
                    uint256(stor[idx + sha3((7 * arg2) + ('name', 'totalAccessories', 0) + 2)].field_0) = 0
                    idx = idx + 1
                    continue 
            if not uint256(totalAccessories[arg2].field_1280):
                idx = 0
                while uint256(totalAccessories[arg2].field_1280) > idx:
                    uint256(stor[idx + sha3((7 * arg2) + ('name', 'totalAccessories', 0) + 5)].field_0) = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while uint256(totalAccessories[arg2].field_1280) > idx:
                    uint256(stor[s + sha3((7 * arg2) + ('name', 'totalAccessories', 0) + 5)].field_0) = uint256(stor[idx + sha3((7 * arg2) + ('name', 'totalAccessories', 0) + 5)].field_0)
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = uint256(totalAccessories[arg2].field_1280)
                while uint256(totalAccessories[arg2].field_1280) > idx:
                    uint256(stor[idx + sha3((7 * arg2) + ('name', 'totalAccessories', 0) + 5)].field_0) = 0
                    idx = idx + 1
                    continue 
    uint8(totalAccessories[arg2].field_1536) = uint8(bool(uint8(totalAccessories[arg2].field_1536)))
}



}
