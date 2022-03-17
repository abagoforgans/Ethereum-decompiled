contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
array of uint256 stor2;
uint8 stor5; offset 128
uint128 stor5; offset 136
uint256 stor5; offset 64
uint256 stor5;

function _fallback() payable {
    mem[128] = '1.0.0'
    stor2.length = 5
    s = 0
    idx = 128
    while 133 > idx:
        stor2[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 1
    while stor2.length + 31 / 32 > idx:
        stor2[idx] = 0
        idx = idx + 1
        continue 
    stor0 = msg.sender or Mask(96, 160, stor0)
    uint8(stor5.field_128) = 0
    Mask(120, 0, stor5.field_136) = 5
    stor1 = 0xd2a0be4a4f2837be7b99cec33701f92bd9ed914c
    uint256(stor5.field_0) = '1.0.0'
    Mask(192, 0, stor5.field_64) = Mask(192, 0, code.data[1823 len 32])
    return code.data[460 len 1363]
}



// =====================  Runtime code  =====================


const get = 0, 224, 256, 0, 0, 0, 288, 0, 0, 0, 0, 0, 0, None


address stor0;
uint8 stor5; offset 128
uint8 stor5; offset 136

function kill() payable {
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function sub_5f2ef085(?) payable {
    if msg.sender == 0x7f68832a6c5b868fedf5191b756cb71ccb8ec7e6:
        uint8(stor5.field_128) = 1
}

function sub_e21d9b51(?) payable {
    if msg.sender == 0xd2a0be4a4f2837be7b99cec33701f92bd9ed914c:
        uint8(stor5.field_128) = 4
}

function sub_416ce86f(?) payable {
    if 0x39f9157e04b9a7c0c34bc9aa47ce19e5ae5cb1b8 != msg.sender:
        if msg.sender == 0x216e57531ae6af901b4f699c6de38cd3b55d0411:
            if not uint8(stor5.field_136):
                uint8(stor5.field_128) = 3
    else:
        if uint8(stor5.field_136) == 1:
            uint8(stor5.field_128) = 3
        else:
            if msg.sender == 0x216e57531ae6af901b4f699c6de38cd3b55d0411:
                if not uint8(stor5.field_136):
                    uint8(stor5.field_128) = 3
}

function sub_877d0cd7(?) payable {
    if 0x216e57531ae6af901b4f699c6de38cd3b55d0411 != msg.sender:
        if msg.sender == 0x39f9157e04b9a7c0c34bc9aa47ce19e5ae5cb1b8:
            if not uint8(stor5.field_136):
                uint8(stor5.field_128) = 2
    else:
        if uint8(stor5.field_136) == 1:
            uint8(stor5.field_128) = 2
        else:
            if msg.sender == 0x39f9157e04b9a7c0c34bc9aa47ce19e5ae5cb1b8:
                if not uint8(stor5.field_136):
                    uint8(stor5.field_128) = 2
}



}
