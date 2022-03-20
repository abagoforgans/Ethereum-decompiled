contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 3838]
}



// =====================  Runtime code  =====================


address stor0;
mapping of struct record;
array of uint256 stor2;
array of address stor3;
array of bool stor87903029871075914254377627908054574944891091886930582284385770809450030037082;

function getTotalRecords() payable {
    return stor2.length
}

function getRecord(string arg1) payable {
    return address(record[arg1[all]].field_0), uint256(record[arg1[all]].field_256), address(record[arg1[all]].field_768)
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

function kill() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
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

function sub_2cff89c9(?) payable {
    if msg.sender == address(record[arg1[all]].field_0):
        uint256(record[arg1[all]].field_768) = arg2 or Mask(96, 160, uint256(record[arg1[all]].field_768))
}

function transfer(string arg1, address arg2) payable {
    if msg.sender == address(record[arg1[all]].field_0):
        uint256(record[arg1[all]].field_0) = arg2 or Mask(96, 160, uint256(record[arg1[all]].field_0))
}

function getRecordAtIndex(uint256 arg1) payable {
    require arg1 < stor3.length
    mem[128] = uint256(stor[sha3(code.data[3806 len 32] + arg1)])
    idx = 128
    s = 0
    while stor[code.data[3806 len 32] + arg1].length + 128 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3(code.data[3806 len 32] + arg1) + 1])
        idx = idx + 32
        s = s + 1
        continue 
    mem[stor[code.data[3806 len 32] + arg1].length + 128] = 1
    _67 = sha3(mem[128 len stor[code.data[3806 len 32] + arg1].length + 32])
    require arg1 < stor3.length
    mem[160] = uint256(stor[sha3(code.data[3806 len 32] + arg1)])
    idx = 160
    s = 0
    while stor[code.data[3806 len 32] + arg1].length + 128 > idx:
        mem[idx + 32] = uint256(stor[s + sha3(code.data[3806 len 32] + arg1) + 1])
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=stor[code.data[3806 len 32] + arg1].length, data=mem[160 len stor[code.data[3806 len 32] + arg1].length]), 
           address(stor[_67]),
           uint256(record[_67].field_0),
           address(stor3[_67])
}

function register(string arg1, address arg2) payable {
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
        uint256(stor[sha3(stor3.length + ('name', 'stor3', 3) - 1)][]) = Array(len=arg1.length, data=arg1[all])
        uint256(record[arg1[all]].field_768) = arg2 or Mask(96, 160, uint256(record[arg1[all]].field_768))
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
        address(record[arg1[all]].field_768) = 0
        stor2.length--
        require stor3.length - 1 < stor3.length
        require uint256(record[arg1[all]].field_512) < stor3.length
        if 31 >= stor[stor3.length - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a6].length:
            uint256(stor[code.data[3806 len 32] + uint256(stor1[arg1[all]].field_512)]) = uint256(storC257[stor3.length])
            idx = 0
            while stor[code.data[3806 len 32] + uint256(stor1[arg1[all]].field_512)].length + 31 / 32 > idx:
                uint256(stor[idx + sha3(code.data[3806 len 32] + uint256(stor1[arg1[all]].field_512))]) = 0
                idx = idx + 1
                continue 
        else:
            uint256(stor[code.data[3806 len 32] + uint256(stor1[arg1[all]].field_512)]) = Mask(255, 1, (256 * not bool(storC257[stor3.length])) - 1 and uint256(storC257[stor3.length])) + 1
            if not Mask(255, 1, (256 * not bool(storC257[stor3.length])) - 1 and uint256(storC257[stor3.length])):
                idx = 0
                while stor[code.data[3806 len 32] + uint256(stor1[arg1[all]].field_512)].length + 31 / 32 > idx:
                    uint256(stor[idx + sha3(code.data[3806 len 32] + uint256(stor1[arg1[all]].field_512))]) = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while stor[stor3.length - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a6].length + 31 / 32 > idx:
                    uint256(stor[s + sha3(code.data[3806 len 32] + uint256(stor1[arg1[all]].field_512))]) = uint256(stor[idx + sha3(stor3.length - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a6)])
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = stor[stor3.length - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a6].length + 31 / 32
                while stor[code.data[3806 len 32] + uint256(stor1[arg1[all]].field_512)].length + 31 / 32 > idx:
                    uint256(stor[idx + sha3(code.data[3806 len 32] + uint256(stor1[arg1[all]].field_512))]) = 0
                    idx = idx + 1
                    continue 
        require uint256(record[arg1[all]].field_512) < stor3.length
        mem[ceil32(arg1.length) + 128] = uint256(stor[sha3(code.data[3806 len 32] + uint256(stor1[arg1[all]].field_512))])
        idx = ceil32(arg1.length) + 128
        s = 0
        while ceil32(arg1.length) + stor[code.data[3806 len 32] + uint256(stor1[arg1[all]].field_512)].length + 128 > idx + 32:
            mem[idx + 32] = uint256(stor[s + sha3(code.data[3806 len 32] + uint256(stor1[arg1[all]].field_512)) + 1])
            idx = idx + 32
            s = s + 1
            continue 
        mem[ceil32(arg1.length) + stor[code.data[3806 len 32] + uint256(stor1[arg1[all]].field_512)].length + 128] = 1
        stor2[sha3(mem[ceil32(arg1.length) + 128 len stor[code.data[3806 len 32] + uint256(stor1[arg1[all]].field_512)].length + 32])] = uint256(record[arg1[all]].field_512)
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
