contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
array of uint256 stor2;
array of uint256 stor3;
uint8 stor4;
uint256 stor5;
uint256 stor8;
uint8 stor11; offset 16
uint8 stor11; offset 24
uint8 stor11; offset 32
uint16 stor11;
mapping of uint256 stor12;
uint8 stor16; offset 184
uint32 stor16; offset 160
address stor16;

function _fallback() payable {
    mem[128] = 'DHCToken 1.0'
    bool(stor1.length) = 0
    stor1.length.field_1 = 12
    stor1.length.field_8 = 'DHCToken 1.0' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor8 = 100000000000000 * 10^18
    uint16(stor11.field_0) = 10000
    uint8(stor11.field_16) = 10
    uint8(stor11.field_24) = 10
    uint8(stor11.field_32) = 0
    address(stor16.field_0) = stor0
    stor16.field_160 % 16777216 = 10^6
    uint8(stor16.field_184) = 0
    require not msg.value
    mem[160 len -21069] = code.data[21882 len -21069]
    stor0 = msg.sender
    stor12[address(msg.sender)] = mem[160]
    stor5 = mem[160]
    stor2[] = Array(len=mem[mem[192] + 160], data=mem[mem[192] + 192 len mem[mem[192] + 160]])
    stor3[] = Array(len=mem[mem[256] + 160], data=mem[mem[256] + 192 len mem[mem[256] + 160]])
    stor4 = mem[255 len 1]
    return code.data[813 len 21069]
}



// =====================  Runtime code  =====================


address owner;
array of uint256 standard;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint256 currentChallenge;
uint256 timeOfLastProof;
uint64 stor8;
uint256 difficulty;
uint256 sub_878cb89d;
uint256 sub_c75142b2;
uint8 stor11;
uint8 sub_a4857e34; offset 16
uint16 awardAmount;
uint16 sub_901dcea0; offset 24
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor14;
mapping of uint8 stor15;
uint16 stor16; offset 160
uint16 stor16; offset 176
uint32 stor16;
uint32 sub_482e29e3; offset 160
address sub_ee54aaaaAddress;

function proposals(uint256 arg1) {
    require arg1 < proposals.length
    mem[480] = uint256(proposals[arg1].field_0)
    idx = 480
    s = 0
    while proposals[arg1].length + 480 > idx + 32:
        mem[idx + 32] = uint256(proposals[(12 * arg1) + s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[proposals[arg1].length + (floor32(proposals[arg1].length - 1) + -proposals[arg1].length + 32 % 32) + 480] = stor[(12 * arg1) + ('name', 'proposals', 17) + 1].length
    mem[proposals[arg1].length + (floor32(proposals[arg1].length - 1) + -proposals[arg1].length + 32 % 32) + 512] = uint256(stor[sha3((12 * arg1) + ('name', 'proposals', 17) + 1)].field_0)
    idx = proposals[arg1].length + (floor32(proposals[arg1].length - 1) + -proposals[arg1].length + 32 % 32) + 512
    s = 0
    while proposals[arg1].length + (floor32(proposals[arg1].length - 1) + -proposals[arg1].length + 32 % 32) + stor[(12 * arg1) + ('name', 'proposals', 17) + 1].length + 512 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((12 * arg1) + ('name', 'proposals', 17) + 1)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=proposals[arg1].length, data=mem[480 len proposals[arg1].length + (floor32(proposals[arg1].length - 1) + -proposals[arg1].length + 32 % 32) + stor[(12 * arg1) + ('name', 'proposals', 17) + 1].length + (floor32(stor[(12 * arg1) + ('name', 'proposals', 17) + 1].length - 1) + -stor[(12 * arg1) + ('name', 'proposals', 17) + 1].length + 32 % 32) + 32]), 
           proposals[arg1].length + (floor32(proposals[arg1].length - 1) + -proposals[arg1].length + 32 % 32) + 384,
           uint256(proposals[arg1].field_512),
           bool(uint8(proposals[arg1].field_768)),
           bool(uint8(proposals[arg1].field_776)),
           uint256(proposals[arg1].field_1024),
           uint256(proposals[arg1].field_1280),
           uint256(proposals[arg1].field_1536),
           uint256(proposals[arg1].field_1792),
           uint256(proposals[arg1].field_2048),
           uint256(proposals[arg1].field_2304)
}

function name() {
    return name[0 len name.length]
}

function sub_14af5e11(?) {
    return bool(stor15[arg1])
}

function totalSupply() {
    return totalSupply
}

function difficulty() {
    return uint256(difficulty)
}

function decimals() {
    return decimals
}

function sub_482e29e3(?) {
    return sub_482e29e3
}

function currentChallenge() {
    return currentChallenge
}

function standard() {
    return standard[0 len standard.length]
}

function ballots(uint256 arg1) {
    require arg1 < sub_f1bf13c0.length
    mem[320] = uint256(sub_f1bf13c0[arg1].field_0)
    idx = 320
    s = 0
    while sub_f1bf13c0[arg1].length + 320 > idx + 32:
        mem[idx + 32] = uint256(sub_f1bf13c0[(8 * arg1) + s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[sub_f1bf13c0[arg1].length + (floor32(sub_f1bf13c0[arg1].length - 1) + -sub_f1bf13c0[arg1].length + 32 % 32) + 320] = stor[(8 * arg1) + ('name', 'sub_f1bf13c0', 18) + 1].length
    mem[sub_f1bf13c0[arg1].length + (floor32(sub_f1bf13c0[arg1].length - 1) + -sub_f1bf13c0[arg1].length + 32 % 32) + 352] = uint256(stor[sha3((8 * arg1) + ('name', 'sub_f1bf13c0', 18) + 1)].field_0)
    idx = sub_f1bf13c0[arg1].length + (floor32(sub_f1bf13c0[arg1].length - 1) + -sub_f1bf13c0[arg1].length + 32 % 32) + 352
    s = 0
    while sub_f1bf13c0[arg1].length + (floor32(sub_f1bf13c0[arg1].length - 1) + -sub_f1bf13c0[arg1].length + 32 % 32) + stor[(8 * arg1) + ('name', 'sub_f1bf13c0', 18) + 1].length + 352 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((8 * arg1) + ('name', 'sub_f1bf13c0', 18) + 1)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=sub_f1bf13c0[arg1].length, data=mem[320 len sub_f1bf13c0[arg1].length + (floor32(sub_f1bf13c0[arg1].length - 1) + -sub_f1bf13c0[arg1].length + 32 % 32) + stor[(8 * arg1) + ('name', 'sub_f1bf13c0', 18) + 1].length + (floor32(stor[(8 * arg1) + ('name', 'sub_f1bf13c0', 18) + 1].length - 1) + -stor[(8 * arg1) + ('name', 'sub_f1bf13c0', 18) + 1].length + 32 % 32) + 32]), 
           sub_f1bf13c0[arg1].length + (floor32(sub_f1bf13c0[arg1].length - 1) + -sub_f1bf13c0[arg1].length + 32 % 32) + 224,
           uint256(sub_f1bf13c0[arg1].field_512),
           bool(uint8(sub_f1bf13c0[arg1].field_768)),
           uint256(sub_f1bf13c0[arg1].field_1024),
           uint256(sub_f1bf13c0[arg1].field_1280)
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function timeOfLastProof() {
    return timeOfLastProof
}

function sub_878cb89d(?) {
    return sub_878cb89d
}

function owner() {
    return owner
}

function sub_901dcea0(?) {
    return sub_901dcea0
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_a4857e34(?) {
    return sub_a4857e34
}

function frozenAccount(address arg1) {
    return bool(stor14[arg1])
}

function sub_c75142b2(?) {
    return sub_c75142b2
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function awardAmount() {
    return awardAmount
}

function sub_ee54aaaa(?) {
    return sub_ee54aaaaAddress
}

function sub_f1bf13c0(?) {
    require arg1 < sub_f1bf13c0.length
    require arg2 < uint256(sub_f1bf13c0[arg1].field_1536)
    mem[160] = uint256(stor[sha3((4 * arg2) + sha3((8 * arg1) + ('name', 'sub_f1bf13c0', 18) + 6))].field_0)
    idx = 160
    s = 0
    while stor[(4 * arg2) + sha3((8 * arg1) + ('name', 'sub_f1bf13c0', 18) + 6)].length + 128 > idx:
        mem[idx + 32] = uint256(stor[s + sha3((4 * arg2) + sha3((8 * arg1) + ('name', 'sub_f1bf13c0', 18) + 6))].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=stor[(4 * arg2) + sha3((8 * arg1) + ('name', 'sub_f1bf13c0', 18) + 6)].length, data=mem[160 len stor[(4 * arg2) + sha3((8 * arg1) + ('name', 'sub_f1bf13c0', 18) + 6)].length]), 
           uint256(stor[(4 * arg2) + sha3((8 * arg1) + ('name', 'sub_f1bf13c0', 18) + 6)].field_256),
           uint256(stor[(4 * arg2) + sha3((8 * arg1) + ('name', 'sub_f1bf13c0', 18) + 6)].field_512)
}

function _fallback() payable {
    revert
}

function sub_88b50b8f(?) {
    stor15[address(arg1)] = uint8(arg2)
}

function changeOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function sub_3ecd7e40(?) {
    require msg.sender == owner
    sub_ee54aaaaAddress = arg1
}

function setDifficulty(uint256 arg1) {
    require msg.sender == owner
    uint256(difficulty) = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function sub_54f3bd19(?) {
    require msg.sender == owner
    sub_a4857e34 = arg1
    emit 0x94eb4272: stor11, sub_a4857e34
}

function sub_0239091a(?) {
    require msg.sender == owner
    awardAmount = arg1
    emit 0xf4583df4: awardAmount, awardAmount
}

function sub_883096df(?) {
    require msg.sender == owner
    sub_901dcea0 = arg1
    emit 0xf4583df4: awardAmount, sub_901dcea0
}

function freezeAccount(address arg1, bool arg2) {
    require msg.sender == owner
    stor14[address(arg1)] = uint8(arg2)
    emit FrozenFunds(address(arg1), arg2);
}

function sub_f28fab20(?) {
    require msg.sender == owner
    uint16(stor16.field_160) = arg1
    uint16(stor16.field_176) = 0
    emit 0xd5990a59: uint32(stor16.field_0), sub_482e29e3
}

function burn(uint256 arg1) {
    require msg.sender == owner
    require balanceOf[address(msg.sender)] >= arg1
    balanceOf[address(msg.sender)] -= arg1
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function mintToken(address arg1, uint256 arg2) {
    require msg.sender == owner
    balanceOf[address(arg1)] += arg2
    totalSupply += arg2
    emit Transfer(arg2, 0, this.address);
    emit Transfer(arg2, this.address, arg1);
}

function sub_0e3479a7(?) {
    require msg.sender == owner
    require sub_878cb89d - sub_c75142b2 >= arg1
    sub_878cb89d -= arg1
    balanceOf[address(msg.sender)] += arg1
    emit 0x5f581087: 0, arg1, sub_878cb89d
    emit Transfer(arg1, msg.sender, this.address);
}

function sub_333ffba9(?) {
    require msg.sender == owner
    require balanceOf[address(msg.sender)] >= arg1
    sub_878cb89d += arg1
    balanceOf[address(msg.sender)] -= arg1
    emit 0x5f581087: arg1, 0, sub_878cb89d
    emit Transfer(arg1, msg.sender, this.address);
}

function burnFrom(address arg1, uint256 arg2) {
    require msg.sender == owner
    require balanceOf[address(arg1)] >= arg2
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    balanceOf[address(arg1)] -= arg2
    totalSupply -= arg2
    emit Burn(arg2, arg1);
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    require ext_code.size(arg1)
    call arg1.receiveApproval(address rg1, uint256 rg2, address rg3, bytes rg4) with:
         gas gas_remaining - 710 wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require not stor14[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    if stor15[address(arg1)]:
        balanceOf[address(arg1)] -= arg2
        balanceOf[address(stor16.field_0)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require not stor14[address(arg1)]
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function proofOfWork(uint256 arg1) {
    require sub_878cb89d - sub_c75142b2 > 0
    require Mask(64, 192, sha3(arg1, currentChallenge)) >= Mask(64, 192, uint64(stor8))
    require block.timestamp - timeOfLastProof >= sub_901dcea0
    balanceOf[address(msg.sender)] += awardAmount
    sub_c75142b2 += awardAmount
    require block.timestamp - timeOfLastProof
    uint256(difficulty) = (60 * uint256(difficulty) * sub_a4857e34 / block.timestamp - timeOfLastProof) + 1
    timeOfLastProof = block.timestamp
    currentChallenge = sha3(arg1, currentChallenge, block.hash(block.number - 1))
    emit 0x9f989c7b: arg1, awardAmount, msg.sender
}

function sub_25e20189(?) {
    require balanceOf[address(msg.sender)] > 0
    require not stor14[address(msg.sender)]
    require arg1 < proposals.length
    require bool(uint8(stor[(12 * arg1) + ('name', 'proposals', 17) + 10][address(msg.sender)].field_0)) != 1
    require block.timestamp <= uint256(proposals[arg1].field_512)
    uint8(stor[(12 * arg1) + ('name', 'proposals', 17) + 10][address(msg.sender)].field_0) = 1
    uint256(proposals[arg1].field_1024)++
    uint256(proposals[arg1].field_2816)++
    if not uint256(proposals[arg1].field_2816) <= uint256(proposals[arg1].field_2816) + 1:
        idx = uint256(proposals[arg1].field_2816) + 1
        while uint256(proposals[arg1].field_2816) > idx:
            address(stor[idx + sha3((12 * arg1) + ('name', 'proposals', 17) + 11)].field_0) = 0
            uint8(stor[idx + sha3((12 * arg1) + ('name', 'proposals', 17) + 11)].field_160) = 0
            idx = idx + 1
            continue 
    require uint256(proposals[arg1].field_2816) < uint256(proposals[arg1].field_2816)
    address(stor[uint256(proposals[arg1].field_2816) + sha3((12 * arg1) + ('name', 'proposals', 17) + 11)].field_0) = msg.sender
    Mask(96, 0, stor[uint256(proposals[arg1].field_2816) + sha3((12 * arg1) + ('name', 'proposals', 17) + 11)].field_160) = Mask(96, 0, arg2)
    if arg2:
        uint256(proposals[arg1].field_1280)++
    emit 0xc59acf57: arg1, arg2, msg.sender, Array(len=arg3.length, data=arg3[all])
    return uint256(proposals[arg1].field_1024)
}

function sub_d54c29c0(?) {
    require msg.sender == owner
    require arg1 < sub_f1bf13c0.length
    uint256(sub_f1bf13c0[arg1].field_1536)++
    if not uint256(sub_f1bf13c0[arg1].field_1536) <= uint256(sub_f1bf13c0[arg1].field_1536) + 1:
        mem[0] = (8 * arg1) + sha3(18) + 6
        idx = 4 * uint256(sub_f1bf13c0[arg1].field_1536) + 1
        while sha3((8 * arg1) + sha3(18) + 6) + (4 * uint256(sub_f1bf13c0[arg1].field_1536)) > idx + sha3(mem[0]):
            uint256(stor[idx + sha3(mem[0])].field_0) = 0
            if 31 < stor[idx + sha3(mem[0])].length:
                s = sha3(idx + sha3(mem[0]))
                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > s:
                    uint256(stor[s].field_0) = 0
                    s = s + 1
                    continue 
            uint256(stor[idx + sha3(mem[0]) + 1].field_0) = 0
            uint256(stor[idx + sha3(mem[0]) + 2].field_0) = 0
            uint256(stor[idx + sha3(mem[0]) + 3].field_0) = 0
            mem[0] = idx + sha3(mem[0]) + 3
            s = sha3(idx + sha3(mem[0]) + 3)
            while sha3(idx + sha3(mem[0]) + 3) + uint256(stor[idx + sha3(mem[0]) + 3].field_0) > s:
                address(stor[s].field_0) = 0
                uint8(stor[s].field_160) = 0
                s = s + 1
                continue 
            idx = idx + 4
            continue 
    require uint256(sub_f1bf13c0[arg1].field_1536) < uint256(sub_f1bf13c0[arg1].field_1536)
    uint256(stor[sha3((4 * uint256(sub_f1bf13c0[arg1].field_1536)) + sha3((8 * arg1) + ('name', 'sub_f1bf13c0', 18) + 6))][].field_0) = Array(len=arg2.length, data=arg2[all])
    emit 0x3c7a7f3b: arg1, uint256(sub_f1bf13c0[arg1].field_1536), Array(len=arg2.length, data=arg2[all])
    return uint256(sub_f1bf13c0[arg1].field_1536)
}

function sub_ca8dd9ab(?) {
    require balanceOf[address(msg.sender)] > 0
    require not stor14[address(msg.sender)]
    require arg1 < sub_f1bf13c0.length
    require bool(uint8(stor[(8 * arg1) + ('name', 'sub_f1bf13c0', 18) + 7][address(msg.sender)].field_0)) != 1
    require block.timestamp <= uint256(sub_f1bf13c0[arg1].field_512)
    uint8(stor[(8 * arg1) + ('name', 'sub_f1bf13c0', 18) + 7][address(msg.sender)].field_0) = 1
    require arg2 < uint256(sub_f1bf13c0[arg1].field_1536)
    uint256(stor[(4 * arg2) + sha3((8 * arg1) + ('name', 'sub_f1bf13c0', 18) + 6)].field_256)++
    uint256(sub_f1bf13c0[arg1].field_1024)++
    uint256(stor[(4 * arg2) + sha3((8 * arg1) + ('name', 'sub_f1bf13c0', 18) + 6)].field_768)++
    if not uint256(stor[(4 * arg2) + sha3((8 * arg1) + ('name', 'sub_f1bf13c0', 18) + 6)].field_768) <= uint256(stor[(4 * arg2) + sha3((8 * arg1) + ('name', 'sub_f1bf13c0', 18) + 6)].field_768) + 1:
        idx = uint256(stor[(4 * arg2) + sha3((8 * arg1) + ('name', 'sub_f1bf13c0', 18) + 6)].field_768) + 1
        while uint256(stor[(4 * arg2) + sha3((8 * arg1) + ('name', 'sub_f1bf13c0', 18) + 6)].field_768) > idx:
            address(stor[idx + sha3((4 * arg2) + sha3((8 * arg1) + ('name', 'sub_f1bf13c0', 18) + 6) + 3)].field_0) = 0
            uint8(stor[idx + sha3((4 * arg2) + sha3((8 * arg1) + ('name', 'sub_f1bf13c0', 18) + 6) + 3)].field_160) = 0
            idx = idx + 1
            continue 
    address(stor[uint256(stor[(4 * arg2) + sha3((8 * arg1) + ('name', 'sub_f1bf13c0', 18) + 6)].field_768) + sha3((4 * arg2) + sha3((8 * arg1) + ('name', 'sub_f1bf13c0', 18) + 6) + 3)].field_0) = msg.sender
    Mask(96, 0, stor[uint256(stor[(4 * arg2) + sha3((8 * arg1) + ('name', 'sub_f1bf13c0', 18) + 6)].field_768) + sha3((4 * arg2) + sha3((8 * arg1) + ('name', 'sub_f1bf13c0', 18) + 6) + 3)].field_160) = 1
    emit 0xe7890846: arg1, arg2, msg.sender, Array(len=arg3.length, data=arg3[all])
    return uint256(sub_f1bf13c0[arg1].field_1024)
}

function sub_2335370c(?) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = arg3.length
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    require msg.sender == owner
    require arg1 < sub_f1bf13c0.length
    uint256(sub_f1bf13c0[arg1][].field_0) = Array(len=arg2.length, data=arg2[all])
    uint256(stor[sha3((8 * arg1) + ('name', 'sub_f1bf13c0', 18) + 1)][].field_0) = Array(len=arg3.length, data=arg3[all])
    uint256(sub_f1bf13c0[arg1].field_512) = arg4
    uint256(sub_f1bf13c0[arg1].field_1280) = arg5
    uint8(sub_f1bf13c0[arg1].field_768) = 0
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = arg1
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 352 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 352] = arg3.length
    mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 384 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        emit 0xea58c889: arg1, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 352 len arg3.length + arg2.length + -ceil32(arg2.length) + 32]), arg2.length + 192, arg4, arg5
    else:
        mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 384] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 416 len arg3.length % 32]
        emit 0xea58c889: arg1, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 352 len floor32(arg3.length) + arg2.length + -ceil32(arg2.length) + 64]), arg2.length + 192, arg4, arg5
}

function sub_d42a601e(?) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = arg3.length
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    require msg.sender == owner
    require arg1 < proposals.length
    uint256(proposals[arg1][].field_0) = Array(len=arg2.length, data=arg2[all])
    uint256(stor[sha3((12 * arg1) + ('name', 'proposals', 17) + 1)][].field_0) = Array(len=arg3.length, data=arg3[all])
    uint256(proposals[arg1].field_512) = arg4
    uint256(proposals[arg1].field_2048) = arg5
    uint256(proposals[arg1].field_2304) = arg6
    uint8(proposals[arg1].field_768) = 0
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = arg1
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 384 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 384] = arg3.length
    mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 416 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        emit 0x17c19df5: arg1, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 384 len arg3.length + arg2.length + -ceil32(arg2.length) + 32]), arg2.length + 224, arg4, arg5, arg6
    else:
        mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 416] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 448 len arg3.length % 32]
        emit 0x17c19df5: arg1, Array(len=arg2.length, data=Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 384 len floor32(arg3.length) + arg2.length + -ceil32(arg2.length) + 64]), arg2.length + 224, arg4, arg5, arg6
}

function proposalResult(uint256 arg1) {
    require balanceOf[address(msg.sender)] > 0
    require arg1 < proposals.length
    require block.timestamp >= uint256(proposals[arg1].field_512)
    require not uint8(proposals[arg1].field_768)
    require uint256(proposals[arg1].field_1024) >= uint256(proposals[arg1].field_2048)
    idx = 0
    while idx < uint256(proposals[arg1].field_2816):
        require idx < uint256(proposals[arg1].field_2816)
        mem[0] = address(stor[idx + sha3((12 * arg1) + ('name', 'proposals', 17) + 11)].field_0)
        mem[32] = 12
        require sub_482e29e3
        if bool(uint8(stor[idx + sha3((12 * arg1) + ('name', 'proposals', 17) + 11)].field_160)) != 1:
            uint256(proposals[arg1].field_1792) += balanceOf[address(stor[idx + sha3((12 * arg1) + ('name', 'stor17', 17) + 11)].field_0)] / sub_482e29e3
        else:
            uint256(proposals[arg1].field_1536) += balanceOf[address(stor[idx + sha3((12 * arg1) + ('name', 'stor17', 17) + 11)].field_0)] / sub_482e29e3
        idx = idx + 1
        continue 
    if uint256(proposals[arg1].field_1280) <= uint256(proposals[arg1].field_2304):
        Mask(248, 0, proposals[arg1].field_776) = 0
        mem[352] = uint256(proposals[arg1].field_0)
        idx = 352
        s = 0
        while proposals[arg1].length + 352 > idx + 32:
            mem[idx + 32] = uint256(proposals[(12 * arg1) + s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
    else:
        if uint256(proposals[arg1].field_1536) < uint256(proposals[arg1].field_1792):
            Mask(248, 0, proposals[arg1].field_776) = 0
        else:
            Mask(248, 0, proposals[arg1].field_776) = 1
        mem[352] = uint256(proposals[arg1].field_0)
        s = 352
        t = 0
        while proposals[arg1].length + 352 > s + 32:
            mem[s + 32] = uint256(proposals[(12 * arg1) + t].field_256)
            s = s + 32
            t = t + 1
            continue 
    emit 0xed05a77a: arg1, Array(len=proposals[arg1].length, data=mem[352 len proposals[arg1].length + (floor32(proposals[arg1].length - 1) + -proposals[arg1].length + 32 % 32)]), uint256(proposals[arg1].field_1280), uint256(proposals[arg1].field_1024), uint256(proposals[arg1].field_1536), uint256(proposals[arg1].field_1792), bool(uint8(proposals[arg1].field_776))
}

function sub_518d9fca(?) {
    mem[64] = 128
    mem[96] = 0
    mem[32] = 12
    require balanceOf[address(msg.sender)] > 0
    require arg1 < sub_f1bf13c0.length
    mem[0] = 18
    require block.timestamp >= uint256(sub_f1bf13c0[arg1].field_512)
    require not uint8(sub_f1bf13c0[arg1].field_768)
    require uint256(sub_f1bf13c0[arg1].field_1024) >= uint256(sub_f1bf13c0[arg1].field_1280)
    idx = 0
    s = 96
    t = 0
    while idx < uint256(sub_f1bf13c0[arg1].field_1536):
        u = var29001
        while u < uint256(stor[(4 * idx) + sha3((8 * arg1) + ('name', 'sub_f1bf13c0', 18) + 6)].field_768):
            require idx < uint256(sub_f1bf13c0[arg1].field_1536)
            require u < uint256(stor[(4 * idx) + sha3((8 * arg1) + ('name', 'sub_f1bf13c0', 18) + 6)].field_768)
            mem[32] = 12
            require sub_482e29e3
            require idx < uint256(sub_f1bf13c0[arg1].field_1536)
            uint256(stor[(4 * idx) + sha3((8 * arg1) + ('name', 'sub_f1bf13c0', 18) + 6)].field_512) = balanceOf[address(stor[u + sha3((4 * idx) + sha3((8 * arg1) + ('name', 'stor18', 18) + 6) + 3)].field_0)] / sub_482e29e3
            mem[0] = (8 * arg1) + sha3(18) + 6
            u = u + 1
            continue 
        require idx < uint256(sub_f1bf13c0[arg1].field_1536)
        mem[0] = (8 * arg1) + sha3(18) + 6
        if uint256(stor[(4 * idx) + sha3((8 * arg1) + ('name', 'sub_f1bf13c0', 18) + 6)].field_512) <= t:
            idx = idx + 1
            s = s
            t = t
            continue 
        require idx < uint256(sub_f1bf13c0[arg1].field_1536)
        mem[0] = (8 * arg1) + sha3(18) + 6
        _60 = mem[64]
        mem[64] = mem[64] + ceil32(stor[(4 * idx) + sha3((8 * arg1) + ('name', 'sub_f1bf13c0', 18) + 6)].length) + 32
        mem[_60] = stor[(4 * idx) + sha3((8 * arg1) + ('name', 'sub_f1bf13c0', 18) + 6)].length
        mem[0] = (4 * idx) + sha3((8 * arg1) + sha3(18) + 6)
        mem[_60 + 32] = uint256(stor[sha3((4 * idx) + sha3((8 * arg1) + ('name', 'sub_f1bf13c0', 18) + 6))].field_0)
        s = _60 + 32
        t = sha3(mem[0])
        while _60 + stor[(4 * idx) + sha3((8 * arg1) + ('name', 'sub_f1bf13c0', 18) + 6)].length > s:
            mem[s + 32] = standard[t]
            s = s + 32
            t = t + 1
            continue 
        idx = idx + 1
        s = _60
        t = uint256(stor[(4 * idx) + sha3((8 * arg1) + ('name', 'sub_f1bf13c0', 18) + 6)].field_512)
        continue 
    uint8(sub_f1bf13c0[arg1].field_768) = 1
    _21 = mem[64]
    mem[mem[64]] = arg1
    mem[mem[64] + 32] = 0
    mem[mem[64] + 96] = t
    mem[mem[64] + 64] = 128
    mem[_21 + 128] = mem[s]
    _23 = mem[s]
    mem[_21 + 160 len ceil32(mem[s])] = mem[s + 32 len ceil32(mem[s])]
    if not _23 % 32:
        emit 0x31f2224b: mem[mem[64] len _23 + _21 + -mem[64] + 160]
    else:
        mem[floor32(_23) + _21 + 160] = mem[floor32(_23) + _21 + -(_23 % 32) + 192 len _23 % 32]
        emit 0x31f2224b: mem[mem[64] len floor32(_23) + _21 + -mem[64] + 192]
}

function sub_cfe5799b(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    require msg.sender == owner
    proposals.length++
    if not proposals.length <= proposals.length + 1:
        mem[0] = 17
        idx = (12 * proposals.length) + 12
        while sha3(17) + (12 * proposals.length) > idx + sha3(mem[0]):
            uint256(stor[idx + sha3(mem[0])].field_0) = 0
            if 31 >= stor[idx + sha3(mem[0])].length:
                uint256(stor[idx + sha3(mem[0]) + 1].field_0) = 0
                if 31 < stor[idx + sha3(mem[0]) + 1].length:
                    s = sha3(idx + sha3(mem[0]) + 1)
                    while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                        uint256(stor[s].field_0) = 0
                        s = s + 1
                        continue 
                uint256(stor[idx + sha3(mem[0]) + 2].field_0) = 0
                uint8(stor[idx + sha3(mem[0]) + 3].field_0) = 0
                uint8(stor[idx + sha3(mem[0]) + 3].field_8) = 0
                uint256(stor[idx + sha3(mem[0]) + 4].field_0) = 0
                uint256(stor[idx + sha3(mem[0]) + 5].field_0) = 0
                uint256(stor[idx + sha3(mem[0]) + 6].field_0) = 0
                uint256(stor[idx + sha3(mem[0]) + 7].field_0) = 0
                uint256(stor[idx + sha3(mem[0]) + 8].field_0) = 0
                uint256(stor[idx + sha3(mem[0]) + 9].field_0) = 0
                uint256(stor[idx + sha3(mem[0]) + 11].field_0) = 0
                mem[0] = idx + sha3(mem[0]) + 11
                s = sha3(idx + sha3(mem[0]) + 11)
                while sha3(idx + sha3(mem[0]) + 11) + uint256(stor[idx + sha3(mem[0]) + 11].field_0) > s:
                    address(stor[s].field_0) = 0
                    uint8(stor[s].field_160) = 0
                    s = s + 1
                    continue 
                idx = idx + 12
                continue 
            s = sha3(idx + sha3(mem[0]))
            while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > s:
                uint256(stor[s].field_0) = 0
                s = s + 1
                continue 
            uint256(stor[idx + sha3(mem[0]) + 1].field_0) = 0
            if 31 >= stor[idx + sha3(mem[0]) + 1].length:
                uint256(stor[idx + sha3(mem[0]) + 2].field_0) = 0
                uint8(stor[idx + sha3(mem[0]) + 3].field_0) = 0
                uint8(stor[idx + sha3(mem[0]) + 3].field_8) = 0
                uint256(stor[idx + sha3(mem[0]) + 4].field_0) = 0
                uint256(stor[idx + sha3(mem[0]) + 5].field_0) = 0
                uint256(stor[idx + sha3(mem[0]) + 6].field_0) = 0
                uint256(stor[idx + sha3(mem[0]) + 7].field_0) = 0
                uint256(stor[idx + sha3(mem[0]) + 8].field_0) = 0
                uint256(stor[idx + sha3(mem[0]) + 9].field_0) = 0
                uint256(stor[idx + sha3(mem[0]) + 11].field_0) = 0
                mem[0] = idx + sha3(mem[0]) + 11
                s = sha3(idx + sha3(mem[0]) + 11)
                while sha3(idx + sha3(mem[0]) + 11) + uint256(stor[idx + sha3(mem[0]) + 11].field_0) > s:
                    address(stor[s].field_0) = 0
                    uint8(stor[s].field_160) = 0
                    s = s + 1
                    continue 
                idx = idx + 12
                continue 
            s = sha3(s + sha3(mem[0]) + 1)
            while sha3(s + sha3(mem[0]) + 1) + (stor[s + sha3(mem[0]) + 1].length + 31 / 32) > s + sha3(mem[0]):
                uint256(stor[s + sha3(mem[0])].field_0) = 0
                s = s + 1
                continue 
            uint256(stor[s + sha3(mem[0]) + 2].field_0) = 0
            uint8(stor[s + sha3(mem[0]) + 3].field_0) = 0
            uint8(stor[s + sha3(mem[0]) + 3].field_8) = 0
            uint256(stor[s + sha3(mem[0]) + 4].field_0) = 0
            uint256(stor[s + sha3(mem[0]) + 5].field_0) = 0
            uint256(stor[s + sha3(mem[0]) + 6].field_0) = 0
            uint256(stor[s + sha3(mem[0]) + 7].field_0) = 0
            uint256(stor[s + sha3(mem[0]) + 8].field_0) = 0
            uint256(stor[s + sha3(mem[0]) + 9].field_0) = 0
            uint256(stor[s + sha3(mem[0]) + 11].field_0) = 0
            mem[0] = s + sha3(mem[0]) + 11
            t = sha3(s + sha3(mem[0]) + 11)
            while sha3(s + sha3(mem[0]) + 11) + uint256(stor[s + sha3(mem[0]) + 11].field_0) > t:
                address(stor[t].field_0) = 0
                uint8(stor[t].field_160) = 0
                t = t + 1
                continue 
            s = s + 12
            continue 
    require proposals.length < proposals.length
    uint256(proposals[proposals.length][].field_0) = Array(len=arg1.length, data=arg1[all])
    uint256(stor[sha3((12 * proposals.length) + ('name', 'proposals', 17) + 1)][].field_0) = Array(len=arg2.length, data=arg2[all])
    uint256(proposals[proposals.length].field_512) = arg3
    uint8(proposals[proposals.length].field_768) = 0
    Mask(248, 0, proposals[proposals.length].field_776) = 0
    uint256(proposals[proposals.length].field_1024) = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = proposals.length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 384 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 384] = arg2.length
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 416 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        emit 0xaf192bdc: proposals.length, Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 384 len arg2.length + arg1.length + -ceil32(arg1.length) + 32]), arg1.length + 224, arg3, arg4, arg5
    else:
        mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 416] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 448 len arg2.length % 32]
        emit 0xaf192bdc: proposals.length, Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 384 len floor32(arg2.length) + arg1.length + -ceil32(arg1.length) + 64]), arg1.length + 224, arg3, arg4, arg5
    return proposals.length
}

function sub_a340c1d7(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    require msg.sender == owner
    sub_f1bf13c0.length++
    if not sub_f1bf13c0.length <= sub_f1bf13c0.length + 1:
        mem[0] = 18
        idx = 8 * sub_f1bf13c0.length + 1
        while sha3(18) + (8 * sub_f1bf13c0.length) > idx + sha3(mem[0]):
            uint256(stor[idx + sha3(mem[0])].field_0) = 0
            if 31 >= stor[idx + sha3(mem[0])].length:
                uint256(stor[idx + sha3(mem[0]) + 1].field_0) = 0
                if 31 < stor[idx + sha3(mem[0]) + 1].length:
                    s = sha3(idx + sha3(mem[0]) + 1)
                    while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                        uint256(stor[s].field_0) = 0
                        s = s + 1
                        continue 
                uint256(stor[idx + sha3(mem[0]) + 2].field_0) = 0
                uint8(stor[idx + sha3(mem[0]) + 3].field_0) = 0
                uint256(stor[idx + sha3(mem[0]) + 4].field_0) = 0
                uint256(stor[idx + sha3(mem[0]) + 5].field_0) = 0
                uint256(stor[idx + sha3(mem[0]) + 6].field_0) = 0
                mem[0] = idx + sha3(mem[0]) + 6
                s = sha3(mem[0])
                while sha3(idx + sha3(mem[0]) + 6) + (4 * uint256(stor[idx + sha3(mem[0]) + 6].field_0)) > s:
                    uint256(stor[s].field_0) = 0
                    if 31 < stor[s].length:
                        t = sha3(s)
                        while sha3(s) + (stor[s].length + 31 / 32) > t:
                            uint256(stor[t].field_0) = 0
                            t = t + 1
                            continue 
                    standard[s] = 0
                    name[s] = 0
                    symbol[s] = 0
                    mem[0] = s + 3
                    t = sha3(s + 3)
                    while sha3(s + 3) + symbol[s] > t:
                        address(stor[t].field_0) = 0
                        uint8(stor[t].field_160) = 0
                        t = t + 1
                        continue 
                    s = s + 4
                    continue 
                idx = idx + 8
                continue 
            s = sha3(idx + sha3(mem[0]))
            while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > s:
                uint256(stor[s].field_0) = 0
                s = s + 1
                continue 
            uint256(stor[idx + sha3(mem[0]) + 1].field_0) = 0
            if 31 >= stor[idx + sha3(mem[0]) + 1].length:
                uint256(stor[idx + sha3(mem[0]) + 2].field_0) = 0
                uint8(stor[idx + sha3(mem[0]) + 3].field_0) = 0
                uint256(stor[idx + sha3(mem[0]) + 4].field_0) = 0
                uint256(stor[idx + sha3(mem[0]) + 5].field_0) = 0
                uint256(stor[idx + sha3(mem[0]) + 6].field_0) = 0
                mem[0] = idx + sha3(mem[0]) + 6
                s = sha3(mem[0])
                while sha3(idx + sha3(mem[0]) + 6) + (4 * uint256(stor[idx + sha3(mem[0]) + 6].field_0)) > s:
                    uint256(stor[s].field_0) = 0
                    if 31 < stor[s].length:
                        t = sha3(s)
                        while sha3(s) + (stor[s].length + 31 / 32) > t:
                            uint256(stor[t].field_0) = 0
                            t = t + 1
                            continue 
                    standard[s] = 0
                    name[s] = 0
                    symbol[s] = 0
                    mem[0] = s + 3
                    t = sha3(s + 3)
                    while sha3(s + 3) + symbol[s] > t:
                        address(stor[t].field_0) = 0
                        uint8(stor[t].field_160) = 0
                        t = t + 1
                        continue 
                    s = s + 4
                    continue 
                idx = idx + 8
                continue 
            s = sha3(s + sha3(mem[0]) + 1)
            while sha3(s + sha3(mem[0]) + 1) + (stor[s + sha3(mem[0]) + 1].length + 31 / 32) > s + sha3(mem[0]):
                uint256(stor[s + sha3(mem[0])].field_0) = 0
                s = s + 1
                continue 
            uint256(stor[s + sha3(mem[0]) + 2].field_0) = 0
            uint8(stor[s + sha3(mem[0]) + 3].field_0) = 0
            uint256(stor[s + sha3(mem[0]) + 4].field_0) = 0
            uint256(stor[s + sha3(mem[0]) + 5].field_0) = 0
            uint256(stor[s + sha3(mem[0]) + 6].field_0) = 0
            mem[0] = s + sha3(mem[0]) + 6
            t = sha3(mem[0])
            while sha3(s + sha3(mem[0]) + 6) + (4 * uint256(stor[s + sha3(mem[0]) + 6].field_0)) > t:
                uint256(stor[t].field_0) = 0
                if 31 < stor[t].length:
                    s = sha3(t)
                    while sha3(t) + (stor[t].length + 31 / 32) > s:
                        uint256(stor[s].field_0) = 0
                        s = s + 1
                        continue 
                standard[t] = 0
                name[t] = 0
                symbol[t] = 0
                mem[0] = t + 3
                s = sha3(t + 3)
                while sha3(t + 3) + symbol[t] > s:
                    address(stor[s].field_0) = 0
                    uint8(stor[s].field_160) = 0
                    s = s + 1
                    continue 
                t = t + 4
                continue 
            s = s + 8
            continue 
    require sub_f1bf13c0.length < sub_f1bf13c0.length
    uint256(sub_f1bf13c0[sub_f1bf13c0.length][].field_0) = Array(len=arg1.length, data=arg1[all])
    uint256(stor[sha3((8 * sub_f1bf13c0.length) + ('name', 'sub_f1bf13c0', 18) + 1)][].field_0) = Array(len=arg2.length, data=arg2[all])
    uint256(sub_f1bf13c0[sub_f1bf13c0.length].field_512) = arg3
    uint256(sub_f1bf13c0[sub_f1bf13c0.length].field_1280) = arg4
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = sub_f1bf13c0.length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 352 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 352] = arg2.length
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 384 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        emit 0x7ab68457: sub_f1bf13c0.length, Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 352 len arg2.length + arg1.length + -ceil32(arg1.length) + 32]), arg1.length + 192, arg3, arg4
    else:
        mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 384] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 416 len arg2.length % 32]
        emit 0x7ab68457: sub_f1bf13c0.length, Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 352 len floor32(arg2.length) + arg1.length + -ceil32(arg1.length) + 64]), arg1.length + 192, arg3, arg4
    return sub_f1bf13c0.length
}



}
