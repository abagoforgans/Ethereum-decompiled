contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 1703]
}



// =====================  Runtime code  =====================


address addAuthorityAddress;
mapping of uint256 sub_9922d814;
mapping of struct stor2;

function AddAuthority() payable {
    return addAuthorityAddress
}

function sub_9922d814(?) payable {
    return sub_9922d814[address(arg1)][arg2 / stor2[address(arg1)].field_416 << 240]
}

function destroy() payable {
    if addAuthorityAddress != msg.sender:
    selfdestruct(addAuthorityAddress)
}

function _fallback() payable {
    revert 
}

function sub_e9084ec4(?) payable {
    if addAuthorityAddress == msg.sender:
        sub_9922d814[address(arg1)][arg2 / stor2[address(arg1)].field_416 << 240] = arg3
        if arg4 > 0:
            emit 0xeaea3d37: address(arg1), arg2 << 240, arg3
}

function sub_1d71c31d(?) payable {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if msg.sender == addAuthorityAddress:
        stor2[address(arg2)].field_0 = msg.sender or Mask(96, 160, stor2[address(arg2)].field_0)
        stor2[address(arg2)].field_256 = msg.sender
        stor2[address(arg2)].field_416 = arg4
        stor2[address(arg2)].field_424 = arg5
        stor2[address(arg2)].field_432 = Mask(80, 0, arg3)
        stor2[address(arg2)].field_448 = uint64(arg5)
        stor2[address(arg2)].field_448 = uint64(arg4)
        stor2[address(arg2)].field_448 = Mask(64, 192, msg.sender) >> 192
        stor2[address(arg2)].field_512 = arg2 or Mask(96, 160, stor2[address(arg2)].field_512)
        idx = 0
        while uint16(idx) < uint16(uint16(arg3) / arg4):
            require uint16(idx) < arg1.length
            mem[0] = uint16(idx)
            mem[32] = sha3(address(arg2), 1)
            sub_9922d814[address(arg2)][idx << 240] = mem[(32 * uint16(idx)) + 128]
            idx = idx + 1
            continue 
        emit 0x6fd4f6fd: address(arg2), arg3 << 240, arg4 << 248, arg5
}

function sub_ce4bac3e(?) payable {
    if stor2[address(arg1)].field_256 != msg.sender:
        return 0
    if stor2[address(arg1)].field_512 != arg1:
        if arg3 > 0:
            emit 0x609cef01: address(arg1), sub_9922d814[address(arg1)][arg2 / stor2[address(arg1)].field_416], arg2, 192, msg.sender
        return 192
    if stor2[address(arg1)].field_432 <= arg2:
        if arg3 > 0:
            emit 0x609cef01: address(arg1), sub_9922d814[address(arg1)][arg2 / stor2[address(arg1)].field_416], arg2, 64, msg.sender
        return 64
    if arg4.length <= 16:
        if arg3 > 0:
            emit 0x609cef01: address(arg1), sub_9922d814[address(arg1)][arg2 / stor2[address(arg1)].field_416], arg2, uint8(2^(256 / stor2[address(arg1)].field_416) - 1 and sub_9922d814[address(arg1)][arg2 / stor2[address(arg1)].field_416] / 2^(arg2 % stor2[address(arg1)].field_416 * uint8(256 / stor2[address(arg1)].field_416))) or 16 * stor2[address(arg1)].field_424 % 16, msg.sender
    else:
        if uint8(2^(256 / stor2[address(arg1)].field_416) - 1 and sub_9922d814[address(arg1)][arg2 / stor2[address(arg1)].field_416] / 2^(arg2 % stor2[address(arg1)].field_416 * uint8(256 / stor2[address(arg1)].field_416))) > 0:
            emit 0xa18a6d3a: Array(len=arg4.length, data=arg4[all]), msg.sender
        if arg3 > 0:
            emit 0x609cef01: address(arg1), sub_9922d814[address(arg1)][arg2 / stor2[address(arg1)].field_416], arg2, uint8(2^(256 / stor2[address(arg1)].field_416) - 1 and sub_9922d814[address(arg1)][arg2 / stor2[address(arg1)].field_416] / 2^(arg2 % stor2[address(arg1)].field_416 * uint8(256 / stor2[address(arg1)].field_416))) or 16 * stor2[address(arg1)].field_424 % 16, msg.sender
    return (uint8(2^(256 / stor2[address(arg1)].field_416) - 1 and sub_9922d814[address(arg1)][arg2 / stor2[address(arg1)].field_416] / 2^(arg2 % stor2[address(arg1)].field_416 * uint8(256 / stor2[address(arg1)].field_416))) or 16 * stor2[address(arg1)].field_424 % 16)
}



}
