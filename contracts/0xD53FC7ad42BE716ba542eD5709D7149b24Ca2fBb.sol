contract main {




// =====================  Runtime code  =====================


const version = '0.0.1'


uint8 stor0;
address owner; offset 8
address masterAddress;
mapping of struct stor2;
mapping of address stor3;

function isStopped() {
    return bool(stor0)
}

function owner() {
    return owner
}

function master() {
    return masterAddress
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function isMaster() {
    return (msg.sender == masterAddress)
}

function stop() {
    require msg.sender == owner
    emit Stopped()
    stor0 = 1
}

function start() {
    require msg.sender == owner
    emit Started()
    stor0 = 0
}

function sub_5e12df07(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit 0xda641567: masterAddress, arg1
    masterAddress = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getAddress(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[96 len arg1.length] = arg1[all]
    mem[arg1.length + 96] = 3
    mem[128] = stor2[arg1[all]].field_0
    idx = 128
    s = 0
    while stor2[arg1[all]].length + 96 > idx:
        mem[idx + 32] = stor2[arg1[all]][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=stor2[arg1[all]].length, data=mem[128 len stor2[arg1[all]].length]), stor3[arg1[all]]
}

function deleteAccount(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if masterAddress != msg.sender:
        require msg.sender == owner
    require not stor0
    require arg1.length > 0
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 2
    stor2[arg1[all]].field_0 = 0
    stor2[arg1[all]].field_1 = 0
    stor2[arg1[all]].field_8 = mem[128 len 31]
    idx = 0
    while stor2[arg1[all]].length + 31 / 32 > idx:
        stor2[arg1[all]][idx].field_0 = 0
        idx = idx + 1
        continue 
    stor3[arg1[all]] = 0
    emit 0x800870b5: Array(len=arg1.length, data=arg1[all])
}

function sub_d4c8e97c(?) {
    require calldata.size - 4 >= 96
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + ('cd', 4).length + 36 <= calldata.size
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + ('cd', 36).length + 36 <= calldata.size
    if masterAddress != msg.sender:
        require msg.sender == owner
    require not stor0
    require ('cd', 4).length > 0
    stor2[call.data[cd[4] + 36 len ('cd', 4).length]].field_0 = (2 * ('cd', 36).length) + 1
    s = 0
    idx = cd[36] + 36
    while cd[36] + ('cd', 36).length + 36 > idx:
        stor2[call.data[cd[4] + 36 len ('cd', 4).length]][s].field_0 = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
    while stor2[call.data[cd[4] + 36 len ('cd', 4).length]].length + 31 / 32 > idx:
        stor2[call.data[cd[4] + 36 len ('cd', 4).length]][idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[96 len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
    stor3[call.data[cd[4] + 36 len ('cd', 4).length]] = address(cd[68])
    mem[160] = address(cd[68])
    mem[192] = ('cd', 4).length
    mem[224 len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
    mem[128] = ceil32(('cd', 4).length) + 128
    mem[ceil32(('cd', 4).length) + 224] = ('cd', 36).length
    mem[ceil32(('cd', 4).length) + 256 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
    mem[ceil32(('cd', 4).length) + ('cd', 36).length + 256] = 0
    emit 0x6fd2ec59: call.data[cd[4] + 36 len ('cd', 4).length], 3, mem[('cd', 4).length + 128 len 96], 0, mem[('cd', 4).length + 256 len ceil32(('cd', 4).length) + ceil32(('cd', 36).length) - ('cd', 4).length]
}

function sub_534c1bdd(?) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if masterAddress != msg.sender:
        require msg.sender == owner
    require not stor0
    require arg1.length > 0
    require arg2.length > 0
    if 31 >= stor2[arg1[all]].length:
        stor2[arg2[all]].field_0 = stor2[arg1[all]].field_0
        idx = 0
        while stor2[arg2[all]].length + 31 / 32 > idx:
            stor2[arg2[all]][idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        stor2[arg2[all]].field_0 = Mask(255, 1, (256 * not stor2[arg1[all]].field_0) - 1 and stor2[arg1[all]].field_0) + 1
        if not Mask(255, 1, (256 * not stor2[arg1[all]].field_0) - 1 and stor2[arg1[all]].field_0):
            idx = 0
            while stor2[arg2[all]].length + 31 / 32 > idx:
                stor2[arg2[all]][idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 0
            while stor2[arg1[all]].length + 31 / 32 > idx:
                stor2[arg2[all]][s].field_0 = stor2[arg1[all]][idx].field_0
                s = s + 1
                idx = idx + 1
                continue 
            idx = stor2[arg1[all]].length + 31 / 32
            while stor2[arg2[all]].length + 31 / 32 > idx:
                stor2[arg2[all]][idx].field_0 = 0
                idx = idx + 1
                continue 
    mem[arg1.length + 96] = 3
    mem[96 len arg2.length] = arg2[all]
    mem[arg2.length + 96] = 3
    stor3[arg2[all]] = stor3[arg1[all]]
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 2
    stor2[arg1[all]].field_0 = 0
    stor2[arg1[all]].field_1 = 0
    stor2[arg1[all]].field_8 = mem[128 len 31]
    idx = 0
    while stor2[arg1[all]].length + 31 / 32 > idx:
        stor2[arg1[all]][idx].field_0 = 0
        idx = idx + 1
        continue 
    stor3[arg1[all]] = 0
    mem[ceil32(arg1.length) + 224] = arg2.length
    mem[ceil32(arg1.length) + 256 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + arg2.length + 256] = 0
    emit 0x6e121761: 64, ceil32(arg1.length) + 96, arg1.length, arg1[all], 0, mem[arg1.length + 256 len ceil32(arg1.length) + ceil32(arg2.length) - arg1.length]
}



}
