contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1 = block.timestamp
    return code.data[41 len 5352]
}



// =====================  Runtime code  =====================


#
#  - getRecordAtIndex(uint256 arg1)
#
address owner;
uint256 creationTime;
mapping of struct record;
uint256 numRecords;
array of uint256 stor4;
array of bool stor62514009886607029107290561805838585334079798074568712924583230797734656856474;

function keys(uint256 arg1) payable {
    return stor[arg1 + code.data[5320 len 32]][0 len stor[arg1 + code.data[5320 len 32]].length]
}

function getRecord(string arg1) payable {
    mem[ceil32(arg1.length) + 160 len arg1.length] = arg1[all]
    mem[arg1.length + ceil32(arg1.length) + 160] = 2
    mem[ceil32(arg1.length) + 192] = record[arg1[all]][3].field_0
    idx = ceil32(arg1.length) + 192
    s = 0
    while ceil32(arg1.length) + record[arg1[all]][3].length + 160 > idx:
        mem[idx + 32] = record[arg1[all]][s + 3].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return address(record[arg1[all]].field_0), 
           record[arg1[all]].field_256,
           Array(len=record[arg1[all]][3].length, data=mem[ceil32(arg1.length) + 192 len record[arg1[all]][3].length])
}

function getOwner(string arg1) payable {
    return address(record[arg1[all]].field_0)
}

function owner() payable {
    return owner
}

function getTime(string arg1) payable {
    return record[arg1[all]].field_256
}

function numRecords() payable {
    return numRecords
}

function creationTime() payable {
    return creationTime
}

function kill() payable {
    require msg.sender == owner
    selfdestruct(owner)
}

function _fallback() payable {
  stop
}

function isRegistered(string arg1) payable {
    return record[arg1[all]].field_256 != 0
}

function withdraw(address arg1, uint256 arg2) payable {
    require msg.sender == owner
    call arg1 with:
       value arg2 wei
         gas 0 wei
}

function update(string arg1, string arg2) payable {
    if address(record[arg1[all]].field_0) == msg.sender:
        record[arg1[all]][3][].field_0 = Array(len=arg2.length, data=arg2[all])
}

function transfer(string arg1, address arg2) payable {
    if address(record[arg1[all]].field_0) == msg.sender:
        record[arg1[all]].field_0 = arg2 or Mask(96, 160, record[arg1[all]].field_0)
    else:
        if msg.value > 0:
            call msg.sender with:
               value msg.value wei
                 gas 0 wei
}

function register(string arg1, string arg2) payable {
    require msg.sender == owner
    if record[arg1[all]].field_256 != 0:
        if msg.value > 0:
            call msg.sender with:
               value msg.value wei
                 gas 0 wei
    else:
        record[arg1[all]].field_256 = block.timestamp
        record[arg1[all]].field_0 = msg.sender or Mask(96, 160, record[arg1[all]].field_0)
        record[arg1[all]].field_512 = stor4.length
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
        record[arg1[all]][3][].field_0 = Array(len=arg2.length, data=arg2[all])
        numRecords++
}

function sub_6598a1ae(?) payable {
    mem[128 len arg1.length] = arg1[all]
    if address(record[arg1[all]].field_0) == msg.sender:
        mem[ceil32(arg1.length) + 128 len arg1.length] = arg1[all]
        mem[arg1.length + ceil32(arg1.length) + 128] = 2
        address(record[arg1[all]].field_0) = 0
        record[arg1[all]].field_256 = 0
        record[arg1[all]].field_512 = 0
        record[arg1[all]].field_768 = 0
        if 31 < record[arg1[all]][3].length:
            idx = 0
            while record[arg1[all]][3].length + 31 / 32 > idx:
                record[arg1[all]][idx + 3].field_0 = 0
                idx = idx + 1
                continue 
        numRecords--
        require stor4.length - 1 < stor4.length
        require record[arg1[all]].field_512 < stor4.length
        if 31 >= stor[stor4.length - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e66].length:
            stor[code.data[5320 len 32] + stor2[arg1[all]].field_512] = uint256(stor8A35[stor4.length])
            idx = 0
            while stor[code.data[5320 len 32] + stor2[arg1[all]].field_512].length + 31 / 32 > idx:
                stor[idx + sha3(code.data[5320 len 32] + stor2[arg1[all]].field_512)] = 0
                idx = idx + 1
                continue 
        else:
            stor[code.data[5320 len 32] + stor2[arg1[all]].field_512] = Mask(255, 1, (256 * not bool(stor8A35[stor4.length])) - 1 and uint256(stor8A35[stor4.length])) + 1
            if not Mask(255, 1, (256 * not bool(stor8A35[stor4.length])) - 1 and uint256(stor8A35[stor4.length])):
                idx = 0
                while stor[code.data[5320 len 32] + stor2[arg1[all]].field_512].length + 31 / 32 > idx:
                    stor[idx + sha3(code.data[5320 len 32] + stor2[arg1[all]].field_512)] = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while stor[stor4.length - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e66].length + 31 / 32 > idx:
                    stor[s + sha3(code.data[5320 len 32] + stor2[arg1[all]].field_512)] = stor[idx + sha3(stor4.length - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e66)]
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = stor[stor4.length - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e66].length + 31 / 32
                while stor[code.data[5320 len 32] + stor2[arg1[all]].field_512].length + 31 / 32 > idx:
                    stor[idx + sha3(code.data[5320 len 32] + stor2[arg1[all]].field_512)] = 0
                    idx = idx + 1
                    continue 
        require record[arg1[all]].field_512 < stor4.length
        mem[ceil32(arg1.length) + 128] = stor[sha3(code.data[5320 len 32] + stor2[arg1[all]].field_512)]
        idx = ceil32(arg1.length) + 128
        s = 0
        while ceil32(arg1.length) + stor[code.data[5320 len 32] + stor2[arg1[all]].field_512].length + 128 > idx + 32:
            mem[idx + 32] = stor[s + sha3(code.data[5320 len 32] + stor2[arg1[all]].field_512) + 1]
            idx = idx + 32
            s = s + 1
            continue 
        mem[ceil32(arg1.length) + stor[code.data[5320 len 32] + stor2[arg1[all]].field_512].length + 128] = 2
        record[sha3(mem[ceil32(arg1.length) + 128 len stor[code.data[5320 len 32] + record[arg1[all]].field_512].length + 32])].field_0 = record[arg1[all]].field_512
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
