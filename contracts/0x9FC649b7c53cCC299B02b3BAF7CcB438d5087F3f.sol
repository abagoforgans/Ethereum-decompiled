contract main {


// =======================  Init code  ======================


uint256 stor1;

function _fallback() payable {
    stor1 = msg.sender or Mask(96, 160, stor1)
    return code.data[36 len 2014]
}



// =====================  Runtime code  =====================


mapping of struct stor0;
address sub_a969304dAddress;

function sub_a969304d(?) {
    return sub_a969304dAddress
}

function _fallback() payable {
    revert 
}

function sub_fc7e4746(?) {
    require sub_a969304dAddress == msg.sender
    stor0[arg1 << 192].field_416 = 1
    emit 0x6ceb1ad5: msg.sender, arg1
}

function transfer(uint64 arg1, address arg2) {
    if stor0[arg1 << 192].field_256 != msg.sender:
        emit 0xbb1f6a05: address(msg.sender), address(arg2), arg1 << 192, stor0[arg1 << 192].field_256
    else:
        stor0[arg1 << 192].field_256 = arg2 or Mask(96, 160, stor0[arg1 << 192].field_256)
        emit 0xbc3ed5c1: msg.sender, address(arg2), arg1
}

function sub_b1097b52(?) {
    mem[160] = stor0[arg1 << 192].field_0
    idx = 160
    s = 0
    while stor0[arg1 << 192].length + 128 > idx:
        mem[idx + 32] = stor0[arg1 << 192][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=stor0[arg1 << 192].length, data=mem[160 len stor0[arg1 << 192].length]), 
           stor0[arg1 << 192].field_256,
           stor0[arg1 << 192].field_256
}

function sub_90fe1f7f(?) {
    mem[224] = stor0[arg1].field_0
    idx = 224
    s = 0
    while stor0[arg1].length + 224 > idx + 32:
        mem[idx + 32] = stor0[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=stor0[arg1].length, data=mem[224 len stor0[arg1].length + (floor32(stor0[arg1].length - 1) + -stor0[arg1].length + 32 % 32)]), 
           stor0[arg1].field_256,
           stor0[arg1].field_256
}

function sub_e20151d5(?) {
    require msg.sender == sub_a969304dAddress
    if stor0[arg1 << 192].field_256:
        emit 0x49d66304: msg.sender, arg1 << 192, Array(len=arg2.length, data=arg2[all]), arg3 << 248
    else:
        stor0[arg1 << 192][].field_0 = Array(len=arg2.length, data=arg2[all])
        stor0[arg1 << 192].field_256 = sub_a969304dAddress
        stor0[arg1 << 192].field_416 = Mask(96, 0, arg3)
        stor0[arg1 << 192].field_424 = 0
        emit 0xc1bf3c28: msg.sender, arg1 << 192, Array(len=arg2.length, data=arg2[all]), arg3 << 248
}



}
