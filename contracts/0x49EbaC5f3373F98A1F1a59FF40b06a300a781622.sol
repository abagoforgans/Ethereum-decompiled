contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
array of uint256 stor2;
array of uint256 stor3;
array of uint256 stor4;
uint8 stor5; offset 128
uint128 stor5; offset 136
uint256 stor5; offset 64
uint256 stor5;

function _fallback() payable {
    mem[96] = 5
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
    mem[160 len -1363] = code.data[2098 len -1363]
    mem[64] = -1203
    stor0 = msg.sender or Mask(96, 160, stor0)
    uint8(stor5.field_128) = 0
    Mask(120, 0, stor5.field_136) = 5
    stor3.length = mem['1.0.0' + 96]
    mem[0] = 3
    if not mem['1.0.0' + 96]:
        idx = 0
        while stor3.length + 31 / 32 > idx:
            stor3[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = '1.0.0' + 128
        while '1.0.0' + mem['1.0.0' + 96] + 128 > idx:
            stor3[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, mem['1.0.0' + 96] + 31) >> 5
        while stor3.length + 31 / 32 > idx:
            stor3[idx] = 0
            idx = idx + 1
            continue 
    stor1 = 0xd2a0be4a4f2837be7b99cec33701f92bd9ed914c
    uint256(stor5.field_0) = mem[160]
    Mask(192, 0, stor5.field_64) = mem[200 len 24]
    stor4.length = mem[mem[224] + 96]
    if not mem[mem[224] + 96]:
        idx = 0
        while stor4.length + 31 / 32 > idx:
            stor4[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = mem[224] + 128
        while mem[224] + mem[mem[224] + 96] + 128 > idx:
            stor4[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, mem[mem[224] + 96] + 31) >> 5
        while stor4.length + 31 / 32 > idx:
            stor4[idx] = 0
            idx = idx + 1
            continue 
    return code.data[735 len 1363]
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
            if uint8(stor5.field_136) == 1:
                uint8(stor5.field_128) = 3
    else:
        if not uint8(stor5.field_136):
            uint8(stor5.field_128) = 3
        else:
            if msg.sender == 0x216e57531ae6af901b4f699c6de38cd3b55d0411:
                if uint8(stor5.field_136) == 1:
                    uint8(stor5.field_128) = 3
}

function sub_877d0cd7(?) payable {
    if 0x216e57531ae6af901b4f699c6de38cd3b55d0411 != msg.sender:
        if msg.sender == 0x39f9157e04b9a7c0c34bc9aa47ce19e5ae5cb1b8:
            if uint8(stor5.field_136) == 1:
                uint8(stor5.field_128) = 2
    else:
        if not uint8(stor5.field_136):
            uint8(stor5.field_128) = 2
        else:
            if msg.sender == 0x39f9157e04b9a7c0c34bc9aa47ce19e5ae5cb1b8:
                if uint8(stor5.field_136) == 1:
                    uint8(stor5.field_128) = 2
}



}
