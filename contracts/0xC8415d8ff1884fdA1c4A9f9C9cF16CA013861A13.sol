contract main {


// =======================  Init code  ======================


uint128 stor0; offset 160
uint256 stor0;
bool stor1; offset 256
uint128 stor1; offset 160
address stor1;
uint64 stor2;
uint64 stor2; offset 64
uint64 stor2; offset 128
uint64 stor2; offset 192
uint8 stor3;
uint256 stor3; offset 8

function _fallback() payable {
    uint256(stor0.field_0) = Mask(96, 0, stor0.field_160)
    uint8(stor3.field_0) = 0
    Mask(248, 0, stor3.field_8) = code.data[2411 len 31]
    address(stor1.field_0) = 0x8b9346aa412b52954b5138dbb72adab97273766e
    Mask(96, 0, stor1.field_160) = Mask(96, 0, code.data[2442 len 32])
    stor1.field_256 % 1 = 0
    uint64(stor2.field_0) = uint64(code.data[2474 len 32])
    uint64(stor2.field_64) = uint64(code.data[2506 len 32])
    uint64(stor2.field_128) = uint64(code.data[2538 len 32])
    uint64(stor2.field_192) = uint64(code.data[2570 len 32])
    return code.data[293 len 2117]
}



// =====================  Runtime code  =====================


address owner;
uint64 stor1;
address stor1;
uint64 stor2;
uint256 stor2;
uint8 status;
uint8 stor3; offset 8
array of struct stor4;
array of struct stor39143100329280468107556231533410151018419134684842411016866935372961967991761;

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
    return address(stor568A[arg1].field_0), uint8(stor568A[arg1].field_0), uint64(stor568A[arg1].field_160)
}

function get() payable {
    mem[512] = mem[539 len 5]
    return status, 
           address(stor1),
           uint64(stor1),
           uint64(stor2),
           uint64(stor2),
           uint64(stor2),
           Array(len=5, data='1.0.0', mem[517 len 27]),
           status,
           uint64(stor2)
}

function sub_5f2ef085(?) payable {
    if 0x8b9346aa412b52954b5138dbb72adab97273766e == msg.sender:
        status = 1
    uint256(stor2) = 1000 * block.timestamp or Mask(192, 64, uint256(stor2))
    stor4.length++
    if not stor4.length <= stor4.length + 1:
        idx = stor4.length + 0x568a35acfbc15ff81a39ae7d344fd709f28e8600b4aa8c65c6b64bfe7fe36bd2
        while stor4.length + 0x568a35acfbc15ff81a39ae7d344fd709f28e8600b4aa8c65c6b64bfe7fe36bd1 > idx:
            stor[idx] = 0
            idx = idx + 1
            continue 
    Mask(224, 0, stor4[stor4.length].field_0) = Mask(224, 0, 0x3e80000000000000000000000000000000000000000 * block.timestamp)
    address(stor4[stor4.length].field_0) = msg.sender
    uint64(stor4[stor4.length].field_160) = 0
    uint8(stor4[stor4.length].field_224) = 1
    stor4[stor4.length].field_232 % 16777216 = Mask(24, 232, 0x3e80000000000000000000000000000000000000000 * block.timestamp) >> 232
    stor4[stor4.length].field_232 % 16777216 = Mask(24, 232, msg.sender) >> 232
}

function sub_e21d9b51(?) payable {
    if 0x8b9346aa412b52954b5138dbb72adab97273766e == msg.sender:
        status = 4
        uint256(stor2) = 1000 * block.timestamp or Mask(192, 64, uint256(stor2))
        stor4.length++
        if not stor4.length <= stor4.length + 1:
            idx = stor4.length + 0x568a35acfbc15ff81a39ae7d344fd709f28e8600b4aa8c65c6b64bfe7fe36bd2
            while stor4.length + 0x568a35acfbc15ff81a39ae7d344fd709f28e8600b4aa8c65c6b64bfe7fe36bd1 > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        Mask(224, 0, stor4[stor4.length].field_0) = Mask(224, 0, 0x3e80000000000000000000000000000000000000000 * block.timestamp)
        address(stor4[stor4.length].field_0) = msg.sender
        uint64(stor4[stor4.length].field_160) = 0
        uint8(stor4[stor4.length].field_224) = 4
        stor4[stor4.length].field_232 % 16777216 = Mask(24, 232, 0x3e80000000000000000000000000000000000000000 * block.timestamp) >> 232
        stor4[stor4.length].field_232 % 16777216 = Mask(24, 232, msg.sender) >> 232
}

function sub_416ce86f(?) payable {
    if 0x8b9346aa412b52954b5138dbb72adab97273766e == msg.sender:
        if 1 == stor3:
            status = 3
            uint256(stor2) = 1000 * block.timestamp or Mask(192, 64, uint256(stor2))
            stor4.length++
            if not stor4.length <= stor4.length + 1:
                idx = stor4.length + 1
                while stor4.length > idx:
                    stor4[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            Mask(224, 0, stor4[stor4.length].field_0) = Mask(224, 0, 0x3e80000000000000000000000000000000000000000 * block.timestamp)
            address(stor4[stor4.length].field_0) = msg.sender
            uint64(stor4[stor4.length].field_160) = 0
            uint8(stor4[stor4.length].field_224) = 3
            stor4[stor4.length].field_232 % 16777216 = Mask(24, 232, 0x3e80000000000000000000000000000000000000000 * block.timestamp) >> 232
            stor4[stor4.length].field_232 % 16777216 = Mask(24, 232, msg.sender) >> 232
        else:
            if 0x8b9346aa412b52954b5138dbb72adab97273766e == msg.sender:
                if 0 == stor3:
                    status = 3
                    uint256(stor2) = 1000 * block.timestamp or Mask(192, 64, uint256(stor2))
                    stor4.length++
                    if not stor4.length <= stor4.length + 1:
                        idx = stor4.length + 1
                        while stor4.length > idx:
                            stor4[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    Mask(224, 0, stor4[stor4.length].field_0) = Mask(224, 0, 0x3e80000000000000000000000000000000000000000 * block.timestamp)
                    address(stor4[stor4.length].field_0) = msg.sender
                    uint64(stor4[stor4.length].field_160) = 0
                    uint8(stor4[stor4.length].field_224) = 3
                    stor4[stor4.length].field_232 % 16777216 = Mask(24, 232, 0x3e80000000000000000000000000000000000000000 * block.timestamp) >> 232
                    stor4[stor4.length].field_232 % 16777216 = Mask(24, 232, msg.sender) >> 232
}

function sub_877d0cd7(?) payable {
    if 0x8b9346aa412b52954b5138dbb72adab97273766e == msg.sender:
        if 1 == stor3:
            status = 2
            uint256(stor2) = 1000 * block.timestamp or Mask(192, 64, uint256(stor2))
            stor4.length++
            if not stor4.length <= stor4.length + 1:
                idx = stor4.length + 0x568a35acfbc15ff81a39ae7d344fd709f28e8600b4aa8c65c6b64bfe7fe36bd2
                while stor4.length + 0x568a35acfbc15ff81a39ae7d344fd709f28e8600b4aa8c65c6b64bfe7fe36bd1 > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
            Mask(224, 0, stor4[stor4.length].field_0) = Mask(224, 0, 0x3e80000000000000000000000000000000000000000 * block.timestamp)
            address(stor4[stor4.length].field_0) = msg.sender
            uint64(stor4[stor4.length].field_160) = 0
            uint8(stor4[stor4.length].field_224) = 2
            stor4[stor4.length].field_232 % 16777216 = Mask(24, 232, 0x3e80000000000000000000000000000000000000000 * block.timestamp) >> 232
            stor4[stor4.length].field_232 % 16777216 = Mask(24, 232, msg.sender) >> 232
        else:
            if 0x8b9346aa412b52954b5138dbb72adab97273766e == msg.sender:
                if 0 == stor3:
                    status = 2
                    uint256(stor2) = 1000 * block.timestamp or Mask(192, 64, uint256(stor2))
                    stor4.length++
                    if not stor4.length <= stor4.length + 1:
                        idx = stor4.length + 0x568a35acfbc15ff81a39ae7d344fd709f28e8600b4aa8c65c6b64bfe7fe36bd2
                        while stor4.length + 0x568a35acfbc15ff81a39ae7d344fd709f28e8600b4aa8c65c6b64bfe7fe36bd1 > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                    Mask(224, 0, stor4[stor4.length].field_0) = Mask(224, 0, 0x3e80000000000000000000000000000000000000000 * block.timestamp)
                    address(stor4[stor4.length].field_0) = msg.sender
                    uint64(stor4[stor4.length].field_160) = 0
                    uint8(stor4[stor4.length].field_224) = 2
                    stor4[stor4.length].field_232 % 16777216 = Mask(24, 232, 0x3e80000000000000000000000000000000000000000 * block.timestamp) >> 232
                    stor4[stor4.length].field_232 % 16777216 = Mask(24, 232, msg.sender) >> 232
}



}
