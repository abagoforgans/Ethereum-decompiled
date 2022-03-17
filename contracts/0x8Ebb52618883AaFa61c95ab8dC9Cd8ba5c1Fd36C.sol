contract main {


// =======================  Init code  ======================


uint128 stor0; offset 160
uint256 stor0;
bool stor1; offset 256
uint128 stor1; offset 160
address stor1;
uint32 stor2; offset 64
uint32 stor2; offset 96
uint32 stor2; offset 128
uint32 stor2; offset 160
uint32 stor2; offset 224
uint64 stor2;
uint64 stor2; offset 192

function _fallback() payable {
    uint256(stor0.field_0) = Mask(96, 0, stor0.field_160)
    address(stor1.field_0) = 0xd2a0be4a4f2837be7b99cec33701f92bd9ed914c
    Mask(96, 0, stor1.field_160) = Mask(96, 0, code.data[1183 len 32])
    stor1.field_256 % 1 = 0
    uint64(stor2.field_0) = uint64(code.data[1215 len 32])
    uint32(stor2.field_64) = uint32(code.data[1247 len 32])
    uint32(stor2.field_96) = 0
    uint32(stor2.field_128) = uint32(code.data[1279 len 32])
    uint32(stor2.field_160) = 0
    uint64(stor2.field_192) = Mask(64, 192, code.data[1215 len 32]) >> 192
    uint64(stor2.field_192) = 0
    uint32(stor2.field_224) = code.data[1179 len 4]
    return code.data[285 len 866]
}



// =====================  Runtime code  =====================


address stor0;
uint64 stor1;
address stor1;
uint8 stor2; offset 192
uint8 stor2; offset 224
uint32 stor2; offset 200
uint32 stor2;
uint64 stor2;

function kill() payable {
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function sub_5f2ef085(?) payable {
    uint8(stor2.field_192) = 1
    stor2.field_200 % 16777216 = 0
}

function sub_e21d9b51(?) payable {
    if 0xd2a0be4a4f2837be7b99cec33701f92bd9ed914c == msg.sender:
        uint8(stor2.field_192) = 4
        stor2.field_200 % 16777216 = 0
}

function get() payable {
    return uint32(stor2.field_0), 
           address(stor1),
           uint64(stor1),
           uint64(stor2.field_0),
           Array(len=5, data=1.0.0),
           uint64(stor2.field_0),
           uint64(stor2.field_0)
}

function sub_416ce86f(?) payable {
    if msg.sender != 0x39f9157e04b9a7c0c34bc9aa47ce19e5ae5cb1b8:
        if 0x216e57531ae6af901b4f699c6de38cd3b55d0411 == msg.sender:
            if 0 == uint8(stor2.field_224):
                uint8(stor2.field_192) = 3
                stor2.field_200 % 16777216 = 0
    else:
        if 1 == uint8(stor2.field_224):
            uint8(stor2.field_192) = 3
            stor2.field_200 % 16777216 = 0
        else:
            if 0x216e57531ae6af901b4f699c6de38cd3b55d0411 == msg.sender:
                if 0 == uint8(stor2.field_224):
                    uint8(stor2.field_192) = 3
                    stor2.field_200 % 16777216 = 0
}

function sub_877d0cd7(?) payable {
    if msg.sender != 0x216e57531ae6af901b4f699c6de38cd3b55d0411:
        if 0x39f9157e04b9a7c0c34bc9aa47ce19e5ae5cb1b8 == msg.sender:
            if 0 == uint8(stor2.field_224):
                uint8(stor2.field_192) = 2
                stor2.field_200 % 16777216 = 0
    else:
        if 1 == uint8(stor2.field_224):
            uint8(stor2.field_192) = 2
            stor2.field_200 % 16777216 = 0
        else:
            if 0x39f9157e04b9a7c0c34bc9aa47ce19e5ae5cb1b8 == msg.sender:
                if 0 == uint8(stor2.field_224):
                    uint8(stor2.field_192) = 2
                    stor2.field_200 % 16777216 = 0
}



}
