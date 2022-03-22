contract main {


// =======================  Init code  ======================


uint256 stor0;
bool stor1; offset 256
uint128 stor1; offset 160
address stor1;
uint64 stor2;
uint64 stor2; offset 64
uint64 stor2; offset 128
uint64 stor2; offset 192
uint64 stor3;
uint256 stor3;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    address(stor1.field_0) = 0x87a7881a6f295b0ab884041f9453ba82afcfa79a
    Mask(96, 0, stor1.field_160) = Mask(96, 0, code.data[2639 len 32])
    stor1.field_256 % 1 = 0
    uint64(stor2.field_0) = uint64(code.data[2671 len 32])
    uint64(stor2.field_64) = uint64(code.data[2703 len 32])
    uint64(stor2.field_128) = uint64(code.data[2735 len 32])
    uint64(stor2.field_192) = uint64(code.data[2767 len 32])
    uint256(stor3) = code.data[2799 len 32] or Mask(176, 80, uint256(stor3)) or Mask(192, 64, uint64(stor3)) or code.data[2607 len 32] << 72
    return code.data[326 len 2281]
}



// =====================  Runtime code  =====================


address owner;
uint64 stor1;
address stor1;
uint64 stor2;
uint64 stor2; offset 128
uint256 stor2;
uint8 stor3;
uint8 status; offset 64
uint8 stor3; offset 72
uint64 stor3;
array of struct stor4;

function getStatus() payable {
    return status
}

function getOwner() payable {
    return owner
}

function getLength() payable {
    return stor4.length
}

function kill() payable {
    selfdestruct(owner)
}

function _fallback() payable {
  stop
}

function getHistory(uint256 arg1) payable {
    require arg1 < stor4.length
    return stor4[arg1].field_0, stor4[arg1].field_0, stor4[arg1].field_160
}

function get() payable {
    mem[544] = mem[571 len 5]
    return uint8(stor3.field_0), 
           address(stor1),
           uint64(stor1),
           uint64(stor2.field_0),
           uint64(stor2.field_0),
           uint64(stor2.field_0),
           Array(len=5, data='1.0.2', mem[549 len 27]),
           uint8(stor3.field_0),
           uint64(stor2.field_0),
           uint64(stor3.field_0)
}

function sub_5f2ef085(?) payable {
    if msg.sender == 0x64a7ebbbb6acbb16fbaa0929d4daae3c2cc36ff3:
        status = 1
    uint256(stor2.field_0) = 1000 * block.timestamp or Mask(192, 64, uint256(stor2.field_0))
    stor4.length++
    if not stor4.length <= stor4.length + 1:
        idx = stor4.length + 1
        while stor4.length > idx:
            stor4[idx].field_0 = 0
            idx = idx + 1
            continue 
    stor4[stor4.length].field_0 = Mask(224, 0, 0x3e80000000000000000000000000000000000000000 * block.timestamp)
    stor4[stor4.length].field_0 = msg.sender
    stor4[stor4.length].field_160 = 0
    stor4[stor4.length].field_224 = 1
    stor4[stor4.length].field_232 = Mask(24, 232, 0x3e80000000000000000000000000000000000000000 * block.timestamp) >> 232
    stor4[stor4.length].field_232 = Mask(24, 232, msg.sender) >> 232
}

function sub_53ecaf83(?) payable {
    if msg.sender == 0xb81ec34e4aa405a7408d97aae6b1d98a012ddff0:
        status = 2
        uint256(stor2.field_0) = 1000 * block.timestamp or Mask(128, 128, uint256(stor2.field_0)) or Mask(192, 64, uint64(stor2.field_0)) or arg1 * uint64(stor2.field_128) << 64
        stor4.length++
        if not stor4.length <= stor4.length + 1:
            idx = stor4.length + 1
            while stor4.length > idx:
                stor4[idx].field_0 = 0
                idx = idx + 1
                continue 
        stor4[stor4.length].field_0 = Mask(224, 0, 0x3e80000000000000000000000000000000000000000 * block.timestamp)
        stor4[stor4.length].field_0 = msg.sender
        stor4[stor4.length].field_160 = 0
        stor4[stor4.length].field_224 = 2
        stor4[stor4.length].field_232 = Mask(24, 232, 0x3e80000000000000000000000000000000000000000 * block.timestamp) >> 232
        stor4[stor4.length].field_232 = Mask(24, 232, msg.sender) >> 232
}

function sub_416ce86f(?) payable {
    if 0x744daabfb85c1d569980a84a24a6a65cd237ab58 != msg.sender:
        if 0xfb59a817a4ac71e97907d2a5ee29b6839723fed1 == msg.sender:
            if 0 == uint8(stor3.field_72):
                status = 4
                uint256(stor2.field_0) = 1000 * block.timestamp or Mask(192, 64, uint256(stor2.field_0))
                stor4.length++
                if not stor4.length <= stor4.length + 1:
                    idx = stor4.length + 1
                    while stor4.length > idx:
                        stor4[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                stor4[stor4.length].field_0 = Mask(224, 0, 0x3e80000000000000000000000000000000000000000 * block.timestamp)
                stor4[stor4.length].field_0 = msg.sender
                stor4[stor4.length].field_160 = 0
                stor4[stor4.length].field_224 = 4
                stor4[stor4.length].field_232 = Mask(24, 232, 0x3e80000000000000000000000000000000000000000 * block.timestamp) >> 232
                stor4[stor4.length].field_232 = Mask(24, 232, msg.sender) >> 232
    else:
        if 1 == uint8(stor3.field_72):
            status = 4
            uint256(stor2.field_0) = 1000 * block.timestamp or Mask(192, 64, uint256(stor2.field_0))
            stor4.length++
            if not stor4.length <= stor4.length + 1:
                idx = stor4.length + 1
                while stor4.length > idx:
                    stor4[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            stor4[stor4.length].field_0 = Mask(224, 0, 0x3e80000000000000000000000000000000000000000 * block.timestamp)
            stor4[stor4.length].field_0 = msg.sender
            stor4[stor4.length].field_160 = 0
            stor4[stor4.length].field_224 = 4
            stor4[stor4.length].field_232 = Mask(24, 232, 0x3e80000000000000000000000000000000000000000 * block.timestamp) >> 232
            stor4[stor4.length].field_232 = Mask(24, 232, msg.sender) >> 232
        else:
            if 0xfb59a817a4ac71e97907d2a5ee29b6839723fed1 == msg.sender:
                if 0 == uint8(stor3.field_72):
                    status = 4
                    uint256(stor2.field_0) = 1000 * block.timestamp or Mask(192, 64, uint256(stor2.field_0))
                    stor4.length++
                    if not stor4.length <= stor4.length + 1:
                        idx = stor4.length + 1
                        while stor4.length > idx:
                            stor4[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    stor4[stor4.length].field_0 = Mask(224, 0, 0x3e80000000000000000000000000000000000000000 * block.timestamp)
                    stor4[stor4.length].field_0 = msg.sender
                    stor4[stor4.length].field_160 = 0
                    stor4[stor4.length].field_224 = 4
                    stor4[stor4.length].field_232 = Mask(24, 232, 0x3e80000000000000000000000000000000000000000 * block.timestamp) >> 232
                    stor4[stor4.length].field_232 = Mask(24, 232, msg.sender) >> 232
}

function sub_877d0cd7(?) payable {
    if msg.sender != 0xfb59a817a4ac71e97907d2a5ee29b6839723fed1:
        if msg.sender == 0x744daabfb85c1d569980a84a24a6a65cd237ab58:
            if 0 == uint8(stor3.field_72):
                status = 3
                uint256(stor2.field_0) = 1000 * block.timestamp or Mask(192, 64, uint256(stor2.field_0))
                stor4.length++
                if not stor4.length <= stor4.length + 1:
                    idx = stor4.length + 1
                    while stor4.length > idx:
                        stor4[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                stor4[stor4.length].field_0 = Mask(224, 0, 0x3e80000000000000000000000000000000000000000 * block.timestamp)
                stor4[stor4.length].field_0 = msg.sender
                stor4[stor4.length].field_160 = 0
                stor4[stor4.length].field_224 = 3
                stor4[stor4.length].field_232 = Mask(24, 232, 0x3e80000000000000000000000000000000000000000 * block.timestamp) >> 232
                stor4[stor4.length].field_232 = Mask(24, 232, msg.sender) >> 232
    else:
        if 1 == uint8(stor3.field_72):
            status = 3
            uint256(stor2.field_0) = 1000 * block.timestamp or Mask(192, 64, uint256(stor2.field_0))
            stor4.length++
            if not stor4.length <= stor4.length + 1:
                idx = stor4.length + 1
                while stor4.length > idx:
                    stor4[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            stor4[stor4.length].field_0 = Mask(224, 0, 0x3e80000000000000000000000000000000000000000 * block.timestamp)
            stor4[stor4.length].field_0 = msg.sender
            stor4[stor4.length].field_160 = 0
            stor4[stor4.length].field_224 = 3
            stor4[stor4.length].field_232 = Mask(24, 232, 0x3e80000000000000000000000000000000000000000 * block.timestamp) >> 232
            stor4[stor4.length].field_232 = Mask(24, 232, msg.sender) >> 232
        else:
            if msg.sender == 0x744daabfb85c1d569980a84a24a6a65cd237ab58:
                if 0 == uint8(stor3.field_72):
                    status = 3
                    uint256(stor2.field_0) = 1000 * block.timestamp or Mask(192, 64, uint256(stor2.field_0))
                    stor4.length++
                    if not stor4.length <= stor4.length + 1:
                        idx = stor4.length + 1
                        while stor4.length > idx:
                            stor4[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    stor4[stor4.length].field_0 = Mask(224, 0, 0x3e80000000000000000000000000000000000000000 * block.timestamp)
                    stor4[stor4.length].field_0 = msg.sender
                    stor4[stor4.length].field_160 = 0
                    stor4[stor4.length].field_224 = 3
                    stor4[stor4.length].field_232 = Mask(24, 232, 0x3e80000000000000000000000000000000000000000 * block.timestamp) >> 232
                    stor4[stor4.length].field_232 = Mask(24, 232, msg.sender) >> 232
}



}
