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
    Mask(248, 0, stor3.field_8) = code.data[1272 len 31]
    address(stor1.field_0) = 0x8b9346aa412b52954b5138dbb72adab97273766e
    Mask(96, 0, stor1.field_160) = Mask(96, 0, code.data[1303 len 32])
    stor1.field_256 % 1 = 0
    uint64(stor2.field_0) = uint64(code.data[1335 len 32])
    uint64(stor2.field_64) = uint64(code.data[1367 len 32])
    uint64(stor2.field_128) = uint64(code.data[1399 len 32])
    uint64(stor2.field_192) = uint64(code.data[1431 len 32])
    return code.data[293 len 978]
}



// =====================  Runtime code  =====================


address owner;
uint64 stor1;
address stor1;
uint64 stor2;
uint256 stor2;
uint8 status;
uint8 stor3; offset 8

function getStatus() payable {
    return status
}

function getOwner() payable {
    return owner
}

function kill() payable {
    selfdestruct(owner)
}

function _fallback() payable {
  stop
}

function sub_5f2ef085(?) payable {
    if 0x8b9346aa412b52954b5138dbb72adab97273766e == msg.sender:
        status = 1
    uint256(stor2) = 1000 * block.timestamp or Mask(192, 64, uint256(stor2))
}

function sub_e21d9b51(?) payable {
    if 0x8b9346aa412b52954b5138dbb72adab97273766e == msg.sender:
        status = 4
        uint256(stor2) = 1000 * block.timestamp or Mask(192, 64, uint256(stor2))
}

function get() payable {
    return status, 
           address(stor1),
           uint64(stor1),
           uint64(stor2),
           uint64(stor2),
           uint64(stor2),
           Array(len=5, data=1.0.0),
           status,
           uint64(stor2)
}

function sub_416ce86f(?) payable {
    if 0x8b9346aa412b52954b5138dbb72adab97273766e == msg.sender:
        if 1 == stor3:
            status = 3
            uint256(stor2) = 1000 * block.timestamp or Mask(192, 64, uint256(stor2))
        else:
            if 0x8b9346aa412b52954b5138dbb72adab97273766e == msg.sender:
                if 0 == stor3:
                    status = 3
                    uint256(stor2) = 1000 * block.timestamp or Mask(192, 64, uint256(stor2))
}

function sub_877d0cd7(?) payable {
    if 0x8b9346aa412b52954b5138dbb72adab97273766e == msg.sender:
        if 1 == stor3:
            status = 2
            uint256(stor2) = 1000 * block.timestamp or Mask(192, 64, uint256(stor2))
        else:
            if 0x8b9346aa412b52954b5138dbb72adab97273766e == msg.sender:
                if 0 == stor3:
                    status = 2
                    uint256(stor2) = 1000 * block.timestamp or Mask(192, 64, uint256(stor2))
}



}
