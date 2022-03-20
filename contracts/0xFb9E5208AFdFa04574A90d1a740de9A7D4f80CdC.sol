contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 1666]
}



// =====================  Runtime code  =====================


address stor0;
mapping of struct owner;
uint256 numRecords;

function getTotalRecords() payable {
    return numRecords
}

function getOwner(uint32 arg1) payable {
    return address(owner[arg1 << 224].field_0)
}

function sub_86fd3068(?) payable {
    return uint256(owner[arg1 << 224].field_256)
}

function sub_91890e42(?) payable {
    return address(owner[arg1 << 224].field_0), uint256(owner[arg1 << 224].field_256), address(owner[arg1 << 224].field_768)
}

function numRecords() payable {
    return numRecords
}

function kill() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function sub_f4e9fb56(?) payable {
    return not not uint256(owner[arg1 << 224].field_256)
}

function withdraw(address arg1, uint256 arg2) payable {
    if msg.sender == stor0:
        call arg1 with:
           value arg2 wei
             gas 0 wei
}

function sub_fe9e68d4(?) payable {
    if msg.sender == address(owner[arg1 << 224].field_0):
        uint256(owner[arg1 << 224].field_0) = arg2 or Mask(96, 160, uint256(owner[arg1 << 224].field_0))
}

function sub_8a7b7552(?) payable {
    if msg.sender == address(owner[arg1 << 224].field_0):
        uint256(owner[arg1 << 224].field_768) = arg2 or Mask(96, 160, uint256(owner[arg1 << 224].field_768))
}

function getRecordAtIndex(uint256 arg1) payable {
    require arg1 < stor3.length
    return uint32(stor[code.data[1634 len 32] + (0.125 / arg1)].field_(32 * arg1 % 8) - 224), 
           address(owner[uint32(stor[code.data[1634 len 32] + (0.125 / arg1)].field_(32 * arg1 % 8) - 224)].field_0),
           uint256(owner[uint32(stor[code.data[1634 len 32] + (0.125 / arg1)].field_(32 * arg1 % 8) - 224)].field_256),
           address(owner[uint32(stor[code.data[1634 len 32] + (0.125 / arg1)].field_(32 * arg1 % 8) - 224)].field_768)
}

function sub_8a0a3cbd(?) payable {
    if not uint256(owner[arg1 << 224].field_256):
        uint256(owner[arg1 << 224].field_256) = block.timestamp
        uint256(owner[arg1 << 224].field_0) = msg.sender or Mask(96, 160, uint256(owner[arg1 << 224].field_0))
        uint256(owner[arg1 << 224].field_512) = stor3.length
        stor3.length++
        if not stor3.length <= stor3.length + 1:
            idx = stor3.length + 8 / 8
            while stor3.length + 7 / 8 > idx:
                uint256(stor3[idx].field_0) = 0
                idx = idx + 1
                continue 
        require stor3.length - 1 < stor3.length
        uint256(stor[code.data[1634 len 32] + (0.125 / stor3.length - 1)].field_0) = arg1 * 256^(4 * stor3.length - 1 % 8) or !(test266151307() * 256^(4 * stor3.length - 1 % 8)) and uint256(stor[code.data[1634 len 32] + (0.125 / stor3.length - 1)].field_0)
        uint256(owner[arg1 << 224].field_768) = arg2 or Mask(96, 160, uint256(owner[arg1 << 224].field_768))
        numRecords++
}

function sub_e978222a(?) payable {
    if msg.sender == address(owner[arg1 << 224].field_0):
        address(owner[arg1 << 224].field_0) = 0
        uint256(owner[arg1 << 224].field_256) = 0
        uint256(owner[arg1 << 224].field_512) = 0
        address(owner[arg1 << 224].field_768) = 0
        numRecords--
        require stor3.length - 1 < stor3.length
        require uint256(owner[arg1 << 224].field_512) < stor3.length
        uint256(stor3[Mask(253, 0, stor1[arg1 << 224].field_515)].field_0) = stor(code.data[1634 len 32] + (0.125 / stor[('length', ('name', 'stor3', 3))] - 1))[uint8(stor3.length - 1)] * 256^(4 * owner[arg1 << 224].field_512 % 8) or !(test266151307() * 256^(4 * owner[arg1 << 224].field_512 % 8)) and uint256(stor3[Mask(253, 0, stor1[arg1 << 224].field_515)].field_0)
        uint256(owner[uint32(stor3[Mask(253, 0, owner[arg1 << 224].field_515)].field_(32 * owner[arg1 << 224].field_512 % 8) - 224)].field_512) = uint256(owner[arg1 << 224].field_512)
        stor3.length--
        if not stor3.length <= stor3.length - 1:
            idx = stor3.length + 6 / 8
            while stor3.length + 7 / 8 > idx:
                uint256(stor3[idx].field_0) = 0
                idx = idx + 1
                continue 
}



}
