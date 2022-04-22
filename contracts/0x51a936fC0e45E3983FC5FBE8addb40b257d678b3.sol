contract main {


// =======================  Init code  ======================


#
#  - _fallback()
#


// =====================  Runtime code  =====================


#
#  - sub_145c54dd(?)
#  - sign()
#
address owner;
array of uint256 partner1;
array of uint256 partner2;
uint256 sub_91f8bb6c;
uint256 marriageStatus;
array of uint256 sub_ca029856;
array of uint256 sub_75fdbeae;
array of uint256 sub_cb57ed55;
array of uint256 sub_1d13b65b;
address partner1_address;
address partner2_address;
array of uint256 partner1_vows;
array of uint256 partner2_vows;
uint8 stor13;
uint8 stor13; offset 8
uint8 stor13; offset 16
array of uint256 sub_d3f501e7;
array of uint256 sub_ac0efbe6;
array of uint256 officiant;
array of uint256 sub_39046e8b;
array of uint256 location;
array of uint256 lifeEvents;

function partner1_address() {
    return partner1_address
}

function sub_1d13b65b(?) {
    return sub_1d13b65b[0 len sub_1d13b65b.length]
}

function sub_39046e8b(?) {
    return uint256(sub_39046e8b[0 len sub_39046e8b.length])
}

function location() {
    return uint256(location[0 len location.length])
}

function sub_75fdbeae(?) {
    return sub_75fdbeae[0 len sub_75fdbeae.length]
}

function officiant() {
    return uint256(officiant[0 len officiant.length])
}

function partner2_signed() {
    return bool(uint8(stor13.field_8))
}

function lifeEvents(uint256 arg1) {
    require arg1 < lifeEvents.length
    mem[256] = stor[sha3((4 * arg1) + ('name', 'lifeEvents', 19) + 1)].field_0
    idx = 256
    s = 0
    while stor[(4 * arg1) + ('name', 'lifeEvents', 19) + 1].length + 256 > idx + 32:
        mem[idx + 32] = stor[s + sha3((4 * arg1) + ('name', 'lifeEvents', 19) + 1)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[stor[(4 * arg1) + ('name', 'lifeEvents', 19) + 1].length + (floor32(stor[(4 * arg1) + ('name', 'lifeEvents', 19) + 1].length - 1) + -stor[(4 * arg1) + ('name', 'lifeEvents', 19) + 1].length + 32 % 32) + 256] = stor[(4 * arg1) + ('name', 'lifeEvents', 19) + 2].length
    mem[stor[(4 * arg1) + ('name', 'lifeEvents', 19) + 1].length + (floor32(stor[(4 * arg1) + ('name', 'lifeEvents', 19) + 1].length - 1) + -stor[(4 * arg1) + ('name', 'lifeEvents', 19) + 1].length + 32 % 32) + 288] = stor[sha3((4 * arg1) + ('name', 'lifeEvents', 19) + 2)].field_0
    idx = stor[(4 * arg1) + ('name', 'lifeEvents', 19) + 1].length + (floor32(stor[(4 * arg1) + ('name', 'lifeEvents', 19) + 1].length - 1) + -stor[(4 * arg1) + ('name', 'lifeEvents', 19) + 1].length + 32 % 32) + 288
    s = 0
    while stor[(4 * arg1) + ('name', 'lifeEvents', 19) + 1].length + (floor32(stor[(4 * arg1) + ('name', 'lifeEvents', 19) + 1].length - 1) + -stor[(4 * arg1) + ('name', 'lifeEvents', 19) + 1].length + 32 % 32) + stor[(4 * arg1) + ('name', 'lifeEvents', 19) + 2].length + 288 > idx + 32:
        mem[idx + 32] = stor[s + sha3((4 * arg1) + ('name', 'lifeEvents', 19) + 2)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[stor[(4 * arg1) + ('name', 'lifeEvents', 19) + 1].length + (floor32(stor[(4 * arg1) + ('name', 'lifeEvents', 19) + 1].length - 1) + -stor[(4 * arg1) + ('name', 'lifeEvents', 19) + 1].length + 32 % 32) + stor[(4 * arg1) + ('name', 'lifeEvents', 19) + 2].length + (floor32(stor[(4 * arg1) + ('name', 'lifeEvents', 19) + 2].length - 1) + -stor[(4 * arg1) + ('name', 'lifeEvents', 19) + 2].length + 32 % 32) + 320] = stor[sha3((4 * arg1) + ('name', 'lifeEvents', 19) + 3)].field_0
    idx = stor[(4 * arg1) + ('name', 'lifeEvents', 19) + 1].length + (floor32(stor[(4 * arg1) + ('name', 'lifeEvents', 19) + 1].length - 1) + -stor[(4 * arg1) + ('name', 'lifeEvents', 19) + 1].length + 32 % 32) + stor[(4 * arg1) + ('name', 'lifeEvents', 19) + 2].length + (floor32(stor[(4 * arg1) + ('name', 'lifeEvents', 19) + 2].length - 1) + -stor[(4 * arg1) + ('name', 'lifeEvents', 19) + 2].length + 32 % 32) + 320
    s = 0
    while stor[(4 * arg1) + ('name', 'lifeEvents', 19) + 1].length + (floor32(stor[(4 * arg1) + ('name', 'lifeEvents', 19) + 1].length - 1) + -stor[(4 * arg1) + ('name', 'lifeEvents', 19) + 1].length + 32 % 32) + stor[(4 * arg1) + ('name', 'lifeEvents', 19) + 2].length + (floor32(stor[(4 * arg1) + ('name', 'lifeEvents', 19) + 2].length - 1) + -stor[(4 * arg1) + ('name', 'lifeEvents', 19) + 2].length + 32 % 32) + stor[(4 * arg1) + ('name', 'lifeEvents', 19) + 3].length + 320 > idx + 32:
        mem[idx + 32] = stor[s + sha3((4 * arg1) + ('name', 'lifeEvents', 19) + 3)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return lifeEvents[arg1].field_0, 
           Array(len=stor[(4 * arg1) + ('name', 'lifeEvents', 19) + 1].length, data=mem[256 len stor[(4 * arg1) + ('name', 'lifeEvents', 19) + 1].length + (floor32(stor[(4 * arg1) + ('name', 'lifeEvents', 19) + 1].length - 1) + -stor[(4 * arg1) + ('name', 'lifeEvents', 19) + 1].length + 32 % 32) + stor[(4 * arg1) + ('name', 'lifeEvents', 19) + 2].length + (floor32(stor[(4 * arg1) + ('name', 'lifeEvents', 19) + 2].length - 1) + -stor[(4 * arg1) + ('name', 'lifeEvents', 19) + 2].length + 32 % 32) + 32], stor[(4 * arg1) + ('name', 'lifeEvents', 19) + 3].length, mem[stor[(4 * arg1) + ('name', 'lifeEvents', 19) + 1].length + (floor32(stor[(4 * arg1) + ('name', 'lifeEvents', 19) + 1].length - 1) + -stor[(4 * arg1) + ('name', 'lifeEvents', 19) + 1].length + 32 % 32) + stor[(4 * arg1) + ('name', 'lifeEvents', 19) + 2].length + (floor32(stor[(4 * arg1) + ('name', 'lifeEvents', 19) + 2].length - 1) + -stor[(4 * arg1) + ('name', 'lifeEvents', 19) + 2].length + 32 % 32) + 320 len stor[(4 * arg1) + ('name', 'lifeEvents', 19) + 3].length + (floor32(stor[(4 * arg1) + ('name', 'lifeEvents', 19) + 3].length - 1) + -stor[(4 * arg1) + ('name', 'lifeEvents', 19) + 3].length + 32 % 32)]),
           stor[(4 * arg1) + ('name', 'lifeEvents', 19) + 1].length + (floor32(stor[(4 * arg1) + ('name', 'lifeEvents', 19) + 1].length - 1) + -stor[(4 * arg1) + ('name', 'lifeEvents', 19) + 1].length + 32 % 32) + 160,
           stor[(4 * arg1) + ('name', 'lifeEvents', 19) + 1].length + (floor32(stor[(4 * arg1) + ('name', 'lifeEvents', 19) + 1].length - 1) + -stor[(4 * arg1) + ('name', 'lifeEvents', 19) + 1].length + 32 % 32) + stor[(4 * arg1) + ('name', 'lifeEvents', 19) + 2].length + (floor32(stor[(4 * arg1) + ('name', 'lifeEvents', 19) + 2].length - 1) + -stor[(4 * arg1) + ('name', 'lifeEvents', 19) + 2].length + 32 % 32) + 192
}

function partner2() {
    return partner2[0 len partner2.length]
}

function owner() {
    return owner
}

function sub_91f8bb6c(?) {
    return sub_91f8bb6c
}

function partner1_signed() {
    return bool(uint8(stor13.field_0))
}

function partner2_address() {
    return partner2_address
}

function partner1() {
    return partner1[0 len partner1.length]
}

function sub_ac0efbe6(?) {
    return uint256(sub_ac0efbe6[0 len sub_ac0efbe6.length])
}

function is_signed() {
    return bool(uint8(stor13.field_16))
}

function sub_ca029856(?) {
    return sub_ca029856[0 len sub_ca029856.length]
}

function sub_cb57ed55(?) {
    return sub_cb57ed55[0 len sub_cb57ed55.length]
}

function marriageStatus() {
    return marriageStatus
}

function sub_d3f501e7(?) {
    return uint256(sub_d3f501e7[0 len sub_d3f501e7.length])
}

function partner1_vows() {
    return partner1_vows[0 len partner1_vows.length]
}

function partner2_vows() {
    return partner2_vows[0 len partner2_vows.length]
}

function _fallback() payable {
    revert
}

function sub_02138fea(?) {
    require msg.sender == owner
    sub_cb57ed55[] = Array(len=arg1.length, data=arg1[all])
}

function sub_03d2c425(?) {
    require msg.sender == owner
    sub_75fdbeae[] = Array(len=arg1.length, data=arg1[all])
}

function sub_23381daf(?) {
    require msg.sender == owner
    sub_1d13b65b[] = Array(len=arg1.length, data=arg1[all])
}

function sub_60efe121(?) {
    require msg.sender == owner
    sub_ca029856[] = Array(len=arg1.length, data=arg1[all])
}

function sub_34608971(?) {
    require msg.sender == owner
    require not partner2_address
    partner2_address = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_f267e210(?) {
    require msg.sender == owner
    require not Mask(255, 1, (256 * not bool(officiant.length)) - 1 and officiant.length)
    uint256(officiant[]) = Array(len=arg1.length, data=arg1[all])
}

function setLocation(string arg1) {
    require msg.sender == owner
    require not Mask(255, 1, (256 * not bool(location.length)) - 1 and location.length)
    uint256(location[]) = Array(len=arg1.length, data=arg1[all])
}

function sub_369cdfa6(?) {
    require msg.sender == owner
    require not Mask(255, 1, (256 * not bool(sub_39046e8b.length)) - 1 and sub_39046e8b.length)
    uint256(sub_39046e8b[]) = Array(len=arg1.length, data=arg1[all])
}

function sub_76a2ac3e(?) {
    require msg.sender == owner
    require not Mask(255, 1, (256 * not bool(sub_ac0efbe6.length)) - 1 and sub_ac0efbe6.length)
    uint256(sub_ac0efbe6[]) = Array(len=arg1.length, data=arg1[all])
}

function sub_9399cc24(?) {
    require msg.sender == owner
    require not Mask(255, 1, (256 * not bool(sub_d3f501e7.length)) - 1 and sub_d3f501e7.length)
    uint256(sub_d3f501e7[]) = Array(len=arg1.length, data=arg1[all])
}

function sub_b41bbefc(?) {
    require msg.sender == owner
    require not partner1_address
    partner1_address = arg1
    require msg.sender == owner
    require partner1_address
    emit OwnershipTransferred(owner, partner1_address);
    owner = partner1_address
}

function addLifeEvent(string arg1, string arg2, string arg3) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = arg3.length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len arg3.length] = arg3[all]
    require msg.sender == owner
    lifeEvents.length++
    if not lifeEvents.length <= lifeEvents.length + 1:
        mem[0] = 19
        idx = 4 * lifeEvents.length + 1
        while sha3(19) + (4 * lifeEvents.length) > idx + sha3(mem[0]):
            stor[idx + sha3(mem[0])] = 0
            stor[idx + sha3(mem[0]) + 1] = 0
            if 31 < stor[idx + sha3(mem[0]) + 1].length:
                mem[0] = idx + sha3(mem[0]) + 1
                s = sha3(idx + sha3(mem[0]) + 1)
                while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            stor[idx + sha3(mem[0]) + 2] = 0
            if 31 < stor[idx + sha3(mem[0]) + 2].length:
                mem[0] = idx + sha3(mem[0]) + 2
                s = sha3(idx + sha3(mem[0]) + 2)
                while sha3(idx + sha3(mem[0]) + 2) + (stor[idx + sha3(mem[0]) + 2].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            stor[idx + sha3(mem[0]) + 3] = 0
            if 31 < stor[idx + sha3(mem[0]) + 3].length:
                mem[0] = idx + sha3(mem[0]) + 3
                s = sha3(idx + sha3(mem[0]) + 3)
                while sha3(idx + sha3(mem[0]) + 3) + (stor[idx + sha3(mem[0]) + 3].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            idx = idx + 4
            continue 
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 192] = block.timestamp
    lifeEvents[lifeEvents.length].field_0 = block.timestamp
    stor[sha3((4 * lifeEvents.length) + ('name', 'lifeEvents', 19) + 1)][].field_0 = Array(len=arg1.length, data=arg1[all])
    stor[sha3((4 * lifeEvents.length) + ('name', 'lifeEvents', 19) + 2)][].field_0 = Array(len=arg2.length, data=arg2[all])
    stor[sha3((4 * lifeEvents.length) + ('name', 'lifeEvents', 19) + 3)][].field_0 = Array(len=arg3.length, data=arg3[all])
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 448 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 448] = arg2.length
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 480 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        mem[arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 480] = arg3.length
        mem[arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 512 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + arg3.length + 192 len ceil32(arg3.length) - arg3.length]
        if not arg3.length % 32:
            emit LifeEvent(Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + ceil32(arg3.length) + 448 len arg3.length + arg2.length + arg1.length + -ceil32(arg1.length) + 64]), arg1.length + 128, arg2.length + arg1.length + 160);
        else:
            mem[floor32(arg3.length) + arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 512] = mem[floor32(arg3.length) + arg2.length + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 544 len arg3.length % 32]
            emit LifeEvent(Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + ceil32(arg3.length) + 448 len floor32(arg3.length) + arg2.length + arg1.length + -ceil32(arg1.length) + 96]), arg1.length + 128, arg2.length + arg1.length + 160);
    else:
        mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 480] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg2.length % 32) + 512 len arg2.length % 32]
        mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 512] = arg3.length
        mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 544 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + arg3.length + 192 len ceil32(arg3.length) - arg3.length]
        if not arg3.length % 32:
            emit LifeEvent(Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + ceil32(arg3.length) + 448 len arg3.length + floor32(arg2.length) + arg1.length + -ceil32(arg1.length) + 96]), arg1.length + 128, floor32(arg2.length) + arg1.length + 192);
        else:
            mem[floor32(arg3.length) + floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 544] = mem[floor32(arg3.length) + floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 576 len arg3.length % 32]
            emit LifeEvent(Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + ceil32(arg3.length) + 448 len floor32(arg3.length) + floor32(arg2.length) + arg1.length + -ceil32(arg1.length) + 128]), arg1.length + 128, floor32(arg2.length) + arg1.length + 192);
}



}
