contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 3405]




// =====================  Runtime code  =====================


address addAuthorityAddress;
uint256 stor0;
mapping of uint256 stor1;
mapping of struct stor2;

function AddAuthority() {
    return address(addAuthorityAddress)
}

function destroy() {
    if address(addAuthorityAddress) != msg.sender:
    selfdestruct(address(addAuthorityAddress))
}

function _fallback() {
    revert 
}

function ChainSign() {
    uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
}

function sub_8661856b(?) {
    if address(addAuthorityAddress) != msg.sender:
        return 0
    require stor2[address(arg1)].field_416
    return stor1[address(arg1)][arg2 / stor2[address(arg1)].field_416 << 240]
}

function sub_e9084ec4(?) {
    if msg.sender == address(addAuthorityAddress):
        require stor2[address(arg1)].field_416
        stor1[address(arg1)][arg2 / stor2[address(arg1)].field_416 << 240] = arg3
        if arg4 > 0:
            emit 0xeaea3d37: address(arg1), arg2 << 240, arg3
}

function sub_1d71c31d(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if msg.sender == address(addAuthorityAddress):
        stor2[address(arg2)].field_0 = msg.sender or Mask(96, 160, stor2[address(arg2)].field_0)
        stor2[address(arg2)].field_256 = msg.sender or Mask(96, 160, stor2[address(arg2)].field_256)
        stor2[address(arg2)].field_416 = Mask(96, 0, arg4)
        stor2[address(arg2)].field_424 = Mask(88, 0, arg5)
        stor2[address(arg2)].field_432 = Mask(80, 0, arg3)
        stor2[address(arg2)].field_512 = arg2 or Mask(96, 160, stor2[address(arg2)].field_512)
        require uint8(arg4)
        if uint16(var12003) < uint16(uint16(arg3) / uint8(arg4)):
            require uint16(var14001) < arg1.length
            stor1[address(arg2)][var16003 << 240] = mem[(32 * var16001) + 128]
            require uint8(arg4)
            idx = var16003
            while uint16(idx + 1) < uint16(uint16(arg3) / uint8(arg4)):
                require uint16(idx + 1) < arg1.length
                mem[0] = uint16(idx + 1)
                mem[32] = sha3(address(arg2), 1)
                stor1[address(arg2)][idx + 1 << 240] = mem[(32 * uint16(idx + 1)) + 128]
                require uint8(arg4)
                idx = idx + 1
                continue 
        emit 0x6fd4f6fd: address(arg2), arg3 << 240, arg4 << 248, uint8(arg5)
}

function sub_ce4bac3e(?) {
    if msg.sender == stor2[address(arg1)].field_256:
        require stor2[address(arg1)].field_416
        if stor2[address(arg1)].field_512 != arg1:
            if arg3 > 0:
                require stor2[address(arg1)].field_416
                emit 0x609cef01: address(arg1), stor1[address(arg1)][arg2 / stor2[address(arg1)].field_416], arg2, 192, msg.sender
        else:
            if stor2[address(arg1)].field_432 <= arg2:
                if arg3 > 0:
                    require stor2[address(arg1)].field_416
                    emit 0x609cef01: address(arg1), stor1[address(arg1)][arg2 / stor2[address(arg1)].field_416], arg2, 64, msg.sender
            else:
                require stor2[address(arg1)].field_416
                require 2^(arg2 % stor2[address(arg1)].field_416 * uint8(256 / stor2[address(arg1)].field_416))
                if arg4.length > 16:
                    emit 0xa18a6d3a: Array(len=arg4.length, data=arg4[all]), msg.sender
                if arg3 > 0:
                    require stor2[address(arg1)].field_416
                    emit 0x609cef01: address(arg1), stor1[address(arg1)][arg2 / stor2[address(arg1)].field_416], arg2, uint8(stor1[address(arg1)][arg2 / stor2[address(arg1)].field_416] / 2^(arg2 % stor2[address(arg1)].field_416 * uint8(256 / stor2[address(arg1)].field_416)) and uint8(2^(256 / stor2[address(arg1)].field_416) - 1)) or 16 * stor2[address(arg1)].field_424 % 16, msg.sender
}



}
