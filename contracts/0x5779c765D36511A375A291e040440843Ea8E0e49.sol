contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor5;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1 = block.timestamp
    stor5 = 2 * 10^14
    return code.data[51 len 6484]
}



// =====================  Runtime code  =====================


#
#  - getRecordAtIndex(uint256 arg1)
#
const getRegistrationCost = 10^14


address owner;
uint256 creationTime;
mapping of struct owner;
uint256 numRecords;
array of uint256 stor4;
uint256 TRANSFER_COST;
array of bool stor62514009886607029107290561805838585334079798074568712924583230797734656856474;

function keys(uint256 arg1) payable {
    return stor[arg1 + code.data[6452 len 32]][0 len stor[arg1 + code.data[6452 len 32]].length]
}

function getOwner(string arg1) payable {
    return address(owner[arg1[all]].field_0)
}

function owner() payable {
    return owner
}

function getTime(string arg1) payable {
    return owner[arg1[all]].field_256
}

function numRecords() payable {
    return numRecords
}

function creationTime() payable {
    return creationTime
}

function TRANSFER_COST() payable {
    return TRANSFER_COST
}

function kill() payable {
    require msg.sender == owner
    selfdestruct(owner)
}

function _fallback() payable {
  stop
}

function isRegistered(string arg1) payable {
    return owner[arg1[all]].field_256 != 0
}

function withdraw(address arg1, uint256 arg2) payable {
    require msg.sender == owner
    call arg1 with:
       value arg2 wei
         gas 0 wei
}

function transfer(string arg1, address arg2) payable {
    require msg.value >= TRANSFER_COST
    require address(owner[arg1[all]].field_0) == msg.sender
    owner[arg1[all]].field_0 = arg2 or Mask(96, 160, owner[arg1[all]].field_0)
}

function update(string arg1, string arg2, string arg3) payable {
    if address(owner[arg1[all]].field_0) == msg.sender:
        owner[arg1[all]][3][].field_0 = Array(len=arg2.length, data=arg2[all])
        owner[arg1[all]][4][].field_0 = Array(len=arg3.length, data=arg3[all])
}

function register(string arg1, string arg2, string arg3) payable {
    require msg.value >= 10^14
    require 0 == owner[arg1[all]].field_256
    owner[arg1[all]].field_256 = block.timestamp
    owner[arg1[all]].field_0 = msg.sender or Mask(96, 160, owner[arg1[all]].field_0)
    owner[arg1[all]].field_512 = stor4.length
    stor4.length++
    if not stor4.length <= stor4.length + 1:
        mem[0] = 4
        idx = stor4.length + 1
        while sha3(4) + stor4.length > idx + sha3(mem[0]):
            stor[idx + sha3(mem[0])] = 0
            if 31 < stor[idx + sha3(mem[0])].length:
                mem[0] = idx + sha3(mem[0])
                s = sha3(idx + sha3(mem[0]))
                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            idx = idx + 1
            continue 
    require stor4.length - 1 < stor4.length
    stor[sha3(stor4.length + ('name', 'stor4', 4) - 1)][] = Array(len=arg1.length, data=arg1[all])
    owner[arg1[all]][3][].field_0 = Array(len=arg2.length, data=arg2[all])
    owner[arg1[all]][4][].field_0 = Array(len=arg3.length, data=arg3[all])
    numRecords++
}

function getRecord(string arg1) payable {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = 0
    mem[ceil32(arg1.length) + 160] = 0
    mem[ceil32(arg1.length) + 192 len arg1.length] = arg1[all]
    mem[arg1.length + ceil32(arg1.length) + 192] = 2
    mem[ceil32(arg1.length) + 192] = owner[arg1[all]][3].length
    mem[ceil32(arg1.length) + 224] = owner[arg1[all]][3].field_0
    idx = ceil32(arg1.length) + 224
    s = 0
    while ceil32(arg1.length) + owner[arg1[all]][3].length + 192 > idx:
        mem[idx + 32] = owner[arg1[all]][s + 3].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(arg1.length) + ceil32(owner[arg1[all]][3].length) + ceil32(owner[arg1[all]][4].length) + 256
    mem[ceil32(arg1.length) + ceil32(owner[arg1[all]][3].length) + 224] = owner[arg1[all]][4].length
    mem[0] = sha3(arg1[all], 2) + 4
    mem[ceil32(arg1.length) + ceil32(owner[arg1[all]][3].length) + 256] = owner[arg1[all]][4].field_0
    idx = ceil32(arg1.length) + ceil32(owner[arg1[all]][3].length) + 256
    s = 0
    while ceil32(arg1.length) + ceil32(owner[arg1[all]][3].length) + owner[arg1[all]][4].length + 224 > idx:
        mem[idx + 32] = owner[arg1[all]][s + 4].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[mem[64]] = address(owner[arg1[all]].field_0)
    mem[mem[64] + 32] = owner[arg1[all]].field_256
    mem[mem[64] + 64] = 128
    mem[mem[64] + 128] = owner[arg1[all]][3].length
    mem[mem[64] + 160 len owner[arg1[all]][3].length] = mem[ceil32(arg1.length) + 224 len owner[arg1[all]][3].length]
    mem[mem[64] + 96] = owner[arg1[all]][3].length + 160
    mem[owner[arg1[all]][3].length + mem[64] + 160] = owner[arg1[all]][4].length
    mem[owner[arg1[all]][3].length + mem[64] + 192 len owner[arg1[all]][4].length] = mem[ceil32(arg1.length) + ceil32(owner[arg1[all]][3].length) + 256 len owner[arg1[all]][4].length]
    if not owner[arg1[all]][4].length % 32:
        return address(owner[arg1[all]].field_0), 
               owner[arg1[all]].field_256,
               Array(len=owner[arg1[all]][3].length, data=mem[mem[64] + 160 len owner[arg1[all]][4].length + owner[arg1[all]][3].length + 32]),
               owner[arg1[all]][3].length + 160
    mem[floor32(owner[arg1[all]][4].length) + owner[arg1[all]][3].length + mem[64] + 192] = mem[floor32(owner[arg1[all]][4].length) + owner[arg1[all]][3].length + mem[64] + -owner[arg1[all]][4].length % 32 + 224 len owner[arg1[all]][4].length % 32]
    return address(owner[arg1[all]].field_0), 
           owner[arg1[all]].field_256,
           Array(len=owner[arg1[all]][3].length, data=mem[mem[64] + 160 len floor32(owner[arg1[all]][4].length) + owner[arg1[all]][3].length + 64]),
           owner[arg1[all]][3].length + 160
}

function sub_6598a1ae(?) payable {
    mem[128 len arg1.length] = arg1[all]
    if address(owner[arg1[all]].field_0) == msg.sender:
        mem[ceil32(arg1.length) + 128 len arg1.length] = arg1[all]
        mem[arg1.length + ceil32(arg1.length) + 128] = 2
        address(owner[arg1[all]].field_0) = 0
        owner[arg1[all]].field_256 = 0
        owner[arg1[all]].field_512 = 0
        owner[arg1[all]].field_768 = 0
        if 31 < owner[arg1[all]][3].length:
            idx = 0
            while owner[arg1[all]][3].length + 31 / 32 > idx:
                owner[arg1[all]][idx + 3].field_0 = 0
                idx = idx + 1
                continue 
        owner[arg1[all]].field_1024 = 0
        if 31 < owner[arg1[all]][4].length:
            idx = 0
            while owner[arg1[all]][4].length + 31 / 32 > idx:
                owner[arg1[all]][idx + 4].field_0 = 0
                idx = idx + 1
                continue 
        numRecords--
        require stor4.length - 1 < stor4.length
        require owner[arg1[all]].field_512 < stor4.length
        if 31 >= stor[stor4.length - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e66].length:
            stor[code.data[6452 len 32] + stor2[arg1[all]].field_512] = uint256(stor8A35[stor4.length])
            idx = 0
            while stor[code.data[6452 len 32] + stor2[arg1[all]].field_512].length + 31 / 32 > idx:
                stor[idx + sha3(code.data[6452 len 32] + stor2[arg1[all]].field_512)] = 0
                idx = idx + 1
                continue 
        else:
            stor[code.data[6452 len 32] + stor2[arg1[all]].field_512] = Mask(255, 1, (256 * not bool(stor8A35[stor4.length])) - 1 and uint256(stor8A35[stor4.length])) + 1
            if not Mask(255, 1, (256 * not bool(stor8A35[stor4.length])) - 1 and uint256(stor8A35[stor4.length])):
                idx = 0
                while stor[code.data[6452 len 32] + stor2[arg1[all]].field_512].length + 31 / 32 > idx:
                    stor[idx + sha3(code.data[6452 len 32] + stor2[arg1[all]].field_512)] = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while stor[stor4.length - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e66].length + 31 / 32 > idx:
                    stor[s + sha3(code.data[6452 len 32] + stor2[arg1[all]].field_512)] = stor[idx + sha3(stor4.length - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e66)]
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = stor[stor4.length - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e66].length + 31 / 32
                while stor[code.data[6452 len 32] + stor2[arg1[all]].field_512].length + 31 / 32 > idx:
                    stor[idx + sha3(code.data[6452 len 32] + stor2[arg1[all]].field_512)] = 0
                    idx = idx + 1
                    continue 
        require owner[arg1[all]].field_512 < stor4.length
        mem[ceil32(arg1.length) + 128] = stor[sha3(code.data[6452 len 32] + stor2[arg1[all]].field_512)]
        idx = ceil32(arg1.length) + 128
        s = 0
        while ceil32(arg1.length) + stor[code.data[6452 len 32] + stor2[arg1[all]].field_512].length + 128 > idx + 32:
            mem[idx + 32] = stor[s + sha3(code.data[6452 len 32] + stor2[arg1[all]].field_512) + 1]
            idx = idx + 32
            s = s + 1
            continue 
        mem[ceil32(arg1.length) + stor[code.data[6452 len 32] + stor2[arg1[all]].field_512].length + 128] = 2
        owner[sha3(mem[ceil32(arg1.length) + 128 len stor[code.data[6452 len 32] + owner[arg1[all]].field_512].length + 32])].field_0 = owner[arg1[all]].field_512
        stor4.length--
        if not stor4.length <= stor4.length - 1:
            mem[0] = 4
            idx = stor4.length - 1
            while sha3(4) + stor4.length > idx + sha3(mem[0]):
                stor[idx + sha3(mem[0])] = 0
                if 31 < stor[idx + sha3(mem[0])].length:
                    mem[0] = idx + sha3(mem[0])
                    s = sha3(idx + sha3(mem[0]))
                    while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                idx = idx + 1
                continue 
}



}
