contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[83 len 9209]
}



// =====================  Runtime code  =====================


#
#  - sub_34053229(?)
#
address stor0;
array of struct stor1;
mapping of struct stor2;
uint8 stor3;
uint8 stor3; offset 8

function _fallback() payable {
    revert
}

function sub_6c257197(?) {
    if not stor2[address(msg.sender)][address(arg1)].field_416:
        return stor2[address(arg1)][address(msg.sender)].field_256, 
               2,
               stor2[address(msg.sender)][address(arg1)].field_768,
               stor2[address(msg.sender)][address(arg1)].field_776
    return stor2[address(msg.sender)][address(arg1)].field_256, 
           1,
           stor2[address(msg.sender)][address(arg1)].field_768,
           stor2[address(msg.sender)][address(arg1)].field_776
}

function sub_57f71a82(?) payable {
    require msg.value >= 4 * 10^15
    require arg2 >= 1
    require arg2 <= 10
    require stor2[address(arg1)][address(msg.sender)].field_416 == 1
    stor2[address(arg1)][address(msg.sender)].field_416 = 2
    stor2[address(arg1)][address(msg.sender)].field_776 = arg2
    stor2[address(arg1)][address(msg.sender)].field_0 = stor2[address(arg1)][address(msg.sender)].field_0
    stor2[address(arg1)][address(msg.sender)].field_256 = stor2[address(arg1)][address(msg.sender)].field_256
    stor2[address(arg1)][address(msg.sender)].field_416 = stor2[address(arg1)][address(msg.sender)].field_416
    stor2[address(arg1)][address(msg.sender)].field_768 = stor2[address(arg1)][address(msg.sender)].field_768
    stor2[address(arg1)][address(msg.sender)].field_776 = stor2[address(arg1)][address(msg.sender)].field_776
    emit 0x80ee2c57: stor2[address(arg1)][address(msg.sender)].field_0, stor2[address(arg1)][address(msg.sender)].field_256, stor2[address(arg1)][address(msg.sender)].field_416
}

function sub_60973113(?) {
    if not stor1[address(msg.sender)].field_0:
        mem[(32 * stor1[address(msg.sender)].field_0) + 160] = 32
        mem[(32 * stor1[address(msg.sender)].field_0) + 192] = stor1[address(msg.sender)].field_0
        mem[(32 * stor1[address(msg.sender)].field_0) + 224 len floor32(stor1[address(msg.sender)].field_0)] = mem[160 len floor32(stor1[address(msg.sender)].field_0)]
        return memory
          from (32 * stor1[address(msg.sender)].field_0) + 160
           len (96 * stor1[address(msg.sender)].field_0) + 64
    mem[160] = stor1[address(msg.sender)].field_0
    idx = 160
    s = 0
    while (32 * stor1[address(msg.sender)].field_0) + 128 > idx:
        mem[idx + 32] = stor1[address(msg.sender)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor1[address(msg.sender)].field_0) + 224 len floor32(stor1[address(msg.sender)].field_0)] = mem[160 len floor32(stor1[address(msg.sender)].field_0)]
    return Array(len=stor1[address(msg.sender)].field_0, data=mem[160 len floor32(stor1[address(msg.sender)].field_0)], mem[(32 * stor1[address(msg.sender)].field_0) + floor32(stor1[address(msg.sender)].field_0) + 224 len (32 * stor1[address(msg.sender)].field_0) - floor32(stor1[address(msg.sender)].field_0)]), 
}

function sub_7440fb6a(?) payable {
    require msg.value >= 4 * 10^15
    require not stor2[address(msg.sender)][address(arg1)].field_416
    require not stor2[address(arg1)][address(msg.sender)].field_416
    stor0 = msg.sender
    address(stor1.length) = arg1
    stor1.length.field_160 = 1
    stor2.length = arg2
    stor2[stor0][address(stor1.length)].field_0 = stor0
    stor2[stor0][address(stor1.length)].field_256 = address(stor1.length)
    stor2[stor0][address(stor1.length)].field_416 = stor1.length.field_160
    stor2[stor0][address(stor1.length)].field_512 = stor2.length
    stor2[stor0][address(stor1.length)].field_768 = uint8(stor3.field_0)
    stor2[stor0][address(stor1.length)].field_776 = uint8(stor3.field_8)
    stor1[address(arg1)].field_0++
    if not stor1[address(arg1)].field_0 <= stor1[address(arg1)].field_0 + 1:
        idx = stor1[address(arg1)].field_0 + 1
        while stor1[address(arg1)].field_0 > idx:
            stor1[address(arg1)][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = msg.sender
    stor1[address(msg.sender)].field_0++
    if not stor1[address(msg.sender)].field_0 <= stor1[address(msg.sender)].field_0 + 1:
        idx = stor1[address(msg.sender)].field_0 + 1
        while stor1[address(msg.sender)].field_0 > idx:
            stor1[address(msg.sender)][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor1[address(msg.sender)][stor1[address(msg.sender)].field_0].field_0 = arg1
    emit 0x80ee2c57: stor0, address(stor1.length), stor1.length.field_160
}



}
