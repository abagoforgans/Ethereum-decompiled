contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor4;
uint256 stor5;

function _fallback() payable {
    stor4 = 10
    stor5 = 10
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[46 len 3709]
}



// =====================  Runtime code  =====================


address stor0;
mapping of struct record;
array of uint256 stor2;
array of struct stor3;
uint256 REGISTRATION_COST;
uint256 TRANSFER_COST;

function getTotalRecords() payable {
    return stor2.length
}

function getRecord(string arg1) payable {
    return address(record[arg1[all]].field_0), uint256(record[arg1[all]].field_256)
}

function getOwner(string arg1) payable {
    return address(record[arg1[all]].field_0)
}

function getTime(string arg1) payable {
    return uint256(record[arg1[all]].field_256)
}

function numRecords() payable {
    return stor2.length
}

function REGISTRATION_COST() payable {
    return REGISTRATION_COST
}

function TRANSFER_COST() payable {
    return TRANSFER_COST
}

function kill() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function update(string arg1) payable {
  stop
}

function isRegistered(string arg1) payable {
    return uint256(record[arg1[all]].field_256) != 0
}

function withdraw(address arg1, uint256 arg2) payable {
    if msg.sender == stor0:
        call arg1 with:
           value arg2 wei
             gas 0 wei
}

function transfer(string arg1, address arg2) payable {
    if msg.value >= TRANSFER_COST:
        if msg.sender == address(record[arg1[all]].field_0):
            uint256(record[arg1[all]].field_0) = arg2 or Mask(96, 160, uint256(record[arg1[all]].field_0))
    else:
        if msg.value > 0:
            call msg.sender with:
               value msg.value wei
                 gas 0 wei
}

function getRecordAtIndex(uint256 arg1) payable {
    require arg1 < stor3.length
    mem[128] = uint256(stor3[arg1].field_0)
    idx = 128
    s = 0
    while stor3[arg1].length + 128 > idx + 32:
        mem[idx + 32] = uint256(stor3[arg1 + s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[stor3[arg1].length + 128] = 1
    _63 = sha3(mem[128 len stor3[arg1].length + 32])
    require arg1 < stor3.length
    mem[160] = uint256(stor3[arg1].field_0)
    idx = 160
    s = 0
    while stor3[arg1].length + 128 > idx:
        mem[idx + 32] = uint256(stor3[arg1 + s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=stor3[arg1].length, data=mem[160 len stor3[arg1].length]), address(stor[_63]), uint256(record[_63].field_0)
}

function register(string arg1) payable {
    if msg.value < REGISTRATION_COST:
        if msg.value > 0:
            call msg.sender with:
               value msg.value wei
                 gas 0 wei
    else:
        if 0 == uint256(record[arg1[all]].field_256):
            uint256(record[arg1[all]].field_256) = block.timestamp
            uint256(record[arg1[all]].field_0) = msg.sender or Mask(96, 160, uint256(record[arg1[all]].field_0))
            uint256(record[arg1[all]].field_512) = stor3.length
            stor3.length++
            if not stor3.length <= stor3.length + 1:
                mem[0] = 3
                idx = stor3.length + 1
                while sha3(3) + stor3.length > idx + sha3(mem[0]):
                    uint256(stor[idx + sha3(mem[0])]) = 0
                    if 31 < stor[idx + sha3(mem[0])].length:
                        mem[0] = idx + sha3(mem[0])
                        s = sha3(idx + sha3(mem[0]))
                        while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > s:
                            uint256(stor[s]) = 0
                            s = s + 1
                            continue 
                    idx = idx + 1
                    continue 
            require stor3.length - 1 < stor3.length
            uint256(stor[sha3(stor3.length + ('name', 'stor3', 3) - 1)][].field_0) = Array(len=arg1.length, data=arg1[all])
            stor2.length++
}

function sub_6598a1ae(?) payable {
    mem[128 len arg1.length] = arg1[all]
    if msg.sender == address(record[arg1[all]].field_0):
        mem[ceil32(arg1.length) + 128 len arg1.length] = arg1[all]
        mem[ceil32(arg1.length) + arg1.length + 128] = 1
        address(record[arg1[all]].field_0) = 0
        uint256(record[arg1[all]].field_256) = 0
        uint256(record[arg1[all]].field_512) = 0
        stor2.length--
        require stor3.length - 1 < stor3.length
        require uint256(record[arg1[all]].field_512) < stor3.length
        if 31 >= stor[stor3.length + ('name', 'stor3', 3) - 1].length:
            uint256(stor3[uint256(stor1[arg1[all]].field_512)].field_0) = uint256(stor3[stor3.length].field_0)
            idx = 0
            while stor3[uint256(stor1[arg1[all]].field_512)].length + 31 / 32 > idx:
                uint256(stor3[uint256(stor1[arg1[all]].field_512) + idx].field_0) = 0
                idx = idx + 1
                continue 
        else:
            uint256(stor3[uint256(stor1[arg1[all]].field_512)].field_0) = Mask(255, 1, (256 * not bool(stor3[stor3.length].field_0)) - 1 and uint256(stor3[stor3.length].field_0)) + 1
            if not Mask(255, 1, (256 * not bool(stor3[stor3.length].field_0)) - 1 and uint256(stor3[stor3.length].field_0)):
                idx = 0
                while stor3[uint256(stor1[arg1[all]].field_512)].length + 31 / 32 > idx:
                    uint256(stor3[uint256(stor1[arg1[all]].field_512) + idx].field_0) = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while stor[stor3.length + ('name', 'stor3', 3) - 1].length + 31 / 32 > idx:
                    uint256(stor3[uint256(stor1[arg1[all]].field_512) + s].field_0) = uint256(stor[idx + sha3(stor3.length + ('name', 'stor3', 3) - 1)].field_0)
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = stor[stor3.length + ('name', 'stor3', 3) - 1].length + 31 / 32
                while stor3[uint256(stor1[arg1[all]].field_512)].length + 31 / 32 > idx:
                    uint256(stor3[uint256(stor1[arg1[all]].field_512) + idx].field_0) = 0
                    idx = idx + 1
                    continue 
        require uint256(record[arg1[all]].field_512) < stor3.length
        mem[ceil32(arg1.length) + 128] = uint256(stor3[uint256(stor1[arg1[all]].field_512)].field_0)
        idx = ceil32(arg1.length) + 128
        s = 0
        while ceil32(arg1.length) + stor3[uint256(stor1[arg1[all]].field_512)].length + 128 > idx + 32:
            mem[idx + 32] = uint256(stor3[uint256(stor1[arg1[all]].field_512) + s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        mem[ceil32(arg1.length) + stor3[uint256(stor1[arg1[all]].field_512)].length + 128] = 1
        stor2[sha3(mem[ceil32(arg1.length) + 128 len stor3[uint256(stor1[arg1[all]].field_512)].length + 32])] = uint256(record[arg1[all]].field_512)
        stor3.length--
        if not stor3.length <= stor3.length - 1:
            mem[0] = 3
            idx = stor3.length - 1
            while sha3(3) + stor3.length > idx + sha3(mem[0]):
                uint256(stor[idx + sha3(mem[0])]) = 0
                if 31 < stor[idx + sha3(mem[0])].length:
                    mem[0] = idx + sha3(mem[0])
                    s = sha3(idx + sha3(mem[0]))
                    while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                idx = idx + 1
                continue 
}



}
