contract main {


// =======================  Init code  ======================


uint128 stor0; offset 160
uint256 stor0;
address stor1;
uint64 stor4;
uint64 stor4; offset 64
uint64 stor4; offset 128
uint64 stor4; offset 192
uint8 stor5;
uint256 stor5; offset 8

function _fallback() payable {
    uint256(stor0.field_0) = Mask(96, 0, stor0.field_160)
    uint8(stor5.field_0) = 0
    Mask(248, 0, stor5.field_8) = code.data[1090 len 31]
    stor1 = 0xd2a0be4a4f2837be7b99cec33701f92bd9ed914c
    uint64(stor4.field_0) = uint64(code.data[1121 len 32])
    uint64(stor4.field_64) = uint64(code.data[1153 len 32])
    uint64(stor4.field_128) = uint64(code.data[1185 len 32])
    uint64(stor4.field_192) = uint64(code.data[1217 len 32])
    return code.data[248 len 841]
}



// =====================  Runtime code  =====================


address testAddress;
address stor1;
uint64 stor4;
uint8 status;
uint8 stor5; offset 8

function getStatus() payable {
    return status
}

function getTest() payable {
    return testAddress
}

function kill() payable {
    selfdestruct(testAddress)
}

function _fallback() payable {
  stop
}

function get() payable {
    return status, stor1, stor4, stor4, stor4, stor4, Array(len=5, data=1.0.0)
}

function sub_5f2ef085(?) payable {
    if msg.sender == 0x8b9346aa412b52954b5138dbb72adab97273766e:
        status = 1
}

function sub_e21d9b51(?) payable {
    if 0xd2a0be4a4f2837be7b99cec33701f92bd9ed914c == msg.sender:
        status = 4
}

function sub_416ce86f(?) payable {
    if msg.sender == 0x8b9346aa412b52954b5138dbb72adab97273766e:
        if 1 == stor5:
            status = 3
        else:
            if msg.sender == 0x8b9346aa412b52954b5138dbb72adab97273766e:
                if 0 == stor5:
                    status = 3
}

function sub_877d0cd7(?) payable {
    if msg.sender == 0x8b9346aa412b52954b5138dbb72adab97273766e:
        if 1 == stor5:
            status = 2
        else:
            if msg.sender == 0x8b9346aa412b52954b5138dbb72adab97273766e:
                if 0 == stor5:
                    status = 2
}



}
