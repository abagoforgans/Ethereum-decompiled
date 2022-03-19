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
    address(stor1.field_0) = 0x6b62228ee04f62799e722448669e1fe21f007f91
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
    if msg.sender == 0x68e3a9240341cfd21a0993fe73c82df93cbf1620:
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
    if msg.sender == 0xef2be808c8cd2533f11db5f0098ce6ed65d92bb8:
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
    if 0x40563c8a47996ba3e9afd51cef23070a9fd35d75 != msg.sender:
        if 0xf9968bbbadf98cd736f7737f468dbbb6c9d3e62d == msg.sender:
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
            if 0xf9968bbbadf98cd736f7737f468dbbb6c9d3e62d == msg.sender:
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
    if msg.sender != 0xf9968bbbadf98cd736f7737f468dbbb6c9d3e62d:
        if msg.sender == 0x40563c8a47996ba3e9afd51cef23070a9fd35d75:
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
            if msg.sender == 0x40563c8a47996ba3e9afd51cef23070a9fd35d75:
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
