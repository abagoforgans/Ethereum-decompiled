contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
address stor2;
address stor3;
address stor4;
address stor5;
address stor6;
array of uint256 stor7;
uint8 stor10; offset 128
uint128 stor10; offset 136
uint256 stor10; offset 64
uint256 stor10;

function _fallback() payable {
    stor2 = 0x39f9157e04b9a7c0c34bc9aa47ce19e5ae5cb1b8
    stor3 = 0x216e57531ae6af901b4f699c6de38cd3b55d0411
    stor4 = 0x7f68832a6c5b868fedf5191b756cb71ccb8ec7e6
    stor5 = 0xd2a0be4a4f2837be7b99cec33701f92bd9ed914c
    stor6 = 0x7f8e5e8f46243e604b73b726a819fdabfab85beb
    mem[128] = '1.0.0'
    stor7.length = 5
    s = 0
    idx = 128
    while 133 > idx:
        stor7[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 1
    while stor7.length + 31 / 32 > idx:
        stor7[idx] = 0
        idx = idx + 1
        continue 
    stor0 = msg.sender or Mask(96, 160, stor0)
    uint8(stor10.field_128) = 0
    Mask(120, 0, stor10.field_136) = 5
    stor1 = stor5
    uint256(stor10.field_0) = '1.0.0'
    Mask(192, 0, stor10.field_64) = Mask(192, 0, code.data[2217 len 32])
    return code.data[789 len 1428]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
address stor3;
address stor4;
address stor5;
array of struct stor7;
uint8 stor10;
uint8 stor10; offset 128
uint8 stor10; offset 136
uint64 stor10;

function kill() payable {
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function sub_5f2ef085(?) payable {
    if msg.sender == stor4:
        uint8(stor10.field_128) = 1
}

function sub_e21d9b51(?) payable {
    if msg.sender == stor5:
        uint8(stor10.field_128) = 4
}

function sub_416ce86f(?) payable {
    if stor2 != msg.sender:
        if msg.sender == stor3:
            if not uint8(stor10.field_136):
                uint8(stor10.field_128) = 3
    else:
        if uint8(stor10.field_136) == 1:
            uint8(stor10.field_128) = 3
        else:
            if msg.sender == stor3:
                if not uint8(stor10.field_136):
                    uint8(stor10.field_128) = 3
}

function sub_877d0cd7(?) payable {
    if stor3 != msg.sender:
        if msg.sender == stor2:
            if not uint8(stor10.field_136):
                uint8(stor10.field_128) = 2
    else:
        if uint8(stor10.field_136) == 1:
            uint8(stor10.field_128) = 2
        else:
            if msg.sender == stor2:
                if not uint8(stor10.field_136):
                    uint8(stor10.field_128) = 2
}

function get() payable {
    if stor7.length:
        mem[160] = uint256(stor7.field_0)
        idx = 160
        s = 0
        while stor7.length + 128 > idx:
            mem[idx + 32] = stor7[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    return uint8(stor10.field_0), 
           stor1,
           uint64(stor10.field_0),
           uint64(stor10.field_0),
           Array(len=stor7.length, data=mem[160 len stor7.length])
}



}
