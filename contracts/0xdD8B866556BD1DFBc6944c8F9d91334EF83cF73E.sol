contract main {


// =======================  Init code  ======================


uint256 stor0;
uint128 stor1; offset 160
address stor1;
uint8 stor2; offset 192
uint32 stor2; offset 64
uint32 stor2; offset 96
uint32 stor2; offset 128
uint32 stor2; offset 160
uint64 stor2; offset 200
uint256 stor2;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    uint8(stor2.field_192) = 0
    stor2.field_200 % 72057594037927936 = code.data[1633 len 32] % 72057594037927936
    address(stor1.field_0) = 0xd2a0be4a4f2837be7b99cec33701f92bd9ed914c
    Mask(96, 0, stor1.field_160) = Mask(96, 0, code.data[1665 len 32])
    uint256(stor2.field_0) = code.data[1697 len 32] or Mask(192, 64, uint256(stor2.field_0))
    uint32(stor2.field_64) = uint32(code.data[1729 len 32])
    uint32(stor2.field_96) = 0
    uint32(stor2.field_128) = uint32(code.data[1761 len 32])
    uint32(stor2.field_160) = 0
    return code.data[365 len 1268]
}



// =====================  Runtime code  =====================


address stor0;
uint64 stor1;
address stor1;
uint8 stor2;
uint8 stor2; offset 192
uint8 stor2; offset 200
uint64 stor2;

function kill() payable {
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function sub_5f2ef085(?) payable {
    if msg.sender == 0x7f68832a6c5b868fedf5191b756cb71ccb8ec7e6:
        uint8(stor2.field_192) = 1
}

function sub_e21d9b51(?) payable {
    if msg.sender == 0xd2a0be4a4f2837be7b99cec33701f92bd9ed914c:
        uint8(stor2.field_192) = 4
}

function get() payable {
    mem[448] = mem[475 len 5]
    return uint8(stor2.field_0), 
           address(stor1),
           uint64(stor1),
           uint64(stor2.field_0),
           Array(len=5, data='1.0.0', mem[453 len 27]),
           uint64(stor2.field_0),
           uint64(stor2.field_0)
}

function sub_416ce86f(?) payable {
    if 0x39f9157e04b9a7c0c34bc9aa47ce19e5ae5cb1b8 != msg.sender:
        if msg.sender == 0x216e57531ae6af901b4f699c6de38cd3b55d0411:
            if not uint8(stor2.field_200):
                uint8(stor2.field_192) = 3
    else:
        if uint8(stor2.field_200) == 1:
            uint8(stor2.field_192) = 3
        else:
            if msg.sender == 0x216e57531ae6af901b4f699c6de38cd3b55d0411:
                if not uint8(stor2.field_200):
                    uint8(stor2.field_192) = 3
}

function sub_877d0cd7(?) payable {
    if 0x216e57531ae6af901b4f699c6de38cd3b55d0411 != msg.sender:
        if msg.sender == 0x39f9157e04b9a7c0c34bc9aa47ce19e5ae5cb1b8:
            if not uint8(stor2.field_200):
                uint8(stor2.field_192) = 2
    else:
        if uint8(stor2.field_200) == 1:
            uint8(stor2.field_192) = 2
        else:
            if msg.sender == 0x39f9157e04b9a7c0c34bc9aa47ce19e5ae5cb1b8:
                if not uint8(stor2.field_200):
                    uint8(stor2.field_192) = 2
}



}
